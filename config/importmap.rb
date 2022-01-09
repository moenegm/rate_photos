# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true

pin "@hotwired/turbo-rails", to: "turbo.js" # new one 

pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true

pin "@hotwired/stimulus", to: "stimulus.js" # new one 

pin "@hotwired/stimulus-loading", to: "stimulus-loading-js", preload: true

pin "@hotwired/stimulus-importmap-autoloader", to: "stimulus-importmap-autoloader.js" #new one

# pin "@rails/actioncable", to: "actioncable.esm.js"
pin_all_from "app/javascript/channels", under: "channels"

pin_all_from "app/javascript/controllers", under: "controllers"

pin "@rails/activestorage", to: "activestorage.esm.js"

pin "local-time" # @2.1.0
pin "trix"
pin "@rails/actiontext", to: "actiontext.js"
pin "sortablejs", to: "https://cdn.jsdelivr.net/npm/sortablejs@1.14.0/modular/sortable.esm.js"









