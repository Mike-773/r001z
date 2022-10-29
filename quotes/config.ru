
#quotes/config.ru
#A .ru file is a rack up file
#we use this to connect to a web page and we use a proc in Ruby

run proc {
  [200,
    {'Content-Type' => 'text/html'},
    ["hello, web"]
  ]
}

#That's enough to say hello to the web - nearly (Noah's comment)
