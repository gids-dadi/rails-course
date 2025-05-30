class User < ApplicationRecord
  has_secure_password

  ROLES = %w[admin moderator regular].freeze

  validates :name, presence: true,  length:{ minimum:5, maximum: 15}
  validates :password, presence: true, confirmation: {case_sensitive: true}, length: { minimum:5, maximum: 15  }
  validates :password_confirmation, presence: true, length: { minimum:5, maximum: 15  }
  validates :gender, presence: true
  validates :birthdate, presence: true
  validates :email, presence: true, uniqueness: true, format: {with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence:true, uniqueness:true, numericality: true, length: { minimum:10, maximum: 13  }
  validates :postalcode, presence:true, length: { minimum:4, maximum: 7  }
  validates :websiteurl, presence:true, format: {with: /\Ahttps:\/\/[a-zA-Z0-9\-\.]+\.[a-z]{2,}([\/\w\.-]*)*\/?\z/, message: "Must be a valid URL" }
  validates :termsandconditions, acceptance: { accept: true, message: "You must accept the terms and conditions" }
  validates :role, presence: true, inclusion: { in: ROLES, message: "%{value} is not a valid role" }

  validates :birth_day_not_in_future

  def birth_day_not_in_future
    return unless birthdate.present? && birthdate > Date.today

    errors.add(:birthdate, "cannot be in the future")
  end

end
