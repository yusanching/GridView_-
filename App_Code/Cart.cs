using System;
using System.Collections.Generic;

public class Cart
{
	public int Id { get; set; }
	public string Name { get; set; }
	public DateTime CreateDate { get; set; }


	public List<Cart> GetCart()
	{
		var cartInfo = new List<Cart>()
		{
			new Cart { Id = 1, Name = "AAA", CreateDate = new DateTime(2018, 11, 1) },
			new Cart { Id = 2, Name = "BBB", CreateDate = new DateTime(2018, 11, 1) },
			new Cart { Id = 3, Name = "CCC", CreateDate = new DateTime(2018, 11, 1) },
			new Cart { Id = 4, Name = "DDD", CreateDate = new DateTime(2018, 11, 1) },
			new Cart { Id = 5, Name = "EEE", CreateDate = new DateTime(2018, 11, 1) },
			new Cart { Id = 6, Name = "FFF", CreateDate = new DateTime(2018, 11, 1) },
		};

		return cartInfo;
	}
}