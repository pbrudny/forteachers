json.extract! product, :id, :name, :description, :pages, :answer_key, :duration, :file, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
