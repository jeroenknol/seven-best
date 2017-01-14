class User < ApplicationRecord
  has_many :pictures, dependent: :destroy

  before_save :downcase_email

  validates :first_name,  presence: true,
                          length: { minimum: 2, maximum: 70 }
  validates :last_name,   presence: true,
                          length: { minimum: 2, maximum: 70 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email,       presence: true,
                          uniqueness: { case_sensitive: false },
                          length: { maximum: 255 },
                          format: { with: VALID_EMAIL_REGEX }

  def full_name
    self.first_name + " " + self.last_name
  end

  private
    def downcase_email
      email.downcase!
    end
end
