class Fortunes::Delete < BrowserAction
  delete "/fortunes/:fortune_id" do
    fortune = FortuneQuery.find(fortune_id)
    DeleteFortune.delete(fortune) do |_operation, _deleted|
      flash.success = "Deleted the fortune"
      redirect Index
    end
  end
end
