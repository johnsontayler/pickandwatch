# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

godfather = Movie.create!(title: 'The Godfather', photo: 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,704,1000_AL_.jpg',
                          genre: 'Crime', description: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
                          year: 1972, duration: 175, director: 'Francis Ford Coppola', imdb_rating: 9.1)

shawshank = Movie.create!(title: 'The Shawshank Redemption', photo: 'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg',
                          genre: 'Drama', description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
                          year: 1994, duration: 142, director: 'Frank Darabont', imdb_rating: 9.2)

godfather_2 = Movie.create!(title: 'The Godfather: Part II', photo: 'https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR3,0,182,268_AL_.jpg',
                          genre: 'Crime', description: 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.',
                          year: 1974, duration: 202, director: 'Francis Ford Coppola', imdb_rating: 9.0)

dark_knight = Movie.create!(title: 'The Dark Knight', photo: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Action', description: 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
                          year: 2008, duration: 153, director: 'Christopher Nolan', imdb_rating: 9.0)

pulp_fiction = Movie.create!(title: 'Pulp Fiction', photo: 'https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR1,0,182,268_AL_.jpg',
                          genre: 'Crime', description: 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',
                          year: 1994, duration: 154, director: 'Quentin Tarantino', imdb_rating: 8.9)

fight_club = Movie.create!(title: 'Fight Club', photo: 'https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Drama', description: 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.',
                          year: 1999, duration: 139, director: 'David Fincher', imdb_rating: 8.8)

forrest_gump = Movie.create!(title: 'Forrest Gump', photo: 'https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR1,0,182,268_AL_.jpg',
                          genre: 'Drama', description: 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.',
                          year: 1994, duration: 142, director: 'Robert Zemeckis', imdb_rating: 8.8)

inception = Movie.create!(title: 'Inception', photo: 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Action', description: 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
                          year: 2010, duration: 148, director: 'Christopher Nolan', imdb_rating: 8.8)

matrix = Movie.create!(title: 'The Matrix', photo: 'https://www.imdb.com/title/tt0133093/mediaviewer/rm525547776?ref_=tt_ov_i',
                          genre: 'Action', description: 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
                          year: 1999, duration: 136, director: 'Lana Wachowski', imdb_rating: 8.7)

goodfellas = Movie.create!(title: 'Goodfellas', photo: 'https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Crime', description: 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.',
                          year: 1990, duration: 146, director: 'Martin Scorsese', imdb_rating: 8.7)

se7en = Movie.create!(title: 'Se7en', photo: 'https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Crime', description: 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.',
                          year: 1995, duration: 127, director: 'David Fincher', imdb_rating: 8.6)

city_of_god = Movie.create!(title: 'City of God', photo: 'https://m.media-amazon.com/images/M/MV5BMGU5OWEwZDItNmNkMC00NzZmLTk1YTctNzVhZTJjM2NlZTVmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Crime', description: 'In the slums of Rio, two kids paths diverge as one struggles to become a photographer and the other a kingpin.',
                          year: 2002, duration: 130, director: 'Fernando Meirelles', imdb_rating: 8.6)

the_silence_of_the_lamb = Movie.create!(title: 'The Silence of the Lambs', photo: 'https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Thriller', description: 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.',
                          year: 1991, duration: 128, director: 'Jonathan Demme', imdb_rating: 8.6)

the_usual_suspect = Movie.create!(title: 'The Usual Suspects', photo: 'https://m.media-amazon.com/images/M/MV5BYTViNjMyNmUtNDFkNC00ZDRlLThmMDUtZDU2YWE4NGI2ZjVmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Thriller', description: 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.',
                          year: 1995, duration: 106, director: 'Bryan Singer', imdb_rating: 8.5)

the_lion_king = Movie.create!(title: 'The Lion King', photo: 'https://m.media-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Animation', description: 'A Lion cub crown prince is tricked by a treacherous uncle into thinking he caused his fathers death and flees into exile in despair, only to learn in adulthood his identity and his responsibilities.',
                          year: 1994, duration: 86, director: 'Roger Allers', imdb_rating: 8.5)

american_history_x = Movie.create!(title: 'American History X', photo: 'https://m.media-amazon.com/images/M/MV5BZjA0MTM4MTQtNzY5MC00NzY3LWI1ZTgtYzcxMjkyMzU4MDZiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Drama', description: 'A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.',
                          year: 1998, duration: 119, director: 'Tony Kaye', imdb_rating: 8.5)

