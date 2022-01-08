// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "trix"
import "@rails/actiontext"
import LocalTime from "local-time"

LocalTime.start()
Rails.start()
Turbolinks.start()
ActiveStorage.start()
