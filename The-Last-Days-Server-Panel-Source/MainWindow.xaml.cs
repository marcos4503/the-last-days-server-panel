using CoroutinesDotNet;
using CoroutinesForWpf;
using Ionic.Zip;
using MarcosTomaz.ATS;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using The_Last_Days_Server_Panel.Controls;
using The_Last_Days_Server_Panel.Scripts;

namespace The_Last_Days_Server_Panel
{
    /*
     * This is the script responsible by the window of the Server Panel
    */

    public partial class MainWindow : Window
    {
        //Public enums
        public enum InterfaceMode
        {
            Starting,
            Running,
            Stopping,
            Stopped
        }
        public enum HistoryMovement
        {
            Up,
            Down
        }
        public enum ConnectionType
        {
            Joinned,
            Left
        }

        //Classes of script
        private class TpsEntry
        {
            //Private variables
            public float tpsValue = 0.0f;
            public long tpsTick = 0l;

            //Core methods

            public TpsEntry(float tpsValue, long tpsTick)
            {
                //Store the data
                this.tpsValue = tpsValue;
                this.tpsTick = tpsTick;
            }
        }

        //Cache variables
        private bool canCloseWindow = true;
        private bool isRunningServer = false;
        private string[] downloadedServerDataFiles = null;
        private List<LogItem> listOfLogs = new List<LogItem>();
        private int logsRawCounter = 0;
        private bool isScrollLocked = true;
        private bool isCommandMode = true;
        private List<string> commandHistory = new List<string>();
        private int indexAtCommandHistory = 0;
        private Dictionary<string, PlayerItem> playersOnlineDictionary = new Dictionary<string, PlayerItem>();
        private Dictionary<string, int> playersSkinsInDownloadDictionary = new Dictionary<string, int>();
        private IDisposable stats_runningTimerCoroutine = null;
        private int stats_runningTimerSeconds = 0;
        private int stats_runningTimerMinutes = 0;
        private int stats_runningTimerHours = 0;
        private IDisposable stats_tpsMonitorCoroutine = null;
        private List<TpsEntry> stats_tpsMonitorEntries = new List<TpsEntry>();
        private long stats_tpsMonitorLastTpsRequestTime = 0;
        private bool stats_tpsMonitorWaitingTpsReply = false;
        private int stats_tpsMonitorLagSpikes = 0;
        private IDisposable stats_panelRamMonitorCoroutine = null;
        private PerformanceCounter stats_panelRamMonitorCounter = null;
        private IDisposable stats_serverRamMonitorCoroutine = null;
        private PerformanceCounter stats_serverRamMonitorCounter = null;
        private IDisposable stats_serverCpuMonitorCoroutine = null;
        private PerformanceCounter stats_serverCpuMonitorCounter = null;

        //Private variables
        private string serverDataFolderPath = "";
        private string serverPanelFolderPath = "";
        private Preferences panelPreferences = null;

        //Public variables
        public Process javaServerProcess = null;

        //Core methods

        public MainWindow()
        {
            //Check if have another process of the panel already opened. If have, cancel this...
            string processName = Process.GetCurrentProcess().ProcessName;
            Process[] processes = Process.GetProcessesByName(processName);
            if (processes.Length > 1)
            {
                //Warn about the problem
                MessageBox.Show("O The Last Days Server Panel já está em execução!", "Erro");

                //Stop the execution of this instance
                System.Windows.Application.Current.Shutdown();

                //Cancel the execution
                return;
            }

            //Initialize the Window
            InitializeComponent();

            //Get the current directory
            string currentDirectory = AppDomain.CurrentDomain.BaseDirectory;
            currentDirectory = currentDirectory.Remove((currentDirectory.Length - 1), 1);  //<- Remove the last "\" character
            //Create the "ServerData" folder
            serverDataFolderPath = (currentDirectory + "\\ServerData");
            Directory.CreateDirectory(serverDataFolderPath);
            //Create the "!Server-Panel" folder
            serverPanelFolderPath = (currentDirectory + "\\ServerData\\!Server-Panel");
            Directory.CreateDirectory(serverPanelFolderPath);

            //Load the preferences
            panelPreferences = new Preferences((serverPanelFolderPath + "/preferences.json"));

            //Restore last window position
            this.Left = panelPreferences.loadedData.lastWindowPositionX;
            this.Top = panelPreferences.loadedData.lastWindowPositionY;

            //Prepare the window anti close
            PrepareAntiClose();

            //Run the pre-load task
            DoPreLoadTask();
        }

        private void PrepareAntiClose()
        {
            //Block the window close
            this.Closing += (s, e) =>
            {
                if (canCloseWindow == false)
                {
                    MessageBox.Show("Aguarde a conclusão de todas as tarefas em andamento, antes de fechar o The Last Days Server Panel.",
                                    "Erro", MessageBoxButton.OK, MessageBoxImage.Error);
                    e.Cancel = true;
                    return;
                }

                if (isRunningServer == true)
                {
                    MessageBox.Show("Não é possível fechar o The Last Days Server Panel enquanto o Servidor está rodando. Por favor, pare-o antes de fechar o Server Painel.",
                                    "Erro", MessageBoxButton.OK, MessageBoxImage.Error);
                    e.Cancel = true;
                    return;
                }

                //Save the last position of window, if have preferences loaded
                if(panelPreferences != null)
                {
                    panelPreferences.loadedData.lastWindowPositionX = (int)this.Left;
                    panelPreferences.loadedData.lastWindowPositionY = (int)this.Top;
                    panelPreferences.Save();
                }
            };
        }

        private void DoPreLoadTask()
        {
            //Change to load screen
            preLoad.Visibility = Visibility.Visible;
            downloadProgress.Visibility = Visibility.Collapsed;
            serverInterface.Visibility = Visibility.Collapsed;

            //Inform that can't close window
            canCloseWindow = false;

            //Start a thread to run pre-load task
            AsyncTaskSimplified asyncTask = new AsyncTaskSimplified(this, new string[] { });
            asyncTask.onStartTask_RunMainThread += (callerWindow, startParams) => { };
            asyncTask.onExecuteTask_RunBackground += (callerWindow, startParams, threadTools) =>
            {
                //Wait some time
                threadTools.MakeThreadSleep(1000);

                //Try to do the task
                try
                {
                    //If exists the cache folder, delete it
                    if (Directory.Exists((serverPanelFolderPath + "/cache")) == true)
                        Directory.Delete((serverPanelFolderPath + "/cache"), true);
                    //Create the cache folder
                    Directory.CreateDirectory((serverPanelFolderPath + "/cache"));

                    //Install the 7-Zip, if necessary
                    if(File.Exists((serverPanelFolderPath + "/szip/7z.exe")) == false)
                    {
                        //Create the 7-Zip folder
                        Directory.CreateDirectory((serverPanelFolderPath + "/szip"));

                        //Copy the 7-Zip to folder
                        Stream resource = System.Reflection.Assembly.GetExecutingAssembly().GetManifestResourceStream("The_Last_Days_Server_Panel.Resources.EmbeddedResources.7zip.zip");
                        FileStream fileStream = new FileStream((serverPanelFolderPath + "/szip-install.zip"), FileMode.Create, FileAccess.Write);
                        resource.CopyTo(fileStream);

                        //Install the 7-Zip
                        ZipFile zipFile = ZipFile.Read((serverPanelFolderPath + "/szip-install.zip"));
                        foreach (ZipEntry entry in zipFile)
                            entry.Extract((serverPanelFolderPath + "/szip"), ExtractExistingFileAction.OverwriteSilently);
                        zipFile.Dispose();
                    }



                    //Prepare the first performance counter to allow the next performance counters to initialize more fast (because the first performance counter instantiation is very slower)
                    PerformanceCounter cachePerformanceCounter = new PerformanceCounter();
                    cachePerformanceCounter.CategoryName = "Process";
                    cachePerformanceCounter.CounterName = "Working Set - Private";
                    cachePerformanceCounter.InstanceName = Process.GetCurrentProcess().ProcessName;
                    //Extract ram usage of current process
                    int ramUsageMb = (int)((double)cachePerformanceCounter.RawValue / 1024.0f / 1024.0f);
                    //Close the performance counter
                    cachePerformanceCounter.Close();
                    cachePerformanceCounter.Dispose();



                    //Create the skins cache file if not exists
                    if (File.Exists((serverPanelFolderPath + "/skins.cache")) == false)
                        File.WriteAllText((serverPanelFolderPath + "/skins.cache"), "Ok");
                    //Get hours elapsed since the last edit of the "skins.cache" file
                    int skinsCacheElapsedHours = (new TimeSpan(DateTime.Now.Ticks) - new TimeSpan(File.GetLastWriteTime((serverPanelFolderPath + "/skins.cache")).Ticks)).Hours;
                    //If elasped 24 hours or more, reset the skins cache
                    if(skinsCacheElapsedHours >= 24)
                    {
                        //Delete the skins directory, if exists
                        if (Directory.Exists((serverPanelFolderPath + "/skins")) == true)
                        {
                            Directory.Delete((serverPanelFolderPath + "/skins"), true);
                            Directory.CreateDirectory((serverPanelFolderPath + "/skins"));
                        }

                        //Re-create the "skins.cache" file
                        File.Delete((serverPanelFolderPath + "/skins.cache"));
                        File.WriteAllText((serverPanelFolderPath + "/skins.cache"), "Ok");
                    }

                    //Return a success response
                    return new string[] { "success" };
                }
                catch (Exception ex)
                {
                    //Return a error response
                    return new string[] { "error" };
                }

                //Finish the thread...
                return new string[] { "none" };
            };
            asyncTask.onDoneTask_RunMainThread += (callerWindow, backgroundResult) =>
            {
                //Get the thread response
                string threadTaskResponse = backgroundResult[0];

                //If have a response not success, close
                if (threadTaskResponse != "success")
                {
                    ClosePanelWithError("Houve um problema ao carregar o Server Panel.");
                    return;
                }

                //Inform that can close the window
                canCloseWindow = true;

                //Prepare the UI and continue...
                PrepareTheUI();
            };
            asyncTask.Execute(AsyncTaskSimplified.ExecutionMode.NewDefaultThread);
        }

