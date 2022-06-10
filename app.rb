# app.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes & requires
require 'bundler'
Bundler.require
require_relative './routers/router.rb'

# A few global vars - Swear I won't be using too many of them ;-)
$csv = './data/shop.csv'
$verbose = true
$shop_name = 'GibbZ\' Lair'

# Launches the whole program logic
Router.new.perform

# app.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)