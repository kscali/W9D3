# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Cat.create!(birth_date: '2015/04/22', color: "brown", name: "Chloe", sex: "F", description: "A nice cat.")
# Cat.create!(birth_date: '2016/01/27', color: "black", name: "Tim", sex: "M", description: "A wild cat.")
# Cat.create!(birth_date: '2017/01/20', color: "brown", name: "Tabitha", sex: "F", description: "A nice cat.")
# Cat.create!(birth_date: '2005/02/10', color: "white", name: "Blanca", sex: "F", description: "A crazy cat.")

CatRentalRequest.create!(cat_id: 1, start_date: "2019/03/02", end_date: "2019/03/04", status: "APPROVED")
CatRentalRequest.create!(cat_id: 3, start_date: "2019/03/12", end_date: "2019/03/15", status: "DENIED")
CatRentalRequest.create!(cat_id: 2, start_date: "2019/03/02", end_date: "2019/03/04", status: "PENDING")
CatRentalRequest.create!(cat_id: 4, start_date: "2018/03/02", end_date: "2018/04/04", status: "APPROVED")