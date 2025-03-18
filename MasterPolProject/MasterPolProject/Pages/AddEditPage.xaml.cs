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
            if (Flag == "Edit")
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
                try
                {
                    var selectedType = TypeComboBox.SelectedItem as Data.PartnerType;

                    var address = new Data.Adress();
                    string IndexText = IndexTB.Text;

                    var searchStreet = (from item in Data.MasterPolEntities.GetContext().Street
                                        where item.StreetName == StreetTB.Text
                                        select item).FirstOrDefault();

                    if (searchStreet != null)
                    {
                        address.StreetID = searchStreet.ID;
                    }
                    else
                    {
                        Data.Street nameStreet = new Data.Street()
                        {
                            StreetName = StreetTB.Text
                        };
                        Data.MasterPolEntities.GetContext().Street.Add(nameStreet);
                        Data.MasterPolEntities.GetContext().SaveChanges();
                        address.StreetID = nameStreet.ID;
                    }

                    var searchCity = (from item in Data.MasterPolEntities.GetContext().City
                                      where item.City1 == CityTB.Text
                                      select item).FirstOrDefault();

                    if (searchCity != null)
                    {
                        address.CityID = searchCity.ID;
                    }
                    else
                    {
                        Data.City nameCity = new Data.City()
                        {
                            City1 = CityTB.Text
                        };
                        Data.MasterPolEntities.GetContext().City.Add(nameCity);
                        Data.MasterPolEntities.GetContext().SaveChanges();
                        address.CityID = nameCity.ID;
                    }

                    var searchArea = (from item in Data.MasterPolEntities.GetContext().Area
                                      where item.AreaName == AreaTB.Text
                                      select item).FirstOrDefault();

                    if (searchArea != null)
                    {
                        address.AreaID = searchArea.ID;
                    }
                    else
                    {
                        Data.Area nameArea = new Data.Area()
                        {
                            AreaName = AreaTB.Text
                        };
                        Data.MasterPolEntities.GetContext().Area.Add(nameArea);
                        Data.MasterPolEntities.GetContext().SaveChanges();
                        address.AreaID = nameArea.ID;
                    }

                    var searchIndex = (from item in Data.MasterPolEntities.GetContext().Index
                                       where item.IndexNumber == IndexText
                                       select item).FirstOrDefault();

                    if (searchIndex != null)
                    {
                        address.IndexID = searchIndex.ID;
                    }
                    else
                    {
                        Data.Index numberIndex = new Data.Index()
                        {
                            IndexNumber = IndexText
                        };
                        Data.MasterPolEntities.GetContext().Index.Add(numberIndex);
                        Data.MasterPolEntities.GetContext().SaveChanges();
                        address.IndexID = numberIndex.ID;
                    }

                    var searchName = (from item in Data.MasterPolEntities.GetContext().Directors
                                      where item.DirectorName == DirectorTB.Text
                                      select item).FirstOrDefault();

                    if (searchName != null)
                    {
                        _currentEl.DirectorID = searchName.ID;
                    }
                    else
                    {
                        Data.Directors directorName = new Data.Directors()
                        {
                            DirectorName = DirectorTB.Text
                        };
                        Data.MasterPolEntities.GetContext().Directors.Add(directorName);
                        Data.MasterPolEntities.GetContext().SaveChanges();
                        _currentEl.DirectorID = directorName.ID;
                    }

                    Data.MasterPolEntities.GetContext().Adress.Add(address);
                    Data.MasterPolEntities.GetContext().SaveChanges();

                    _currentEl.PartnerEmail = EmailTB.Text;
                    _currentEl.PartnerPhone = PhoneTB.Text;
                    _currentEl.Rating = Convert.ToInt32(RatingTB.Text);
                    var selectType = TypeComboBox.SelectedItem as Data.PartnerType;
                    _currentEl.PartnerTypeID = selectType.ID;
                    _currentEl.PartnerName = NameTB.Text;
                    address.House = Convert.ToInt32(HouseTB.Text);
                    _currentEl.AdressID = address.ID;
                    _currentEl.INN = "0000";
                    if (Flag == "Add")
                    {
                        Data.MasterPolEntities.GetContext().Adress.Add(address);
                        Data.MasterPolEntities.GetContext().Partners.Add(_currentEl);
                        Data.MasterPolEntities.GetContext().SaveChanges();
                        MessageBox.Show("Добавлено!", "Успех!", MessageBoxButton.OK, MessageBoxImage.Information);
                        Classes.Manager.MainFrame.Navigate(new Pages.ViewPage());
                    }
                    else if (Flag == "Edit")
                    {
                        Data.MasterPolEntities.GetContext().SaveChanges();
                        MessageBox.Show("Cохранено!", "Успех!", MessageBoxButton.OK, MessageBoxImage.Information);
                        Classes.Manager.MainFrame.Navigate(new Pages.ViewPage());
                    }
                }
                catch (System.Data.Entity.Validation.DbEntityValidationException ex)
                {
                    foreach (var validationErrors in ex.EntityValidationErrors)
                    {
                        foreach (var validationError in validationErrors.ValidationErrors)
                        {
                            MessageBox.Show($"Ошибка: {validationError.PropertyName} - {validationError.ErrorMessage}");
                        }
                    }
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }


        }
    }
}
