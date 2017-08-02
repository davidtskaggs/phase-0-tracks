# DBC Week 6: 6.5 Testing a Class with RSpec
# Mandatory Pairing: David Skaggs & Elise Poplawski
# Golden Bears 2017
class TodoList
  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(item)
    @list << item
  end

  def delete_item(item)
    @list.delete(item)
  end

  def get_item(item)
    @list[item]
  end
end