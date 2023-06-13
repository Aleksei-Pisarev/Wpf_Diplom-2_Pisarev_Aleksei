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
using Wpf_Diplom_2_Pisarev_Aleksei.ApplicationData;

namespace Wpf_Diplom_2_Pisarev_Aleksei.Zayavki_sotrydnikov
{
    public partial class Registr_Zayavki : Page
    {
        public Registr_Zayavki()
        {
            InitializeComponent();
            DtGrid_Zayavki.ItemsSource = BD_Diplom_PisarevEntities.GetContext().Zayavki.ToList();
        }

        private void BtnAdd_Zayavki_Click(object sender, RoutedEventArgs e)
        {
            AppFrame.MainFrame.Navigate(new Zayavki_sotrydnikov.Add_Zayavki(null));
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                BD_Diplom_PisarevEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(u => u.Reload());
                DtGrid_Zayavki.ItemsSource = BD_Diplom_PisarevEntities.GetContext().Zayavki.ToList();
            }
        }


        private void ButtonEdit_Click(object sender, RoutedEventArgs e)
        {
            AppFrame.MainFrame.Navigate(new Zayavki_sotrydnikov.Add_Zayavki((sender as Button).DataContext as Zayavki));
        }
    }
}
