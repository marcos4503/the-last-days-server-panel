using System;
using System.Collections.Generic;
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
    /*
     * This script is resposible by the work of the "LogItem" to show server logs
    */

    public partial class LogItem : UserControl
    {
        //Private variables
        private string logMessage = "";

        //Core methods

        public LogItem(string logMessage)
        {
            //Initialize the component
            InitializeComponent();

            //Inform that is the DataConext of this User Control
            this.DataContext = this;

            //Store the data
            this.logMessage = logMessage;

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



            //Split the message to get the hour
            string[] parts = logMessage.Split(new[] { ' ' }, 2);

            //If the first part is a time and have two parts
            if (parts[0].Length == 10 && parts.Length == 2)
            {
                //Render the data
                if (parts[0].Contains("[") == true && parts[0].Contains("]") == true)
                    this.time.Text = parts[0];
                if (parts[0].Contains("[") == false || parts[0].Contains("]") == false)
                    this.time.Text = "Sem Tempo";
                this.message.Text = parts[1];
            }

            //If the first part is not a time or don't have two parts
            if (parts[0].Length != 10 || parts.Length != 2)
            {
                //Render the data
                this.time.Text = "Sem Tempo";
                StringBuilder stringBuilder = new StringBuilder();
                foreach (string item in parts)
                    stringBuilder.Append(item);
                this.message.Text = stringBuilder.ToString();
            }



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

            //Add "copy" option to options menu
            MenuItem copyItem = new MenuItem();
            copyItem.Header = "Copiar Log";
            copyItem.Click += (s, e) => { CopyMessageToClipboard(); };
            background.ContextMenu.Items.Add(copyItem);
        }

        //Auxiliar methods
        
        private void CopyMessageToClipboard()
        {
            //Copy log message to clipboard
            System.Windows.Forms.Clipboard.SetText(message.Text);
        }
    }
}
