// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

//= require_tree .

// import "./@rails/actionable"
import "@rails/activestorage"

import "./trix"
import "@rails/actiontext"

import Rails from "./@rails/ujs"
import Turbolinks from "./turbolinks"
import * as ActiveStorage from "./@rails/activestorage"
import "./channels"
import LocalTime from "./local-time"

LocalTime.start()
Rails.start()
Turbolinks.start()
ActiveStorage.start()
import "trix"
import "@rails/actiontext"
