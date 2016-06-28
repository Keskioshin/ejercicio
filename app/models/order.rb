class Order < ActiveRecord::Base
  validates :total, presence: { message: "no puede ser zero"}
end
