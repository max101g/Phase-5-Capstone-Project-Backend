class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    # this method is called to generate id for tables, encoded as strings
    def generate_code(length)
        # characters allowed in the varchar string
        chars = ('a'..'z').to_a + ('0'..'9').to_a
      
        # Generate a random string of the desired length
        random_string = (0...length).map { chars[rand(chars.length)] }.join
      
        # Insert hyphens after every 3 characters
        random_string.insert(4, '-').insert(9, '-')
    end      
end