        private void DownloadServerData()
        {
            //Change to download screen
            preLoad.Visibility = Visibility.Collapsed;
            downloadProgress.Visibility = Visibility.Visible;
            serverInterface.Visibility = Visibility.Collapsed;

            //Inform download message
            downloadMessage.Text = "Baixando Dados de Servidor";

            //Inform that can't close window
            canCloseWindow = false;

            //Start a thread to run pre-load task
            AsyncTaskSimplified asyncTask = new AsyncTaskSimplified(this, new string[] { });
            asyncTask.onStartTask_RunMainThread += (callerWindow, startParams) => { };
            asyncTask.onExecuteTask_RunBackground += (callerWindow, startParams, threadTools) =>
            {
                //Wait some time
                threadTools.MakeThreadSleep(1000);

                //Try to do the task
                try
                {
                    //Inform progress
                    threadTools.ReportNewProgress(("0-0"));

                    //Download server data info
                    if (true == true)
                    {
                        //Prepare the target download URL
                        string downloadUrl = @"https://marcos4503.github.io/the-last-days-launcher/Repository-Pages/builded-ready-server-data/current-server-data-info.json";
                        string saveAsPath = (serverPanelFolderPath + @"/cache/current-server-data-info.json");
                        //Download the current version file
                        HttpClient httpClient = new HttpClient();
                        HttpResponseMessage httpRequestResult = httpClient.GetAsync(downloadUrl).Result;
                        httpRequestResult.EnsureSuccessStatusCode();
                        Stream downloadStream = httpRequestResult.Content.ReadAsStreamAsync().Result;
                        FileStream fileStream = new FileStream(saveAsPath, FileMode.Create, FileAccess.Write, FileShare.None);
                        downloadStream.CopyTo(fileStream);
                        httpClient.Dispose();
                        fileStream.Dispose();
                        fileStream.Close();
                        downloadStream.Dispose();
                        downloadStream.Close();
                    }

                    //Parse the download info file
                    DownloadInfo serverDownloadInfo = new DownloadInfo((serverPanelFolderPath + @"/cache/current-server-data-info.json"));

                    //Wait some time
                    threadTools.MakeThreadSleep(2500);

                    //Prepare the list of downloaded files
                    List<string> downloadedFilesList = new List<string>();
                    //Download all parts
                    for (int i = 0; i < serverDownloadInfo.loadedData.downloads.Length; i++)
                    {
                        //Split download URL parts
                        string[] downloadUriParts = serverDownloadInfo.loadedData.downloads[i].Split("/");
                        //Prepare the save as path
                        string saveAsPath = (serverDataFolderPath + @"/" + downloadUriParts[downloadUriParts.Length - 1]);
                        //Download the current version file
                        HttpClient httpClient = new HttpClient();
                        HttpResponseMessage httpRequestResult = httpClient.GetAsync(serverDownloadInfo.loadedData.downloads[i]).Result;
                        httpRequestResult.EnsureSuccessStatusCode();
                        Stream downloadStream = httpRequestResult.Content.ReadAsStreamAsync().Result;
                        FileStream fileStream = new FileStream(saveAsPath, FileMode.Create, FileAccess.Write, FileShare.None);
                        downloadStream.CopyTo(fileStream);
                        httpClient.Dispose();
                        fileStream.Dispose();
                        fileStream.Close();
                        downloadStream.Dispose();
                        downloadStream.Close();

                        //Add downloaded file to list
                        downloadedFilesList.Add(saveAsPath);

                        //Inform the progress
                        threadTools.ReportNewProgress((((float)(i + 1)) + "-" + serverDownloadInfo.loadedData.downloads.Length));
                    }

                    //Store the list of files downloaded
                    downloadedServerDataFiles = downloadedFilesList.ToArray();

                    //Store the new last version notified
                    File.WriteAllText((serverPanelFolderPath + "/last-version-notified.txt"), serverDownloadInfo.loadedData.version);

                    //Wait some time
                    threadTools.MakeThreadSleep(1000);

                    //Return a success response
                    return new string[] { "success" };
                }
                catch (Exception ex)
                {
                    //Return a error response
                    return new string[] { "error" };
                }

                //Finish the thread...
                return new string[] { "none" };
            };
            asyncTask.onNewProgress_RunMainThread += (callerWindow, newProgress) =>
            {
                //Inform the progress
                UpdateDownloadProgressBar(newProgress);
            };
            asyncTask.onDoneTask_RunMainThread += (callerWindow, backgroundResult) =>
            {
                //Get the thread response
                string threadTaskResponse = backgroundResult[0];

                //If have a response not success, close
                if (threadTaskResponse != "success")
                {
                    ClosePanelWithError("Houve um problema ao baixar os Dados do Servidor.");
                    return;
                }

                //Install the data
                InstallServerData();
            };
            asyncTask.Execute(AsyncTaskSimplified.ExecutionMode.NewDefaultThread);
        }

        private void InstallServerData()
        {
            //Inform download message
            downloadMessage.Text = "Expandindo Dados de Servidor";
            UpdateDownloadProgressBar("0-0");

            //Start a thread to run pre-load task
            AsyncTaskSimplified asyncTask = new AsyncTaskSimplified(this, new string[] { });
            asyncTask.onStartTask_RunMainThread += (callerWindow, startParams) => { };
            asyncTask.onExecuteTask_RunBackground += (callerWindow, startParams, threadTools) =>
            {
                //Wait some time
                threadTools.MakeThreadSleep(1000);

                //Try to do the task
                try
                {
                    //Extract downloaded file
                    Process process = new Process();
                    process.StartInfo.FileName = System.IO.Path.Combine(serverDataFolderPath, "!Server-Panel", "szip", "7z.exe");
                    process.StartInfo.WorkingDirectory = System.IO.Path.Combine(serverDataFolderPath, "!Server-Panel", "szip");
                    process.StartInfo.Arguments = "x \"" + downloadedServerDataFiles[0] + "\" -o\"" + (serverDataFolderPath) + "\"";
                    process.StartInfo.UseShellExecute = false;
                    process.StartInfo.CreateNoWindow = true;  //<- Hide the process window
                    process.StartInfo.RedirectStandardOutput = true;
                    process.Start();
                    //Wait process finishes
                    process.WaitForExit();

                    //Delete all downloaded files
                    foreach(string filePath in downloadedServerDataFiles)
                        File.Delete(filePath);

                    //Wait some time
                    threadTools.MakeThreadSleep(1000);

                    //Return a success response
                    return new string[] { "success" };
                }
                catch (Exception ex)
                {
                    //Return a error response
                    return new string[] { "error" };
                }

                //Finish the thread...
                return new string[] { "none" };
            };
            asyncTask.onDoneTask_RunMainThread += (callerWindow, backgroundResult) =>
            {
                //Get the thread response
                string threadTaskResponse = backgroundResult[0];

                //If have a response not success, close
                if (threadTaskResponse != "success")
                {
                    ClosePanelWithError("Houve um problema ao expandir os Dados do Servidor.");
                    return;
                }

                //Inform that can close window
                canCloseWindow = true;

                //Go to prepare the UI
                PrepareTheUI();
            };
            asyncTask.Execute(AsyncTaskSimplified.ExecutionMode.NewDefaultThread);
        }

