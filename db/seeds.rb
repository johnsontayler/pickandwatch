# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Taste.destroy_all
User.destroy_all

IMDB_IDS = ["tt0111161", "tt0056058", "tt0110413", "tt0120689", "tt0245429", "tt0120815", "tt0038650", "tt0076759",
            "tt0102926", "tt0118799", "tt0317248", "tt0114369", "tt0047478", "tt0099685", "tt0073486", "tt0133093",
            "tt0167261", "tt0080684", "tt1375666", "tt0109830", "tt0120737", "tt0137523", "tt0060196", "tt0110912",
            "tt0167260", "tt0108052", "tt0050083", "tt0468569", "tt0071562", "tt0068646", "tt0209144", "tt0078748",
            "tt4633694", "tt1853728", "tt4154756", "tt0405094", "tt0032553", "tt0078788", "tt0082971", "tt0095765",
            "tt0047396", "tt0095327", "tt0034583", "tt0482571", "tt0064116", "tt4154796", "tt2582802", "tt0407887",
            "tt0021749", "tt0172495", "tt0054215", "tt1675434", "tt0103064", "tt0027977", "tt0253474", "tt0088763",
            "tt0120586", "tt0110357", "tt0114814", "tt0816692", "tt0056592", "tt1832382", "tt0075314", "tt0435761",
            "tt0086250", "tt0211915", "tt0208092", "tt2106476", "tt0338013", "tt0062622", "tt0361748", "tt0180093",
            "tt0119217", "tt5074352", "tt0105236", "tt0114709", "tt0086190", "tt0986264", "tt1187043", "tt6751668",
            "tt0112573", "tt5311514", "tt2380307", "tt0169547", "tt1345836", "tt0364569", "tt0910970", "tt0081505",
            "tt0167404", "tt1130884", "tt0477348", "tt0117951", "tt1291584", "tt0469494", "tt0434409", "tt2096673",
            "tt0476735", "tt0120735", "tt0457430", "tt0112641", "tt0268978", "tt0347149", "tt0118849", "tt0363163",
            "tt6966692", "tt0372784", "tt0113277", "tt1255953", "tt8267604", "tt0119488", "tt1049413", "tt3417422",
            "tt0097576", "tt0367110", "tt0381681", "tt2338151", "tt4016934", "tt1979376", "tt0198781", "tt0075148",
            "tt1201607", "tt1895587", "tt0245712", "tt0395169", "tt3315342", "tt1028532", "tt0405159", "tt1979320",
            "tt1392190", "tt1392214", "tt2024544", "tt0758758", "tt0264464", "tt0112471", "tt0353969", "tt2278388",
            "tt0892769", "tt2267998", "tt2119532", "tt0978762", "tt3011894", "tt0120382", "tt0118715", "tt0266697",
            "tt0116282", "tt1205489", "tt0266543", "tt0107290", "tt0116231", "tt0088247", "tt5027774", "tt0993846", "tt0476735"]

good_comments = [ "The scenery is spectacular, and the actors make it even better.",
                  "Violence breaks out, mind games are played, and it's all so adorably eccentric that you don't ever want it to stop.",
                  "A fascinating, sophisticated movie.",
                  "One of the best movies I've watched in my life.",
                  "One of the greatest movies ever created. Period.",
                  "Another great movie by a great director",
                  "You're gonna either love or hate this movie",
                  "Spectacular movie and great acting",
                  "Greatest Movie of All Time.",
                  "Spoiler alert: This is such a great movie. ",
                  "If you haven't watched this movie, it's about time.",
                  "One word to summarize this movie, INCREDIBLE.",
                  "A true masterpiece by every definition of the word",
                  "Never have I seen a movie this good before.",
                  "The more time passes, the more I realise what a movie this is.",
                  "Great acting, directing and filming. What a movie. ",
                  "Rome wasn't built in a day, so wasn't this movie. One of the GREATS!",
                  "I just finished watching this, it was absolutely mind blowing",
                  "I can only speak for myself, but I had never seen anything as stylish, cleverly constructed.",
                  "Viewers are taken on a ride through three different stories that entertwine together around the world of the protanginist",
                  "My oh my. This movie was one of those roller-coasters of a movie",
                  "Damn near perfect. I've watched this so many times and gets better each time",
                  "One of the best film's I've ever watched",
                  "Pure cinema. Moviemaking of the highest order",
                  "Oozes humour, romance, violence and stylish flourishes. It remains compulsive viewing throughout.",
                  "Hands down, the best film of this generation",
                  "The most influential movie of the decade. Hands down.",
                  "One of My Favorite Movies Ever. I don't think any movie will live up to this standard. Bars set to high.",
                  "This is considered one of the director's masterpieces; both as a writer and director. ",
                  "I remember as a kid my Mom watched this movie when it came out (I was 10) and we could hear herlaughing from my room upstairs",
                  "This film is one of my favorite movies of all time because of how unique it is from other movies."]


