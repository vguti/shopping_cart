class ShoppingCart
	  def initialize
	    @items = []
	    @price = 0
	  end

	  def add_items(item)
	  	@items.push(item)
	  end

	  def total_price
	  	total_price = @price
	  	@items.each do |item|
	  		if @items.count>5
	  				total_price += item.price *0.9
	  		else
	  				total_price += item.price 
	  		end
	  	end

	  	total_price
	  	
	  end
end



class Item 
	  attr_reader :name

	  def initialize(name, price)
	      @name = name
	      @price = price
	  end

	  def price
	      @price
	  end
end



class Houseware < Item
	  attr_reader :name

	  def price
	  	if @price >= 100
	  		price = @price * (1 - 0.05)
	  	else
	  		price = @price
	  	end
	  	price	
	  end
end


class Fruit < Item
  	  attr_reader :name

	  def price
	  week_day = Time.new
	  		if week_day.wday ==0 || week_day.wday ==6
	  			price = @price *(1 - 0.1)
	  		else 
	  			price = @price
	  		end
	  		price

	  end
end




joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_items(oj)
joshs_cart.add_items(rice)
joshs_cart.total_price

puts "Josh's cart is #{joshs_cart.total_price}"