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
 
    public partial class AppSotrydniki : Page
    {

        private Sotrudniki _currentSotrudniki = new Sotrudniki();

        public AppSotrydniki(Sotrudniki currentSotrudniki)
        {
            InitializeComponent();
            if (currentSotrudniki != null) 
            _currentSotrudniki = currentSotrudniki;
            DataContext = _currentSotrudniki;

            ComboBox_Doljnosti.ItemsSource = BD_Diplom_PisarevEntities.GetContext().Doljnosti.ToList();
            ComboBox_Otdel.ItemsSource = BD_Diplom_PisarevEntities.GetContext().Otdeli.ToList();
           

        }


        private void Redactor_otdela_Click(object sender, RoutedEventArgs e)
        {
            Otdel_sotrydnika otdel_Sotrydnika = new Otdel_sotrydnika(null);
            otdel_Sotrydnika.Show();
        }

        private void BtEdit_Sotrudniki_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (string.IsNullOrWhiteSpace(_currentSotrudniki.FIO))
                errors.AppendLine("Укажите Фамилию Имя Отчество");
            if (_currentSotrudniki.Doljnosti.Nazvanie == null)
                errors.AppendLine("Выберите название должности");
            if (null.IsNullOrWhiteSpace(_currentSotrudniki.DR.text )

        }
    }
}
