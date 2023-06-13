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
    public partial class Add_Zayavki : Page
    {
        private Zayavki _currentZayavki = new Zayavki();

        public Add_Zayavki(Zayavki currentZayavki)
        {
            InitializeComponent();


            if (currentZayavki != null)
                _currentZayavki = currentZayavki;
            DataContext = _currentZayavki;

            ComboBox_Nazvanie_otdela.ItemsSource = BD_Diplom_PisarevEntities.GetContext().Otdeli.ToList();
            ComboBox_PO.ItemsSource = BD_Diplom_PisarevEntities.GetContext().PO.ToList();
            ComboBox_Sotrydniki.ItemsSource = BD_Diplom_PisarevEntities.GetContext().Sotrudniki.ToList();
            ComboBox_Time_zayavki.ItemsSource = BD_Diplom_PisarevEntities.GetContext().Temi_zayavok.ToList();
            ComboBox_Tipi_PO.ItemsSource = BD_Diplom_PisarevEntities.GetContext().Tipi_PO.ToList();
            ComboVox_Sotrud_teh.ItemsSource = BD_Diplom_PisarevEntities.GetContext().Sotrudniki.ToList();
        }

        private void Btn_Add_Zayavki_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (_currentZayavki.Temi_zayavok == null)
                errors.AppendLine("Выберите тему заявки");
            if (string.IsNullOrWhiteSpace(_currentZayavki.Vajnost))
                errors.AppendLine("Указите важность заявки");
            if (_currentZayavki.Tipi_PO == null)
                errors.AppendLine("Выберите тип оборудования");
            if (_currentZayavki.PO == null)
                errors.AppendLine("Выберите название ПО");
            if (string.IsNullOrWhiteSpace(_currentZayavki.Statys))
                errors.AppendLine("Указите статус");
            if (string.IsNullOrWhiteSpace(_currentZayavki.Sostoyanie))
                errors.AppendLine("Указите состояние ПО");
            if (_currentZayavki.Sotrudniki == null)
                errors.AppendLine("Выберите сотрудника тех отдела");
            if (_currentZayavki.Sotrudniki == null)
                errors.AppendLine("Выберите сотрудника");
            if (string.IsNullOrWhiteSpace(_currentZayavki.Data.Date.ToString()))
                errors.AppendLine("Укажите дату начало работы");
            if (string.IsNullOrWhiteSpace(_currentZayavki.Data_zaversh.Date.ToString()))
                errors.AppendLine("Укажите дату завершения работы");
            if (_currentZayavki.Otdeli == null)
                errors.AppendLine("Выберите название отдела");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currentZayavki.Id_zayavki == 0)
                BD_Diplom_PisarevEntities.GetContext().Zayavki.Add(_currentZayavki);
            try
            {
                BD_Diplom_PisarevEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                AppFrame.MainFrame.GoBack();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
