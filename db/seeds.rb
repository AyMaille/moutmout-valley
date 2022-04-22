# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "reset de la BD"
Card.destroy_all
Player.destroy_all
User.destroy_all
Game.destroy_all

puts "utilisateurs de base initiés"
User.new(
  email: "jojo@gmail.com",
  password: "123456"
).save

suisse = User.create(
  email: "neutralguy@gmail.com",
  password: "suissepowa",
  nickname: "suisse"
)

puts "création de la boite de jeu"
base_game = Game.create(turn: 1, summer: true)

puts "création du joueur neutre"
suisse_player = Player.create(
  user: suisse,
  game: base_game
)

puts "creation des cartes"
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Terrasses",
  description: "Vous pouvez semer en montagne.",
  description2: "lors de la phase de semailles"
)
puts "creation de la carte test"
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Ami",
  description: "Si un ou plusieurs de vos pions, femmes ou guerriers, se trouvent sur la même case qu'un guerrier ennemi solitaire, celui-ci passe dans votre camp",
  description2: "pendant la phase de combat, avant d'entamer un combat sur cette case"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Nage",
  description: "1 - Un de vos pions (ou groupe) peut franchir une rivière, mais pas le lac. Le déplacement s'achève immédiatement après la traversée. 2 - survivre à une inondation. Pas de déplacement mais aucun n'est tué.",
  description2: "1 - pendant la phase de déplacement. 2 -pendant la résolution de l'événement"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Tambour de guerre",
  description: "1 - Faites fuir d'une case dans la direction de votre choix les animaux se trouvant sur la même case que l'un de vos pions ou groupe. 2 - avancez un pion ou groupe en faisant fuir devant lui les animaux sur la case où il pénètre.",
  description2: "1 - après la phase de déplacement des animaux"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Intuition",
  description: "Regardez la carte événement qui sera tirée au prochain tour.",
  description2: "à tout moment"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Filet",
  description: "Les cases de pêche vous rapportent 2 points de nourriture au lieu de 1 ce tour-ci",
  description2: "pendant la phase survie"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Pièges",
  description: "Les pièges que vous avez installés vous permettent de vaincre les animaux se trouvant dans une case sans avoir à les combattre",
  description2: "avant d'entamer le combat contre les animaux"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Louveteau",
  description: "Le loup solitaire se trouvant sur la même case que l'un de vos pions ou groupe est apprivoisé. Vous le déplacerez désormais avec vos pions et il participera au combat dans votre camp. S'il est laissé seul, il redeviendra sauvage.",
  description2: "après la pahse de déplacement des animaux"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Marche forcée",
  description: "Un de vos pions ou groupe peut 1 - se déplacer de trois cases au lieu de deux 2 - traverser en été une case montagne sans avoir à s'y arrêter.",
  description2: "pendant votre phase de déplacement"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Pacs",
  description: "Permet à deux de vos guerriers ou deux de vos femmes d'installer une grotte ou un village, comme s'ils étaient un couple. Il vous faudra cependant une femme dans le village pour le conserver au prochain tour",
  description2: "pendant votre phase de déplacement et d'installation"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Semailles tardives",
  description: "Vous pouvez ensemencer un champ, en payant normalement un point de nourriture, à la fin du premier tour d'été",
  description2: "à la fin du premier tour d'été, après la phase de survie"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Propulseur",
  description: "Ajoutez 2 à tous vos jets de dé pour un combat.",
  description2: "avant le début du combat"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Engrais naturel",
  description: "Vous récoltez 12 points de nourriture par champ au lieu de 8 (8 pour 4 si endommagés).",
  description2: "pendant la phase de survie, au moment des récoltes"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Grimper aux arbres",
  description: "un de vos pions ou groupe peut 1 - survivre à une inondation. (pas de déplacement). 2 - éviter tout combat sur cette case. Dans les 2 cas s'il y a un village, il est détruit",
  description2: " 1 - pendant la résolution de l'évènement. 2 - pendant la phase de combat, avant d'entamer un combat sur cette case"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Espionnage",
  description: "Regardez le jeu de cartes astuces d'un autre joueur qui a au moins un piion sur une case voisine de l'un des vôtres.",
  description2: "à tout moment"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Visite de famille",
  description: "Un couple de pions (un guerrier et une femme) de votre tribu arrive sur la carte, sur une case indiquée par un pion animal pris dans le sac",
  description2: "après la phase de déplacement des animaux"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Incendiaire",
  description: "En été, l'un de vos pions qui ne se déplace pas et ne combat pas peut provoquer un incendie sur une case forêt voisine (pas de l'autre côté d'une rivière). Placez un marqueur incendie sur la case. Tous les pions qui s'y trouvent sont tués.",
  description2: "à la fin de votre phase de déplacement"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Camouflage",
  description: "Un de vos pions ou groupe peut traverser sans s'y arrêter une case occupée par des animaux ou par des pions adverses",
  description2: "pendant votre phase de déplacement"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Vol",
  description: "Un de vos pions ou groupe vole jusqu'à quatres points de nourriture à une tribu ayant un camp sur une case voisine (pas de l'autre côté d'une rivière)",
  description2: "pendant votre phase de déplacement"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Torches",
  description: "Ajoutez deux à tous vos jets de dé contre des animaux ce tour.",
  description2: "avant d'entamer votre premier combat contre des animaux"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Cannibales",
  description: "Vous gagnez un point de nourriture pour chacun des pions adverses que vous tuez et pour chacun des vôtres que vous laissez mourrir de faim jusqu'à la fin du tour.",
  description2: "à tout moment où vous tuez ou faitez mourir un pion"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Fortes têtes",
  description: "Vos femmes se trouvant sur une case combattent comme si elles étaient des guerriers, (contre animaux et ennemis) mais elles ne peuvent pas capturer des gemmes adverses",
  description2: "avant le début d'un combat"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Fuite",
  description: "Un de vos pions ou groupe peut 1 - se déplacer normalement alors qu'il y a des pions adverses sur la même case. 2 - abandonner un combat contre une tribu adverse en réfugiant sur une case libre voisine.",
  description2: "1 - pendant la phase de déplacement 2 - pendant la phase de combat"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Bonnes herbes",
  description: "Vous pouvez choisir le sexe des enfants qui naissent, ce tour-ci, dans l'un de vos camps.",
  description2: "pendant la phase de naissances, avant de lancer les dés dans ce camp"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Palissade",
  description: "Vos cultures sont protégées et ne sont pas endommagées par les gros animaux sur une case et jusqu'à la récolte. Obtient un jeton palissade sur la case",
  description2: "pendant la phase de déplacement des animaux"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Radeau",
  description: "Un de vos pions peut franchir une rivière ou traverser le lac. Le déplcaement doit s'achever immédiatement après la traversée.",
  description2: "pendant votre phase de déplacement"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Fièvre puerpérale",
  description: "Deux femmes adverses de votre choix qui viennent d'avoir une naissance, meurent en couches",
  description2: "à la fin de la phase de naissances"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Chute de pierres",
  description: "L'un de vos pions qui se trouve en montagne, qui ne se déplace pas et qui ne combat pas, peut provoquer un éboulement sur une case de plaine ou de forêt voisine (pas de l'autre côté d'une rivière), tuant tous les pions qui ne peutvent être convertis en nourriture",
  description2: "à la fin de votre phase de déplacement"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Pierre taillée",
  description: "ajoutez deux à tous vos jets de dé pour un combat",
  description2: "avant le début du combat"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Terre brulée",
  description: "Le camp que votre adversaire vient de vous prendre est détruit, les femmes qui s'y trouvaient sont tuées. Les cultures sont également détuites.",
  description2: "juste après la prise du camp"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Pont",
  description: "Un de vos pions ou groupe peut franchir une rivière (pas le lac). Le déplacement s'achève immédiatement après la traversée.",
  description2: "pendant votre phase de déplacement"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Comme une bête",
  description: "L'une de vos femmes a une naissance normale, bien qu'elle ne se trouve pas dans un camp",
  description2: "pendant la phase de naissance"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Herbes de fertilité",
  description: "Vous bénéficiez d'une naissance supplémentaire dans chacun de vos villages",
  description2: "pendant la phase de naissance, avant de lancer le dé pour votre première naissance"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Enfant sauvage",
  description: "Si vous avez un village dans une forêt, un guerrier ou une femme supplémentaire, au choix, s'y joint à vous",
  description2: "après la phase de déplacement des animaux"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Silex",
  description: "Ajoutez un à tous vos jets de dé pour tous les combats de ce tour",
  description2: "avant votre premier combat"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Coup de foudre",
  description: "Un pion adverse, se trouvant sur la case voisine (pas de l'autre côté d'une rivière) de l'un de vos pions de sexe opposé rejoint votre pion et passe dans votre tribu",
  description2: "pendant votre phase de déplacement"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Endurance",
  description: "Un de vos pions ou groupe 1 - se déplacer de trois cases au lieu de deux. 2 - traverser en été une case de montagne sans s'y arrêter.",
  description2: "pendant votre phase de déplacement"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Appeau",
  description: "Vous pouvez attier sur une case où se trouve l'un de vos pions un animal se trouvant sur une case voisine où ne se trouve aucune femme ou guerrier. Un seul animal même s'il fait parti d'une horde. Les ours peuvent franchir les rivières.",
  description2: "avant votre phase de combat"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Racines",
  description: "Vous pouvez, ce tour-ci, faire de la cueillette en hiver",
  description2: "pendant la phase survie"
)
Card.create(
  player: suisse_player,
  game: base_game,
  category: "astuce",
  title: "Troncs d'arbre",
  description: "1 - Un de vos pions (ou groupe) peut franchir une rivière, mais pas le lac. Le déplacement s'achève immédiatement après la traversée. 2 - survivre à une inondation. Pas de déplacement mais aucun n'est tué.",
  description2: "1 - pendant la phase de déplacement. 2 -pendant la résolution de l'événement"
)
puts "#{Card.all.count} cartes astuces crées"
