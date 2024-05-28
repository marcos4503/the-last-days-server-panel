using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
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

namespace The_Last_Days_Server_Panel.Controls
{
    //Core methods

    public partial class PlayerItem : UserControl
    {
        //Private variables
        private MainWindow mainWindorRef = null;
        private string serverPanelFolderPath = "";
        private string nickname = "";

        //Core methods

        public PlayerItem(MainWindow mainWindow, string serverPanelFolderPath, string playerNickname)
        {
            //Initialize the component
            InitializeComponent();

            //Inform that is the DataConext of this User Control
            this.DataContext = this;

            //Store the data
            this.mainWindorRef = mainWindow;
            this.nickname = playerNickname;
            this.serverPanelFolderPath = serverPanelFolderPath;

            //Prepare the UI
            PrepareTheUI();
        }
    
        private void PrepareTheUI()
        {
            //Setup the highlight on mouse hover
            background.MouseEnter += (s, e) =>
            {
                background.Background = new SolidColorBrush(Color.FromArgb(255, 213, 241, 255));
            };
            background.MouseLeave += (s, e) =>
            {
                background.Background = new SolidColorBrush(Color.FromArgb(0, 255, 255, 255));
            };



            //Render the nickname
            playerNick.Text = nickname;



            //Prepare the right click context menu
            background.ContextMenu = new ContextMenu();
            //Setup the context menu display
            background.MouseDown += (s, e) =>
            {
                //Filter to only right click...
                if (e.ChangedButton == MouseButton.Right)
                {
                    ContextMenu contextMenu = background.ContextMenu;
                    contextMenu.PlacementTarget = background;
                    contextMenu.IsOpen = true;
                    e.Handled = true;
                }
                e.Handled = true;
            };

            //Add "kill" option to options menu
            MenuItem killItem = new MenuItem();
            killItem.Header = "Matar";
            killItem.Click += (s, e) => 
            {
                //Send command, if have a process
                if(mainWindorRef.javaServerProcess != null)
                    mainWindorRef.javaServerProcess.StandardInput.WriteLine("kill " + nickname);
            };
            background.ContextMenu.Items.Add(killItem);

            //Add "restore health" option to options menu
            MenuItem restoreHpItem = new MenuItem();
            restoreHpItem.Header = "Restaurar Saúde";
            restoreHpItem.Click += (s, e) =>
            {
                //Send command, if have a process
                if (mainWindorRef.javaServerProcess != null)
                    mainWindorRef.javaServerProcess.StandardInput.WriteLine("effect give " + nickname + " minecraft:instant_health 1 5 true");
            };
            background.ContextMenu.Items.Add(restoreHpItem);

            //Add "restore food" option to options menu
            MenuItem restoreFoodItem = new MenuItem();
            restoreFoodItem.Header = "Restaurar Fome";
            restoreFoodItem.Click += (s, e) =>
            {
                //Send command, if have a process
                if (mainWindorRef.javaServerProcess != null)
                    mainWindorRef.javaServerProcess.StandardInput.WriteLine("effect give " + nickname + " minecraft:saturation 1 50 true");
            };
            background.ContextMenu.Items.Add(restoreFoodItem);

            //Set Game Mode
            MenuItem gameModeRoot = new MenuItem();
            gameModeRoot.Header = "Definir Modo de Jogo";
            background.ContextMenu.Items.Add(gameModeRoot);
            MenuItem gameModeRoot_Survival = new MenuItem();
            gameModeRoot_Survival.Header = "Sobrevivência";
            gameModeRoot_Survival.Click += (s, e) =>
            {
                //Send command, if have a process
                if (mainWindorRef.javaServerProcess != null)
                    mainWindorRef.javaServerProcess.StandardInput.WriteLine("gamemode survival " + nickname);
            };
            gameModeRoot.Items.Add(gameModeRoot_Survival);
            MenuItem gameModeRoot_Creative = new MenuItem();
            gameModeRoot_Creative.Header = "Criativo";
            gameModeRoot_Creative.Click += (s, e) =>
            {
                //Send command, if have a process
                if (mainWindorRef.javaServerProcess != null)
                    mainWindorRef.javaServerProcess.StandardInput.WriteLine("gamemode creative " + nickname);
            };
            gameModeRoot.Items.Add(gameModeRoot_Creative);
            MenuItem gameModeRoot_Adventure = new MenuItem();
            gameModeRoot_Adventure.Header = "Aventura";
            gameModeRoot_Adventure.Click += (s, e) =>
            {
                //Send command, if have a process
                if (mainWindorRef.javaServerProcess != null)
                    mainWindorRef.javaServerProcess.StandardInput.WriteLine("gamemode adventure " + nickname);
            };
            gameModeRoot.Items.Add(gameModeRoot_Adventure);
            MenuItem gameModeRoot_Spectator = new MenuItem();
            gameModeRoot_Spectator.Header = "Espectador";
            gameModeRoot_Spectator.Click += (s, e) =>
            {
                //Send command, if have a process
                if (mainWindorRef.javaServerProcess != null)
                    mainWindorRef.javaServerProcess.StandardInput.WriteLine("gamemode spectator " + nickname);
            };
            gameModeRoot.Items.Add(gameModeRoot_Spectator);

            //Add "kick" option to options menu
            MenuItem kickItem = new MenuItem();
            kickItem.Header = "Expulsar";
            kickItem.Click += (s, e) =>
            {
                //Show the command in the input field
                if (mainWindorRef.commandInput.IsEnabled == true)
                    mainWindorRef.commandInput.Text = ("kick " + nickname + " \"Motivo\"");
            };
            background.ContextMenu.Items.Add(kickItem);

            //Add "ban" option to options menu
            MenuItem banItem = new MenuItem();
            banItem.Header = "Banir";
            banItem.Click += (s, e) =>
            {
                //Show the command in the input field
                if (mainWindorRef.commandInput.IsEnabled == true)
                    mainWindorRef.commandInput.Text = ("ban " + nickname + " \"Motivo\"");
            };
            background.ContextMenu.Items.Add(banItem);
        }
        
        //Auxiliar methods

        public void UpdateSkin()
        {
            //If the skin file not exists, cancel
            if (File.Exists((serverPanelFolderPath + "/skins/" + nickname + ".png")) == false)
                return;

            //Load the skin bitmap
            BitmapImage bitmapImage = new BitmapImage();
            bitmapImage.BeginInit();
            bitmapImage.CacheOption = BitmapCacheOption.OnLoad;
            bitmapImage.UriSource = new Uri((serverPanelFolderPath + "/skins/" + nickname + ".png"));
            bitmapImage.EndInit();

            //Extract the head of the image
            CroppedBitmap croppedBitmapOfHead = new CroppedBitmap(bitmapImage, new Int32Rect(8, 8, 8, 8));
            CroppedBitmap croppedBitmapOfHeadLayer = new CroppedBitmap(bitmapImage, new Int32Rect(39, 7, 10, 9));

            //Render the skin bitmap
            playerHead.Source = croppedBitmapOfHead;
            playerHeadLayer.Source = croppedBitmapOfHeadLayer;

            //Change the render mod of the image, to not use image filtering, like minecraft
            RenderOptions.SetBitmapScalingMode(playerHead, BitmapScalingMode.NearestNeighbor);
            RenderOptions.SetBitmapScalingMode(playerHeadLayer, BitmapScalingMode.NearestNeighbor);
        }
    }
}
