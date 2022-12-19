json.extract! game, :id, :title, :price, :created_at, :updated_at
json.url game_url(game, format: :json)
