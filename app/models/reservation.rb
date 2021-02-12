class Reservation < ApplicationRecord
  belongs_to :book
  belongs_to :client
  belongs_to :librarian

  after_create :diminui_estoque
  after_destroy :aumenta_estoque

  def diminui_estoque
    self.book.stock -=1
    self.book.save
    puts "testeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
  end

  def aumenta_estoque
    self.book.stock +=1
    self.book.save
  end

  # validates :book, presence: true, if: :estoque?

  # def estoque?
  #   self.book.stock > 0
  # end

end
