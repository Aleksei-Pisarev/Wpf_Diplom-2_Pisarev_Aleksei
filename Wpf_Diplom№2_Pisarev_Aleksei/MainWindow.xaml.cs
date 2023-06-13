using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Permissions;
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
using Wpf_Diplom_2_Pisarev_Aleksei.ApplicationData;
using Wpf_Diplom_2_Pisarev_Aleksei.Sotrydniki.Window_sotrydniki;

namespace Wpf_Diplom_2_Pisarev_Aleksei
{
  
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_onMouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton== MouseButtonState.Pressed) 
            
                DragMove();
            
        }


        private void BtAyth_Click(object sender, RoutedEventArgs e)
        {
            Sotrudniki _currentSotrudniki = BD_Diplom_PisarevEntities.GetContext().Sotrudniki.FirstOrDefault(u => u.Login == TXLogin.Text && u.Password == TXPass.Password);

            if (_currentSotrudniki != null)
            {
                MessageBox.Show("Вход успешно выполнен " + ($"Добро пожаловать {_currentSotrudniki.FIO}"), "Информация",MessageBoxButton.OK, MessageBoxImage.Information  );          
            }

           if (_currentSotrudniki.Doljnosti.Id_doljnosti == 1 )
            {
               Glavnoe_okno_administratora glavnoe_Okno_Administratora = new Glavnoe_okno_administratora();
                glavnoe_Okno_Administratora.Show();
                Close();
            }

            else if (_currentSotrudniki.Doljnosti.Id_doljnosti == 2)
            {
                Glavnoe_okno_administratora glavnoe_Okno_Administratora = new Glavnoe_okno_administratora();
                glavnoe_Okno_Administratora.Show();
                Close();
            }


            else
            {
                MessageBox.Show("Вход в приложение не прошло, повторите попытку", MessageBoxImage.Error + "Внимание", MessageBoxButton.OK);
            }
        }
    }
}
