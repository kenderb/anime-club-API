# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
animes = Anime.create([
  { title: 'Fullmetal Alchemist: Brotherhood', 
    url_image: "https://cdn.myanimelist.net/images/anime/1223/96541.jpg", 
    description: "Alchemy is bound by this Law of Equivalent Exchange—something the young brothers Edward and Alphonse 
    Elric only realize after attempting human transmutation: the one forbidden act of alchemy. They pay a terrible price 
    for their transgression—Edward loses his left leg, Alphonse his physical body. It is only by the desperate sacrifice of Edward's 
    right arm that he is able to affix Alphonse's soul to a suit of armor. Devastated and alone, it is the hope that they would both eventually 
    return to their original bodies that gives Edward the inspiration to obtain metal limbs called 'automail' and become a state alchemist, 
    the Fullmetal Alchemist."
  },
  { title: 'Shingeki no Kyojin: The Final Season', 
    url_image: "https://cdn.myanimelist.net/images/anime/1000/110531.jpg", 
    description: "Gabi Braun and Falco Grice have been training their entire lives to inherit one of the seven titans under 
    Marley's control and aid their nation in eradicating the Eldians on Paradis. However, just as all seems well for the two cadets, 
    their peace is suddenly shaken by the arrival of Eren Yeager and the remaining members of the Survey Corps."
  },
  { title: 'Shingeki no Kyojin Season 3 Part 2', 
    url_image: "https://cdn.myanimelist.net/images/anime/1517/100633.jpg", 
    description: "Seeking to restore humanity's diminishing hope, the Survey Corps embark on a mission to retake Wall Maria, where 
    the battle against the merciless 'Titans' takes the stage once again.
    Returning to the tattered Shiganshina District that was once his home, Eren Yeager and the Corps find the town oddly 
    unoccupied by Titans. Even after the outer gate is plugged, they strangely encounter no opposition. The mission progresses smoothly until 
    Armin Arlert, highly suspicious of the enemy's absence, discovers distressing signs of a potential scheme against them."
  },
  { title: 'Steins;Gate', 
    url_image: "https://cdn.myanimelist.net/images/anime/5/73199.jpg", 
    description: "
    Synopsis The self-proclaimed mad scientist Rintarou Okabe rents out a room in a rickety old building in 
    Akihabara, where he indulges himself in his hobby of inventing prospective 'future gadgets' 
    with fellow lab members: Mayuri Shiina, his air-headed childhood friend, and Hashida Itaru, 
    a perverted hacker nicknamed 'Daru.' The three pass the time by tinkering with their most promising 
    contraption yet, a machine dubbed the 'Phone Microwave,'' 
    which performs the strange function of morphing bananas into piles of green gel."
  },
  { title: 'Gintama°', 
    url_image: "https://myanimelist.net/anime/28977/Gintama%C2%B0/pics", 
    description: "
    Gintoki, Shinpachi, and Kagura return as the fun-loving but broke members of the Yorozuya team! Living in an alternate-reality Edo, 
    where swords are prohibited and alien overlords have conquered Japan, they try to thrive on doing whatever 
    work they can get their hands on. However, Shinpachi and Kagura still haven't been paid... Does Gin-chan really spend all that cash playing pachinko?"
  },

])
