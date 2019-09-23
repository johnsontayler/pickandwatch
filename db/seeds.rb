# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Taste.destroy_all
User.destroy_all

IMDB_IDS = ["tt0372784", "tt2975590", "tt0096895", "tt0103776", "tt0112462", "tt0118688", "tt0103359", "tt0047478",
            "tt0814314", "tt2404435", "tt0047396", "tt2113681", "tt0037469", "tt1798709", "tt0109830", "tt0120815",
            "tt4226388", "tt1167660", "tt0058203", "tt0043014", "tt1028528", "tt0066921", "tt0076734", "tt0414469",
            "tt0062622", "tt2543164", "tt1255953", "tt0093779", "tt0119698", "tt0484469", "tt1602613", "tt0780504",
            "tt0166924", "tt0095519", "tt0054215", "tt0144084", "tt0084555", "tt0061655", "tt0216651", "tt0120630",
            "tt0446059", "tt0076759", "tt0080684", "tt0086190", "tt2488496", "tt0120915", "tt0121766", "tt0121765",
            "tt0796366", "tt3748528", "tt1392214", "tt1645170", "tt0032553", "tt0293508", "tt0026778", "tt0016220",
            "tt0496661", "tt1670675", "tt0319418", "tt2106476", "tt0116996", "tt0084787"]

# COMMENTS = [
#   "The scenery is spectacular, but the humans are plain annoying.",
#   "Violence breaks out, mind games are played, and it's all so adorably eccentric that you don't ever want it to stop.",
#   "Chappelle is fascinating, sophisticated, and what sets him apart, fearless.",
#   "While the movie may serve as a dark reminder of this not-so-distant past, it's also a testament to the idea that life does not stop because of politics."
# ]

refai = User.create!(first_name: 'Refai', last_name: 'x', email: 'refai@gmail.com', photo: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80', password: 123456)
tayler = User.create!(first_name: 'Tayler', last_name: 'Johnson', email: 'tayler@gmail.com', photo: 'https://images.unsplash.com/photo-1546538994-4f15d0aa966f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80', password: 123456)
joseph = User.create!(first_name: 'Joseph', last_name: 'Schemama', email: 'joseph@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSDdQudSzUKlIuQvMZJuEZePygVJ-oiwaWF0XqEMFm_4P3h9ZFH', password: 123456)
constance = User.create!(first_name: 'Constance', last_name: 'Graftieaux', email: 'constance@gmail.com', photo: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80', password: 123456)
anderson = User.create!(first_name: 'Anderson', last_name: 'Costa', email: 'anderson@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTc2BWiA7C9BSG_8TiPxYRvs8R_7Ngdfeo3E-o1rOa25MttraeY', password: 123456)
andre = User.create!(first_name: 'Andre', last_name: 'Ferrer', email: 'andre@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRXn3gmXdR9fyn0O6r41u-b3g3ZljlxdtaxxdWjmJitpDpDYMMS', password: 123456)
brittany = User.create!(first_name: 'Brittany', last_name: 'Correll', email: 'brittany@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQGHN8mgodcEbE6H_ARPX6SJ2uCxYCaB68feRjaPV7ahG03a5v6', password: 123456)
cahue = User.create!(first_name: 'Cahue', last_name: 'Beltrao', email: 'cahue@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-HGZGUJKAc9pB19NeZr_RLADrtiOhZnJbCTP25bVs-AokWMHf', password: 123456)
cyrille = User.create!(first_name: 'Cyrille', last_name: 'Labesse', email: 'cyrille@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRfG9-bf6t70gJAT1EWMRyGXwVPxfUhrks9FmycteRDAEE3mVXZ', password: 123456)
diana = User.create!(first_name: 'Diana', last_name: 'Pavel', email: 'diana@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS5H0TEHtlGq1sKvweB165eENTeFjh_dfvDtttIbik1cQgcr0Rv', password: 123456)
fernando = User.create!(first_name: 'Fernando', last_name: 'Martins', email: 'fernando@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTwUlgdl1jS3sHbAFwKzBE-z3WPbbU7qwMBT5O4hB9Lq9QC6ncL', password: 123456)
lucas = User.create!(first_name: 'Lucas', last_name: 'Martins', email: 'lucas@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6nr_xjkS48VcukH3ydaKt1dLji-wMZuLhvtqJ6nw2zfBg67fM', password: 123456)
matheus = User.create!(first_name: 'Matheus', last_name: 'Penchel', email: 'matheus@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS25AbBrd_3NmceWNvLfTHTxvrtDxsm0femHA5zPYLdcqZzDV7d', password: 123456)
milene = User.create!(first_name: 'Milene', last_name: 'Cardoso', email: 'milene@gmail.com', photo: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80', password: 123456)
natalia = User.create!(first_name: 'Natalia', last_name: 'Barthe', email: 'natalia@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQZyNv-Zh4fUKnnulv-AAwnrfWclNMsM-LagDGZgbRFzBY4yZXY', password: 123456)
wadi = User.create!(first_name: 'Lucas', last_name: 'Wadi', email: 'wadi@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS0_UQAv6wak5s61AqnZCuSNd5x5l0JzvIYR4YU7Yd6S-KrTKTN', password: 123456)
marcel = User.create!(first_name: 'Marcel', last_name: 'S.F.', email: 'marcel@gmail.com', photo: 'https://www.subphoto.net/sy-photos/2018/10/25/16/small_069d54_2018_Besney_Jonathan-9837.jpg', password: 123456)
ryan = User.create!(first_name: 'Ryan', last_name: 'Mansfield', email: 'ryan@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSGk_X8hj3pDNoiyCRn3bxGNkEA8cwyMlXoCoyU6eKFXnjoVa4s', password: 123456)
sarra = User.create!(first_name: 'Sarra', last_name: 'Ghaib', email: 'sarra@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQK24tXyyQTX501kKlabGSGlHsXdaB3FUmh3p9grOsI-dnY_fzk', password: 123456)
tabata = User.create!(first_name: 'Tabata', last_name: 'Lisboa', email: 'tabata@gmail.com', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR0buXpNw2a8z78DasnOjXPkyCPLSm2oWt3WrHiMIMu6ppKJEeN', password: 123456)
pedro = User.create!(first_name: 'Pedro', last_name: 'Meyer', email: 'pedro@gmail.com', photo: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80', password: 123456)

User.all.each do |user|
  rand(0..5).times do
    user.tastes.create(watched: rand(2) == 1, rating: rand(2) == 1, imdb_id: IMDB_IDS.sample)
  end
end
