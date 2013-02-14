Icallect
=======================

iCal + Collect

This ruby script is designed for watching a list of webcal (ical) feeds and produces various outputs. It is intended to run in a cronjob or any kind of scheduling system like resque or sidekiq.

Install
--------------

For now just clone the project and 
    
    git clone git@github.com:mose/icallect
    cd icallect
    bundle install
    rake cal:setup

Commands
--------------

    rake cal:setup     # change the setup
    rake cal:add <url> # add a feed with a webcal url
    rake cal:list      # list feeds
    rake cal:run       # run the collection task

Contribute
-----------------

1. Fork the project on https://github.com/mose/icallect
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


Licence
-------------

(The MIT License)

Copyright (c) 2013 - Mose, at mose.fr

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

