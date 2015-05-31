# == Schema Information
#
# Table name: colors
#
#  id         :integer          not null, primary key
#  color1     :string
#  color2     :string
#  color3     :string
#  color4     :string
#  color5     :string
#  created_at :datetime
#  updated_at :datetime
#

class Color  < ActiveRecord::Base
  belongs_to :palettes
end
