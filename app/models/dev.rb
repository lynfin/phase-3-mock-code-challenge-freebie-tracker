class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    freebies.index { |freebie| freebie.item_name == item_name } ? true : false
  end

  def give_away(dev, freebie)
    freebie.update(dev: dev) if freebie.dev.id == id
  end
end
