require('dotenv').config()
const {Telegraf} = require('telegraf')

const bot = new Telegraf('78271976:AAFK32LMrCwMiyVQu4q1XYgcZgk5sm1sn_k')
bot.start((ctx) => ctx.reply('Welcome!'))
bot.help((ctx) => ctx.reply('Send me a sticker'))
bot.on('sticker', (ctx) => ctx.reply('👍'))
bot.hears('hi', (ctx) => ctx.reply('Hey there'))
bot.launch()