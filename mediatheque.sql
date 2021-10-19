CREATE DATABASE mediatheque

CREATE TABLE user
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email varchar (255) NOT NULL UNIQUE,
    roles longtext NOT NULL,
    password varchar (255) NOT NULL,
    name varchar (255) NOT NULL,
    firstname varchar (255) NOT NULL,
    birthday varchar(10) NOT NULL,
    address varchar (255) NOT NULL 
)

INSERT INTO User 
    (id, email, roles, password, name, firstname, birthday, address) VALUES
    ('', 'john@test.fr', '["ROLE_EMPLOYE"]', '$2y$13$HX6tSbSY1N4Rz3lGveNs7elwLQtgS1mXOjXOP7lPq4xHSOp6QdKs6', 'Doe', 'John', '11/07/1981', 'rue des ailes');
 
INSERT INTO User 
     (id, email, roles, password, name, firstname, birthday, address) VALUES
     ('', 'sandra@test.fr', '["ROLE_INSCRIT"]', '$2y$13$lHGx8j9.KyeksDY/Y9d6LOsBm/5lpQKkU2WxvnHJIG1zelddkrAQ6', 'Gonzalez', 'Sandra', '11/07/1981', 'rue des ailes');

INSERT INTO User 
     (id, email, roles, password, name, firstname, birthday, address) VALUES
     ('', 'emma@test.fr', '', '$2y$13$5/RzPvx2vW0vRLDBzj/vKOYZTigs8F/U9wuA15ThGnlqmf8vDkfzy', 'Pailloux', 'Emma', '30/11/2011', 'rue des ailes');


CREATE TABLE book
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title varchar (255) NOT NULL,
    publication varchar (255) NOT NULL,
    description text NOT NULL,
    author varchar (255) NOT NULL,
    category varchar (255) NOT NULL,
    file varchar (255) NULL,
    availble boolean NOT NULL,
    user_id int(11) NULL
 )
 
 INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Romans', '28/10/201',
 'Voulant rendre compte de la richesse et de la diversité de l\'oeuvre de Julian Barnes, cette édition Quarto
  comprend cinq romans marqués par des tonalités distinctes, publiés de 1984 à 2018.',' Julian Barnes', 'Roman', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/r/o/m/romans-9782072893674_0.jpg?t=1634461485', '1', NULL);
 
 INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Au soleil redouté', '04/12/2021',
 'Elles étaient cinq... Cinq lectrices fidèles et auteures en herbe qu\'un concours expédie, pour une semaine,
 au paradis du Pacifique, les îles Marquises.', 'Michel Bussi', 'Roman',
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/a/u/s/au-soleil-redoute-9782266313049_0.jpg?t=1631409450', '1', NULL);

INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'C\'est arrivé la nuit', '06/05/2021',
 'Ils sont hors-la-loi. Mais ils oeuvrent pour le bien. Ils sont amis et partagent leurs secrets.', 'Mark Levy', 'Roman',
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/c/e/s/c-est-arrive-la-nuit-9782266315890_0.jpg?t=1634430503', '1', NULL);

INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'L\'infini des possibles', '06/05/2021',
 'Après les succès de Demain est un autre jour, d\'un doux pardon et de tout ce qui nous répare, Lori Nelson Spielman revient avec 
 cette histoire passionnante consacrée à la découverte de soi, au pardon et à l\'amour.', 'Lori Nelson Spielman', 'Roman', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/l/i/n/l-infini-des-possibles-9782266315562_0.jpg?t=1633914344', '1', NULL);

INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Quelqu\'un de bien', '20/05/2021', 
 'Caroline Serval est la seule médecin généraliste de la région. Elle exerce son métier avec passion et dévouement, 
 quitte à mettre de côté sa vie privée.', 'Françoise Bourdin', 'Roman', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/q/u/e/quelqu-un-de-bien-9782266315609_0.jpg?t=1633826144', '1', NULL);

 INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Yojimbot', '29/01/2021', 
 'Japon, 2241. Suite à la « 3e crise de l\'homme », la surface de la Terre est devenue inhabitable pour 
 l\'être humain. Parmi les ruines, ne restent que des robots.', 'Sylvain Repos', 'BD', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/y/o/j/yojimbot-tome-1-9782205082401_0.jpg?t=1624786231', '1', NULL);
 
  INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Spirite t.1 - Tungusta', '30/09/2020', 
 'La chasse aux fantômes est un sport dangereux, surtout quand on ne sait pas qui est le chasseur 
 et qui est le chassé.', 'Mara', 'BD', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/s/p/i/spirite-1-spirite-volume-01-tunguska-9782490735075_0.jpg?t=1630854353', '1', NULL);
 
  INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Mortelle Adèle t.18 - Toi, je te zut !', '05/05/2021', 
 'N\'allez pas embêter Mortelle Adèle, car s\'il y a bien une petite fille décidée à 
 ne pas se laisser faire, c\'est elle !', 'Collectif', 'BD', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/m/o/r/mortelle-adele-tome-18-mortelle-adele-t18-9791036333392_0.jpg?t=1634429262', '1', NULL);
 
  INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Demon slayer t.4', '09/10/2019', 
 'Alors qu\'il sort épuisé mais victorieux de son combat contre l\'ogre aux tambours, Tanjiro découvre 
 Zenitsu en train de se faire rouer de coups par le mystérieux garçon à tête de sanglier.', 'Koyoharu Gotôge', 'BD', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/d/e/m/demon-slayer-t4-9782809476903_0.jpg?t=1634429077' , '1', NULL);

 INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Mortelle Adèle t.8 - Parents à vendre', '2021', 
 '« Ne le dites pas à mes parents, mais j\'ai passé une annonce pour m\'en débarrasser !', 'Diane Le Feyer, Mr Tan', 'BD', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/m/r/t/mrtan-feyerdiane-mortelleadele-onnechoisitpassafamille-9791027600076_0.jpg?t=1634430321', '1', NULL);

 INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Guide petit futé - Corfu, îles ioniennes', '04/03/2020', 
 'Le carnet de voyage sur Corfou a un format très pratique et une nouvelle maquette faisant la part belle aux photos.', 'Collectif', 'Voyage', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/c/o/r/corfou-iles-ioniennes-carnet-2020-petit-fute-offre-num-9782305028798_0.jpg?t=1633307801', '1', NULL);
 
  INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Guide petit futé - Corse', '04/03/2020', 
 'Le carnet de voyage sur la Corse a un format très pratique et une nouvelle maquette faisant la part belle aux photos', 'Collectif', 'Voyage', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/c/o/r/corse-carnet-2020-petit-fute-offre-num-9782305027470_0.jpg?t=1633221186', '1', NULL);

 INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Partir en van', '05/05/2021', 
 'Un guide complet pour bien préparer son roadtrip en France, en couple ou en famille, pour un mois ou pour bâtir un véritable projet de vie.', 'Camille Visage, Pierre Rouxel', 'Voyage', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/v/a/n/van-life-en-france-9782036000841_0.jpg?t=1629936088', '1', NULL);

 INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Canada', '20/05/2021', 
 'Le guide National Geographic est LE guide culturel complet pour découvrir cet immense pays aux multiples facettes.', 'Collectif', 'Voyage', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/c/a/n/canada-9782822902694_0.jpg?t=1633241777', '1', NULL);

 INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Voyager en van', '11/05/2021', 
 'Quoi de mieux qu\'une maison sur roues quand on souhaite arpenter de nouveaux horizons et de nouvelles cultures à son rythme et sans contraintes ?', 'Kevin Laurent, Tifenn Butel', 'Voyage', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/v/o/y/voyager-en-van-le-guide-indispensable-pour-partir-seul-ou-en-famille-9782889534951_0.jpg?t=1633739598', '1', NULL);

 INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'J\'habille mes amies les licornes', '10/10/2019', 
 'Des fées et des licornes évoluent dans des scènes enchantées, dont un lac, un verger, une prairie secrète, des arcs-en-ciel...', ' Fiona Watt', 'Jeunesse', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/271x271/c96a280f94e22e3ee3823dd0a1a87606/j/h/a/j-habille-mes-amies-les-licornes-9781474972703_0.jpg?t=1604111845', '1', NULL);
 
  INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Les monsieur madame fêtent halloween', '07/10/2015', 
 'Mme Terreur adore la fête d\'Halloween car elle peut faire plein de farces et terroriser beaucoup de Monsieur Madame !', 'Adam Hargreaves, Roger Hargreaves', 'Jeunesse', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/l/e/s/les-monsieur-madame-fetent-halloween-9782013987301_0.jpg?t=1634429898', '1', NULL);

 INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Petit ours brun a peur des monstres', '06/06/2021', 
 'Petit Ours Brun est couché dans son lit. Tout à coup, il sent quelque chose sur ses pieds.', 'Marie Aubinais, Danièle Bour', 'Jeunesse', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/p/e/petit-ours-brun-a-peur-des-monstres-9782747091008_0.jpg?t=1591600343', '1', NULL);

 INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'Comment ratatiner les méchants ?', '03/10/2012', 
 'Le soir, en s\'endormant, voici de quoi ont peur les petits : des loups affamés, des cruelles sorcières, des terribles monstres, des fantômes féroces, 
 des énormes dinosaures et des pirates sanguinaires !', 'Catherine Leblanc, Roland Garrigue', 'Jeunesse', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/c/o/comment-ratatiner-les-mechants-9782723491662_0.jpg?t=1596188972', '1', NULL);

 INSERT INTO book
 (id, title, publication, description, author, category, file, availble, user_id) VALUES
 ('', 'La sorcière tambouille', '11/02/2005', 
 'Plus que tout au monde, la sorcière Tambouille adore cuisiner. Soufflé de crapaud, langue de loup aux choux, rat en gelée...', 'Marianne Barcilon', 'Jeunesse', 
 'https://media.cultura.com/media/catalog/product/cache/1/image/160x160/85e4522595efc69f496374d01ef2bf13/l/a/s/la-sorciere-tambouille-9782211078580_0.jpg?t=1600337305', '1', NULL);
