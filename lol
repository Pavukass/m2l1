import discord
from discord.ext import commands
import os, random

bot = commands.Bot(command_prefix='$', intents=discord.Intents.default())

@bot.event
async def on_ready():
    print('Я работаю')

@bot.command()
async def meme(ctx):
    img_name = random.choice(os.listdir('images2'))
    with open(f'images2/{img_name}', 'rb') as f:
        picture = discord.File(f)
    await ctx.send(file=picture)

@bot.command()
async def mem(ctx):
    img_name = random.choise(os.listdir('images'))
    with open(f'images/{img_name}', 'rb') as f:
        picture = discord.File(f)
    await ctx.send(file=picture)

@bot.command()
async def eko1(ctx):
    await ctx.send('1. Не покупать пакеты. Каждый день сотни тысяч пакетов продолжают оказываться на свалках. Чем заменить? Экологические тканевые сумки мешочки! Намного удобнее и практичнее пакетов, которые рвутся. дизайн пакета можно выбрать на любой вкус.')    

@bot.command()
async def eko2(ctx):
    await ctx.send('2. Не покупайте кофе / чай to go в одноразовых стаканчиках. Да, они якобы бумажные, но тонкий слой пленки, которым они покрыты не позволяет ни разложиться им быстро, или переработать их. Чем заменить? Собственной чашкой / стаканом / термосом. ')

@bot.command()
async def eko3(ctx):
    await ctx.send('3. Уменьшите использование пластика. Старайтесь покупать меньше товаров в пластиковых обертках. Это поможет не только планете, но и вашему здоровью.')

@bot.command()
async def eko4(ctx):
    await ctx.send('4. Используйте экологические средства гигиены.')

@bot.command()
async def eko5(ctx):
    await ctx.send('5. Сортируйте мусор. Обычно не везде есть такая возможность. И все же старайтесь использовать эту возможность, если она есть.')

@bot.command()
async def eko6(ctx):
    await ctx.send('6. Сдавайте макулатуру, стекло, пластик, одежду на переработку или повторное использование. Это поможет не только планете, но и пополнит ваш бюджет.')

@bot.command()
async def eko7(ctx):
    await ctx.send('7. Не бойтесь убирать!Не забывайте убирать за собой после очередного похода на природу, учите этому своих детей, будьте примером для друзей и знакомых.')

@bot.command()
async def eko8(ctx):
    await ctx.send('8. Меньше используйте машины. Передвигаться можно и на велосипеде, можно и ходить пешком, и пользоваться общественным транспортом. Ведь машины сильно загрязняют воздух.')

@bot.command()
async def eko9(ctx):
    await ctx.send('9. Высаживайте деревья и кустарники. Растения не только украсят ваш участок, но и очистят воздух')

@bot.command()
async def eko10(ctx):
    await ctx.send('10. Привлекайте к экологическому движению своих знакомых, рассказывайте об этом в социальных сетях.')

bot.run('MTE1OTg3NzYyMTEyMzkyNDE3OQ.GTijeJ.1lx2N35TWNtpAPD80gnCOifCaXWn6KzIl_CEMU')
