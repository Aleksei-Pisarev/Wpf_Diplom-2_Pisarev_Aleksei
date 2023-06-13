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
            ComboBox_Role.ItemsSource = BD_Diplom_PisarevEntities.GetContext().Doljnosti.ToList() ;
           

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
            if (_currentSotrudniki.Doljnosti == null )
                errors.AppendLine("Выберите название должности");
            if (_currentSotrudniki.Otdeli == null)
                errors.AppendLine("Выберите название должности");
            if (string.IsNullOrWhiteSpace(_currentSotrudniki.DR.Date.ToString()))
                errors.AppendLine("Укажите дату рождения");
            if (string.IsNullOrWhiteSpace(_currentSotrudniki.Telefon))
                errors.AppendLine("Укажите номер телефона");
            if (string.IsNullOrWhiteSpace(_currentSotrudniki.e_mail))
                errors.AppendLine("Укажите электронную почту");
            if (string.IsNullOrWhiteSpace(_currentSotrudniki.Kommentatij))
                errors.AppendLine("Укажите электронную почту");
            if (_currentSotrudniki.Doljnosti1 == null)
                errors.AppendLine($"Выберите должность сотрудника для регистрации \n 1) Администратор \n 2) Пользователь \n 3) СисАдминистратор \n айди должности должен называться с тем, как вы дали должность самому сотруднику"  );

            if (string.IsNullOrWhiteSpace(_currentSotrudniki.Login))
                errors.AppendLine("Укажите название Логина для авторизации");

            if (string.IsNullOrWhiteSpace(_currentSotrudniki.Password))
                errors.AppendLine("Укажите название Пароля для авторизации");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_currentSotrudniki.Id_otdela == 0)
                    BD_Diplom_PisarevEntities.GetContext().Sotrudniki.Add(_currentSotrudniki);
            try
            {
                BD_Diplom_PisarevEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
