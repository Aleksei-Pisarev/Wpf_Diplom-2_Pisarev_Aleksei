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
using System.Windows.Shapes;
using Wpf_Diplom_2_Pisarev_Aleksei.ApplicationData;
using Wpf_Diplom_2_Pisarev_Aleksei.Sotrydniki;

namespace Wpf_Diplom_2_Pisarev_Aleksei
{
    public partial class Glavnoe_okno_administratora : Window
    {
        public Glavnoe_okno_administratora()
        {
            InitializeComponent();
            AppFrame.MainFrame = Frame_Add;
            Frame_Add.Navigate(new Profil_Pages());
        }

        private void Add_Sotrydniki_Click(object sender, RoutedEventArgs e)
        {
           AppFrame.MainFrame.Navigate(new Sotrydniki.AppSotrydniki(null));
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)

                DragMove();
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Add_Zayavki_Click(object sender, RoutedEventArgs e)
        {
            AppFrame.MainFrame.Navigate(new Zayavki_sotrydnikov.Registr_Zayavki());
        }

        private void Bt_sklad_Click(object sender, RoutedEventArgs e)
        {
            AppFrame.MainFrame.Navigate(new Sklad_PAge());
        }

        private void Bt_prof_Click(object sender, RoutedEventArgs e)
        {
            AppFrame.MainFrame.Navigate(new Profil_Pages());
        }
    }
}
