using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial4
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataClasses1DataContext dbContext = new DataClasses1DataContext();

            switch (RadioButtonList1.SelectedIndex)
            {
                case 0:
                    GridView1.DataSource = from Customer in dbContext.Customer
                                           where Customer.Country.StartsWith("S")
                                           orderby Customer.Country
                                           select new
                                           { Customer.Id, Customer.FirstName, Customer.LastName, Customer.Country, Customer.City };
                    GridView1.DataBind();
                    break;

                case 1:
                    DateTime i = DateTime.Parse("2013/12/01");
                    DateTime f = DateTime.Parse("2013/12/31");
                    GridView1.DataSource = from Order in dbContext.Order
                                           where Order.OrderDate >= i && Order.OrderDate <= f && Order.TotalAmount > 1998
                                           select Order;
                    GridView1.DataBind();

                    break;

                case 2:
                    GridView1.DataSource = from Customer in dbContext.Customer
                                           orderby Customer.Country, Customer.City ascending
                                           select new
                                           { Customer.Id, Customer.FirstName, Customer.LastName, Customer.Country, Customer.City };
                    GridView1.DataBind();
                    break;

                case 3:
                    GridView1.DataSource = (from Product in dbContext.Product
                                            join OrderItem in dbContext.OrderItem
                                            on Product.Id equals OrderItem.ProductId
                                            group OrderItem by new { OrderItem.Id, Product.ProductName } into g
                                            select new { ProductName = g.Key.ProductName, Quantity = g.Sum(x => x.Quantity) }).ToList();
                    GridView1.DataBind();
                    break;

                case 4:
                    GridView1.DataSource = from Product in dbContext.Product
                                           join Supplier in dbContext.Supplier
                                           on Product.Id equals Supplier.Id
                                           select new { Product.ProductName, Supplier.CompanyName };
                    GridView1.DataBind();
                    break;

                case 5:
                    GridView1.DataSource = (from Supplier in dbContext.Supplier
                                            join Product in dbContext.Product
                                            on Supplier.Id equals Product.Id
                                            group Product by new { Product.Id, Supplier.CompanyName } into g
                                            select new { CompanyName = g.Key.CompanyName, ProductQuantity = g.Count() }).ToList();
                    GridView1.DataBind();
                    break;

                case 6:
                    GridView1.DataSource = from Customer in dbContext.Customer
                                           where Customer.Country == "Germany" || Customer.Country == "Spain"
                                           orderby Customer.Country, Customer.City
                                           select new
                                           { Customer.Id, Customer.FirstName, Customer.LastName, Customer.Country, Customer.City };
                    GridView1.DataBind();
                    break;

                case 7:
                    GridView1.DataSource = (from Customers in dbContext.Customer
                                            group Customers by new { Customers.City } into g
                                            select new { City = g.Key.City, CustomersQuantity = g.Count() }).ToList();
                    GridView1.DataBind();
                    break;

                case 8:
                    GridView1.DataSource = from Supplier in dbContext.Supplier
                                           where Supplier.City.StartsWith("S")
                                           select new
                                           { Supplier.Country, Supplier.City, Supplier.CompanyName, };
                    GridView1.DataBind();
                    break;
                default:
                    GridView1.DataSource = dbContext.Product.ToList();
                    GridView1.DataBind();
                    break;
            }
        }
    }
}