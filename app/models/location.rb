class Location < ApplicationRecord
  include Google::Business::Reviews

 def reviews
   get_business_reviews(Rails.application.credentials.dig(:google_api_key), self.place_id)
 end
end
