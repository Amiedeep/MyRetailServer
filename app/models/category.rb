class Category < ActiveRecord::Base
  has_many :items

  def to_json
    {
        id: self.id,
        name: self.name,
        items: self.items
    }
  end
end
