﻿using System;
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
        public DataGridPage(int ProductID)
        {
            InitializeComponent();

            LoadSalesHistory(ProductID);
        }

        private void LoadSalesHistory(int PartnerID)
        {
            StoryGrid.ItemsSource = Data.MasterPolEntities.GetContext().PartnerProducts.
                Where(s => s.PartnerID == PartnerID).ToList();

        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            if (Classes.Manager.MainFrame.CanGoBack)
            {
                Classes.Manager.MainFrame.GoBack();
            }
        }
    }
}
