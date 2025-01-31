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

namespace MasterPolProject
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Classes.Manager.MainFrame = MainFrame;
            Classes.Manager.MainFrame.Navigate(new Pages.ViewPage());

        //    private static MasterPolEntities _context;
        //public static MasterPolEntities GetContext()
        //{
        //    if (_context == null)
        //    {
        //        _context = new MasterPolEntities();

        //    }
        //    return _context;
        //}

    }
    }
}
