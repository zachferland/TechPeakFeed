# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(name: 'Bianca Welds', image: 'bianca-welds.png', feed: 'http://blog.biancawelds.com/feed/')

User.create(name: 'Angel Milev', image: 'angel.png', feed: 'http://secondscreeninsider.com/feed/')

User.create(name: 'Davide Rizzo', image: 'davide-rizzo.png', feed: 'http://daviderizzo.com/feed/')

User.create(name: 'Giancarlo Frison', image: 'giancarlo-frison.png', feed: 'http://gfrison.com/feed/')

User.create(name: 'Nejc Škoberne', image: 'nejc-skoberne.png', feed: 'http://nejc.skoberne.net/feed/')

User.create(name: 'Pavel Šimeček', image: 'pavel-simecek.png', feed: 'http://blog.pavelsimecek.cz/?feed=rss2')
