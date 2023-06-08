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
using Wpf_Diplom_2_Pisarev_Aleksei.Sotrydniki.Window_sotrydniki;

namespace Wpf_Diplom_2_Pisarev_Aleksei.Sotrydniki
{
    /// <summary>
    /// Логика взаимодействия для AppSotrydniki.xaml
    /// </summary>
    public partial class AppSotrydniki : Page
    {
        public AppSotrydniki()
        {
            InitializeComponent();
        }

        private void Redactor_Click(object sender, RoutedEventArgs e)
        {
            Doljnosti_sotrydnika doljnosti_Sotrydnika = new Doljnosti_sotrydnika();
            doljnosti_Sotrydnika.Show();
        }

        private void Redactor_otdela_Click(object sender, RoutedEventArgs e)
        {
            Otdel_sotrydnika otdel_Sotrydnika = new Otdel_sotrydnika(null);
            otdel_Sotrydnika.Show();
        }
    }
}
