class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :category
  has_one :reservation

  def author_full_name
    self.author.first_name + self.author.last_name
  end
end
