# == Schema Information
#
# Table name: palettes
#
#  id          :integer          not null, primary key
#  name        :string
#  style       :string
#  description :text
#  color1      :string
#  color2      :string
#  color3      :string
#  color4      :string
#  color5      :string
#  created_at  :datetime
#  updated_at  :datetime
#

class Palette  < ActiveRecord::Base
  belongs_to :user
end
