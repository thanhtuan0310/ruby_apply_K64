class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name, price)
    self.name = name
    self.price = price
  end
  def show_info
    puts "#{name} #{price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    super(name, price)
    self.size = size
  end
  def show_info
    puts "#{name} #{price} vnd #{size}サイズ"
  end
end

menu1 = Menu.new("Phở", 30000)
menu2 = Menu.new("Bún chả", 40000)
menu3 = Menu.new("Bánh mì", 20000)

drink1 = Drink.new("Trà", 5000, "S")
drink2 = Drink.new("Trà", 10000, "M")

arrayMenu = [menu1, menu2, menu3, drink1, drink2]

for i in 0..4
  arrayMenu[i].show_info
end