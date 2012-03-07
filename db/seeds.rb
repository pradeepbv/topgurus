# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed the countries table
Country.create(name: "India")

# Seed the states table
State.create([
{country: Country.first, name:"Andaman and Nicobar Islands"},
{country: Country.first, name:"Andhra Pradesh"},
{country: Country.first, name:"Arunachal Pradesh"},
{country: Country.first, name:"Assam"},
{country: Country.first, name:"Bihar"},
{country: Country.first, name:"Chandigarh"},
{country: Country.first, name:"Chhattisgarh"},
{country: Country.first, name:"Dadra and Nagar Haveli"},
{country: Country.first, name:"Daman and Diu"},
{country: Country.first, name:"Delhi"},
{country: Country.first, name:"Goa"},
{country: Country.first, name:"Gujarat"},
{country: Country.first, name:"Haryana"},
{country: Country.first, name:"Himachal Pradesh"},
{country: Country.first, name:"Jammu and Kashmir"},
{country: Country.first, name:"Jharkhand"},
{country: Country.first, name:"Karnataka"},
{country: Country.first, name:"Kerala"},
{country: Country.first, name:"Lakshadweep"},
{country: Country.first, name:"Madhya Pradesh"},
{country: Country.first, name:"Maharashtra"},
{country: Country.first, name:"Manipur"},
{country: Country.first, name:"Meghalaya"},
{country: Country.first, name:"Mizoram"},
{country: Country.first, name:"Nagaland"},
{country: Country.first, name:"Orissa"},
{country: Country.first, name:"Pondicherry"},
{country: Country.first, name:"Punjab"},
{country: Country.first, name:"Rajasthan"},
{country: Country.first, name:"Sikkim"},
{country: Country.first, name:"Tamil Nadu"},
{country: Country.first, name:"Tripura"},
{country: Country.first, name:"Uttar Pradesh"},
{country: Country.first, name:"Uttarakhand"},
{country: Country.first, name:"West Bengal"}
])

# Seed the city table
City.create(name:"Bangalore",country:Country.first,state:State.find_by_name('Karnataka'))
