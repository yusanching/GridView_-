using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
	 public Cart MyCart = new Cart();	

	protected void Page_Load(object sender, EventArgs e)
	{
		var cartData = this.MyCart.GetCart();

		GridView1.DataSource = cartData;
		GridView1.DataBind();
	}
}