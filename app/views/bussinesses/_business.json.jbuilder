json.extract! business, :id, :name, :address, :phone, :website, :operating_hours, :business_type_id, :created_at, :updated_at
json.url business_url(business, format: :json)
