# my_lucky_app

Homepage: git@github.com:drhuffman12/my_lucky_app.git

Based on:
* https://github.com/drhuffman12/example_lucky_app
  
  See: [README.ref.md](README.ref.md])
* [Lucky Beginners Tutorial](https://luckyframework.org/guides/tutorial/overview)

See also:
* https://discord.com/channels/743896265057632256/743896265057632259/945502280298430534

---

## Fixes

* `Lucky::RouteNotFoundError` error re `Could not find route matching GET /js/bootstrap.esm.js.map`: https://discord.com/channels/743896265057632256/743896265057632259/945527071424258108
  ```
  app_1       | web          | GET / ()
  app_1       | web          |  ▸ Handled by Home::Index
  app_1       | web          |  ▸ Rendered Home::IndexPage
  app_1       | web          |  ▸ Sent 200 OK (591.86µs) ()
  app_1       | web          |  ▸  Lucky::RouteNotFoundError 
  app_1       | web          | 
  app_1       | web          |      Could not find route matching GET /js/bootstrap.esm.js.map
  app_1       | web          | 
  app_1       | web          |     Backtrace 
  app_1       | web          | 
  app_1       | web          |      lib/dexter/src/dexter/log.cr:166:5 in 'call'
  ```
  * As per Jeremy Woertink at https://discord.com/channels/743896265057632256/743896265057632259/945528217345859635:

        the map files usually fail because they're not set in the mix-manifest.json file. We may have to look at that again, but I don't think it causes any issues other than log noise
  * RESOLVED by adding files from "https://github.com/twbs/bootstrap/blob/main/dist/js/*.min.js*" into "public/js";
    in particular "bootstrap.esm.js.map".

* Nav bar is supposed to be horizontal, but is vertical; why?
  * `Using Components` (https://luckyframework.org/guides/tutorial/components)
    * Adding a nav bar
      * based on: https://www.w3schools.com/bootstrap/bootstrap_navbar.asp
