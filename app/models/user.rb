class User < ApplicationRecord
# バリデーション設定した↓
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true
# //バリデーション設定した

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :prototypes, dependent: :destroy
has_many :comments, dependent: :destroy
end