untouchable = Movie.create!(title: 'Untouchable', photo: 'https://m.media-amazon.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Biography', description: 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.',
                          year: 2011, duration: 112, director: 'Olivier Nakache', imdb_rating: 8.5)

gladiator = Movie.create!(title: 'Gladiator', photo: 'https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Action', description: 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.',
                          year: 2000, duration: 145, director: 'Ridley Scott', imdb_rating: 8.5)

the_departed = Movie.create!(title: 'The Departed', photo: 'https://m.media-amazon.com/images/M/MV5BMTI1MTY2OTIxNV5BMl5BanBnXkFtZTYwNjQ4NjY3._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Crime', description: 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.',
                          year: 2006, duration: 151, director: 'Martin Scorsese', imdb_rating: 8.5)

whiplash = Movie.create!(title: 'Whiplash', photo: 'https://m.media-amazon.com/images/M/MV5BOTA5NDZlZGUtMjAxOS00YTRkLTkwYmMtYWQ0NWEwZDZiNjEzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Drama', description: 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a students potential.',
                          year: 2014, duration: 106, director: 'Damien Chazelle', imdb_rating: 8.5)

the_prestige = Movie.create!(title: 'The Prestige', photo: 'https://m.media-amazon.com/images/M/MV5BMjA4NDI0MTIxNF5BMl5BanBnXkFtZTYwNTM0MzY2._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Drama', description: 'After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.',
                          year: 2006, duration: 130, director: 'Christopher Nolan', imdb_rating: 8.5)

django_unchained = Movie.create!(title: 'Django Unchained', photo: 'https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Drama', description: 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.',
                          year: 2012, duration: 155, director: 'Quentin Tarantino', imdb_rating: 8.4)

the_dark_knight_rises = Movie.create!(title: 'The Dark Knight Rises', photo: 'https://m.media-amazon.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Action', description: 'Eight years after the Jokers reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City, now on the edge of total annihilation, from the brutal guerrilla terrorist Bane.',
                          year: 2012, duration: 164, director: 'Christopher Nolan', imdb_rating: 8.4)

