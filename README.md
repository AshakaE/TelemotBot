![](https://img.shields.io/badge/Microverse-blueviolet)

# Telegram Bot

> This is a bot that sends the chat user inspirational messages and jokes.

![screenshot](img/app_screenshot.gif)

> It works by sending a `/start` to start the conversation, `/inspire` to get an inspirational message, `/joke` to get a **yo mama** joke, and `/stop` to end the conversation.

## Built With

* Ruby
* RSpec
* Rubocop
* [Telegram API](https://core.telegram.org/api)
* [TypeFit API](https://type.fit/api/quotes)
* [yomama API](https://api.yomomma.info/)

## Live Demo

[TelemotBot](https://telemot-bot.herokuapp.com/)


## Available commands for the TelemotBot

1. `/start` to receive a greetings message.
2. `/inspire` to receive an inspirational message.
3. `/joke` to receive a **yo mama** joke.
4. `/stop` receive a farewell message.

### Ruby gem dependencies
* telegram-bot-ruby
* net-http-persistent
* httparty
* dotenv
* json

## Prerequisities

To get this project up and running locally, you must have `RUBY` installed on your computer.

## Getting Started

**To get this project set up on your local machine, follow these simple steps:**

- git clone `git@github.com:AshakaE/TelemotBot.git`.
- cd `telemotbot`.
- run `bundle install` to install dependencies.
- download the [Telegram app](https://desktop.telegram.org/), create an account and talk to the [Botfather](https://t.me/botfather). Follow the instructions and create a bot, you will then receive an API Token that looks like this: `16434261199:XXfghwy6PDiJB4swk23Lb4oOzwJIkspba0S4` and the link to your bot.
- create a `.env` in the root directory, add the token gotten from botfather there `key=<token here>`.
- Run `ruby bin/main.rb`.
- Open the link created with Botfather.
- Use commands from [Available commands section](#available-commands-for-the-telemotbot).

### Run tests

1. Open Terminal

2. Install RSpec on your system by running:

    `gem install rspec`

3. Run the tests with the command:

    `rspec`

## Author 👤 

- GitHub: [@AshakaE](https://github.com/AshakaE)
- Twitter: [@shaqzee](https://twitter.com/shaqzee_)
- LinkedIn: [Ashaka](https://www.linkedin.com/in/ashaka-egerega-92a8b41b3/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to [@peterrobert](https://github.com/peterrobert) for the tutorial.
- Hat tip to [Microverse](https://www.microverse.org/) for the readme template.

## 📝 License

This project is [MIT](lic.url) licensed.

Copyright (c) 2021 Ashaka

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
