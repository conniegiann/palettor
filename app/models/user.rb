# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  occupation      :string
#  website         :text
#  image           :text
#  password_digest :string
#  email           :text
#  created_at      :datetime
#  updated_at      :datetime
#

class User  < ActiveRecord::Base
  has_many :palettes
end
