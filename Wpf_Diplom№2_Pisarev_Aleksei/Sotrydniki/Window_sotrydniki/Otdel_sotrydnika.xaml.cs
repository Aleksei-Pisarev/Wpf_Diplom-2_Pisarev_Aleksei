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

namespace Wpf_Diplom_2_Pisarev_Aleksei.Sotrydniki.Window_sotrydniki
{

    public partial class Otdel_sotrydnika : Window
    {

        private Otdeli _currentOtdel = new Otdeli();

        public Otdel_sotrydnika(Otdeli selectedOtdel)
        {
            InitializeComponent();

            if (selectedOtdel != null )
                _currentOtdel= selectedOtdel;

            DataContext = _currentOtdel;
            DtGridOtdel_sotrydnika.ItemsSource = BD_Diplom_PisarevEntities.GetContext().Otdeli.ToList();

            
        }
        private void BtEdit_Otdel_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder error= new StringBuilder();
            if (string.IsNullOrWhiteSpace(_currentOtdel.Nazvanie))
                error.AppendLine("Укажите название отдела");
            if (error.Length > 0)
            {
                MessageBox.Show(error.ToString());
                return;
            }
            if (_currentOtdel.Id_otdela == 0)
                BD_Diplom_PisarevEntities.GetContext().Otdeli.Add(_currentOtdel);

            try
            {
                BD_Diplom_PisarevEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
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

        private void Window_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                BD_Diplom_PisarevEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DtGridOtdel_sotrydnika.ItemsSource = BD_Diplom_PisarevEntities.GetContext().Otdeli.ToList();
            }
        }
    }
}
