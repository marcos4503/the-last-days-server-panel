   M S B A M L   `   `   `  ���� U  QThe Last Days Server Panel, Version=1.2.2.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:The_Last_Days_Server_PanelThe_Last_Days_Server_Panel  +    %The_Last_Days_Server_Panel.MainWindow   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     :local(clr-namespace:The_Last_Days_Server_Panel     U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com    � Title$"  The Last Days - Server Panel�� � Icon$ /Resources/icon-32px.png�� � 
ResizeMode$ NoResize=� � SizeToContent$ WidthAndHeight=�.��� $	��964��$	��720��.+�� -    �Name$ preLoad��$y�	Collapsed=�.+�� $��12��$��80�� � IsIndeterminate$
 True��$��1,1,1,1q�� -   $ downloadProgress��$y�	Collapsed=�.+��� $��Center=�$��Center=�.+��� -    ��Name$ downloadMessage��$
��Wrap=�$��Inicializando��$��Center=�$	��Top=�$��0,0,0,8q�� -    �Name$ downloadBar��$	��Top=�$��14��$	��256��� -   $ serverInterface��$y�Visible=�.+�� $��0,0,0,32q� � ColumnDefinitions �� �� $��1 ��� $	��272 �.+�� .+��� $
��Wrap=�$��Logs do Servidor��$	��Top=�$��0,4,0,4q�$��Center=�$��Normal"��� $��1�����	#FFC8C8C8$	��Top=�$��0,24,0,0q��� -   	 ��Name$	 
logsScroll��$��	0,25,0,33q�.���� -   
 ��Name$
 logsList��$	��Top=�$��8,8,8,0q��� $��1�����	#FFC8C8C8$��Bottom=�$��	0,24,0,32q�� $��Bottom=�$��4,0,4,4q�$��24�� �� $��24 ��� $��4 ��� $��24 ��� $��4 ��� $��24 ��� $��4 ��� $��* ��� $��4 ��� $��64 �.+��� -    ��Name$ 
lockButton��$��0,0,0,0q�$��1,1,1,1q� � ToolTip$ Trava de Rolagem�� � Cursor$
 Hand�����	#FFEDEDED���	#FFADADAD.���� -	    ��Name$ lockButtonImg��$��/Resources/lock-icon.png�� J� Opacity$
 0.75Q�$��4,4,4,4q��� -
   $ 	sayButton��$��0,0,0,0q�$��1,1,1,1q�$ Modo de Interação��$
 Hand�����	#FFEDEDED���	#FFADADAD$��2��.���� -   $ sayButtonImg��$!��/Resources/command-mode.png��$
 0.75Q�$��4,4,4,4q�$ Modo de Interação���� -   $ pickerButton��$��0,0,0,0q�$��1,1,1,1q�$ Comandos Úteis��$
 Hand�����	#FFEDEDED���	#FFADADAD$��4��.���� $(��"/Resources/command-picker-icon.png��$
 0.75Q�$��4,4,4,4q�$ Modo de Interação��� $��6��.+��� -    ��Name$ commandInput�� �� TextWrapping$
 Wrap=�$��0,0,0,0q�$��Center=��� -   $ 
sendButton��$��0,0,0,0q�$��1,1,1,1q�$ Enviar Comando��$
 Hand�����	#FFEDEDED���	#FFADADAD$��8��$��Enviar���� ���	#FFC8C8C8$��Stretch=�$��0,0,0,0q�$��1��$��1��� $��2�� � RowDefinitions �� �� $��1 ��� $	��200 ��� $��1 ��� $	��128 �.+�� .+��� -   $ playersOnlineCounter��$
��Wrap=�$��Jogadores Online - 0��$	��Top=�$��0,4,0,4q�$��Center=�$��Normal"��� $��1�����	#FFC8C8C8$	��Top=�$��0,24,0,0q��� $��0,25,0,0q�.���� -   $
 playersList��$	��Top=�$��8,8,8,0q��� ���	#FFC8C8C8$��0,0,0,0q�$��1��$��1��� $��2��.+��� $
��Wrap=�$"��Estatísticas de Performance��$	��Top=�$��0,4,0,4q�$��Center=�$��Normal"��� $��1�����	#FFC8C8C8$	��Top=�$��0,24,0,0q��� -   $
 statsContent��$��8,33,8,0q�$	��Top=�$y�Visible=�.+�]� $��False��$	��Top=�.+��� $
��Wrap=�$��Número de Logs��$��Center=�$
��Left=��� -   $ 	logsCount��$
��Wrap=�$��0 Logs��$��Right=�$��Center=�$��Right=����	#FF8A8A8A]� $��False��$��0,4,0,0q�.+��� $
��Wrap=�$��Ticks Por Segundo��$��Center=�$
��Left=��� $��Right=�$��Right=� �� Orientation$ 
Horizontal=�.+��� -   $ tpsCount��$
��Wrap=�$��0 TPS�����	#FF8A8A8A$��0,0,4,0q�� $��8��$��11��$��0,1,0,0q�.+�� -   $
 tps0��$��11��$��8�� J� RenderTransformOrigin$ 0.5,0.5&�$��	-7,0,-7,0q�$��1,1,1,0q����	#FF34B0F1z�V� .~��� �� ��  �� Angle$	 270Q�T� � $��8��$��11��$��0,1,0,0q�.+�� -   $
 tps1��$��11��$��8��$ 0.5,0.5&�$��	-7,0,-7,0q�$��1,0,1,0q����	#FF34B0F1z�V� .~��� �� �� $	 270Q�T� � $��8��$��11��$��0,1,0,0q�.+�� -   $
 tps2��$��11��$��8��$ 0.5,0.5&�$��	-7,0,-7,0q�$��1,0,1,0q����	#FF34B0F1z�V� .~��� �� �� $	 270Q�T� � $��8��$��11��$��0,1,0,0q�.+�� -   $
 tps3��$��11��$��8��$ 0.5,0.5&�$��	-7,0,-7,0q�$��1,0,1,0q����	#FF34B0F1z�V� .~��� �� �� $	 270Q�T� � $��8��$��11��$��0,1,0,0q�.+�� -   $
 tps4��$��11��$��8��$ 0.5,0.5&�$��	-7,0,-7,0q�$��1,0,1,0q����	#FF34B0F1z�V� .~��� �� �� $	 270Q�T� � $��8��$��11��$��0,1,0,0q�.+�� -   $
 tps5��$��11��$��8��$ 0.5,0.5&�$��	-7,0,-7,0q�$��1,0,1,1q����	#FF34B0F1z�V� .~��� �� �� $	 270Q�T� ]� $��False��$��0,4,0,0q�.+��� $
��Wrap=�$��Picos de Lag��$��Center=�$
��Left=��� -   $ 	lagSpikes��$
��Wrap=�$��0 Picos��$��Right=����	#FF8A8A8A]� $��False��$��0,4,0,0q�.+��� $
��Wrap=�$��Uso de RAM no Painel��$��Center=�$
��Left=��� -   $ panelRam��$
��Wrap=�$
��0 MB��$��Right=����	#FF8A8A8A]� $��False��$��0,4,0,0q�.+��� $
��Wrap=�$��Uso de RAM no Servidor��$��Center=�$
��Left=��� -   $ 	serverRam��$
��Wrap=�$��0.0 GB / 0 GB��$��Right=����	#FF8A8A8A]� $��False��$��0,4,0,0q�.+��� $
��Wrap=�$��Uso de CPU no Servidor��$��Center=�$
��Left=��� -   $ 	serverCpu��$
��Wrap=�$
��0.0%��$��Right=����	#FF8A8A8A�� ���	#FFC8C8C8$��3��$��1��� $��4��.+��� $
��Wrap=�$��Controles Adicionais��$	��Top=�$��0,4,0,4q�$��Center=�$��Normal"��� $��1�����	#FFC8C8C8$	��Top=�$��0,24,0,0q��� $	��Top=�$��8,32,8,0q�.+��� -   $ handlerButton��$��0,0,0,0q�$��1,1,1,1q�$
 Hand�����	#FFEDEDED���	#FFADADAD$��Iniciar Servidor��$��24��$	��Top=�$��0,0,0,8q��� -   $ folderButton��$��0,0,0,0q�$��1,1,1,1q�$
 Hand�����	#FFEDEDED���	#FFADADAD$��Abrir Pasta do Servidor��$��24��$��0,0,0,0q��� $��1�����	#FFC8C8C8$��Bottom=�$��0,0,0,32q�� $��0,0,0,0q�$��Bottom=�$��32��.+�� $��4,4,4,4q�.+��� $
��Left=�$ 
Horizontal=�.+��� -     ��Name$ statusIconStatic�����	#FF560000$��1q�$��18��$��18�� �� CornerRadius$ 24,24,24,24�����	#FFBF0000$��0,0,4,0q��� -!   $ statusIconGif�����	#FF006B15$��1q�$��18��$��18��$ 24,24,24,24��$��0,0,4,0q�$y�	Collapsed=�._��� "  WpfAnimatedGif.ImageBehavior   AnimatedSource$# /Resources/running-server.gif��   AnimationSpeedRatio 1.0$y�Visible=�$��0,0,0,0q��� -"   $ statusMessage��$
��Wrap=�$��Parado��$��Center=�$
��Left=��� $��Right=�$ 
Horizontal=�$��LeftToRight=�.+��� $'��!/Resources/the-last-days-logo.png��$��24���� -#   $ githubButton��$��0,0,0,0q�$��1,1,1,1q�$$ Acessar Repositório do GitHub��$
 Hand�����	#FFEDEDED���	#FFADADAD$��24��$��24��$��4,0,0,0q�.���� $��/Resources/github.png��$
 0.75Q�$��4,4,4,4q