bad_comments = [ "Wow, a lot of people have been fooled into believing that this was a great film.",
                  "This is the most overrated film of all time. I'm even feeling strange to call it a film.",
                  "I really find it difficult to believe this movie is rated highly by people...",
                  "This is often considered the coolest and greatest film of all time. But, the people who usually say this are pretentious film snobs",
                  "One of the worst movies ever created. Period.",
                  "Another terrible movie by an awful director",
                  "You're gonna either hate or hate this movie",
                  "This is what I call a fad movie. People say it is a great movie because other people said it is great.",
                  "This is, in my opinion, the most over-rated film of all time.",
                  "Spoiler alert: This is such a terrible movie. ",
                  "If you haven't watched this movie, just don't waste your time",
                  "One word to summarize this movie, TERRIBLE.",
                  "A terrible movie by every definition of the word",
                  "Never have I seen a movie this bad before.",
                  "This film is CRAP. Yes, that's right. Crap. This film is just that. ",
                  "Definitely skip it, or you'll be sorry you didn't.",
                  "This movie is definitely the most overrated piece of sh*t ever.",
                  "I just finished watching this, it was just BAD.",
                  "I can only speak for myself, but I had never seen anything worse than this",
                  "Viewers are taken on an unneccessary ride through many different stories",
                  "My oh my. This movie was one of those shitty movies",
                  "Too long, too boring with poor story development",
                  "One of the worst film's I've ever watched",
                  "Pure sh**. Moviemaking of the lowest order",
                  "The most over valued film of that decade",
                  "Hands down, the worst film of this generation",
                  "The worst movie of the decade. Hands down.",
                  "One of My least Favorite Movies Ever.",
                  "This is considered one of the director's downfalls; both as a writer and director.",
                  "Like a nightmare that never ends.",
                  "Boring. Rubbish Film as per most of the director's stuff. "
]

