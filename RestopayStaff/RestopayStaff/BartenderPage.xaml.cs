﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
using System.Windows.Threading;

namespace RestopayStaff
{
    public partial class BartenderPage : Page
    {
        
        ProductsDatabaseEntities _db = new ProductsDatabaseEntities();
        private static ObservableCollection<OrdersInProgress> oipItems;
        public BartenderPage()
        {
            InitializeComponent();
            Load();
        }
        private void Load()
        {
            _db.SaveChanges();
            var query = from o in _db.OrdersInProgresses select o;
            oipItems = new ObservableCollection<OrdersInProgress>();
            foreach (var item in query)
            {
                if (item.Category == "Bar" && item.BartenderStatus_.Equals("In-progress"))
                {

                    oipItems.Add(new OrdersInProgress
                    {
                        Id = item.Id,
                        Name = item.Name,
                        Quantity = item.Quantity,
                        OrderNumber = item.OrderNumber,
                        DateTime = item.DateTime,
                        //CookStatus_ = item.CookStatus_,
                        TableNumber = item.TableNumber
                    });
                }

            }
            grid.ItemsSource = oipItems;
        }


        private void Button_Click(object sender, RoutedEventArgs e)
        {
            oipItems.Clear();
            Load();
            grid.Items.Refresh();

        }

        private void RemoveRaw(object sender, RoutedEventArgs e)
        {
            try
            {
                int id = (grid.SelectedItem as OrdersInProgress).Id;
                var query = from o in _db.OrdersInProgresses where o.Id == id select o;
                foreach (var item in query)
                {
                    item.BartenderStatus_ = "Completed";
                }
                _db.SaveChanges();
                oipItems.Remove(grid.SelectedItem as OrdersInProgress);
            }
            catch (Exception)
            {

                MessageBox.Show("Something went wrong");
            }
        }


        private void ButtonExitClick(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new StaffPage());
        }

        private void ButtonMenuClick(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new MenuPageCBW());
        }
    }
}
