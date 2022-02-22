class Fortunes::Create < BrowserAction
  post "/fortunes" do
    SaveFortune.create(params) do |operation, fortune|
      if fortune
        flash.success = "The record has been saved"
        redirect Show.with(fortune.id)
      else
        flash.failure = "It looks like the form is not valid"
        html NewPage, operation: operation
      end
    end
  end
end