        private void CheckServerDataUpdate()
        {
            //Start a thread to run
            AsyncTaskSimplified asyncTask = new AsyncTaskSimplified(this, new string[] { });
            asyncTask.onStartTask_RunMainThread += (callerWindow, startParams) => { };
            asyncTask.onExecuteTask_RunBackground += (callerWindow, startParams, threadTools) =>
            {
                //Wait some time
                threadTools.MakeThreadSleep(5000);

                //Try to do the task
                try
                {
                    //Download server data info
                    if (true == true)
                    {
                        //Prepare the target download URL
                        string downloadUrl = @"https://marcos4503.github.io/the-last-days-launcher/Repository-Pages/builded-ready-server-data/current-server-data-info.json";
                        string saveAsPath = (serverPanelFolderPath + @"/cache/current-server-data-info.json");
                        //Download the current version file
                        HttpClient httpClient = new HttpClient();
                        HttpResponseMessage httpRequestResult = httpClient.GetAsync(downloadUrl).Result;
                        httpRequestResult.EnsureSuccessStatusCode();
                        Stream downloadStream = httpRequestResult.Content.ReadAsStreamAsync().Result;
                        FileStream fileStream = new FileStream(saveAsPath, FileMode.Create, FileAccess.Write, FileShare.None);
                        downloadStream.CopyTo(fileStream);
                        httpClient.Dispose();
                        fileStream.Dispose();
                        fileStream.Close();
                        downloadStream.Dispose();
                        downloadStream.Close();
                    }

                    //Parse the download info file
                    DownloadInfo serverDownloadInfo = new DownloadInfo((serverPanelFolderPath + @"/cache/current-server-data-info.json"));

                    //Get the last version txt
                    string lastVersionNotified = "";
                    if (File.Exists((serverPanelFolderPath + "/last-version-notified.txt")) == true)
                        lastVersionNotified = File.ReadAllText((serverPanelFolderPath + "/last-version-notified.txt"));

                    //If the last version notified is different from the server, notify the update
                    if(serverDownloadInfo.loadedData.version != lastVersionNotified)
                    {
                        //Show the update notification
                        threadTools.ReportNewProgress("showUpdateWarn");

                        //Store the new last version notified
                        File.WriteAllText((serverPanelFolderPath + "/last-version-notified.txt"), serverDownloadInfo.loadedData.version);
                    }

                    //Return a success response
                    return new string[] { "success" };
                }
                catch (Exception ex)
                {
                    //Return a error response
                    return new string[] { "error" };
                }

                //Finish the thread...
                return new string[] { "none" };
            };
            asyncTask.onNewProgress_RunMainThread += (callerWindow, newProgress) =>
            {
                //If is desired to show the update popup
                if(newProgress == "showUpdateWarn")
                {
                    //Show the warning
                    MessageBoxResult d = MessageBox.Show("Foi encontrada uma atualização para os Dados do Servidor instalados no seu computador. Os Dados de Servidor se encontram na pasta \"ServerData\" e " +
                                    "podem ser encontrados ao lado do executável do The Last Days Server Panel.\n\nSe você não atualizar os Dados de Servidor, os jogadores do seu servidor " +
                                    "podem não conseguir se conectar ao seu servidor, ou se conseguirem conectar podem experenciar problemas com bugs, lag, erros fatais ou coisas assim, já que " +
                                    "os seus Clients são atualizados automaticamente para as novas versões, que contém mudanças.\n\nPara atualizar, você precisa acessar o repositório do " +
                                    "The Last Days Server Panel, no GitHub. O repositório contém instruções detalhadas de como atualizar os Dados do seu Servidor. Gostaria de acessar o repositório " +
                                    "do The Last Days Server Panel agora?",
                                    "Atualização Para os Dados do Servidor", MessageBoxButton.YesNo, MessageBoxImage.Information);

                    //If choosed yes, open the github repository
                    if(d == MessageBoxResult.Yes)
                        System.Diagnostics.Process.Start(new ProcessStartInfo { FileName = "https://github.com/marcos4503/the-last-days-server-panel", UseShellExecute = true });
                }
            };
            asyncTask.onDoneTask_RunMainThread += (callerWindow, backgroundResult) => { };
            asyncTask.Execute(AsyncTaskSimplified.ExecutionMode.NewDefaultThread);
        }

        private void PrepareTheUI()
        {
            //If not found the "ServerData" folder, request the download of it
            if(Directory.Exists(serverDataFolderPath) == false || File.Exists((serverDataFolderPath + "/libraries/net/minecraftforge/forge/1.20.1-47.2.0/forge-1.20.1-47.2.0-server.jar")) == false)
            {
                MessageBoxResult dialogResult = MessageBox.Show("Não foi possível encontrar os Dados de Servidor The Last Days neste computador. Deseja baixa-los agora automaticamente?"+
                                                                "\n\n\n\n(Uma pasta chamada \"ServerData\" será criada ao lado deste executável, contendo os Dados do Servidor)",
                                                                "Baixar dados de Servidor?", MessageBoxButton.YesNo, MessageBoxImage.Question);
                
                //If is desired yes, download the data
                if(dialogResult == MessageBoxResult.Yes)
                {
                    DownloadServerData();
                    return;
                }

                //If is desired not, close application and return
                if(dialogResult != MessageBoxResult.Yes)
                {
                    System.Windows.Application.Current.Shutdown();
                    return;
                }

                //Cancel
                return;
            }

            //Change to server interface
            preLoad.Visibility = Visibility.Collapsed;
            downloadProgress.Visibility = Visibility.Collapsed;
            serverInterface.Visibility = Visibility.Visible;

            //Show the panel version
            this.Title = (this.Title + " - " + GetLauncherVersion());

            //Run the update checker
            CheckServerDataUpdate();

            //Prepare the github button
            githubButton.Click += (s, e) => { System.Diagnostics.Process.Start(new ProcessStartInfo { FileName = "https://github.com/marcos4503/the-last-days-server-panel", UseShellExecute = true }); };

            //Prepare the handler button function
            handlerButton.Click += (s, e) => { ExecuteHandlerButtonFunction(); };

            //Prepare the open folder button
            folderButton.Click += (s, e) => { Process.Start("explorer.exe", "/select, \""+serverDataFolderPath+ "\\!Server-Panel\""); };

            //Prepare the button of send command
            sendButton.Click += (s, e) => { SendCommand(); };

            //Prepare the command input
            commandInput.KeyDown += (s, e) => { if (e.Key == Key.Enter) { SendCommand(); } };
            commandInput.PreviewKeyDown += (s, e) => { if (e.Key == Key.Up) { MoveIntoHistory(HistoryMovement.Up); } if (e.Key == Key.Down) { MoveIntoHistory(HistoryMovement.Down); } };
            //Add a empty entry on command history at index 0
            commandHistory.Add("");

            //Prepare the lock button
            lockButton.Click += (s, e) => { ToggleScrollLockButton(); };

            //Prepare the command mode button
            sayButton.Click += (s, e) => { ToggleCommandModeButton(); };

            //Prepare the command picker
            PrepareTheCommandPicker();

            //Set the interface as stopped mode
            ChangeInterfaceMode(InterfaceMode.Stopped);
        }

        //Auxiliar methods

        private void ClosePanelWithError(string errorMessage)
        {
            //Show error
            MessageBox.Show(errorMessage, "Erro", MessageBoxButton.OK, MessageBoxImage.Error);
            //Inform that can close
            canCloseWindow = true;
            //Close the application
            System.Windows.Application.Current.Shutdown();
        }

        private void UpdateDownloadProgressBar(string taskProgressbarData)
        {
            //Split the data
            string[] dataSplitted = taskProgressbarData.Split("-");

            //Convert data for float
            float value = float.Parse(dataSplitted[0]);
            float maxValue = float.Parse(dataSplitted[1]);

            //If the value and maxvalue is zero, inform indeterminate
            if (value == 0.0f && maxValue == 0.0f)
            {
                downloadBar.Value = 0.0d;
                downloadBar.Maximum = 100.0d;
                downloadBar.IsIndeterminate = true;
            }

            //If have a progress, render it
            if (value != 0.0f || maxValue != 0.0f)
            {
                downloadBar.Value = value;
                downloadBar.Maximum = maxValue;
                downloadBar.IsIndeterminate = false;
            }

        }

        private string GetLauncherVersion()
        {
            //Prepare te storage
            string version = "";

            //Get the version
            string[] versionNumbers = Assembly.GetExecutingAssembly().GetName().Version.ToString().Split('.');
            version = (versionNumbers[0] + "." + versionNumbers[1] + "." + versionNumbers[2]);

            //Return the version
            return version;
        }
    