refai = User.create!(first_name: 'Refai', last_name: 'x', email: 'refai@gmail.com', photo: 'https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters_opt/p-City-of-God-Phellipe-Haagensen.jpg', password: 123456)
tayler = User.create!(first_name: 'Tayler', last_name: 'Johnson', email: 'tayler@gmail.com', photo: 'https://cdn-ep19.pressidium.com/wp-content/uploads/2019/04/female-face-girl-posing-outdoors-in-natural-light.jpg', password: 123456)
joseph = User.create!(first_name: 'Jojo', last_name: 'Schemama', email: 'joseph@gmail.com', photo: 'https://i1.wp.com/metin.photography/wp-content/uploads/2017/11/96-PART-1-MALE-ACTOR-CELEBRITIES-INTERNATIONAL-FILMS-CANNES-AND-NEW-YORK-008059-Custom.jpg?w=2370&h=3278&ssl=1', password: 123456)
constance = User.create!(first_name: 'Coco', last_name: 'Graftieaux', email: 'constance@gmail.com', photo: 'https://www.usnews.com/dims4/USNEWS/532d017/2147483647/thumbnail/640x420/quality/85/?url=http%3A%2F%2Fcom-usnews-beam-media.s3.amazonaws.com%2F5a%2Fa6%2F260f387c42028149b0558695d8ff%2F170208investingpam-editorial.jpg', password: 123456)
anderson = User.create!(first_name: 'Andy', last_name: 'Costa', email: 'anderson@gmail.com', photo: 'https://www.cheatsheet.com/wp-content/uploads/2019/09/Aaron-Paul.jpg', password: 123456)
andre = User.create!(first_name: 'Andre', last_name: 'Ferrer', email: 'andre@gmail.com', photo: 'https://i.pinimg.com/originals/bc/44/bb/bc44bba11d17bc43fa3a909d08e89b10.jpg', password: 123456)
brittany = User.create!(first_name: 'Brit', last_name: 'Correll', email: 'brittany@gmail.com', photo: 'https://photogrist.com/wp-content/uploads/2016/09/Steven-Gindler9.jpg', password: 123456)
cahue = User.create!(first_name: 'Cahue', last_name: 'Beltrao', email: 'cahue@gmail.com', photo: 'https://www.thenational.ae/image/policy:1.288132:1499454353/image/jpeg.jpg?f=16x9&w=1200&$p$f$w=dfa40e8', password: 123456)
cyrille = User.create!(first_name: 'Cyrille', last_name: 'Labesse', email: 'cyrille@gmail.com', photo: 'https://format-magazine-production-res.cloudinary.com/image/upload/c_crop,h_986,w_1184,x_0,y_0,f_jpg,f_auto/dpr_3.0/c_scale,w_767,h_638/kawai-matthews-kanye-west', password: 123456)
diana = User.create!(first_name: 'Diana', last_name: 'Pavel', email: 'diana@gmail.com', photo: 'https://i.pinimg.com/originals/3e/2e/8c/3e2e8c6fa626636eb4e8bdfe78edab3b.jpg', password: 123456)
fernando = User.create!(first_name: 'Martins', last_name: 'Fernando', email: 'fernando@gmail.com', photo: 'https://www.usanetwork.com/sites/usanetwork/files/styles/full_episodes_633x356/public/2018/07/suits_cast_harvey_s8.jpg?itok=MhV6ThVz', password: 123456)
lucas = User.create!(first_name: 'Lucas', last_name: 'Martins', email: 'lucas@gmail.com', photo: 'https://www.boredart.com/wp-content/uploads/2016/09/Kingly-Black-And-White-Portraits-Of-Celebrities0031.jpg', password: 123456)
matheus = User.create!(first_name: 'Matt', last_name: 'Penchel', email: 'matheus@gmail.com', photo: 'https://i.pinimg.com/originals/be/f2/8d/bef28d8311ef02dc6a6456b5298b9709.jpg', password: 123456)
milene = User.create!(first_name: 'Milene', last_name: 'Cardoso', email: 'milene@gmail.com', photo: 'https://cdn-ep19.pressidium.com/wp-content/uploads/2019/04/female-face-eye-level-portrait.jpg', password: 123456)
natalia = User.create!(first_name: 'Nati', last_name: 'Barthe', email: 'natalia@gmail.com', photo: 'https://www.99inspiration.com/wp-content/uploads/2015/05/female-portrait-photography-poses.jpg', password: 123456)
marcel = User.create!(first_name: 'Marcel', last_name: 'S.F.', email: 'marcel@gmail.com', photo: 'https://pbs.twimg.com/profile_images/549268771484229632/WnatiHzT_400x400.jpeg', password: 123456)
sarra = User.create!(first_name: 'Sarra', last_name: 'Ghaib', email: 'sarra@gmail.com', photo: 'https://images.unsplash.com/photo-1546538994-4f15d0aa966f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80', password: 123456)
tabata = User.create!(first_name: 'Tabata', last_name: 'Lisboa', email: 'tabata@gmail.com', photo: 'https://i1.wp.com/digital-photography-school.com/wp-content/uploads/2011/07/outdoor-portraits-1.jpg?resize=2000%2C1160&ssl=1', password: 123456)
pedro = User.create!(first_name: 'Pedro', last_name: 'Meyer', email: 'pedro@gmail.com', photo: 'https://pmctvline2.files.wordpress.com/2018/10/steve-carell-the-office.jpg?w=620', password: 123456)

users = User.all

IMDB_IDS.each do |imdb_id|
  user_ids = []
  good_reviews = []
  bad_reviews = []

  rand(5..10).times do
    user = users.sample

    while user_ids.include?(user.id)
      user = users.sample
    end

    user_ids << user.id
    review = good_comments.sample

    while good_reviews.include?(review)
      review = good_comments.sample
    end

    good_reviews << review
    user.tastes.create(watched: true, rating: true, imdb_id: imdb_id, review: review)
  end

  rand(1..3).times do
    user = users.sample

    while user_ids.include?(user.id)
      user = users.sample
    end

    user_ids << user.id
    review = bad_comments.sample

    while bad_reviews.include?(review)
      review = bad_comments.sample
    end

    bad_reviews << review
    user.tastes.create(watched: true, rating: false, imdb_id: imdb_id, review: review)
  end
end

# User.all.each do |user|
#   rand(40..50).times do
#     user.tastes.create(watched: true, rating: true, imdb_id: IMDB_IDS.sample, review: good_comments.sample)
#   end
# end

# User.all.each do |user|
#   rand(5..10).times do
#     user.tastes.create(watched: true, rating: false, imdb_id: IMDB_IDS.sample, review: bad_comments.sample)
#   end
# end
