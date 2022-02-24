class Home::Index < BrowserAction
  include Auth::AllowGuests

  get "/" do
    if current_user?
      redirect Me::Show
    else
      # When you're ready change this line to:
      #
      #   redirect SignIns::New
      #
      # Or maybe show signed out users a marketing page:
      #
      #   html Marketing::IndexPage

      # html Lucky::WelcomePage
      # html Home::IndexPage

      # ORDER BY created_at DESC LIMIT 10
      latest_fortunes = FortuneQuery.new.created_at.desc_order.limit(10)

      # Pass these fortunes to our IndexPage
      html IndexPage, fortunes: latest_fortunes
    end
  end
end
