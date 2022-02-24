class SaveFortune < Fortune::SaveOperation
  # To save user provided params to the database, you must permit them
  # https://luckyframework.org/guides/database/saving-records#perma-permitting-columns
  permit_columns text
  needs current_user : User

  before_save do
    user_id.value = current_user.id
  end
end