        private void ChangeInterfaceMode(InterfaceMode interfaceMode)
        {
            //If is starting
            if (interfaceMode == InterfaceMode.Starting)
            {
                //Set the status
                statusIconStatic.Visibility = Visibility.Visible;
                statusIconStatic.Background = new SolidColorBrush(Color.FromArgb(255, 0, 199, 237));
                statusIconStatic.BorderBrush = new SolidColorBrush(Color.FromArgb(255, 0, 87, 103));
                statusIconGif.Visibility = Visibility.Collapsed;
                statusMessage.Text = "Inicializando";

                //Hide the handle button
                handlerButton.Visibility = Visibility.Collapsed;
                handlerButton.Content = "-";

                //Reset the logs count
                logsRawCounter = 0;
                logsCount.Text = (logsRawCounter.ToString() + " Logs");

                //Enable the statistics
                statsContent.Visibility = Visibility.Visible;

                //Inform that is running the server
                isRunningServer = true;
            }

            //If is running
            if (interfaceMode == InterfaceMode.Running)
            {
                //Unlock some elements of interface
                lockButton.IsEnabled = true;
                sayButton.IsEnabled = true;
                pickerButton.IsEnabled = true;
                commandInput.Text = "";
                commandInput.IsEnabled = true;
                sendButton.IsEnabled = true;

                //Set the status
                statusIconStatic.Visibility = Visibility.Collapsed;
                statusIconGif.Visibility = Visibility.Visible;
                statusMessage.Text = "Rodando";

                //Set the handle button
                handlerButton.Visibility = Visibility.Visible;
                handlerButton.Content = "Desligar Servidor";
                
                //Start all statistics coroutines
                StartAllStatisticsCoroutines();
            }

            //If is stopping
            if (interfaceMode == InterfaceMode.Stopping)
            {
                //Stop all statistics coroutines
                StopAllStatisticsCoroutines();

                //Block some elements of interface
                lockButton.IsEnabled = false;
                sayButton.IsEnabled = false;
                pickerButton.IsEnabled = false;
                commandInput.Text = "";
                commandInput.IsEnabled = false;
                sendButton.IsEnabled = false;

                //Set the status
                statusIconStatic.Visibility = Visibility.Visible;
                statusIconStatic.Background = new SolidColorBrush(Color.FromArgb(255, 0, 199, 237));
                statusIconStatic.BorderBrush = new SolidColorBrush(Color.FromArgb(255, 0, 87, 103));
                statusIconGif.Visibility = Visibility.Collapsed;
                statusMessage.Text = "Parando";

                //Hide the handle button
                handlerButton.Visibility = Visibility.Collapsed;
                handlerButton.Content = "-";

                //Build a list of players to remove of the list of online
                List<string> onlinePlayersList = new List<string>();
                foreach (var item in playersOnlineDictionary)
                    onlinePlayersList.Add(item.Key);
                //Remove all players connected
                foreach (var nickname in onlinePlayersList)
                    ProcessConnectedPlayer(ConnectionType.Left, nickname);
            }

            //If is stopped
            if (interfaceMode == InterfaceMode.Stopped)
            {
                //Reset the toggles
                isScrollLocked = true;
                lockButtonImg.Source = new BitmapImage(new Uri(@"pack://application:,,,/Resources/lock-icon.png"));
                isCommandMode = true;
                sayButtonImg.Source = new BitmapImage(new Uri(@"pack://application:,,,/Resources/command-mode.png"));

                //Block some elements of interface
                lockButton.IsEnabled = false;
                sayButton.IsEnabled = false;
                pickerButton.IsEnabled = false;
                commandInput.Text = "";
                commandInput.IsEnabled = false;
                sendButton.IsEnabled = false;

                //Reset the status
                statusIconStatic.Visibility = Visibility.Visible;
                statusIconStatic.Background = new SolidColorBrush(Color.FromArgb(255, 191, 0, 0));
                statusIconStatic.BorderBrush = new SolidColorBrush(Color.FromArgb(255, 86, 0, 0));
                statusIconGif.Visibility = Visibility.Collapsed;
                statusMessage.Text = "Parado";

                //Reset the handle button
                handlerButton.Visibility = Visibility.Visible;
                handlerButton.Content = "Iniciar Servidor";

                //Clear the process of cmd if have
                if (javaServerProcess != null)
                    if(javaServerProcess.HasExited == false)
                        javaServerProcess.Kill();
                javaServerProcess = null;

                //Disable the statistics
                statsContent.Visibility = Visibility.Collapsed;

                //Inform that the server is not running
                isRunningServer = false;
            }
        }

        private void ExecuteHandlerButtonFunction()
        {
            //If don't have a java process
            if (javaServerProcess == null)
            {
                //Change the interface to starting mode
                ChangeInterfaceMode(InterfaceMode.Starting);

                //Start a new thread to start the process
                AsyncTaskSimplified asyncTask = new AsyncTaskSimplified(this, new string[] { });
                asyncTask.onStartTask_RunMainThread += (callerWindow, startParams) => { };
                asyncTask.onExecuteTask_RunBackground += (callerWindow, startParams, threadTools) =>
                {
                    //Prepare the CMD process
                    Process cmdProcess = new Process();
                    cmdProcess.StartInfo.FileName = "cmd.exe";
                    cmdProcess.StartInfo.Arguments = "/k";
                    cmdProcess.StartInfo.UseShellExecute = false;
                    cmdProcess.StartInfo.CreateNoWindow = true;
                    cmdProcess.StartInfo.RedirectStandardInput = true;
                    cmdProcess.StartInfo.RedirectStandardOutput = true;
                    cmdProcess.StartInfo.WorkingDirectory = @"C:\";
                    cmdProcess.OutputDataReceived += new DataReceivedEventHandler((s, e) =>
                    {
                        //If don't have data, cancel
                        if (String.IsNullOrEmpty(e.Data) == true)
                            return;

                        //Repass this output to post process
                        Application.Current.Dispatcher.Invoke(new Action(() => { PostProcessReceivedLogFromServer(e.Data); }));
                    });

                    //Start the process, enable output reading and store a reference for the process
                    cmdProcess.Start();
                    cmdProcess.BeginOutputReadLine();
                    javaServerProcess = cmdProcess;

                    //Wait time
                    threadTools.MakeThreadSleep(250);

                    //Change to directory of the ServerData
                    javaServerProcess.StandardInput.WriteLine("cd /d \"" + serverDataFolderPath + "\"");

                    //Wait time
                    threadTools.MakeThreadSleep(250);

                    //Start the server running the "run.bat"
                    javaServerProcess.StandardInput.WriteLine("run.bat");

                    //Finish the thread...
                    return new string[] { "none" };
                };
                asyncTask.onDoneTask_RunMainThread += (callerWindow, backgroundResult) => { };
                asyncTask.Execute(AsyncTaskSimplified.ExecutionMode.NewDefaultThread);

                //Cancel
                return;
            }

            //If have a java process
            if (javaServerProcess != null)
            {
                //Send command to stop
                javaServerProcess.StandardInput.WriteLine("stop");

                //Cancel
                return;
            }
        }

