﻿#pragma checksum "..\..\..\..\Controls\PlayerItem.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "DE804DB678C7203EA37B1776E139C78158A554A8"
//------------------------------------------------------------------------------
// <auto-generated>
//     O código foi gerado por uma ferramenta.
//     Versão de Tempo de Execução:4.0.30319.42000
//
//     As alterações ao arquivo poderão causar comportamento incorreto e serão perdidas se
//     o código for gerado novamente.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms.Integration;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using The_Last_Days_Server_Panel.Controls;


namespace The_Last_Days_Server_Panel.Controls {
    
    
    /// <summary>
    /// PlayerItem
    /// </summary>
    public partial class PlayerItem : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 10 "..\..\..\..\Controls\PlayerItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Border background;
        
        #line default
        #line hidden
        
        
        #line 19 "..\..\..\..\Controls\PlayerItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image playerHead;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\..\..\Controls\PlayerItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image playerHeadLayer;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\..\..\Controls\PlayerItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock playerNick;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.25.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/The Last Days Server Panel;V1.2.0;component/controls/playeritem.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Controls\PlayerItem.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.25.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.background = ((System.Windows.Controls.Border)(target));
            return;
            case 2:
            this.playerHead = ((System.Windows.Controls.Image)(target));
            return;
            case 3:
            this.playerHeadLayer = ((System.Windows.Controls.Image)(target));
            return;
            case 4:
            this.playerNick = ((System.Windows.Controls.TextBlock)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

