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

        public Data.Partners _currentProduct = new Data.Partners();

        public AddEditPage(Data.Partners product)
        {
            InitializeComponent();

            if (product != null)
            {
                _currentProduct = product;
                Flag = "Edit";
            }
            else
            {
                Flag = "Add";
            }
            DataContext = _currentProduct;
            
            TypeComboBox.ItemsSource = Data.MasterPolEntities.GetContext().PartnerType.ToList();
            init();

        }

        public void init()
        {
            TypeComboBox.SelectedItem = Data.MasterPolEntities.GetContext().PartnerType
                        .Where(d => d.ID == _currentProduct.PartnerTypeID).FirstOrDefault();
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
            if (String.IsNullOrEmpty(AdressTB.Text))
            {
                err.AppendLine("Заполните Адрес!");
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
                


            }



        }
    }
}