        private void PostProcessReceivedLogFromServer(string receivedLog)
        {
            //Execute logs triggers of server panel
            if(true == true)
            {
                //If contains the done message, change the interface to running
                if (receivedLog.Contains("s)! For help, type \"help\"") == true)
                    ChangeInterfaceMode(InterfaceMode.Running);

                //If contains the stopping message, change the interface to stopping
                if (receivedLog.Contains("[Server thread/INFO] [minecraft/MinecraftServer]: Stopping the server") == true)
                    ChangeInterfaceMode(InterfaceMode.Stopping);

                //If contains a message of stop, change the interface to stopped
                if (receivedLog.Contains("[Server thread/INFO] [minecraft/MinecraftServer]: ThreadedAnvilChunkStorage: All dimensions are saved") == true || 
                    receivedLog.Contains("[Server thread/INFO] [simplelogin/]: Saving all entries") == true)
                    ChangeInterfaceMode(InterfaceMode.Stopped);

                //If containas a message of player join
                if (receivedLog.Contains(" joined the game") == true)
                    ProcessConnectedPlayer(ConnectionType.Joinned, receivedLog.Split(" ")[4]);

                //If containas a message of player left
                if (receivedLog.Contains(" left the game") == true)
                    ProcessConnectedPlayer(ConnectionType.Left, receivedLog.Split(" ")[4]);

                //If is a log of spark, ignore it completely in the logs scrollview
                if (receivedLog.Contains("[spark-worker-pool") == true)
                {
                    //If is a log of tps result, capture the TPS of last 5 seconds
                    if(receivedLog.Contains("[?]  ") == true && receivedLog.Contains(".") == true && receivedLog.Contains(", ") == true)
                    {
                        //Get the first value of TPS of last 5 seconds (rounding it to low, to easy view of variations)
                        string rawTpsOfLast5Secs = receivedLog.Split(" ")[5].Replace("*", "").Replace(",", "").Replace(".", ",").Split(",")[0];

                        //Convert it to float
                        float floatTps = 0.0f;
                        float.TryParse(rawTpsOfLast5Secs, out floatTps);

                        //If the time elapsed since the command of this TPS and this response, was greather than 5 seconds, inform 0 TPS
                        int responseWaitTime = ((new TimeSpan(DateTime.Now.Ticks)) - (new TimeSpan(stats_tpsMonitorLastTpsRequestTime))).Seconds;
                        if (responseWaitTime >= 5)
                            floatTps = 0.0f;

                        //Add it to list of tps entries
                        stats_tpsMonitorEntries.Insert(0, new TpsEntry(floatTps, DateTime.Now.Ticks));

                        //Inform that is not waiting response more
                        stats_tpsMonitorWaitingTpsReply = false;
                    }

                    //Cancel here
                    return;
                }
            }

            //Increase the logs count
            logsRawCounter += 1;
            logsCount.Text = (logsRawCounter.ToString() + " Logs");

            //If have more than 500 logs in the scrollview...
            if (listOfLogs.Count >= 500)
            {
                //Remove the most older log
                logsList.Children.Remove(listOfLogs[0]);
                listOfLogs.RemoveAt(0);
            }

            //Show the log in the scrollview
            LogItem newItem = new LogItem(receivedLog);
            logsList.Children.Add(newItem);
            listOfLogs.Add(newItem);

            //Configure it
            newItem.HorizontalAlignment = HorizontalAlignment.Stretch;
            newItem.VerticalAlignment = VerticalAlignment.Top;
            newItem.Width = double.NaN;
            newItem.Height = double.NaN;
            newItem.Margin = new Thickness(0, 0, 0, 8);

            //If the scroll lock is enabled, move the scrollview to down
            if (isScrollLocked == true)
                logsScroll.ScrollToEnd();
        }
    
        private void MoveIntoHistory(HistoryMovement historyMovement)
        {
            //Modify the index
            if (historyMovement == HistoryMovement.Up)
                indexAtCommandHistory += 1;
            if (historyMovement == HistoryMovement.Down)
                indexAtCommandHistory -= 1;

            //Fixe the index movement
            if (indexAtCommandHistory < 0)
                indexAtCommandHistory = 0;
            if (indexAtCommandHistory > (commandHistory.Count - 1))
                indexAtCommandHistory = (commandHistory.Count - 1);

            //Get the item of history to the input
            commandInput.Text = commandHistory[indexAtCommandHistory];

            //Move the edit cursor to end of string
            commandInput.CaretIndex = commandInput.Text.Length;
        }

        private void SendCommand()
        {
            //If don't have something typed, cancel
            if (commandInput.Text == "")
                return;

            //Send the command
            if(javaServerProcess != null)
            {
                //If command mode is enabled
                if(isCommandMode == true)
                    javaServerProcess.StandardInput.WriteLine(commandInput.Text);
                //If command mode is disabled
                if (isCommandMode == false)
                    javaServerProcess.StandardInput.WriteLine(("say " + commandInput.Text));
            }

            //Add this command to history
            commandHistory.Insert(1, commandInput.Text);

            //Debug history...
            //StringBuilder st = new StringBuilder();
            //foreach(string item in commandHistory)
            //    st.Append(item + "\n");
            //File.WriteAllText("cmd_history.txt", st.ToString());

            //Clear the command input
            commandInput.Text = "";
        }
    
        private void ToggleScrollLockButton()
        {
            //If is currently locked
            if (isScrollLocked == true)
            {
                //Change the image
                lockButtonImg.Source = new BitmapImage(new Uri(@"pack://application:,,,/Resources/unlock-icon.png"));

                //Inform that is unlocked
                isScrollLocked = false;
                //Stop here
                return;
            }

            //If is currently unlocked
            if (isScrollLocked == false)
            {
                //Change the image
                lockButtonImg.Source = new BitmapImage(new Uri(@"pack://application:,,,/Resources/lock-icon.png"));

                //Inform that is locked
                isScrollLocked = true;
                //Stop here
                return;
            }
        }

        private void ToggleCommandModeButton()
        {
            //If is currently locked
            if (isCommandMode == true)
            {
                //Change the image
                sayButtonImg.Source = new BitmapImage(new Uri(@"pack://application:,,,/Resources/say-mode.png"));

                //Inform that is unlocked
                isCommandMode = false;
                //Stop here
                return;
            }

            //If is currently unlocked
            if (isCommandMode == false)
            {
                //Change the image
                sayButtonImg.Source = new BitmapImage(new Uri(@"pack://application:,,,/Resources/command-mode.png"));

                //Inform that is locked
                isCommandMode = true;
                //Stop here
                return;
            }
        }
    
