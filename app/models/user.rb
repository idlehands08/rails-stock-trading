class User < ApplicationRecord
  has_one :wallet, dependent: :destroy
  has_many :stock_holding, dependent: :destroy
  has_many :transactions, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :encrypted_password, presence: true

  after_create :intialized_user_wallet

  def intialized_user_wallet
    wallet_amount = Wallet.new(user_id: id, balance: 100_000)
    wallet_amount.save
  end
end
