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
    /// Логика взаимодействия для DataGridPage.xaml
    /// </summary>
    public partial class DataGridPage : Page
    {
        public Data.Partners _currentEl = new Data.Partners();
        public DataGridPage(Data.Partners product)
        {
            InitializeComponent();
            _currentEl = product;
            DataContext = _currentEl;

            StoryGrid.ItemsSource = Data.MasterPolEntities.GetContext().Products.ToList();

        }
    }
}
