class Fortunes::Edit < BrowserAction
  get "/fortunes/:fortune_id/edit" do
    fortune = FortuneQuery.find(fortune_id)
    html EditPage,
      operation: SaveFortune.new(fortune, current_user: current_user),
      fortune: fortune
  end
end
