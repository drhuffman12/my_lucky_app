class Fortunes::New < BrowserAction
  get "/fortunes/new" do
    html NewPage, operation: SaveFortune.new.new(current_user: current_user)
  end
end
