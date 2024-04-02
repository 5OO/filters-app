-- Filter table content
INSERT INTO filter (id, name) VALUES
                                  (1, 'High Rated Movies'),
                                  (2, 'Second Filter'),
                                  (3, 'Complex Movie Filter'),
                                  (4, 'A filter');

-- Criterion table content
INSERT INTO criterion (id, filter_id, field_name, criteria_type, comparison_operator, criteria_value) VALUES
                                                                                                          (1, 1, 'voteAverage', 'numeric', '>', '7.5'),
                                                                                                          (2, 2, 'voteAverage', 'numeric', '<', '5.5'),
                                                                                                          (3, 3, 'title', 'string', 'contains', 'a'),
                                                                                                          (4, 3, 'popularity', 'numeric', '>', '11'),
                                                                                                          (5, 3, 'voteAverage', 'numeric', '>', '3'),
                                                                                                          (6, 3, 'originalTitle', 'string', 'contains', 'man'),
                                                                                                          (7, 3, 'releaseDate', 'date', '>', '2015-01-01'),
                                                                                                          (8, 4, 'title', 'string', 'startsWith', 'a');

-- MOVIE table content

INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Avatar',
        'In the 22nd century, a paraplegic Marine is dispatched to the moon Pandora on a unique mission, but becomes torn between following orders and protecting an alien civilization.',
        150.437577, '2009-12-10', 2787965087, 162, 'Enter the World of Pandora.', 'Avatar', 7.2, 11800);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Pirates of the Caribbean: At World''s End',
        'Captain Barbossa, long believed to be dead, has come back to life and is headed to the edge of the Earth with Will Turner and Elizabeth Swann. But nothing is quite as it seems.',
        139.082615, '2007-05-19', 961000000, 169, 'At the end of the world, the adventure begins.',
        'Pirates of the Caribbean: At World''s End', 6.9, 4500);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Spectre',
        'A cryptic message from Bond’s past sends him on a trail to uncover a sinister organization. While M battles political forces to keep the secret service alive, Bond peels back the layers of deceit to reveal the terrible truth behind SPECTRE.',
        107.376788, '2015-10-26', 880674609, 148, 'A Plan No One Escapes', 'Spectre', 6.3, 4466);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('The Dark Knight Rises',
        'Following the death of District Attorney Harvey Dent, Batman assumes responsibility for Dent''s crimes to protect the late attorney''s reputation and is subsequently hunted by the Gotham City Police Department. Eight years later, Batman encounters the mysterious Selina Kyle and the villainous Bane, a new terrorist leader who overwhelms Gotham''s finest. The Dark Knight resurfaces to protect a city that has branded him an enemy.',
        112.31295, '2012-07-16', 1084939099, 165, 'The Legend Ends', 'The Dark Knight Rises', 7.6, 9106);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('John Carter',
        'John Carter is a war-weary, former military captain who''s inexplicably transported to the mysterious and exotic planet of Barsoom (Mars) and reluctantly becomes embroiled in an epic conflict. It''s a world on the brink of collapse, and Carter rediscovers his humanity when he realizes the survival of Barsoom and its people rests in his hands.',
        43.926995, '2012-03-07', 284139100, 132, 'Lost in our world, found in another.', 'John Carter', 6.1, 2124);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Spider-Man 3',
        'The seemingly invincible Spider-Man goes up against an all-new crop of villain – including the shape-shifting Sandman. While Spider-Man’s superpowers are altered by an alien organism, his alter ego, Peter Parker, deals with nemesis Eddie Brock and also gets caught up in a love triangle.',
        115.699814, '2007-05-01', 890871626, 139, 'The battle within.', 'Spider-Man 3', 5.9, 3576);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Tangled',
        'When the kingdom''s most wanted-and most charming-bandit Flynn Rider hides out in a mysterious tower, he''s taken hostage by Rapunzel, a beautiful and feisty tower-bound teen with 70 feet of magical, golden hair. Flynn''s curious captor, who''s looking for her ticket out of the tower where she''s been locked away for years, strikes a deal with the handsome thief and the unlikely duo sets off on an action-packed escapade, complete with a super-cop horse, an over-protective chameleon and a gruff gang of pub thugs.',
        48.681969, '2010-11-24', 591794936, 100, 'They''re taking adventure to new lengths.', 'Tangled', 7.4, 3330);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Avengers: Age of Ultron',
        'When Tony Stark tries to jumpstart a dormant peacekeeping program, things go awry and Earth’s Mightiest Heroes are put to the ultimate test as the fate of the planet hangs in the balance. As the villainous Ultron emerges, it is up to The Avengers to stop him from enacting his terrible plans, and soon uneasy alliances and unexpected action pave the way for an epic and unique global adventure.',
        134.279229, '2015-04-22', 1405403694, 141, 'A New Age Has Come.', 'Avengers: Age of Ultron', 7.3, 6767);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Harry Potter and the Half-Blood Prince',
        'As Harry begins his sixth year at Hogwarts, he discovers an old book marked as ''Property of the Half-Blood Prince'', and begins to learn more about Lord Voldemort''s dark past.',
        98.885637, '2009-07-07', 933959197, 153, 'Dark Secrets Revealed', 'Harry Potter and the Half-Blood Prince', 7.4,
        5293);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Batman v Superman: Dawn of Justice',
        'Fearing the actions of a god-like Super Hero left unchecked, Gotham City’s own formidable, forceful vigilante takes on Metropolis’s most revered, modern-day savior, while the world wrestles with what sort of hero it really needs. And with Batman and Superman at war with one another, a new threat quickly arises, putting mankind in greater danger than it’s ever known before.',
        155.790452, '2016-03-23', 873260194, 151, 'Justice or revenge', 'Batman v Superman: Dawn of Justice', 5.7,
        7004);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Superman Returns',
        'Superman returns to discover his 5-year absence has allowed Lex Luthor to walk free, and that those he was closest too felt abandoned and have moved on. Luthor plots his ultimate revenge that could see millions killed and change the face of the planet forever, as well as ridding himself of the Man of Steel.',
        57.925623, '2006-06-28', 391081192, 154, NULL, 'Superman Returns', 5.4, 1400);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Quantum of Solace',
        'Quantum of Solace continues the adventures of James Bond after Casino Royale. Betrayed by Vesper, the woman he loved, 007 fights the urge to make his latest mission personal. Pursuing his determination to uncover the truth, Bond and M interrogate Mr. White, who reveals that the organization that blackmailed Vesper is far more complex and dangerous than anyone had imagined.',
        107.928811, '2008-10-30', 586090727, 106, 'For love, for hate, for justice, for revenge.', 'Quantum of Solace',
        6.1, 2965);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Pirates of the Caribbean: Dead Man''s Chest',
        'Captain Jack Sparrow works his way out of a blood debt with the ghostly Davey Jones, he also attempts to avoid eternal damnation.',
        145.847379, '2006-06-20', 1065659812, 151, 'Jack is back!', 'Pirates of the Caribbean: Dead Man''s Chest', 7.0,
        5246);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('The Lone Ranger',
        'The Texas Rangers chase down a gang of outlaws led by Butch Cavendish, but the gang ambushes the Rangers, seemingly killing them all. One survivor is found, however, by an American Indian named Tonto, who nurses him back to health. The Ranger, donning a mask and riding a white stallion named Silver, teams up with Tonto to bring the unscrupulous gang and others of that ilk to justice.',
        49.046956, '2013-07-03', 89289910, 149, 'Never Take Off the Mask', 'The Lone Ranger', 5.9, 2311);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Man of Steel',
        'A young boy learns that he has extraordinary powers and is not of this earth. As a young man, he journeys to discover where he came from and what he was sent here to do. But the hero in him must emerge if he is to save the world from annihilation and become the symbol of hope for all mankind.',
        99.398009, '2013-06-12', 662845518, 143, 'You will believe that a man can fly.', 'Man of Steel', 6.5, 6359);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('The Chronicles of Narnia: Prince Caspian',
        'One year after their incredible adventures in the Lion, the Witch and the Wardrobe, Peter, Edmund, Lucy and Susan Pevensie return to Narnia to aid a young prince whose life has been threatened by the evil King Miraz. Now, with the help of a colorful cast of new characters, including Trufflehunter the badger and Nikabrik the dwarf, the Pevensie clan embarks on an incredible quest to ensure that Narnia is returned to its rightful heir.',
        53.978602, '2008-05-15', 419651413, 150, 'Hope has a new face.', 'The Chronicles of Narnia: Prince Caspian',
        6.3, 1630);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('The Avengers',
        'When an unexpected enemy emerges and threatens global safety and security, Nick Fury, director of the international peacekeeping agency known as S.H.I.E.L.D., finds himself in need of a team to pull the world back from the brink of disaster. Spanning the globe, a daring recruitment effort begins!',
        144.448633, '2012-04-25', 1519557910, 143, 'Some assembly required.', 'The Avengers', 7.4, 11776);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Pirates of the Caribbean: On Stranger Tides',
        'Captain Jack Sparrow crosses paths with a woman from his past, and he''s not sure if it''s love -- or if she''s a ruthless con artist who''s using him to find the fabled Fountain of Youth. When she forces him aboard the Queen Anne''s Revenge, the ship of the formidable pirate Blackbeard, Jack finds himself on an unexpected adventure in which he doesn''t know who to fear more: Blackbeard or the woman from his past.',
        135.413856, '2011-05-14', 1045713802, 136, 'Live Forever Or Die Trying.',
        'Pirates of the Caribbean: On Stranger Tides', 6.4, 4948);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Men in Black 3',
        'Agents J (Will Smith) and K (Tommy Lee Jones) are back...in time. J has seen some inexplicable things in his 15 years with the Men in Black, but nothing, not even aliens, perplexes him as much as his wry, reticent partner. But when K''s life and the fate of the planet are put at stake, Agent J will have to travel back in time to put things right. J discovers that there are secrets to the universe that K never told him - secrets that will reveal themselves as he teams up with the young Agent K (Josh Brolin) to save his partner, the agency, and the future of humankind.',
        52.035179, '2012-05-23', 624026776, 106, 'They are back... in time.', 'Men in Black 3', 6.2, 4160);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('The Hobbit: The Battle of the Five Armies',
        'Immediately after the events of The Desolation of Smaug, Bilbo and the dwarves try to defend Erebor''s mountain of treasure from others who claim it: the men of the ruined Laketown and the elves of Mirkwood. Meanwhile an army of Orcs led by Azog the Defiler is marching on Erebor, fueled by the rise of the dark lord Sauron. Dwarves, elves and men must unite, and the hope for Middle-Earth falls into Bilbo''s hands.',
        120.965743, '2014-12-10', 956019788, 144, 'Witness the defining chapter of the Middle-Earth saga',
        'The Hobbit: The Battle of the Five Armies', 7.1, 4760);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('The Amazing Spider-Man',
        'Peter Parker is an outcast high schooler abandoned by his parents as a boy, leaving him to be raised by his Uncle Ben and Aunt May. Like most teenagers, Peter is trying to figure out who he is and how he got to be the person he is today. As Peter discovers a mysterious briefcase that belonged to his father, he begins a quest to understand his parents'' disappearance – leading him directly to Oscorp and the lab of Dr. Curt Connors, his father''s former partner. As Spider-Man is set on a collision course with Connors'' alter ego, The Lizard, Peter will make life-altering choices to use his powers and shape his destiny to become a hero.',
        89.866276, '2012-06-27', 752215857, 136, 'The untold story begins.', 'The Amazing Spider-Man', 6.5, 6586);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Raising Victor Vargas',
        'The film follows Victor, a Lower East Side teenager, as he deals with his eccentric family, including his strict grandmother, his bratty sister, and a younger brother who completely idolizes him. Along the way he tries to win the affections of Judy, who is very careful and calculating when it comes to how she deals with men.',
        3.643662, '2002-05-16', 2816116, 88, NULL, 'Raising Victor Vargas', 7.8, 13);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Die Büchse der Pandora',
        'The rise and inevitable fall of an amoral but naive young woman whose insouciant eroticism inspires lust and violence in those around her.',
        1.824184, '1929-01-30', 0, 109, NULL, 'Pandora''s Box', 7.6, 45);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Harrison Montgomery', 'Film from Daniel Davila', 0.006943, '2008-01-01', 0, 0, NULL, 'Harrison Montgomery',
        0.0, 0);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Cama adentro',
        'Buenos Aires is in a deep recession. As the money runs out, the relationship between an employer and her live-in maid changes dramatically.',
        0.038706, '2004-09-21', 0, 83, NULL, 'Live-In Maid', 7.8, 3);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Deterrence',
        'The President of the United States must deal with an international military crisis while confined to a Colorado diner during a freak snowstorm.',
        2.171288, '2000-03-10', 0, 101, NULL, 'Deterrence', 6.1, 7);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('The Mudge Boy',
        'Duncan Mudge, mid-teens, lives apart from his rural world populated by his distant father and rough local kids. His main companionship is a chicken left after his mother''s death until the neighbor''s son befriends him.',
        5.292536, '2003-01-17', 62852, 94, NULL, 'The Mudge Boy', 7.3, 23);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('The Young Unknowns',
        'Charlie, his sexy girlfriend, and his moronic best friend drink, drug, and self-destruct over the course of one day at Charlie''s father home in Los Angeles.',
        0.004922, '2000-03-12', 0, 87, NULL, 'The Young Unknowns', 0.0, 0);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Not Cool',
        'NOT COOL follows former prom king and college freshman Scott (Shane Dawson) who has just returned home for Thanksgiving break only to be dumped by his eccentric, long-term girlfriend. With his world turned upside down, Scott strikes an unlikely friendship with former classmate Tori (Cherami Leigh), an ugly duckling who blossomed in her first semester of college. Together, the two embark on an outrageous adventure through their hometown. But when Scott and Tori find their friendship turning into something deeper, they realize that a few months away may have changed them more than they realized.',
        1.186971, '2014-09-23', 0, 90, NULL, 'Not Cool', 3.7, 25);
INSERT INTO movie(original_title, overview, popularity, release_date, revenue, runtime, tagline, title, vote_average,
                  vote_count)
VALUES ('Død snø',
        'Eight medical students on a ski trip to Norway discover that Hitler''s horrors live on when they come face to face with a battalion of zombie Nazi soldiers intent on devouring anyone unfortunate enough to wander into the remote mountains where they were once sent to die.',
        11.205726, '2009-01-09', 1984662, 91, 'Eins, Zwei, Die!', 'Dead Snow', 6.1, 311);
