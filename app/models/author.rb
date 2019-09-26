class Author < ActiveRecord::Base
  validates :email, uniqueness: true
  validates :name, presence: true
end

#
# Add validations to Author such that...
# The name cannot be blank
# The e-mail is unique
