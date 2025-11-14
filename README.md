# emoji_hub.cr
Web-API for [emojihub.yurace.pro](https://emojihub.yurace.pro/) a simple &amp; free HTTP API with emojis for your cool apps

[![Github Card](https://github-readme-stats.vercel.app/api/pin/?theme=transparent&hide_border=true&show_owner=true&username=cheatsnake&repo=emojihub)](https://github.com/cheatsnake/emojihub)


## Example
```cr
require "./emoji_hub"

emoji_hub = EmojiHub.new
random_emoji = emoji_hub.get_random_emoji()
puts random_emoji
```
