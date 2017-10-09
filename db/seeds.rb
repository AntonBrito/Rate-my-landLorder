# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'AntonBrito@gmail.com', password: '123', admin: true)
landlord.create(name: 'Ellen', address: '29 Phillips st', user_id: 1)
comment.create(subject: 'She didnt care about her place', comment: 'too much blabla', landlord_id: 1, rate: 1)
