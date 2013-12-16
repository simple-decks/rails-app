# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mvp_presentation = Presentation.new(
  :title => "How to Create A SimpleDeck Presentation",
  :content => <<-eos
  How to Create A SimpleDeck Presentation
  ---
  Main Steps
  - Type in presentation copy
  - Add images, videos, etc.
  - Click "Share"
  ---
  ![Staples Button](http://on3dprinting.com/wp-content/uploads/2012/11/20121129-Staples-3D-Printing-Easy-Button.jpg)
 That was easy!
 ---
 Thanks!
  eos
  )