        private void PrepareTheCommandPicker()
        {
            //Prepare the more options button
            pickerButton.ContextMenu = new ContextMenu();
            //Setup the context menu display
            pickerButton.Click += (s, e) =>
            {
                ContextMenu contextMenu = pickerButton.ContextMenu;
                contextMenu.PlacementTarget = pickerButton;
                contextMenu.IsOpen = true;
                e.Handled = true;
            };

            //================== Game Rule: START ==================//
            MenuItem gameRuleRoot = new MenuItem();
            gameRuleRoot.Header = "Game Rules";
            pickerButton.ContextMenu.Items.Add(gameRuleRoot);

            MenuItem gameRule_DoFireTick = new MenuItem();
            gameRule_DoFireTick.Header = "doFireTick";
            gameRuleRoot.Items.Add(gameRule_DoFireTick);

            MenuItem gameRuleRoot_SeeDoFireTick = new MenuItem();
            gameRuleRoot_SeeDoFireTick.Header = "Ver-> doFireTick";
            gameRuleRoot_SeeDoFireTick.Click += (s, e) => { commandInput.Text = "gamerule doFireTick"; };
            gameRule_DoFireTick.Items.Add(gameRuleRoot_SeeDoFireTick);

            MenuItem gameRuleRoot_SetTrueDoFireTick = new MenuItem();
            gameRuleRoot_SetTrueDoFireTick.Header = "Ativar-> doFireTick";
            gameRuleRoot_SetTrueDoFireTick.Click += (s, e) => { commandInput.Text = "gamerule doFireTick true"; };
            gameRule_DoFireTick.Items.Add(gameRuleRoot_SetTrueDoFireTick);

            MenuItem gameRuleRoot_SetFalseDoFireTick = new MenuItem();
            gameRuleRoot_SetFalseDoFireTick.Header = "Desativar-> doFireTick";
            gameRuleRoot_SetFalseDoFireTick.Click += (s, e) => { commandInput.Text = "gamerule doFireTick false"; };
            gameRule_DoFireTick.Items.Add(gameRuleRoot_SetFalseDoFireTick);

            MenuItem gameRule_MobGriefing = new MenuItem();
            gameRule_MobGriefing.Header = "mobGriefing";
            gameRuleRoot.Items.Add(gameRule_MobGriefing);

            MenuItem gameRuleRoot_SeeMobGriefing = new MenuItem();
            gameRuleRoot_SeeMobGriefing.Header = "Ver-> mobGriefing";
            gameRuleRoot_SeeMobGriefing.Click += (s, e) => { commandInput.Text = "gamerule mobGriefing"; };
            gameRule_MobGriefing.Items.Add(gameRuleRoot_SeeMobGriefing);

            MenuItem gameRuleRoot_SetTrueMobGriefing = new MenuItem();
            gameRuleRoot_SetTrueMobGriefing.Header = "Ativar-> mobGriefing";
            gameRuleRoot_SetTrueMobGriefing.Click += (s, e) => { commandInput.Text = "gamerule mobGriefing true"; };
            gameRule_MobGriefing.Items.Add(gameRuleRoot_SetTrueMobGriefing);

            MenuItem gameRuleRoot_SetFalseMobGriefing = new MenuItem();
            gameRuleRoot_SetFalseMobGriefing.Header = "Desativar-> mobGriefing";
            gameRuleRoot_SetFalseMobGriefing.Click += (s, e) => { commandInput.Text = "gamerule mobGriefing false"; };
            gameRule_MobGriefing.Items.Add(gameRuleRoot_SetFalseMobGriefing);

            //================== Pre-Generator: START ==================//

            MenuItem preGeneratorRoot = new MenuItem();
            preGeneratorRoot.Header = "Pre-Generator";
            pickerButton.ContextMenu.Items.Add(preGeneratorRoot);

            MenuItem preGeneratorRoot_Generate63Chunks = new MenuItem();
            preGeneratorRoot_Generate63Chunks.Header = "Pre-Gerar-> Raio de 1000 Blocos a Partir do Spawn";
            preGeneratorRoot_Generate63Chunks.Click += (s, e) => { commandInput.Text = "pregen start gen radius Gerar63Chunks SQUARE 0 0 63 minecraft:overworld NORMAL_GEN"; };
            preGeneratorRoot.Items.Add(preGeneratorRoot_Generate63Chunks);

            MenuItem preGeneratorRoot_Generate125Chunks = new MenuItem();
            preGeneratorRoot_Generate125Chunks.Header = "Pre-Gerar-> Raio de 2000 Blocos a Partir do Spawn (Usar depois da opção acima!)";
            preGeneratorRoot_Generate125Chunks.Click += (s, e) => { commandInput.Text = "pregen start gen radius Gerar125Chunks SQUARE 0 0 125 minecraft:overworld NORMAL_GEN"; };
            preGeneratorRoot.Items.Add(preGeneratorRoot_Generate125Chunks);

            MenuItem preGeneratorRoot_Generate200Chunks = new MenuItem();
            preGeneratorRoot_Generate200Chunks.Header = "Pre-Gerar-> Raio de 3200 Blocos a Partir do Spawn (Usar depois da opção acima!)";
            preGeneratorRoot_Generate200Chunks.Click += (s, e) => { commandInput.Text = "pregen start gen radius Gerar200Chunks SQUARE 0 0 200 minecraft:overworld NORMAL_GEN"; };
            preGeneratorRoot.Items.Add(preGeneratorRoot_Generate200Chunks);

            MenuItem preGeneratorRoot_Generate400Chunks = new MenuItem();
            preGeneratorRoot_Generate400Chunks.Header = "Pre-Gerar-> Raio de 6400 Blocos a Partir do Spawn (Usar depois da opção acima!)";
            preGeneratorRoot_Generate400Chunks.Click += (s, e) => { commandInput.Text = "pregen start gen radius Gerar400Chunks SQUARE 0 0 400 minecraft:overworld NORMAL_GEN"; };
            preGeneratorRoot.Items.Add(preGeneratorRoot_Generate400Chunks);

            MenuItem preGeneratorRoot_ListTasks = new MenuItem();
            preGeneratorRoot_ListTasks.Header = "Tarefas-> Listar";
            preGeneratorRoot_ListTasks.Click += (s, e) => { commandInput.Text = "pregen taskList gen"; };
            preGeneratorRoot.Items.Add(preGeneratorRoot_ListTasks);

            MenuItem preGeneratorRoot_Pause = new MenuItem();
            preGeneratorRoot_Pause.Header = "Tarefas-> Pausar";
            preGeneratorRoot_Pause.Click += (s, e) => { commandInput.Text = "pregen pause NomeDaTarefa"; };
            preGeneratorRoot.Items.Add(preGeneratorRoot_Pause);

            MenuItem preGeneratorRoot_Resume = new MenuItem();
            preGeneratorRoot_Resume.Header = "Tarefas-> Continuar";
            preGeneratorRoot_Resume.Click += (s, e) => { commandInput.Text = "pregen resume NomeDaTarefa"; };
            preGeneratorRoot.Items.Add(preGeneratorRoot_Resume);

            //================== Simple Login: START ==================//

            MenuItem simpleLoginRoot = new MenuItem();
            simpleLoginRoot.Header = "Simple Login";
            pickerButton.ContextMenu.Items.Add(simpleLoginRoot);

            MenuItem simpleLoginRoot_UnregisterPlayer = new MenuItem();
            simpleLoginRoot_UnregisterPlayer.Header = "Contas-> Desregistrar Usuário (Apagar Senha)";
            simpleLoginRoot_UnregisterPlayer.Click += (s, e) => { commandInput.Text = "simplelogin unregister PlayerNickName"; };
            simpleLoginRoot.Items.Add(simpleLoginRoot_UnregisterPlayer);

            MenuItem simpleLoginRoot_DefaultGameMode = new MenuItem();
            simpleLoginRoot_DefaultGameMode.Header = "Contas-> Definir Game Mode Padrão do Usuário";
            simpleLoginRoot_DefaultGameMode.Click += (s, e) => { commandInput.Text = "simplelogin setDefaultGameType PlayerNickName 0or1"; };
            simpleLoginRoot.Items.Add(simpleLoginRoot_DefaultGameMode);

            MenuItem simpleLoginRoot_SaveDatabase = new MenuItem();
            simpleLoginRoot_SaveDatabase.Header = "Contas-> Salvar Registros no Disco";
            simpleLoginRoot_SaveDatabase.Click += (s, e) => { commandInput.Text = "simplelogin save"; };
            simpleLoginRoot.Items.Add(simpleLoginRoot_SaveDatabase);

            //================== Moderation: START ==================//

            MenuItem moderationRoot = new MenuItem();
            moderationRoot.Header = "Moderação";
            pickerButton.ContextMenu.Items.Add(moderationRoot);

            MenuItem moderationRoot_BanListNick = new MenuItem();
            moderationRoot_BanListNick.Header = "Banimentos-> Listar Banimentos de Nickname";
            moderationRoot_BanListNick.Click += (s, e) => { commandInput.Text = "banlist players"; };
            moderationRoot.Items.Add(moderationRoot_BanListNick);

            MenuItem moderationRoot_BanListIp = new MenuItem();
            moderationRoot_BanListIp.Header = "Banimentos-> Listar Banimentos de IP";
            moderationRoot_BanListIp.Click += (s, e) => { commandInput.Text = "banlist ips"; };
            moderationRoot.Items.Add(moderationRoot_BanListIp);

            MenuItem moderationRoot_PardonNick = new MenuItem();
            moderationRoot_PardonNick.Header = "Banimentos-> Desbanir Nickname";
            moderationRoot_PardonNick.Click += (s, e) => { commandInput.Text = "pardon PlayerNickName"; };
            moderationRoot.Items.Add(moderationRoot_PardonNick);

            MenuItem moderationRoot_PardonIp = new MenuItem();
            moderationRoot_PardonIp.Header = "Banimentos-> Desbanir IP";
            moderationRoot_PardonIp.Click += (s, e) => { commandInput.Text = "pardon-ip 0.0.0.0"; };
            moderationRoot.Items.Add(moderationRoot_PardonIp);
        }

        private void ProcessConnectedPlayer(ConnectionType connectionType, string playerNick)
        {
            //Create the skins cache directory, if don't have
            if (Directory.Exists((serverPanelFolderPath + "/skins")) == false)
                Directory.CreateDirectory((serverPanelFolderPath + "/skins"));

            //If is a join operation...
            if(connectionType == ConnectionType.Joinned)
            {
                //Add the player in the list
                PlayerItem newItem = new PlayerItem(this, serverPanelFolderPath, playerNick);
                playersList.Children.Add(newItem);

                //Force the update of the player skin
                newItem.UpdateSkin();

                //Configure it
                newItem.HorizontalAlignment = HorizontalAlignment.Stretch;
                newItem.VerticalAlignment = VerticalAlignment.Top;
                newItem.Width = double.NaN;
                newItem.Height = double.NaN;
                newItem.Margin = new Thickness(0, 0, 0, 8);

                //Add the player in the dictionary
                if (playersOnlineDictionary.ContainsKey(playerNick) == false)
                    playersOnlineDictionary.Add(playerNick, newItem);

                //If the player skin, not exists, and the player is not in the skin download queue, add it
                if (File.Exists((serverPanelFolderPath + "/skins/" + playerNick + ".png")) == false && playersSkinsInDownloadDictionary.ContainsKey(playerNick) == false)
                    DownloadPlayerSkin(playerNick);

                //Update the players online counter
                UpdatePlayersOnlineCounter();
            }

            //If is a left operation..
            if (connectionType == ConnectionType.Left)
            {
                //If the player does not exists in dictionary, cancel
                if (playersOnlineDictionary.ContainsKey(playerNick) == false)
                    return;

                //Remove the player from the list
                playersList.Children.Remove(playersOnlineDictionary[playerNick]);

                //Remove the player from the dictionary
                playersOnlineDictionary.Remove(playerNick);

                //Update the players online counter
                UpdatePlayersOnlineCounter();
            }
        }