refai = User.create!(first_name: 'Refai', last_name: 'x', email: 'refai@gmail.com', photo: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')
tayler = User.create!(first_name: 'Tayler', last_name: 'Johnson', email: 'tayler@gmail.com', photo: 'https://images.unsplash.com/photo-1546538994-4f15d0aa966f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')
joseph = User.create!(first_name: 'Joseph', last_name: 'Schemama', email: 'joseph@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSDdQudSzUKlIuQvMZJuEZePygVJ-oiwaWF0XqEMFm_4P3h9ZFH')
constance = User.create!(first_name: 'Constance', last_name: 'Graftieaux', email: 'constance@gmail.com', photo: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')
anderson = User.create!(first_name: 'Anderson', last_name: 'Costa', email: 'anderson@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTc2BWiA7C9BSG_8TiPxYRvs8R_7Ngdfeo3E-o1rOa25MttraeY')
andre = User.create!(first_name: 'Andre', last_name: 'Ferrer', email: 'andre@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRXn3gmXdR9fyn0O6r41u-b3g3ZljlxdtaxxdWjmJitpDpDYMMS')
brittany = User.create!(first_name: 'Brittany', last_name: 'Correll', email: 'brittany@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQGHN8mgodcEbE6H_ARPX6SJ2uCxYCaB68feRjaPV7ahG03a5v6')
cahue = User.create!(first_name: 'Cahue', last_name: 'Beltrao', email: 'cahue@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-HGZGUJKAc9pB19NeZr_RLADrtiOhZnJbCTP25bVs-AokWMHf')
cyrille = User.create!(first_name: 'Cyrille', last_name: 'Labesse', email: 'cyrille@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRfG9-bf6t70gJAT1EWMRyGXwVPxfUhrks9FmycteRDAEE3mVXZ')
diana = User.create!(first_name: 'Diana', last_name: 'Pavel', email: 'diana@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS5H0TEHtlGq1sKvweB165eENTeFjh_dfvDtttIbik1cQgcr0Rv')
fernando = User.create!(first_name: 'Fernando', last_name: 'Martins', email: 'fernando@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTwUlgdl1jS3sHbAFwKzBE-z3WPbbU7qwMBT5O4hB9Lq9QC6ncL')
lucas = User.create!(first_name: 'Lucas', last_name: 'Martins', email: 'lucas@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6nr_xjkS48VcukH3ydaKt1dLji-wMZuLhvtqJ6nw2zfBg67fM')
matheus = User.create!(first_name: 'Matheus', last_name: 'Penchel', email: 'matheus@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS25AbBrd_3NmceWNvLfTHTxvrtDxsm0femHA5zPYLdcqZzDV7d')
milene = User.create!(first_name: 'Milene', last_name: 'Cardoso', email: 'milene@gmail.com', photo: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')
natalia = User.create!(first_name: 'Natalia', last_name: 'Barthe', email: 'natalia@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQZyNv-Zh4fUKnnulv-AAwnrfWclNMsM-LagDGZgbRFzBY4yZXY')
wadi = User.create!(first_name: 'Lucas', last_name: 'Wadi', email: 'wadi@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS0_UQAv6wak5s61AqnZCuSNd5x5l0JzvIYR4YU7Yd6S-KrTKTN')
marcel = User.create!(first_name: 'Marcel', last_name: 'S.F.', email: 'marcel@gmail.com', photo: 'https://www.subphoto.net/sy-photos/2018/10/25/16/small_069d54_2018_Besney_Jonathan-9837.jpg')
ryan = User.create!(first_name: 'Ryan', last_name: 'Mansfield', email: 'ryan@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSGk_X8hj3pDNoiyCRn3bxGNkEA8cwyMlXoCoyU6eKFXnjoVa4s')
sarra = User.create!(first_name: 'Sarra', last_name: 'Ghaib', email: 'sarra@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQK24tXyyQTX501kKlabGSGlHsXdaB3FUmh3p9grOsI-dnY_fzk')
tabata = User.create!(first_name: 'Tabata', last_name: 'Lisboa', email: 'tabata@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR0buXpNw2a8z78DasnOjXPkyCPLSm2oWt3WrHiMIMu6ppKJEeN')
pedro = User.create!(first_name: 'Pedro', last_name: 'Meyer', email: 'pedro@gmail.com', photo: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')

refai_taste = Taste.create!(movie: godfather, user: refai,
                            watched: true, rating: true)
tayler_taste = Taste.create!(movie: godfather_2, user: tayler,
                             watched: true, rating: true)
joseph_taste = Taste.create!(movie: shawshank, user: joseph,
                             watched: true, rating: true)
constance_taste = Taste.create!(movie: dark_knight, user: constance,
                                watched: true, rating: true)
anderson_taste = Taste.create!(movie: pulp_fiction, user: anderson,
                               watched: true, rating: true)
andre_taste = Taste.create!(movie: fight_club, user: andre,
                            watched: true, rating: true)
brittany_taste = Taste.create!(movie: inception, user: brittany,
                               watched: true, rating: true)
cahue_taste = Taste.create!(movie: matrix, user: cahue,
                            watched: true, rating: true)
cyrille_taste = Taste.create!(movie: goodfellas, user: cyrille,
                              watched: true, rating: true)
diana_taste = Taste.create!(movie: se7en, user: diana,
                            watched: true, rating: true)
fernando_taste = Taste.create!(movie: city_of_god, user: fernando,
                               watched: true, rating: true)
lucas_taste = Taste.create!(movie: the_silence_of_the_lamb, user: lucas,
                            watched: true, rating: true)
matheus_taste = Taste.create!(movie: the_usual_suspect, user: matheus,
                              watched: true, rating: true)
milene_taste = Taste.create!(movie: the_lion_king, user: milene,
                             watched: true, rating: true)
natalia_taste = Taste.create!(movie: american_history_x, user: natalia,
                              watched: true, rating: true)
wadi_taste = Taste.create!(movie: untouchable, user: wadi,
                           watched: true, rating: true)
marcel_taste = Taste.create!(movie: gladiator, user: marcel,
                             watched: true, rating: true)
ryan_taste = Taste.create!(movie: the_departed, user: ryan,
                           watched: true, rating: true)
sarra_taste = Taste.create!(movie: whiplash, user: sarra,
                            watched: true, rating: true)
tabata_taste = Taste.create!(movie: the_prestige, user: tabata,
                             watched: true, rating: true)
pedro_taste = Taste.create!(movie: django_unchained, user: pedro,
                            watched: true, rating: true)godfather = Movie.create!(title: 'The Godfather', photo: 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,704,1000_AL_.jpg',
                          genre: 'Crime', description: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
                          year: 1972, duration: 175, director: 'Francis Ford Coppola', imdb_rating: 9.1)

shawshank = Movie.create!(title: 'The Shawshank Redemption', photo: 'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg',
                          genre: 'Drama', description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
                          year: 1994, duration: 142, director: 'Frank Darabont', imdb_rating: 9.2)

godfather_2 = Movie.create!(title: 'The Godfather: Part II', photo: 'https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR3,0,182,268_AL_.jpg',
                          genre: 'Crime', description: 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.',
                          year: 1974, duration: 202, director: 'Francis Ford Coppola', imdb_rating: 9.0)

dark_knight = Movie.create!(title: 'The Dark Knight', photo: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Action', description: 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
                          year: 2008, duration: 153, director: 'Christopher Nolan', imdb_rating: 9.0)

pulp_fiction = Movie.create!(title: 'Pulp Fiction', photo: 'https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR1,0,182,268_AL_.jpg',
                          genre: 'Crime', description: 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',
                          year: 1994, duration: 154, director: 'Quentin Tarantino', imdb_rating: 8.9)

fight_club = Movie.create!(title: 'Fight Club', photo: 'https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Drama', description: 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.',
                          year: 1999, duration: 139, director: 'David Fincher', imdb_rating: 8.8)

forrest_gump = Movie.create!(title: 'Forrest Gump', photo: 'https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR1,0,182,268_AL_.jpg',
                          genre: 'Drama', description: 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.',
                          year: 1994, duration: 142, director: 'Robert Zemeckis', imdb_rating: 8.8)

inception = Movie.create!(title: 'Inception', photo: 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Action', description: 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
                          year: 2010, duration: 148, director: 'Christopher Nolan', imdb_rating: 8.8)

matrix = Movie.create!(title: 'The Matrix', photo: 'https://www.imdb.com/title/tt0133093/mediaviewer/rm525547776?ref_=tt_ov_i',
                          genre: 'Action', description: 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
                          year: 1999, duration: 136, director: 'Lana Wachowski', imdb_rating: 8.7)

goodfellas = Movie.create!(title: 'Goodfellas', photo: 'https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Crime', description: 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.',
                          year: 1990, duration: 146, director: 'Martin Scorsese', imdb_rating: 8.7)

se7en = Movie.create!(title: 'Se7en', photo: 'https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Crime', description: 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.',
                          year: 1995, duration: 127, director: 'David Fincher', imdb_rating: 8.6)

city_of_god = Movie.create!(title: 'City of God', photo: 'https://m.media-amazon.com/images/M/MV5BMGU5OWEwZDItNmNkMC00NzZmLTk1YTctNzVhZTJjM2NlZTVmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Crime', description: 'In the slums of Rio, two kids paths diverge as one struggles to become a photographer and the other a kingpin.',
                          year: 2002, duration: 130, director: 'Fernando Meirelles', imdb_rating: 8.6)

the_silence_of_the_lamb = Movie.create!(title: 'The Silence of the Lambs', photo: 'https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Thriller', description: 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.',
                          year: 1991, duration: 128, director: 'Jonathan Demme', imdb_rating: 8.6)

the_usual_suspect = Movie.create!(title: 'The Usual Suspects', photo: 'https://m.media-amazon.com/images/M/MV5BYTViNjMyNmUtNDFkNC00ZDRlLThmMDUtZDU2YWE4NGI2ZjVmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Thriller', description: 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.',
                          year: 1995, duration: 106, director: 'Bryan Singer', imdb_rating: 8.5)

the_lion_king = Movie.create!(title: 'The Lion King', photo: 'https://m.media-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Animation', description: 'A Lion cub crown prince is tricked by a treacherous uncle into thinking he caused his fathers death and flees into exile in despair, only to learn in adulthood his identity and his responsibilities.',
                          year: 1994, duration: 86, director: 'Roger Allers', imdb_rating: 8.5)

american_history_x = Movie.create!(title: 'American History X', photo: 'https://m.media-amazon.com/images/M/MV5BZjA0MTM4MTQtNzY5MC00NzY3LWI1ZTgtYzcxMjkyMzU4MDZiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Drama', description: 'A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.',
                          year: 1998, duration: 119, director: 'Tony Kaye', imdb_rating: 8.5)

untouchable = Movie.create!(title: 'Untouchable', photo: 'https://m.media-amazon.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Biography', description: 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.',
                          year: 2011, duration: 112, director: 'Olivier Nakache', imdb_rating: 8.5)

gladiator = Movie.create!(title: 'Gladiator', photo: 'https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Action', description: 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.',
                          year: 2000, duration: 145, director: 'Ridley Scott', imdb_rating: 8.5)

the_departed = Movie.create!(title: 'The Departed', photo: 'https://m.media-amazon.com/images/M/MV5BMTI1MTY2OTIxNV5BMl5BanBnXkFtZTYwNjQ4NjY3._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Crime', description: 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.',
                          year: 2006, duration: 151, director: 'Martin Scorsese', imdb_rating: 8.5)

whiplash = Movie.create!(title: 'Whiplash', photo: 'https://m.media-amazon.com/images/M/MV5BOTA5NDZlZGUtMjAxOS00YTRkLTkwYmMtYWQ0NWEwZDZiNjEzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Drama', description: 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a students potential.',
                          year: 2014, duration: 106, director: 'Damien Chazelle', imdb_rating: 8.5)

the_prestige = Movie.create!(title: 'The Prestige', photo: 'https://m.media-amazon.com/images/M/MV5BMjA4NDI0MTIxNF5BMl5BanBnXkFtZTYwNTM0MzY2._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Drama', description: 'After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.',
                          year: 2006, duration: 130, director: 'Christopher Nolan', imdb_rating: 8.5)

django_unchained = Movie.create!(title: 'Django Unchained', photo: 'https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Drama', description: 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.',
                          year: 2012, duration: 155, director: 'Quentin Tarantino', imdb_rating: 8.4)

the_dark_knight_rises = Movie.create!(title: 'The Dark Knight Rises', photo: 'https://m.media-amazon.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
                          genre: 'Action', description: 'Eight years after the Jokers reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City, now on the edge of total annihilation, from the brutal guerrilla terrorist Bane.',
                          year: 2012, duration: 164, director: 'Christopher Nolan', imdb_rating: 8.4)

refai = User.create!(first_name: 'Refai', last_name: 'x', email: 'refai@gmail.com', photo: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')
tayler = User.create!(first_name: 'Tayler', last_name: 'Johnson', email: 'tayler@gmail.com', photo: 'https://images.unsplash.com/photo-1546538994-4f15d0aa966f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')
joseph = User.create!(first_name: 'Joseph', last_name: 'Schemama', email: 'joseph@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSDdQudSzUKlIuQvMZJuEZePygVJ-oiwaWF0XqEMFm_4P3h9ZFH')
constance = User.create!(first_name: 'Constance', last_name: 'Graftieaux', email: 'constance@gmail.com', photo: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')
anderson = User.create!(first_name: 'Anderson', last_name: 'Costa', email: 'anderson@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTc2BWiA7C9BSG_8TiPxYRvs8R_7Ngdfeo3E-o1rOa25MttraeY')
andre = User.create!(first_name: 'Andre', last_name: 'Ferrer', email: 'andre@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRXn3gmXdR9fyn0O6r41u-b3g3ZljlxdtaxxdWjmJitpDpDYMMS')
brittany = User.create!(first_name: 'Brittany', last_name: 'Correll', email: 'brittany@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQGHN8mgodcEbE6H_ARPX6SJ2uCxYCaB68feRjaPV7ahG03a5v6')
cahue = User.create!(first_name: 'Cahue', last_name: 'Beltrao', email: 'cahue@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-HGZGUJKAc9pB19NeZr_RLADrtiOhZnJbCTP25bVs-AokWMHf')
cyrille = User.create!(first_name: 'Cyrille', last_name: 'Labesse', email: 'cyrille@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRfG9-bf6t70gJAT1EWMRyGXwVPxfUhrks9FmycteRDAEE3mVXZ')
diana = User.create!(first_name: 'Diana', last_name: 'Pavel', email: 'diana@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS5H0TEHtlGq1sKvweB165eENTeFjh_dfvDtttIbik1cQgcr0Rv')
fernando = User.create!(first_name: 'Fernando', last_name: 'Martins', email: 'fernando@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTwUlgdl1jS3sHbAFwKzBE-z3WPbbU7qwMBT5O4hB9Lq9QC6ncL')
lucas = User.create!(first_name: 'Lucas', last_name: 'Martins', email: 'lucas@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6nr_xjkS48VcukH3ydaKt1dLji-wMZuLhvtqJ6nw2zfBg67fM')
matheus = User.create!(first_name: 'Matheus', last_name: 'Penchel', email: 'matheus@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS25AbBrd_3NmceWNvLfTHTxvrtDxsm0femHA5zPYLdcqZzDV7d')
milene = User.create!(first_name: 'Milene', last_name: 'Cardoso', email: 'milene@gmail.com', photo: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')
natalia = User.create!(first_name: 'Natalia', last_name: 'Barthe', email: 'natalia@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQZyNv-Zh4fUKnnulv-AAwnrfWclNMsM-LagDGZgbRFzBY4yZXY')
wadi = User.create!(first_name: 'Lucas', last_name: 'Wadi', email: 'wadi@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS0_UQAv6wak5s61AqnZCuSNd5x5l0JzvIYR4YU7Yd6S-KrTKTN')
marcel = User.create!(first_name: 'Marcel', last_name: 'S.F.', email: 'marcel@gmail.com', photo: 'https://www.subphoto.net/sy-photos/2018/10/25/16/small_069d54_2018_Besney_Jonathan-9837.jpg')
ryan = User.create!(first_name: 'Ryan', last_name: 'Mansfield', email: 'ryan@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSGk_X8hj3pDNoiyCRn3bxGNkEA8cwyMlXoCoyU6eKFXnjoVa4s')
sarra = User.create!(first_name: 'Sarra', last_name: 'Ghaib', email: 'sarra@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQK24tXyyQTX501kKlabGSGlHsXdaB3FUmh3p9grOsI-dnY_fzk')
tabata = User.create!(first_name: 'Tabata', last_name: 'Lisboa', email: 'tabata@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR0buXpNw2a8z78DasnOjXPkyCPLSm2oWt3WrHiMIMu6ppKJEeN')
pedro = User.create!(first_name: 'Pedro', last_name: 'Meyer', email: 'pedro@gmail.com', photo: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80')

refai_taste = Taste.create!(movie: godfather, user: refai,
                            watched: true, rating: true)
tayler_taste = Taste.create!(movie: godfather_2, user: tayler,
                             watched: true, rating: true)
joseph_taste = Taste.create!(movie: shawshank, user: joseph,
                             watched: true, rating: true)
constance_taste = Taste.create!(movie: dark_knight, user: constance,
                                watched: true, rating: true)
anderson_taste = Taste.create!(movie: pulp_fiction, user: anderson,
                               watched: true, rating: true)
andre_taste = Taste.create!(movie: fight_club, user: andre,
                            watched: true, rating: true)
brittany_taste = Taste.create!(movie: inception, user: brittany,
                               watched: true, rating: true)
cahue_taste = Taste.create!(movie: matrix, user: cahue,
                            watched: true, rating: true)
cyrille_taste = Taste.create!(movie: goodfellas, user: cyrille,
                              watched: true, rating: true)
diana_taste = Taste.create!(movie: se7en, user: diana,
                            watched: true, rating: true)
fernando_taste = Taste.create!(movie: city_of_god, user: fernando,
                               watched: true, rating: true)
lucas_taste = Taste.create!(movie: the_silence_of_the_lamb, user: lucas,
                            watched: true, rating: true)
matheus_taste = Taste.create!(movie: the_usual_suspect, user: matheus,
                              watched: true, rating: true)
milene_taste = Taste.create!(movie: the_lion_king, user: milene,
                             watched: true, rating: true)
natalia_taste = Taste.create!(movie: american_history_x, user: natalia,
                              watched: true, rating: true)
wadi_taste = Taste.create!(movie: untouchable, user: wadi,
                           watched: true, rating: true)
marcel_taste = Taste.create!(movie: gladiator, user: marcel,
                             watched: true, rating: true)
ryan_taste = Taste.create!(movie: the_departed, user: ryan,
                           watched: true, rating: true)
sarra_taste = Taste.create!(movie: whiplash, user: sarra,
                            watched: true, rating: true)
tabata_taste = Taste.create!(movie: the_prestige, user: tabata,
                             watched: true, rating: true)
pedro_taste = Taste.create!(movie: django_unchained, user: pedro,
                            watched: true, rating: true)
