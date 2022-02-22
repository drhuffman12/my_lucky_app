class Fortunes::New < BrowserAction
  get "/fortunes/new" do
    html NewPage, operation: SaveFortune.new
  end
end
