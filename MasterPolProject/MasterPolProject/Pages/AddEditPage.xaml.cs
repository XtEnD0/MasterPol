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

namespace MasterPolProject.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddEditPage.xaml
    /// </summary>
    public partial class AddEditPage : Page
    {

        public string Flag = "default";

        public Data.Partners _currentEl = new Data.Partners();

        public AddEditPage(Data.Partners product)
        {
            InitializeComponent();

            if (product != null)
            {
                _currentEl = product;
                Flag = "Edit";
            }
            else
            {
                Flag = "Add";
            }
            DataContext = _currentEl;
            
            TypeComboBox.ItemsSource = Data.MasterPolEntities.GetContext().PartnerType.ToList();
            if(Flag == "Edit")
            {
            init();
            }
            

        }

        public void init()
        {

            TypeComboBox.SelectedItem = Data.MasterPolEntities.GetContext().PartnerType
                        .Where(d => d.ID == _currentEl.PartnerTypeID).FirstOrDefault();
            NameTB.Text = _currentEl.PartnerName;
            RatingTB.Text = _currentEl.Rating.ToString();
            AreaTB.Text = _currentEl.Adress.Area.AreaName;
            CityTB.Text = _currentEl.Adress.City.City1;
            IndexTB.Text = _currentEl.Adress.Index.IndexNumber;
            StreetTB.Text = _currentEl.Adress.Street.StreetName;
            HouseTB.Text = _currentEl.Adress.House.ToString();
            DirectorTB.Text = _currentEl.Directors.DirectorName;
            PhoneTB.Text = _currentEl.PartnerPhone.ToString();
            EmailTB.Text = _currentEl.PartnerEmail.ToString();



        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            if (Classes.Manager.MainFrame.CanGoBack)
            {
                Classes.Manager.MainFrame.GoBack();
            }
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder err = new StringBuilder();
            if (String.IsNullOrEmpty(NameTB.Text))
            {
                err.AppendLine("Заполните Наименование!");
            }
            if (String.IsNullOrEmpty(TypeComboBox.Text))
            {
                err.AppendLine("Выберите Тип партнера!");
            }
            if (String.IsNullOrEmpty(RatingTB.Text))
            {
                err.AppendLine("Заполните Рейтинг!");
            }
            if (String.IsNullOrEmpty(AreaTB.Text))
            {
                err.AppendLine("Заполните Область!");
            }
            if (String.IsNullOrEmpty(CityTB.Text))
            {
                err.AppendLine("Заполните Город!");
            }
            if (String.IsNullOrEmpty(IndexTB.Text))
            {
                err.AppendLine("Заполните Индекс!");
            }
            if (String.IsNullOrEmpty(StreetTB.Text))
            {
                err.AppendLine("Заполните Улица!");
            }
            if (String.IsNullOrEmpty(HouseTB.Text))
            {
                err.AppendLine("Заполните Дом!");
            }
            if (String.IsNullOrEmpty(DirectorTB.Text))
            {
                err.AppendLine("Заполните ФИО Директора!");
            }
            if (String.IsNullOrEmpty(PhoneTB.Text))
            {
                err.AppendLine("Заполните Номер телефона!");
            }
            if (String.IsNullOrEmpty(EmailTB.Text))
            {
                err.AppendLine("Заполните Email!");
            }

            if (err.Length > 0)
            {
                MessageBox.Show(err.ToString(), "Внимание!", MessageBoxButton.OK, MessageBoxImage.Error);
            }

            else
            {
                var selectedType = TypeComboBox.SelectedItem as Data.PartnerType;








                //    TypeComboBox.SelectedItem = Data.MasterPolEntities.GetContext().PartnerType
                //        .Where(d => d.ID == _currentEl.PartnerTypeID).FirstOrDefault();
                //NameTB.Text = _currentEl.PartnerName;
                //RatingTB.Text = _currentEl.Rating.ToString();
                //AreaTB.Text = _currentEl.Adress.Area.AreaName;
                //CityTB.Text = _currentEl.Adress.City.City1;
                //IndexTB.Text = _currentEl.Adress.Index.IndexNumber;
                //StreetTB.Text = _currentEl.Adress.Street.StreetName;
                //HouseTB.Text = _currentEl.Adress.House.ToString();
                //DirectorTB.Text = _currentEl.Directors.DirectorName;
                //PhoneTB.Text = _currentEl.PartnerPhone.ToString();
                //EmailTB.Text = _currentEl.PartnerEmail.ToString();


            }



        }
    }
}
