class Registration
  include ActiveModel::Model

  attr_accessor :name, :email, :phone,
                :role, :income, :status, :body

  validates :name, :email, :phone, :body,
            :role, :income, :status,
            presence: true
end
