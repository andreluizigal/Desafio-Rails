class Reservation < ApplicationRecord
  belongs_to :book
  belongs_to :client
  belongs_to :librarian

  before_create :diminui_estoque
  after_destroy :aumenta_estoque



  def diminui_estoque
    if self.book.stock < 1
      errors.add(:base, "Livro sem estoque")
      throw(:abort)
    end
    self.book.stock -=1
    self.book.save
  end

  def aumenta_estoque
    self.book.stock +=1
    self.book.save
  end

end
