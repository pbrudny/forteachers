# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cat_1 = Category.create(name: 'logopedia')
cat_1.child_categories.create([
    { name: 'seplenienie' },
    { name: 'słuch fonetyczny' },
    { name: 'gimnastyka buzi i języka' }
  ]
)

cat_2 = Category.create(name: 'wspieranie mowy')
cat_2.child_categories.create([
  { name: 'emocje' },
  { name: 'szeregi' },
  { name: 'wykluczanie ze zbioru' }]
)

cat_3 = Category.create(name: 'angielski')
cat_3.child_categories.create(
 [ { name: 'people' },
  { name: 'home' },
  { name: 'school' }]
)

cat_4 = Category.create(name: 'niemiecki')
cat_4.child_categories.create(
  [{ name: 'menschen' },
  { name: 'essen' },
  { name: 'einkaufen' }]
)
cat_5 = Category.create(name: 'układanki')
cat_5.child_categories.create(
  [{ name: '2-3 elementy' },
  { name: '4-10 elementów' },
  { name: 'wieloelementowe' }]
)

cat_6 = Category.create(name: 'łamigówki')
cat_6.child_categories.create(
  [{ name: 'rebusy' },
  { name: 'labirynty' },
  { name: 'gimnastyka buzi i języka' }]
)

cat_7 = Category.create(name: 'kolorowanki')
cat_7.child_categories.create(
  [{ name: 'zwierzęta' },
  { name: 'rośliny' },
  { name: 'pojazdy' },
  { name: 'okazjonalne' },
  { name: 'dorysuj' }]
)

Product.create(
  [{
    name: 'Kolorowanka RZ',
    description: 'Materiał zawiera kartę z dwuznakiem wypełnionym obrazkami do pokolorowania, których nazwy rozpoczynają się od [rz].',
    category: Category.find_by(name: 'seplenienie')
  },
  {
    name: 'Kolorowanka Ż',
    description: 'Materiał zawiera kartę z literą wypełnioną obrazkami do pokolorowania, których nazwy rozpoczynają się od głoski [ż].',
    category: Category.find_by(name: 'seplenienie')
  },
  {
    name: 'Foka w geometrycznym labityncie',
    description: 'Labirynt, w którym ścieżki wyznaczone są przez figury geometryczne.',
    category: Category.find_by(name: 'zwierzęta')
  },
  {
    name: 'Rebusy dratewki',
    description: 'Materiał zawiera kartę z dwoma rebusami, jednym literowym, drugim głoskowym. Karta może być wykorzystania przy omawianiu lektury "Szewczyk Dratewka".',
    category: Category.find_by(name: 'rebusy')
  },
  {
    name: 'Rebusy - narcyz, szafirek',
    description: 'Karta z dwoma rebusami, których rozwiązania to nazwy kwiatów.',
    category: Category.find_by(name: 'rebusy')
  },
  {
    name: 'Rebusy - szyszka, szopka',
    description: 'Karta z dwoma rebusami, których rozwiązania zawierają głoskę [sz] w nagłosie.',
    category: Category.find_by(name: 'rebusy')
  }]
)