        private void DownloadPlayerSkin(string playerNick)
        {
            //Add the player to queue of skins download
            playersSkinsInDownloadDictionary.Add(playerNick, -1);

            //Start a thread to run
            AsyncTaskSimplified asyncTask = new AsyncTaskSimplified(this, new string[] { playerNick });
            asyncTask.onStartTask_RunMainThread += (callerWindow, startParams) => { };
            asyncTask.onExecuteTask_RunBackground += (callerWindow, startParams, threadTools) =>
            {
                //Get the data
                string playerNickNameToDownload = startParams[0];

                //Wait some time
                threadTools.MakeThreadSleep(1500);

                //Try to download the alex skin first
                try
                {
                    //Prepare the target download URL
                    string downloadUrl = (@"https://marcos4503.github.io/the-last-days-launcher/Repository-Pages/cosmetics-db/"+ playerNickNameToDownload + "=bskin_alex.png");
                    string saveAsPath = (serverPanelFolderPath + @"/skins/" + playerNickNameToDownload + ".png");
                    //Download the current version file
                    HttpClient httpClient = new HttpClient();
                    HttpResponseMessage httpRequestResult = httpClient.GetAsync(downloadUrl).Result;
                    httpRequestResult.EnsureSuccessStatusCode();
                    Stream downloadStream = httpRequestResult.Content.ReadAsStreamAsync().Result;
                    FileStream fileStream = new FileStream(saveAsPath, FileMode.Create, FileAccess.Write, FileShare.None);
                    downloadStream.CopyTo(fileStream);
                    httpClient.Dispose();
                    fileStream.Dispose();
                    fileStream.Close();
                    downloadStream.Dispose();
                    downloadStream.Close();
                }
                catch (Exception ex)
                {
                    //Try to download the steve skin if alex fails
                    try
                    {
                        //Prepare the target download URL
                        string downloadUrl = (@"https://marcos4503.github.io/the-last-days-launcher/Repository-Pages/cosmetics-db/" + playerNickNameToDownload + "=bskin_steve.png");
                        string saveAsPath = (serverPanelFolderPath + @"/skins/" + playerNickNameToDownload + ".png");
                        //Download the current version file
                        HttpClient httpClient = new HttpClient();
                        HttpResponseMessage httpRequestResult = httpClient.GetAsync(downloadUrl).Result;
                        httpRequestResult.EnsureSuccessStatusCode();
                        Stream downloadStream = httpRequestResult.Content.ReadAsStreamAsync().Result;
                        FileStream fileStream = new FileStream(saveAsPath, FileMode.Create, FileAccess.Write, FileShare.None);
                        downloadStream.CopyTo(fileStream);
                        httpClient.Dispose();
                        fileStream.Dispose();
                        fileStream.Close();
                        downloadStream.Dispose();
                        downloadStream.Close();
                    }
                    catch { }
                }

                //Finish the thread...
                return new string[] { playerNickNameToDownload };
            };
            asyncTask.onDoneTask_RunMainThread += (callerWindow, backgroundResult) =>
            {
                //Remove this player from the skin download queue
                playersSkinsInDownloadDictionary.Remove(backgroundResult[0]);

                //Force update the skins of this player in the list of online players
                if (playersOnlineDictionary.ContainsKey(backgroundResult[0]) == true)
                    playersOnlineDictionary[backgroundResult[0]].UpdateSkin();
            };
            asyncTask.Execute(AsyncTaskSimplified.ExecutionMode.NewDefaultThread);
        }
    
        private void UpdatePlayersOnlineCounter()
        {
            //Update the counter of online players
            playersOnlineCounter.Text = ("Jogadores Online - " + playersOnlineDictionary.Keys.Count);
        }
    
        private void StartAllStatisticsCoroutines()
        {
            //START: Running Timer
            if (stats_runningTimerCoroutine == null)
                stats_runningTimerCoroutine = Coroutine.Start(StatsCoroutine_RunningTimer());

            //START: TPS Monitor
            if (stats_tpsMonitorCoroutine == null)
                stats_tpsMonitorCoroutine = Coroutine.Start(StatsCoroutine_TpsMonitor());

            //START: Panel RAM Monitor
            if (stats_panelRamMonitorCoroutine == null)
                stats_panelRamMonitorCoroutine = Coroutine.Start(StatsCoroutine_PanelRamMonitor());

            //START: Server RAM Monitor
            if (stats_serverRamMonitorCoroutine == null)
                stats_serverRamMonitorCoroutine = Coroutine.Start(StatsCoroutine_ServerRamMonitor());

            //START: Server CPU Monitor
            if (stats_serverCpuMonitorCoroutine == null)
                stats_serverCpuMonitorCoroutine = Coroutine.Start(StatsCoroutine_ServerCpuMonitor());
        }

        private IEnumerator StatsCoroutine_RunningTimer()
        {
            //Wait some time
            yield return new WaitForSeconds(0.5f);

            //Prepare the string builder
            StringBuilder stringBuilder = new StringBuilder();

            //Create the update loop
            while (true)
            {
                //Increase the second
                stats_runningTimerSeconds += 1;

                //Process the clock logic
                if (stats_runningTimerSeconds >= 60)
                {
                    stats_runningTimerMinutes += 1;
                    stats_runningTimerSeconds = 0;
                }
                if (stats_runningTimerMinutes >= 60)
                {
                    stats_runningTimerHours += 1;
                    stats_runningTimerSeconds = 0;
                }

                //Build the time string
                if (stats_runningTimerHours < 10)
                {
                    stringBuilder.Append("0");
                    stringBuilder.Append(stats_runningTimerHours);
                }
                if (stats_runningTimerHours >= 10)
                    stringBuilder.Append(stats_runningTimerHours);
                stringBuilder.Append(":");
                if (stats_runningTimerMinutes < 10)
                {
                    stringBuilder.Append("0");
                    stringBuilder.Append(stats_runningTimerMinutes);
                }
                if (stats_runningTimerMinutes >= 10)
                    stringBuilder.Append(stats_runningTimerMinutes);
                stringBuilder.Append(":");
                if (stats_runningTimerSeconds < 10)
                {
                    stringBuilder.Append("0");
                    stringBuilder.Append(stats_runningTimerSeconds);
                }
                if (stats_runningTimerSeconds >= 10)
                    stringBuilder.Append(stats_runningTimerSeconds);

                //Update the timer
                statusMessage.Text = "Rodando. Tempo de execução: " + stringBuilder.ToString();

                //Reset the string builder
                stringBuilder.Clear();

                //Wait 1 second
                yield return new WaitForSeconds(1.0f);
            }
        }

        private IEnumerator StatsCoroutine_TpsMonitor()
        {
            //Reset the TPS interface
            tpsCount.Text = "0 TPS";
            lagSpikes.Text = "0 Picos";

            //Put all graphic bars in a list
            List<ProgressBar> tpsBars = new List<ProgressBar>();
            tpsBars.Add(tps0);
            tpsBars.Add(tps1);
            tpsBars.Add(tps2);
            tpsBars.Add(tps3);
            tpsBars.Add(tps4);
            tpsBars.Add(tps5);

            //Reset size of all bars
            foreach (ProgressBar bar in tpsBars)
                bar.Value = 0;

            //Fill the tps entries with first 6 registers
            stats_tpsMonitorEntries.Add(new TpsEntry(0.0f, DateTime.Now.Ticks));
            stats_tpsMonitorEntries.Add(new TpsEntry(0.0f, DateTime.Now.Ticks));
            stats_tpsMonitorEntries.Add(new TpsEntry(0.0f, DateTime.Now.Ticks));
            stats_tpsMonitorEntries.Add(new TpsEntry(0.0f, DateTime.Now.Ticks));
            stats_tpsMonitorEntries.Add(new TpsEntry(0.0f, DateTime.Now.Ticks));
            stats_tpsMonitorEntries.Add(new TpsEntry(0.0f, DateTime.Now.Ticks));

            //Wait some time
            yield return new WaitForSeconds(1.0f);

            //Create the update loop
            while (true)
            {
                //Send the command to get TPS information
                javaServerProcess.StandardInput.WriteLine("spark tps");

                //Inform that is waiting response of tps command
                stats_tpsMonitorLastTpsRequestTime = DateTime.Now.Ticks;
                stats_tpsMonitorWaitingTpsReply = true;

                //Wait for the response of tps command
                int waitIterations = 0;
                while(stats_tpsMonitorWaitingTpsReply == true)
                {
                    //If waited 4 times, inform 0 TPS on first register to inform that the server is with low TPS currently
                    if (waitIterations >= 4)
                    {
                        tpsCount.Text = "0 TPS";
                        tpsBars[0].Value = 0.0f;
                    }

                    //Increase wait iterations
                    waitIterations += 1;

                    //Wait 1 second
                    yield return new WaitForSeconds(1.0f);
                }

                //Remove the last response of the list
                stats_tpsMonitorEntries.RemoveAt((stats_tpsMonitorEntries.Count - 1));

                //Detect the greather value of all entries
                float greatherTpsValue = 0.0f;
                foreach (TpsEntry entry in stats_tpsMonitorEntries)
                    if (entry.tpsValue > greatherTpsValue)
                        greatherTpsValue = entry.tpsValue;

                //Render each entry in the bars graphic history
                for (int i = 0; i < tpsBars.Count; i++)
                {
                    //Get the value
                    float value = ((stats_tpsMonitorEntries[i].tpsValue / greatherTpsValue) * 100.0f);

                    //Set the value
                    tpsBars[i].Value = (float.IsNaN(value) == true) ? 0.0f : value;
                }

                //Show the first register value on TPS counter
                tpsCount.Text = (stats_tpsMonitorEntries[0].tpsValue.ToString("F0") + " TPS");

                //If the first register is with 17 TPS or less, report a lag spike
                if (stats_tpsMonitorEntries[0].tpsValue <= 17.0f)
                    stats_tpsMonitorLagSpikes += 1;
                lagSpikes.Text = (stats_tpsMonitorLagSpikes + " Picos");

                //Prepare the time to wait
                float waitTime = 5.0f;
                //Reduce 1 second foreach 1 second waiting response of last command send
                waitTime = waitTime - (1.0f * waitIterations);
                //If the wait time is less than zero, fix it
                if (waitTime <= 0.0f)
                    waitTime = 0.0f;
                //Wait the needed time before send the next tps command
                yield return new WaitForSeconds(waitTime);
            }
        }

