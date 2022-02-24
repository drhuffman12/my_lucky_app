class Fortunes::Edit < BrowserAction
  include OnlyAllowCurrentUser

  get "/fortunes/:fortune_id/edit" do
    fortune = FortuneQuery.find(fortune_id)
    ensure_owned_by_current_user!(fortune)

    html EditPage,
      operation: SaveFortune.new(fortune, current_user: current_user),
      fortune: fortune
  end
end
