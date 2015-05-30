# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Palette.destroy_all



u1 = User.create(:name => 'Connie', :occupation => 'Wizard', :website => 'https://github.com/conniegiann', :image => 'https://placekitten.com/200/200')

u2 = User.create(:name => 'Derp', :occupation => 'Orc', :website => 'https://google.com', :image => 'http://www.fillmurray.com/200/200')



p1 = Palette.create(:name => 'Still Waters', :style => 'Contemporary', :description => 'Colors which remind me of lazy days at the ocean.', :color1 => '#065143', :color2 => '#129490', :color3 => '#70B77E', :color4 => '#A1E08F', :color5 => '#84CEAD')


p2 = Palette.create(:name => 'Kawaii Pastels', :style => 'Pop', :description => 'Makes me feel pretty!', :color1 => '#D3F8E2', :color2 => '#E4C1F9', :color3 => '#F694C1', :color4 => '#EDE7B1', :color5 => '#A9DEF9')


u1.palettes << p1
u2.palettes << p2
