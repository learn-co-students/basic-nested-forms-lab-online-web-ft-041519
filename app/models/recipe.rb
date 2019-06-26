class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients)
    ingredients.each do |k, v|
      ing = Ingredient.create(v)
      self.ingredients << ing
    end
  end

end
