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

namespace Restopay
{
    /// <summary>
    /// Interaction logic for CartPage.xaml
    /// </summary>
    public partial class CartPage : Page
    {
        ProductsDatabaseEntities _db = new ProductsDatabaseEntities();
        private List<cart> cartItems = new List<cart>();
        public CartPage()
        {
            InitializeComponent();
            var query1 = from b in _db.carts select b;
            foreach (var item in query1)
            {
                cartItems.Add(new cart { Name = item.Name, Price = item.Price, 
                    Quantity = item.Quantity, Amount = item.Amount });
            }

            gridBill.ItemsSource = cartItems;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new MenuPage());
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

            var query1 = from b in _db.carts select b;
            foreach (var item in query1)
            {
                _db.carts.Remove(item);
                
               
            }
            _db.SaveChanges();
            cartItems.Clear();
            gridBill.ItemsSource = null;



        }
    }
}
