class User < ApplicationRecord
  has_many :links
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :lockable, :validatable,
         :timeoutable

  after_initialize { self.role ||= :client }  
  attr_accessor :login
  
  default_scope { order('client_name ASC') }

  validates :client_name, presence: :true, uniqueness: {case_sensitive: false }
# Only allow letter, number, underscore, and punctuation
  validates_format_of :client_name, with: /^[a-zA-Z0-9_ \.]*$/, :multiline => true
  validate :validate_client_name
  enum role: [:client, :admin]

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where(["lower(client_name) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:client_name)
      where(conditions.to_hash).first
    end
  end

  private

  def validate_client_name
    if User.where(email: client_name).exists?
      flash[:error] = "Client Exists"
    end
  end
end
