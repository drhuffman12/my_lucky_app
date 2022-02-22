class Fortunes::Index < BrowserAction
  get "/fortunes" do
    html IndexPage, fortunes: FortuneQuery.new
  end
end
