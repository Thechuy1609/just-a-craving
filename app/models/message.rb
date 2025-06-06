class Message < ApplicationRecord
  validates_presence_of :author, :body, :email
end
