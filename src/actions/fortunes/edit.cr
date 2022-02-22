class Fortunes::Edit < BrowserAction
  get "/fortunes/:fortune_id/edit" do
    fortune = FortuneQuery.find(fortune_id)
    html EditPage,
      operation: SaveFortune.new(fortune),
      fortune: fortune
  end
end
