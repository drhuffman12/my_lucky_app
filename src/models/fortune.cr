class Fortune < BaseModel
  table do
    column text : String

    belongs_to user : User
  end
end
