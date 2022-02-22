class Fortunes::Show < BrowserAction
  get "/fortunes/:fortune_id" do
    html ShowPage, fortune: FortuneQuery.find(fortune_id)
  end
end
