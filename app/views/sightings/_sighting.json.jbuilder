json.extract! sighting, :id, :amount_in_one_session, :date, :latitude, :longitude, :animal_id, :region_id
json.url animal_url(sighting, format: :json)
