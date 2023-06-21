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

namespace Wpf_Diplom_2_Pisarev_Aleksei
{
    
    public partial class Sklad_PAge : Page
    {
        public Sklad_PAge()
        {
            InitializeComponent();

            DtGrid_Sklad.ItemsSource = BD_Diplom_PisarevEntities.GetContext().Sklade.ToList();
        }
    }
}
