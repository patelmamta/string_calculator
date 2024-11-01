## script to run the program using a single command
#!/bin/bash

# Install RSpec if it's not installed
if ! gem list -i rspec > /dev/null 2>&1; then
  echo "Installing RSpec..."
  gem install rspec
fi

# Run RSpec tests
echo "Running RSpec Tests:"
rspec spec/string_calculator_spec.rb

# Run the Ruby program
echo "Running the Ruby Program:"
ruby app/string_calculator.rb
