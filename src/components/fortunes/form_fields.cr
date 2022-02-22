class Fortunes::FormFields < BaseComponent
  needs operation : SaveFortune

  def render
    mount Shared::Field, operation.text, &.text_input(autofocus: "true")
  end
end
