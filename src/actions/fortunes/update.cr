class Fortunes::Update < BrowserAction
  put "/fortunes/:fortune_id" do
    fortune = FortuneQuery.find(fortune_id)
    SaveFortune.update(fortune, params) do |operation, updated_fortune|
      if operation.saved?
        flash.success = "The record has been updated"
        redirect Show.with(updated_fortune.id)
      else
        flash.failure = "It looks like the form is not valid"
        html EditPage, operation: operation, fortune: updated_fortune
      end
    end
  end
end