        private IEnumerator StatsCoroutine_PanelRamMonitor()
        {
            //Get this process
            Process currentProcess = Process.GetCurrentProcess();

            //Prepare the performance counter
            stats_panelRamMonitorCounter = new PerformanceCounter();
            stats_panelRamMonitorCounter.CategoryName = "Process";
            stats_panelRamMonitorCounter.CounterName = "Working Set - Private";
            stats_panelRamMonitorCounter.InstanceName = currentProcess.ProcessName;

            //Wait some time
            yield return new WaitForSeconds(1.0f);

            //Create the update loop
            while (true)
            {
                //If the process was endend, break the loop
                if (currentProcess.HasExited == true)
                    break;

                //Get the RAM usage using Performance Counter for more proximity with Windows Task Manager
                int ramUsageMb = (int)((double)stats_panelRamMonitorCounter.RawValue / 1024.0f / 1024.0f);

                //Show the RAM usage in the window
                panelRam.Text = (ramUsageMb + " MB");

                //Wait some time before next update
                yield return new WaitForSeconds(5.0f);
            }
        }

        private IEnumerator StatsCoroutine_ServerRamMonitor()
        {
            //Get java processes
            Process[] foundProcesses = Process.GetProcessesByName("java");
            //Get the server process
            Process serverProcess = null;
            if(foundProcesses.Length > 0)
                serverProcess = foundProcesses[0];

            //If found a process, continue
            if(serverProcess != null)
            {
                //Prepare the storage for the max ram available
                string maxRamAvailable = "0 GB";
                //Read the "run.bat" file
                string[] runBatLines = File.ReadAllLines((serverDataFolderPath + "/run.bat"));
                //Search by the arguments line
                foreach(string line in runBatLines)
                {
                    //If line don't contain the "-Xmx", ignore
                    if (line.Contains("-Xmx") == false)
                        continue;

                    //Split the line to get each argument
                    string[] args = line.Split(" ");

                    //Check each argument
                    foreach(string arg in args)
                        if(arg.Contains("-Xmx") == true)
                        {
                            maxRamAvailable = (arg.Replace("-Xmx", "").Replace("G", "") + " GB");
                            break;
                        }

                    //If already found max ram, cancel
                    if (maxRamAvailable != "0 GB")
                        break;
                }

                //Prepare the performance counter
                stats_serverRamMonitorCounter = new PerformanceCounter();
                stats_serverRamMonitorCounter.CategoryName = "Process";
                stats_serverRamMonitorCounter.CounterName = "Working Set - Private";
                stats_serverRamMonitorCounter.InstanceName = serverProcess.ProcessName;

                //Wait some time
                yield return new WaitForSeconds(1.0f);

                //Create the update loop
                while (true)
                {
                    //If the process was endend, break the loop
                    if (serverProcess.HasExited == true)
                        break;

                    //Get the RAM usage using Performance Counter for more proximity with Windows Task Manager
                    double ramUsageGb = ((double)stats_serverRamMonitorCounter.RawValue / 1024.0f / 1024.0f / 1024.0f);

                    //Show the RAM usage in the window
                    serverRam.Text = (ramUsageGb.ToString("F1").Replace(",", ".") + " GB / " + maxRamAvailable);

                    //Wait some time before next update
                    yield return new WaitForSeconds(5.0f);
                }
            }
        }

        private IEnumerator StatsCoroutine_ServerCpuMonitor()
        {
            //Get java processes
            Process[] foundProcesses = Process.GetProcessesByName("java");
            //Get the server process
            Process serverProcess = null;
            if (foundProcesses.Length > 0)
                serverProcess = foundProcesses[0];

            //If found a process, continue
            if (serverProcess != null)
            {
                //Prepare the performance counter
                stats_serverCpuMonitorCounter = new PerformanceCounter();
                stats_serverCpuMonitorCounter.CategoryName = "Process";
                stats_serverCpuMonitorCounter.CounterName = "% Processor Time";
                stats_serverCpuMonitorCounter.InstanceName = serverProcess.ProcessName;

                //Wait some time
                yield return new WaitForSeconds(1.0f);

                //Create the update loop
                while (true)
                {
                    //If the process was endend, break the loop
                    if (serverProcess.HasExited == true)
                        break;

                    //Get the CPU usage using Performance Counter for more proximity with Windows Task Manager
                    float cpuUsage = (stats_serverCpuMonitorCounter.NextValue() / (float)Environment.ProcessorCount);

                    //Show the CPU usage in the window
                    serverCpu.Text = (cpuUsage.ToString("F1").Replace(",", ".") + "%");

                    //Wait some time before next update
                    yield return new WaitForSeconds(1.0f);
                }
            }
        }

        private void StopAllStatisticsCoroutines()
        {
            //STOP: Running Timer
            if (stats_runningTimerCoroutine != null)
                stats_runningTimerCoroutine.Dispose();
            stats_runningTimerCoroutine = null;
            stats_runningTimerSeconds = 0;
            stats_runningTimerMinutes = 0;
            stats_runningTimerHours = 0;

            //STOP: TPS Monitor
            if (stats_tpsMonitorCoroutine != null)
                stats_tpsMonitorCoroutine.Dispose();
            stats_tpsMonitorCoroutine = null;
            stats_tpsMonitorEntries.Clear();
            stats_tpsMonitorLastTpsRequestTime = 0l;
            stats_tpsMonitorWaitingTpsReply = false;
            stats_tpsMonitorLagSpikes = 0;
            tpsCount.Text = "0 TPS";
            lagSpikes.Text = "0 Picos";
            tps0.Value = 0.0f;
            tps1.Value = 0.0f;
            tps2.Value = 0.0f;
            tps3.Value = 0.0f;
            tps4.Value = 0.0f;
            tps5.Value = 0.0f;

            //STOP: Panel RAM Monitor
            if (stats_panelRamMonitorCoroutine != null)
                stats_panelRamMonitorCoroutine.Dispose();
            stats_panelRamMonitorCoroutine = null;
            panelRam.Text = "0 MB";
            if(stats_panelRamMonitorCounter != null)
            {
                stats_panelRamMonitorCounter.Close();
                stats_panelRamMonitorCounter.Dispose();
            }
            stats_panelRamMonitorCounter = null;

            //STOP: Server RAM Monitor
            if (stats_serverRamMonitorCoroutine != null)
                stats_serverRamMonitorCoroutine.Dispose();
            stats_serverRamMonitorCoroutine = null;
            serverRam.Text = "0.0 GB / 0 GB";
            if (stats_serverRamMonitorCounter != null)
            {
                stats_serverRamMonitorCounter.Close();
                stats_serverRamMonitorCounter.Dispose();
            }
            stats_serverRamMonitorCounter = null;

            //START: Server CPU Monitor
            if (stats_serverCpuMonitorCoroutine != null)
                stats_serverCpuMonitorCoroutine.Dispose();
            stats_serverCpuMonitorCoroutine = null;
            serverCpu.Text = "0.0%";
            if (stats_serverCpuMonitorCounter != null)
            {
                stats_serverCpuMonitorCounter.Close();
                stats_serverCpuMonitorCounter.Dispose();
            }
            stats_serverCpuMonitorCounter = null;
        }
    }
}
