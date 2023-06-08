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

namespace Wpf_Diplom_2_Pisarev_Aleksei.Sotrydniki.Window_sotrydniki
{
    /// <summary>
    /// Логика взаимодействия для Doljnosti_sotrydnika.xaml
    /// </summary>
    public partial class Doljnosti_sotrydnika : Window
    {
        public Doljnosti_sotrydnika()
        {
            InitializeComponent();
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
    }
}
