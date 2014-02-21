class Book < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :categories
  has_one :reservation

  def author_full_name
    self.author.first_name + self.author.last_name
  end
end
