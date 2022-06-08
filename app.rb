# app.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)
# W19D3~5 - Final POO project

# Useful includes & requires
require 'bundler'
Bundler.require
require_relative './routers/router.rb'

# Defines the data location
$csv = "./data/shop.csv"

# Launches the whole program logic by invoking the perform method on the newly created Router object
Router.new.perform

# app.rb - Coded with love & sweat by Jean-Baptiste VIDAL for THP Developer curriculum (Winter 2022)