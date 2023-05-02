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
using Wpf_Diplom_2_Pisarev_Aleksei.Sotrydniki;

namespace Wpf_Diplom_2_Pisarev_Aleksei
{
    /// <summary>
    /// Логика взаимодействия для Glavnoe_okno_administratora.xaml
    /// </summary>
    public partial class Glavnoe_okno_administratora : Window
    {
        public Glavnoe_okno_administratora()
        {
            InitializeComponent();
        }

        private void Add_Sotrydniki_Click(object sender, RoutedEventArgs e)
        {
            Frame_Add.Content = new AppSotrydniki();
        }
    }
}
