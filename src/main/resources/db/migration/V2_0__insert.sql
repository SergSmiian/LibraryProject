
INSERT INTO public.authors (id, first_name, last_name) VALUES ('45ef76b2-ce1b-434b-9a40-2e4fdeaf6e7d', 'Boris', 'Strugatsky');
INSERT INTO public.authors (id, first_name, last_name) VALUES ('b6e80384-bc46-440c-8f33-79d941b809f4', 'Arkady', 'Strugatsky');
INSERT INTO public.authors (id, first_name, last_name) VALUES ('76ba6a93-e246-49f5-8a88-3c7871b2b188', 'Dante', 'Alighieri');
INSERT INTO public.authors (id, first_name, last_name) VALUES ('48072ee3-75af-4ec6-ba6a-007fc45a1ce4', 'William', 'Shakespeare');
INSERT INTO public.authors (id, first_name, last_name) VALUES ('5e507160-576f-4120-8f5e-9f7836cc8153', NULL, 'Plato');
INSERT INTO public.authors (id, first_name, last_name) VALUES ('645e603d-118b-47ef-be43-c5afa8b3f1c4', NULL, 'Homer');
INSERT INTO public.authors (id, first_name, last_name) VALUES ('386dda62-62ae-4571-96a1-a5e2635d66ac', 'Johann W.', 'Goethe');
INSERT INTO public.authors (id, first_name, last_name) VALUES ('61e0c8c2-ee15-4054-a4d7-73647033db19', 'John R. R.', 'Tolkien');
INSERT INTO public.authors (id, first_name, last_name) VALUES ('b625e20e-1630-4c31-80d6-318cda76f98e', 'Joanne K.', 'Rowling');
INSERT INTO public.authors (id, first_name, last_name) VALUES ('764b2fa0-e08c-461a-8e1f-5f12a40d3754', 'Gaius', 'Suetonius');
INSERT INTO public.authors (id, first_name, last_name) VALUES ('e8f1c243-337d-46e2-b6a5-ea2c18b4b33d', 'first name', 'last name');
INSERT INTO public.authors (id, first_name, last_name) VALUES ('f6ada4b4-619b-4b34-aac6-11d72ab27a4c', 'firstName 2', 'lastName2');
INSERT INTO public.authors (id, first_name, last_name) VALUES ('828cb4a3-5e9a-46ab-a54f-517f47ebfa09', ' author firstName', 'author lastName');
INSERT INTO public.authors (id, first_name, last_name) VALUES ('a5310a3e-d98a-4ea1-a5e5-b5df0755b868', ' author firstName', ' author lastName');


INSERT INTO public.publishers (id, name) VALUES ('9764292f-fbcc-4f02-9925-3c476ffaaf35', 'Lingva');
INSERT INTO public.publishers (id, name) VALUES ('015fa81c-2c3f-4614-88c7-44102a2574ed', 'William Morrow');
INSERT INTO public.publishers (id, name) VALUES ('2098c071-2153-4a79-93e4-ddf4bbdad577', 'Houghton Mifflin Harcourt');
INSERT INTO public.publishers (id, name) VALUES ('2f984958-c808-461e-8b07-8ca52ee91dcc', 'Scholastic');
INSERT INTO public.publishers (id, name) VALUES ('344586af-21c6-4c01-97a8-07585453a901', 'Fingerprint! Publishing');
INSERT INTO public.publishers (id, name) VALUES ('6316055a-a090-4a4e-905b-77075558e64b', 'Independently published');
INSERT INTO public.publishers (id, name) VALUES ('7542c845-c06c-4be8-96cb-a173dcd05bd3', 'CreateSpace Independent Publishing Platform');
INSERT INTO public.publishers (id, name) VALUES ('d5ad7fb3-2224-41ed-96a2-352bc8144978', 'W. W. Norton & Company');
INSERT INTO public.publishers (id, name) VALUES ('4501d627-9694-4aca-9eb5-3854fcfa11d0', 'Yale University Press');
INSERT INTO public.publishers (id, name) VALUES ('0e2e2e09-6a53-4a7e-849f-fe63632bf8be', 'Dover Publications');
INSERT INTO public.publishers (id, name) VALUES ('197d13c5-90b7-4168-a2ae-b1ece80d79d1', 'Berkley');
INSERT INTO public.publishers (id, name) VALUES ('322c2f24-b95e-46ea-8a31-5ea653b43f24', 'Gollancz');
INSERT INTO public.publishers (id, name) VALUES ('d4524c68-031d-407d-8680-4941ee8bbcc8', 'Chicago Review Press');
INSERT INTO public.publishers (id, name) VALUES ('5afb529a-8cfc-4810-a98b-b58200825ac2', 'Publisher');

INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('22ecdf74-35a4-4577-b045-b0ab9e7ca548', '9780547928210', 'https://drive.google.com/uc?export=view&id=1UozNFw-uMAPvaZr3Mjdol1Fj3K6TyFAN', 2012, 30, '2098c071-2153-4a79-93e4-ddf4bbdad577', 'The Fellowship of the Ring', 'TAKEN', 'The Fellowship of the Ring is the first volume in J.R.R. Tolkien''s epic adventure tale, The Lord of the Rings.

One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them.

In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell into the hands of Bilbo Baggins, as told in The Hobbit. In a sleepy village in the Shire, young Frodo Baggins finds himself faced with an immense task, as his elderly cousin Bilbo entrusts the Ring to his care. Frodo must leave his home and make a perilous journey across Middle-earth to the Cracks of Doom, there to destroy the Ring and foil the Dark Lord in his evil purpose.

“A unique, wholly realized other world, evoked from deep in the well of Time, massively detailed, absorbingly entertaining, profound in meaning.”—The New York Times
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('7b525a90-fba0-4c4d-aa6e-848ba5935032', '9780439358064', 'https://drive.google.com/uc?export=view&id=13vMUCio6-hbC5AnRSMThDSTDoDiVfSgt', 2003, 30, '2f984958-c808-461e-8b07-8ca52ee91dcc', 'Harry Potter and the Order of the Phoenix', 'FREE', '‘You are sharing the Dark Lord''s thoughts and emotions. The Headmaster thinks it inadvisable for this to continue. He wishes me to teach you how to close your mind to the Dark Lord.''

Dark times have come to Hogwarts. After the Dementors'' attack on his cousin Dudley, Harry Potter knows that Voldemort will stop at nothing to find him. There are many who deny the Dark Lord''s return, but Harry is not alone: a secret order gathers at Grimmauld Place to fight against the Dark forces. Harry must allow Professor Snape to teach him how to protect himself from Voldemort''s savage assaults on his mind. But they are growing stronger by the day and Harry is running out of time...

Having become classics of our time, the Harry Potter stories never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new listeners.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('74f83d2f-bc03-4707-8a7d-aee5bf4e3ea5', '9780439136358', 'https://drive.google.com/uc?export=view&id=1tjODgnaapsEiTeB8J1HPDJLf0SvyJZ71', 1999, 30, '2f984958-c808-461e-8b07-8ca52ee91dcc', 'Harry Potter and the Prisoner of Azkaban', 'FREE', 'For twelve long years, the dread fortress of Azkaban held an infamous prisoner named Sirius Black. Convicted of killing thirteen people with a single curse, he was said to be the heir apparent to the Dark Lord, Voldemort.

Now he has escaped, leaving only two clues as to where he might be headed: Harry Potter''s defeat of You-Know-Who was Black''s downfall as well. And the Azkban guards heard Black muttering in his sleep, "He''s at Hogwarts...he''s at Hogwarts."

Harry Potter isn''t safe, not even within the walls of his magical school, surrounded by his friends. Because on top of it all, there may well be a traitor in their midst.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('20ff39ff-6d8b-4aef-9129-b053cbd86c01', '9780547928227', 'https://drive.google.com/uc?export=view&id=1ZdLtnG8IJYXVTLwryIKsl9krk6YwniUH', 2012, 30, '2098c071-2153-4a79-93e4-ddf4bbdad577', 'The Hobbit', 'BOOKED', 'The journey through Middle-earth begins here with J.R.R. Tolkien''s classic prelude to his Lord of the Rings trilogy.

“A glorious account of a magnificent adventure, filled with suspense and seasoned with a quiet humor that is irresistible... All those, young or old, who love a fine adventurous tale, beautifully told, will take The Hobbit to their hearts.”—The New York Times Book Review

"In a hole in the ground there lived a hobbit." So begins one of the most beloved and delightful tales in the English language—Tolkien''s prelude to The Lord of the Rings. Set in the imaginary world of Middle-earth, at once a classic myth and a modern fairy tale, The Hobbit is one of literature''s most enduring and well-loved novels.

Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely traveling any farther than his pantry or cellar. But his contentment is disturbed when the wizard Gandalf and a company of dwarves arrive on his doorstep one day to whisk him away on an adventure. They have launched a plot to raid the treasure hoard guarded by Smaug the Magnificent, a large and very dangerous dragon. Bilbo reluctantly joins their quest, unaware that on his journey to the Lonely Mountain he will encounter both a magic ring and a frightening creature known as Gollum.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('685148f4-6b7a-4536-a80f-fa2d9b4c181d', '9780439064866', 'https://drive.google.com/uc?export=view&id=1Lu7TJN50Q8fBSlcbNKlx_Gh6zrdK7HO5', 1999, 30, '2f984958-c808-461e-8b07-8ca52ee91dcc', 'Harry Potter and the Chamber of Secrets', 'FREE', 'The Dursleys were so mean that hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he''s packing his bags, Harry receives a warning from a strange, impish creature named Dobby who says that if Harry Potter returns to Hogwarts, disaster will strike.

And strike it does. For in Harry''s second year at Hogwarts, fresh torments and horrors arise, including an outrageously stuck-up new professor, Gilderoy Lockheart, a spirit named Moaning Myrtle who haunts the girls'' bathroom, and the unwanted attentions of Ron Weasley''s younger sister, Ginny.

But each of these seem minor annoyances when the real trouble begins, and someone--or something--starts turning Hogwarts students to stone. Could it be Draco Malfoy, a more poisonous rival than ever? Could it possibly be Hagrid, whose mysterious past is finally told? Or could it be the one everyone at Hogwarts most suspects...Harry Potter himself?
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('414e4e93-a62c-42df-a954-b8ab8fcf67de', '9780063280779', 'https://drive.google.com/uc?export=view&id=1ytlFn6w-11htx9KVRqlbJaWL7xbHVL55', 2022, 30, '015fa81c-2c3f-4614-88c7-44102a2574ed', 'The Silmarillion', 'FREE', 'For the first time ever, a very special edition of the forerunner to The Lord of the Rings, illustrated throughout in color by J.R.R. Tolkien himself and with the complete text printed in two colors. The Silmarillion fills in the background which lies behind the more popular work, and gives the earlier history of Middle-earth, introducing some of the key characters.

The Silmarilli were three perfect jewels, fashioned by Fëanor, most gifted of the Elves, and within them was imprisoned the last Light of the Two Trees of Valinor. But the first Dark Lord, Morgoth, stole the jewels and set them within his iron crown, guarded in the impenetrable fortress of Angband in the north of Middle-earth.
The Silmarillion is the history of the rebellion of Fëanor and his kindred against the gods, their exile from Valinor and return to Middle-earth, and their war, hopeless despite all the heroism, against the great Enemy. It is the ancient drama to which the characters in The Lord of the Rings look back, and in whose events some of them such as Elrond and Galadriel took part.

The book also includes several shorter works: the Ainulindalë, a myth of the Creation, and the Valaquenta, in which the nature and powers of each of the gods is described. The Akallabêth recounts the downfall of the great island kingdom of Númenor at the end of the Second Age, and Of the Rings of Power tells of the great events at the end of the Third Age, as narrated in The Lord of the Rings.

Tolkien could not publish The Silmarillion in his lifetime, as it grew with him, so he would leave it to his son, Christopher Tolkien, to edit the work from many manuscripts and bring his father’s great vision to publishable form, so completing the literary achievement of a lifetime. This special edition presents anew this seminal first step towards mapping out the posthumous publishing of Middle-earth, and the beginning of an illustrious forty years and more than twenty books celebrating his father’s legacy.

This definitive new edition includes, by way of an introduction, a letter written by Tolkien in 1951 which provides a brilliant exposition of the earlier Ages, and for the first time in its history is presented with Tolkien’s own paintings and drawings, which reveal the breathtaking grandeur and beauty of his vision of the First Age of Middle-earth.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('34991964-e20c-483d-bf5a-4d58477636ad', '9780547928203', 'https://drive.google.com/uc?export=view&id=1zJisAHe31mewzZ-5g7V1l_fcA6f2XVx2', 2012, 30, '2098c071-2153-4a79-93e4-ddf4bbdad577', 'The Two Towers', 'BOOKED', 'The Lord of the Rings saga continues in The Two Towers,the second volume in J.R.R. Tolkien''s epic adventure.

One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them.

Frodo and his Companions of the Ring have been beset by danger during their quest to prevent the Ruling Ring from falling into the hands of the Dark Lord by destroying it in the Cracks of Doom. They have lost the wizard, Gandalf, in a battle in the Mines of Moria. And Boromir, seduced by the power of the Ring, tried to seize it by force. While Frodo and Sam made their escape, the rest of the company was attacked by Orcs. Now they continue the journey alone down the great River Anduin—alone, that is, save for the mysterious creeping figure that follows wherever they go.
“Among the greatest works of imaginative fiction of the twentieth century. The book presents us with the richest profusion of new lands and creatures, from the beauty of Lothlórien to the horror of Mordor.”—Sunday Telegraph
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('a0a5c07e-f898-4ef4-88f9-0d3404671778', '9781505260922', 'https://drive.google.com/uc?export=view&id=1qaCBTpjbjmL2mIAR4l8Eq0k0mZrj2GHh', 2014, 30, '7542c845-c06c-4be8-96cb-a173dcd05bd3', 'The Twelve Caesars', 'FREE', 'In the Twelve Caesars (De Vita Caesarum) Suetonius provides us with biographies of Julius Caesar and the eleven Roman Emperors who followed him. The work, probably written around 121AD in the reign of Hadrian, therefore covers the crucial and highly eventful period of Roman history from the end of the Republic to the reign of Domitian.

Suetonius delved into the Imperial archives to research eyewitness accounts, obtain factual information, and compile related material to produce his summary, as well as gathering anecdotal and other evidence from writers and historians of the period. The work is dramatic, and packed with incident. It provides valuable information on the heritage, personal habits, physical appearance, lives and political careers of the protagonists, and mentions details that other sources do not.

Suetonius is a major source of information on the life of Caligula, his uncle Claudius, and the heritage of Vespasian (the relevant sections of the Annals by Tacitus his contemporary being lost).

Though often questioned regarding its ultimate reliability as history, the Twelve Caesars provides an unforgettable portrait of Rome under the early Emperors, and of the Emperors themselves
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('e8ef2299-6718-4fcf-b7d8-83f22fd169c3', '9781473222281', 'https://drive.google.com/uc?export=view&id=1ohcAkUBiWTSvUas4luqlIDAe8BmOslQy', 2001, 30, '322c2f24-b95e-46ea-8a31-5ea653b43f24', 'The Doomed City', 'FREE', 'Arkady and Boris Strugatsky are widely considered the greatest of Russian science fiction masters, yet the novel they worked hardest on, the one that was their own favorite and that listeners worldwide have acclaimed their magnum opus, has never before been published in English. The Doomed City was so politically risky that the Strugatskys kept its existence a secret even from their closest friends for 16 years. It was only published in Russia during perestroika in the late 1980s, the last of their works to see publication.

The Doomed City is set in an experimental city whose sun gets switched on in the morning and off at night, a city bordered by an abyss on one side and an impossibly high wall on the other. Its inhabitants are people plucked from 20th-century history at various times and places and left to govern themselves under conditions established by Mentors whose purpose seems inscrutable.

Andrei Voronin, a young astronomer taken from Leningrad in the 1950s, is a die-hard believer in the Experiment, even though his first job in the city is as a garbage collector. As increasingly nightmarish scenarios begin to affect the city, Voronin rises through the political hierarchy, with devastating effect.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('0a2fdea4-f071-48c7-b31b-10c350f1dd46', '9780358653035', 'https://drive.google.com/uc?export=view&id=1VwLN8V8EdXjxrq_rr0hCCr5vr9Hl2rVI', 2021, 90, '015fa81c-2c3f-4614-88c7-44102a2574ed', 'The Lord of the Rings', 'TAKEN', 'For the first time ever, a very special edition of the J.R.R. Tolkien''s classic masterpiece, The Lord of the Rings, gorgeously illustrated throughout in color by the author himself and with the complete text printed in two colors, plus sprayed edges and a ribbon bookmark.

Since it was first published in 1954, The Lord of the Rings has been a book people have treasured. Steeped in unrivaled magic and otherworldliness, Tolkien''s sweeping fantasy and epic adventure has touched the hearts of young and old alike. More than 150 million copies of its many editions have been sold around the world, and occasional collectors’ editions become prized and valuable items of publishing.

This one-volume, jacketed hardcover edition contains the complete text, fully corrected and reset, which is printed in red and black and features, for the very first time, thirty color illustrations, maps and sketches drawn by Tolkien himself as he composed this epic work. These include the pages from the Book of Mazarbul, marvelous facsimiles created by Tolkien to accompany the famous ‘Bridge of Khazad-dum’ chapter. Also appearing are two removable fold-out maps drawn by Christopher Tolkien revealing all the detail of Middle-earth.

Sympathetically packaged to reflect the classic look of the first edition, this new edition of the bestselling hardback will prove irresistible to collectors and new fans alike.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('816e946c-d8d6-43b0-b6a2-4f6b6dd99083', '9789388144292', 'https://drive.google.com/uc?export=view&id=1Pc-k6cN2VcbrEBA_Es28RiLi1H1_HLoA', 2018, 60, '344586af-21c6-4c01-97a8-07585453a901', 'The Iliad, The Odyssey', 'FREE', 'HOMER: The Iliad & the Odyssey (Deluxe Hardbound Edition)

An exquisitely designed hardbound edition with a gold-foiled cover, this omnibus featuring Samuel Butler’s translations of the two Homeric epics comes with a ribbon bookmark, gilded edges and beautiful endpapers. Ideal to be read and treasured, it makes for a perfect addition to any library.

The oldest extant works of Western literature, Homer’s The Iliad and The Odyssey are an important part of the Greek culture. The Iliad gives a detailed poetic description of the war of Troy and expounds the battle and the events during the weeks of quarrels between King Agamemnon and warrior Achilles. The Odyssey expounds Homer’s energetic vision of everyman’s journey through life. It recounts the tale of Ulysses’ ‘nostros’—journey back home, after the ten-year-long Trojan War and the fall of the city of Troy.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('a2dfc699-5ee1-4138-a657-ef81363ac8a5', '9780393935561', 'https://drive.google.com/uc?export=view&id=1zZNfIcjx4UsS8iW1zoVo0BPGZebimfMV', 2012, 30, 'd5ad7fb3-2224-41ed-96a2-352bc8144978', 'The Sufferings of Young Werther', 'FREE', '“Corngold’s new translation is of the very highest quality, punctiliously faithful to Goethe’s German and sensitive to gradations of style in this extraordinary, trail-blazing first novel.”
―J. M. Coetzee, New York Review of Books

A masterpiece of the European imagination, The Sufferings of Young Werther is the classic strum und drang tale of youthful angst and tragedy. The acclaimed translator Stanley Corngold brings passion and precision to Goethe’s timeless novel of obsessive love and madness in this magnificent new rendition. The text is accompanied by the translator’s introduction and is fully annotated.

Goethe’s themes of unrequited love, the pain of rejection, deepening despair, and their tragic consequences are as relevant today as when the work was first published in 1774. This hugely influential novel was immediately bought, printed, read, exported, and imitated throughout Europe, and what Goethe called the novel’s “fire rockets” have continued to blaze through the centuries, influencing, among many others, Thomas Mann and Franz Kafka. The reader’s understanding and appreciation are enhanced by the Norton Critical Edition’s inclusion of a rich selection of Goethe’s letters and diary entries as well an autobiographical excerpt and lampoons.

“Criticism” brings together seven of the most influential essays written about The Sufferings of Young Werther over the last fifty years. Contributors include Harry Steinhauer, Roland Barthes, R. Ellis Dye, David Wellbery, Hans Rudolf Vaget, Dirk von Petersdorff, and Christiane Frey and David Martyn.

A Chronology and Selected Bibliography are also included.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('e70a41dd-fb34-4fe5-8824-911050f66eb8', '9780575093133', 'https://drive.google.com/uc?export=view&id=1aCmXyieSgvGqWbJmN3uCH5vkI-MX4hiz', 2001, 30, '322c2f24-b95e-46ea-8a31-5ea653b43f24', 'Roadside Picnic', 'FREE', 'Red Schuhart is a stalker, one of those young rebels who are compelled, in spite of extreme danger, to venture illegally into the Zone to collect the mysterious artifacts that the alien visitors left scattered around. His life is dominated by the place and the thriving black market in the alien products. But when he and his friend Kirill go into the Zone together to pick up a "full empty", something goes wrong. And the news he gets from his girlfriend upon his return makes it inevitable that he''ll keep going back to the Zone, again and again, until he finds the answer to all his problems.', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('c8015c04-02fe-4dd0-9f4a-ebdf93951bd2', '9798778234741', 'https://drive.google.com/uc?export=view&id=1pr2DvYQcNYypf22fnqshRM5j7fxNAMhj', 2021, 30, '6316055a-a090-4a4e-905b-77075558e64b', 'King Lear', 'FREE', 'Revolving around the themes of war, treason and betrayal, King Lear is the most famous of all Shakespeare’s tragedies. The play recounts the story of a self-absorbed father and a misjudged daughter, who is banished for unfair reasons. The play illustrates the king’s slow descent into madness, for valuing appearances above reality. Shakespeare’s vivid caricature, reflection of human relationships and Lear’s ‘reason-in-madness’ entitles King Lear as Shakespeare’s greatest masterpiece.', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('f2411d65-b391-458e-99cd-66d951403552', '9781613748282', 'https://drive.google.com/uc?export=view&id=1eyzi3FsoCvSIuQ6o9kHGTMFtdgIZrSSH', 2014, 30, 'd4524c68-031d-407d-8680-4941ee8bbcc8', 'Hard to Be a God', 'FREE', 'Arkady and Boris Strugatsky are widely known as the greatest Russian writers of science fiction, and their 1964 novel Hard to Be a God is considered one of the greatest of their works.

It tells the story of Don Rumata, who is sent from Earth to the medieval kingdom of Arkanar with instructions to observe and to influence, but never to directly interfere. Masquerading as an arrogant nobleman, a dueler and a brawler, Don Rumata is never defeated but can never kill. With his doubt and compassion, and his deep love for a local girl named Kira, Rumata wants to save the kingdom from the machinations of Don Reba, the First Minister to the king. But given his orders, what role can he play?

Hard to Be a God has inspired a computer role-playing game and two movies, including Aleksei German’s long-awaited swan song. Yet until now the only English version (out of print for over thirty years) was based on a German translation, and was full of errors, infelicities, and misunderstandings. This new edition—translated by Olena Bormashenko, whose translation of the authors’ Roadside Picnic has received widespread acclaim, and supplemented with a new foreword by Hari Kunzru and an afterword by Boris Strugatsky, both of which supply much-needed context—reintroduces one of the most profound Soviet-era novels to an eager audience.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('f4669dfe-45a8-4f49-8c00-40e5a11007ea', '9791094441299', 'https://drive.google.com/uc?export=view&id=1oSURM7VyJOxVP0lgn74xrJb7ohlwbq9b', 2017, 30, '9764292f-fbcc-4f02-9925-3c476ffaaf35', 'Les Inhibés', 'FREE', 'French Edition.

_Nous n''aboutirons à rien. Nous sommes soit indifférents, soit inhibés. Les impuissants de ce monde... Mais voilà une chose étonnante : il me semble que je l''envie. On lui fait la chasse, on attend quelque chose de sa part, on a besoin de lui, ou bien il dérange quelqu''un, ou peut-être qu''il lui est utile. C''est un baratineur, un faible, un mollasson, et en même temps, il représente une certaine valeur, pas des moindres d''ailleurs. Et moi, je suis vide. Personne n''a besoin de moi. Comme une canette de bière vide..._ Les Inhibés est le premier roman en solo de Boris Strougatski publié en français. Avec son frère Arkadi, il est l''auteur de chef-d''œuvres tels que Stalker ou Il est difficile d''être un dieu
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('5ccb0024-4227-484d-be95-cc10515c1a02', '9780590353403', 'https://drive.google.com/uc?export=view&id=1Y8w7mgxAgQMnu0FZzfcdbcJpehx6_XPS', 1998, 30, '2f984958-c808-461e-8b07-8ca52ee91dcc', 'Harry Potter and the Philosopher''s Stone', 'FREE', 'Harry Potter spent ten long years living with Mr. and Mrs. Dursley, an aunt and uncle whose outrageous favoritism of their perfectly awful son Dudley leads to some of the most inspired dark comedy since Charlie and the Chocolate Factory. But fortunately for Harry, he''s about to be granted a scholarship to a unique boarding school called THE HOGWORTS SCHOOL OF WITCHCRAFT AND WIZARDRY, where he will become a school hero at the game of Quidditch (a kind of aerial soccer played high above the ground on broomsticks), he will make some wonderful friends, and, unfortunately, a few terrible enemies. For although he seems to be getting your run-of-the-mill boarding school experience (well, ok, even that''s pretty darn out of the ordinary), Harry Potter has a destiny that he was born to fulfill. A destiny that others would kill to keep him from.', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('7919644e-b62b-4eec-9571-61ad448271ac', '9780439139595', 'https://drive.google.com/uc?export=view&id=1s4z7h3mhObr2zCRhtK--lHY1sGN9tj6M', 2000, 30, '2f984958-c808-461e-8b07-8ca52ee91dcc', 'Harry Potter and the Goblet of Fire', 'FREE', '‘There will be three tasks, spaced throughout the school year, and they will test the champions in many different ways ... their magical prowess - their daring - their powers of deduction - and, of course, their ability to cope with danger.''
The Triwizard Tournament is to be held at Hogwarts. Only wizards who are over seventeen are allowed to enter - but that doesn''t stop Harry dreaming that he will win the competition. Then at Hallowe''en, when the Goblet of Fire makes its selection, Harry is amazed to find his name is one of those that the magical cup picks out. He will face death-defying tasks, dragons and Dark wizards, but with the help of his best friends, Ron and Hermione, he might just make it through - alive!
Having become classics of our time, the Harry Potter stories never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new listeners.

', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('7eff9188-35e4-49bd-9c7a-62eba1dd53e0', '9780545010221', 'https://drive.google.com/uc?export=view&id=1GQzEVPX1XCpJiNVgfz540VArHzPXCdYo', 2007, 30, '2f984958-c808-461e-8b07-8ca52ee91dcc', 'Harry Potter and the Deathly Hallows', 'FREE', '‘Give me Harry Potter,'' said Voldemort''s voice, ''and none shall be harmed. Give me Harry Potter, and I shall leave the school untouched. Give me Harry Potter, and you will be rewarded.''

As he climbs into the sidecar of Hagrid''s motorbike and takes to the skies, leaving Privet Drive for the last time, Harry Potter knows that Lord Voldemort and the Death Eaters are not far behind. The protective charm that has kept Harry safe until now is broken, but he cannot keep hiding. The Dark Lord is breathing fear into everything Harry loves and to stop him Harry will have to find and destroy the remaining Horcruxes. The final battle must begin - Harry must stand and face his enemy...

Having become classics of our time, the Harry Potter stories never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new listeners.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('8ab77367-0095-4da3-a679-3f2fcbd1c4d3', '9798827770947', 'https://drive.google.com/uc?export=view&id=1WtKBgqlExdsK0Ci2FDR5ur_nDC3l3BDz', 2022, 14, '6316055a-a090-4a4e-905b-77075558e64b', 'The Apology of Socrates', 'FREE', 'Plato''s Apology of Socrates is one of Plato''s most famous and widely read dialogues. Through Socrates'' speech, the reader learns about Socrates, justice, life and death, good and evil, and more.

Benjamin Jowett''s translation is here annotated with explanatory notes. These are intended to aid in the understanding of translated terms and of references to Greek religion, mythology, and contemporary people, places, and events.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('c87f5b43-8ec1-4119-acfc-743857fd2478', '9781451552058', 'https://drive.google.com/uc?export=view&id=1uFB5K9tvgKxPCzevNNS6M2wP2ComVZVY', 2010, 30, '7542c845-c06c-4be8-96cb-a173dcd05bd3', 'Romeo and Juliet', 'FREE', 'One of Shakespeare''s most popular and accessible plays, Romeo and Juliet tells the story of two star-crossed lovers and the unhappy fate that befell them as a result of a long and bitter feud between their families. The play contains some of Shakespeare''s most beautiful and lyrical love poetry and is perhaps the finest celebration of the joys of young love ever written. This inexpensive edition includes the complete, unabridged text with explanatory footnotes. Ideal for classroom use, it is a wonderful addition to the home library of anyone wanting to savor one of literature''s most sublime paeans to love.', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('91054e61-db12-47c8-ad29-dbf2e9bf251a', '9798622310218', 'https://drive.google.com/uc?export=view&id=1LmUUb6v4hG9P4vgB2WVUmyrPZobTeBSb', 2020, 14, '6316055a-a090-4a4e-905b-77075558e64b', 'The Philebus', 'FREE', 'The Philebus appears to be one of the later writings of Plato, in which the style has begun to alter, and the dramatic and poetical element has become subordinate to the speculative and philosophical. In the development of abstract thought great advances have been made on the Protagoras or the Phaedrus, and even on the Republic. But there is a corresponding diminution of artistic skill, a want of character in the persons, a laboured march in the dialogue, and a degree of confusion and incompleteness in the general design. As in the speeches of Thucydides, the multiplication of ideas seems to interfere with the power of expression. Instead of the equally diffused grace and ease of the earlier dialogues there occur two or three highly-wrought passages; instead of the ever-flowing play of humour, now appearing, now concealed, but always present, are inserted a good many bad jests, as we may venture to term them. We may observe an attempt at artificial ornament, and far-fetched modes of expression; also clamorous demands on the part of his companions, that Socrates shall answer his own questions, as well as other defects of style, which remind us of the Laws. The connection is often abrupt and inharmonious, and far from clear.', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('b6ca07fc-f26c-48a4-a696-64d9e7f79f97', '333333', 'imagePath', 1850, 15, '5afb529a-8cfc-4810-a98b-b58200825ac2', 'UPDATED9999', 'FREE', 'My awesome book for sure', true);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('3eac9689-9c8e-4cc9-ac90-a1bb248f0312', '9780547928197', 'https://drive.google.com/uc?export=view&id=1qsioR4zesCzgh6a_FNJpgp7paXCsWWw0', 2012, 30, '2098c071-2153-4a79-93e4-ddf4bbdad577', 'The Return of the King', 'FREE', 'The third volume in J.R.R. Tolkien''s classic epic fantasy, The Lord of the Rings. This edition of The Return Of The King includes the complete appendices and index for The Lord of the Rings trilogy.

One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them.

As the shadow of Mordor grows across the land, the Companions of the Ring have become involved in separate adventures. Aragorn, revealed as the hidden heir of the ancient Kings of the West, has joined with the Riders of Rohan against the forces of Isengard and takes part in the desperate battle of the Hornburg. Merry and Pippin, captured by Orcs, escape into Fangorn Forest and there encounter the Ents.

Gandalf has miraculously returned and defeated the evil wizard, Saruman. Sam has left his master for dead after a battle with the giant spider, Shelob; but Frodo is still alive—now in the foul hands of the Orcs.

Meanwhile, the armies of the Dark Lord are massing as the One Ring draws ever nearer to the Cracks of Doom.

“A triumphant close ... a grand piece of work, grand in both conception and execution. An astonishing imaginative tour de force.”—Daily Telegraph
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('7dfbd1be-660f-4ec5-8729-b61f80a4f47e', '9780439784542', 'https://drive.google.com/uc?export=view&id=13xeb_bwZkXeyFFaOtsRdKBZ-f4HV4OOG', 2005, 30, '2f984958-c808-461e-8b07-8ca52ee91dcc', 'Harry Potter and the Half-Blood Prince', 'FREE', 'There it was, hanging in the sky above the school: the blazing green skull with a serpent tongue, the mark Death Eaters left behind whenever they had entered a building...wherever they had murdered...

When Dumbledore arrives at Privet Drive one summer night to collect Harry Potter, his wand hand is blackened and shrivelled, but he does not reveal why. Secrets and suspicion are spreading through the wizarding world, and Hogwarts itself is not safe. Harry is convinced that Malfoy bears the Dark Mark: there is a Death Eater amongst them. Harry will need powerful magic and true friends as he explores Voldemort''s darkest secrets, and Dumbledore prepares him to face his destiny...

Having become classics of our time, the Harry Potter stories never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new listeners.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('ba95c70a-0001-486a-9e05-9cf0d8c9ba45', '9781450539722', 'https://drive.google.com/uc?export=view&id=1AIibTIcJkSvjY0cRYafGVFQvwTK-tkB2', 2010, 30, '7542c845-c06c-4be8-96cb-a173dcd05bd3', 'Hamlet', 'FREE', 'One dark night, Hamlet sees a ghost. It is his dead father, who claims he was murdered by Claudius, the new king. But did Hamlet really see a ghost? And if so, was it telling him the truth? Hamlet plans to avenge his father by killing Claudius. But the man he stabs isn''t Claudius, as he thinks, but his girlfriend''s father. So the wrong man dies. So much tragedy, but there is more to come. Who else will die an untimely death? And who will live to tell the tale?', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('3d278fdd-be22-4206-9e43-c43482516a5b', '3423423423423', 'imagePath', 1852, 6, '5afb529a-8cfc-4810-a98b-b58200825ac2', 'my book', 'FREE', 'rgeergergergeg', true);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('d6010576-6ed0-4586-9c65-0c5f2971e9bb', '9780486440835', 'https://drive.google.com/uc?export=view&id=1fcB2zHOnI0IvrNGRMK9jR1lq6bBTKoXv', 2005, 90, '0e2e2e09-6a53-4a7e-849f-fe63632bf8be', 'Four Great Tragedies', 'FREE', 'Among the most studied, most read, and most admired works in world literature, the tragedies of Shakespeare constitute a body of work unrivaled in dramatic brilliance, beauty of language, and profundity of thought. This convenient and affordable volume—ideal for students and all lovers of literature—features four of the playwright’s greatest works: Hamlet, the revenge drama centering on the introspective Prince of Denmark—one of literature''s most discussed and contentious characters, and the role that every actor longs to play; Macbeth, otherwise known as "The Scottish Play," concerning a nobleman''s overweening ambition; Othello, in which a gallant soldier and loving husband is undone by jealousy; and Romeo and Juliet, the timeless tale of the young lovers whose names are synonymous with star-crossed romance.', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('e2299980-febb-480e-a8ea-c60903e69667', '9780451208637', 'https://drive.google.com/uc?export=view&id=1DRCYMnv7tojr5WFgr__zE7xKCMZRbMj3', 2003, 30, '197d13c5-90b7-4168-a2ae-b1ece80d79d1', 'The Divine Comedy', 'FREE', 'The authoritative translations of The Inferno, The Purgatorio, and The Paradiso—together in one volume.

Belonging in the immortal company of the great works of literature, Dante Alighieri’s poetic masterpiece, The Divine Comedy, is a moving human drama, an unforgettable visionary journey through the infinite torment of Hell, up the arduous slopes of Purgatory, and on to the glorious realm of Paradise—the sphere of universal harmony and eternal salvation.

Now, for the first time, John Ciardi’s brilliant and authoritative translations of Dante’s three soaring canticles—The Inferno, The Purgatorio, and The Paradiso—have been gathered together in a single volume. Crystallizing the power and beauty inherent in the great poet’s immortal conception of the aspiring soul, The Divine Comedy is a dazzling work of sublime truth and mystical intensity.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('a5e267a3-9872-4e85-a8af-e0d17c62d83b', '9780300189698', 'https://drive.google.com/uc?export=view&id=1MJyJCun8EtqqdhbF09kP9ZJ2WAmrCtmh', 2014, 30, '4501d627-9694-4aca-9eb5-3854fcfa11d0', 'Faust', 'FREE', '“Greenberg has accomplished a magnificent literary feat. He has taken a great German work, until now all but inaccessible to English readers, and made it into a sparkling English poem, full of verve and wit. Greenberg''s translation lives; it is done in a modern idiom but with respect for the original text; I found it a joy to read.”—Irving Howe (on the earlier edition)

A classic of world literature, Goethe’s Faust is a philosophical and poetic drama full of satire, irony, humor, and tragedy. Martin Greenberg re-creates not only the text’s varied meter and rhyme but also its diverse tones and styles—dramatic and lyrical, reflective and farcical, pathetic and coarse, colloquial and soaring. His rendition of Faust is the first faithful, readable, and elegantly written translation of Goethe’s masterpiece available in English. At last, the Greenberg Faust is available in a single volume, together with a thoroughly updated translation, preface, and notes.
', false);
INSERT INTO public.books (id, isbn, image_path, year, max_days_to_order, publisher_id, title, book_status, description, deleted_flag) VALUES ('c7e4da37-b8de-4eab-be69-bb11f2255031', '3423423423423', 'imagePath', 1852, 6, '5afb529a-8cfc-4810-a98b-b58200825ac2', 'my book', 'FREE', 'rgeergergergeg', true);




INSERT INTO public.users (id, name, day_of_birth, login, password, role, status) VALUES ('7c6e373d-679a-44af-9136-93875d3f516c', 'serega', '2022-10-15', 'smiiansf@gmail.com', '$2a$10$Mtx4D68t88JqOR98AqN0OeKD8sdsR6ZDOB11zaRNXfeqPMNUpH6rO', 'USER', 'ACTIVE');
INSERT INTO public.users (id, name, day_of_birth, login, password, role, status) VALUES ('46e7ac61-0f21-4822-ab3f-5fe25f4c58e1', 'ignat', '2000-01-02', 'bbb', '$2a$10$olaAi1YPAHov3a708pWTYehxjXGeA4K6lP0XcefD8VrSKL0xkv2E.', 'USER', 'ACTIVE');
INSERT INTO public.users (id, name, day_of_birth, login, password, role, status) VALUES ('d423360a-0235-412a-ad87-6b88648861e2', 'Master', '1970-01-01', 'admin', '$2a$10$a62AlbZqFW7.Dk9nCGjn9.9ihWa4MQyMFfM/uIW1MU6zat3EgdJ/a', 'ADMIN', 'ACTIVE');
INSERT INTO public.users (id, name, day_of_birth, login, password, role, status) VALUES ('051c320d-5cca-4d5a-9373-3de1864834ff', 'Librarian', '1985-11-21', 'serg', '$2a$10$MeFthcMLCHvdp1Pf0UdxeOYo0pV7K93dZcWxAXtPkG0E0mfPhRZ/y', 'LIBRARIAN', 'ACTIVE');
INSERT INTO public.users (id, name, day_of_birth, login, password, role, status) VALUES ('e1defbcb-a07b-4b01-a0cc-67f13c812404', 'vasya', '2001-05-08', 'aaa', '$2a$10$olaAi1YPAHov3a708pWTYehxjXGeA4K6lP0XcefD8VrSKL0xkv2E.', 'USER', 'ACTIVE');



INSERT INTO public.writings (id, title) VALUES ('d25a532c-7ed1-4328-8fdc-10c8be3ba228', 'The Lord of the Rings: The Fellowship of the Ring');
INSERT INTO public.writings (id, title) VALUES ('4bcf7623-f168-4956-84da-a84e3195b97e', 'The Lord of the Rings: The Two Towers');
INSERT INTO public.writings (id, title) VALUES ('0238e96d-4f16-448d-842e-dae8f30b39fe', 'The Lord of the Rings: The Return of the King');
INSERT INTO public.writings (id, title) VALUES ('da33d6ed-4127-4c27-85ad-3db56bacb419', 'The Hobbit');
INSERT INTO public.writings (id, title) VALUES ('225e366d-ee01-4108-8118-f6aa41ad45f6', 'The Silmarillion');
INSERT INTO public.writings (id, title) VALUES ('e21230ad-d7f6-45ba-8483-71810e0b9894', 'Harry Potter and the Philosopher''s Stone');
INSERT INTO public.writings (id, title) VALUES ('c7884b7a-fca4-4e1f-a5f2-8f9bff788711', 'Harry Potter and the Chamber of Secrets');
INSERT INTO public.writings (id, title) VALUES ('050ef211-7939-4535-9e77-b5e2391dfd82', 'Harry Potter and the Prisoner of Azkaban');
INSERT INTO public.writings (id, title) VALUES ('0031b981-fd90-4e36-aff0-285561985ad2', 'Harry Potter and the Goblet of Fire');
INSERT INTO public.writings (id, title) VALUES ('d2410c0f-b3ba-457d-b545-a2547ced8c26', 'Harry Potter and the Order of the Phoenix');
INSERT INTO public.writings (id, title) VALUES ('81c2b8ee-3cdd-4019-b5c5-5bb3b31f04f6', 'Harry Potter and the Half-Blood Prince');
INSERT INTO public.writings (id, title) VALUES ('2236b082-c01c-4727-9def-e6eb29cdf484', 'Harry Potter and the Deathly Hallows');
INSERT INTO public.writings (id, title) VALUES ('044ec7f8-c362-4bef-8966-a0c73cb6dcc4', 'The Iliad');
INSERT INTO public.writings (id, title) VALUES ('88653305-e922-44c9-a1c2-0f9edba5d7c3', 'The Odyssey');
INSERT INTO public.writings (id, title) VALUES ('a66d5554-3a0e-49b6-920c-525f5e2fd15d', 'The Apology of Socrates');
INSERT INTO public.writings (id, title) VALUES ('95314f2f-70ac-4a2b-8d65-8a989d2c7cb8', 'The Philebus');
INSERT INTO public.writings (id, title) VALUES ('7bfb7139-1c5c-4e39-bdd5-c3c532793d84', 'King Lear');
INSERT INTO public.writings (id, title) VALUES ('93455828-4268-42f2-84b8-4df8b94de9cd', 'Romeo and Juliet');
INSERT INTO public.writings (id, title) VALUES ('c828e059-20be-4f54-b84e-99e356ed70b4', 'The Divine Comedy');
INSERT INTO public.writings (id, title) VALUES ('99138471-2215-4ced-9a48-7a1e0bd4f901', 'Roadside Picnic');
INSERT INTO public.writings (id, title) VALUES ('76b1fe68-a0db-442a-8756-8a7b89b65b29', 'The Doomed City');
INSERT INTO public.writings (id, title) VALUES ('e8973367-5242-4967-92b6-69baee663c55', 'Hard to Be a God');
INSERT INTO public.writings (id, title) VALUES ('641a46ed-8319-44e4-acea-bdc39d9c9d5f', 'Les Inhibés');
INSERT INTO public.writings (id, title) VALUES ('3608cba9-eb26-4720-bd4a-c3d87cc2a851', 'Faust');
INSERT INTO public.writings (id, title) VALUES ('b3e0a442-55ab-4e88-a1d8-3838308571df', 'Hamlet');
INSERT INTO public.writings (id, title) VALUES ('84a9a20f-745a-4b14-8267-39eb37cc76fe', 'The Twelve Caesars');
INSERT INTO public.writings (id, title) VALUES ('42d6d427-ad95-462a-acbc-2d0ae9286b5c', 'The Sufferings of Young Werther');
INSERT INTO public.writings (id, title) VALUES ('2df18615-4413-4e35-a17b-fc8792e292b2', 'Othello');
INSERT INTO public.writings (id, title) VALUES ('17412b6d-84c1-4a7b-99d5-0b1ed03bb38f', 'Macbeth');
INSERT INTO public.writings (id, title) VALUES ('6ee6f27c-2538-445e-939d-016c57639a64', 'Writing title');
INSERT INTO public.writings (id, title) VALUES ('ad1fed84-613b-4568-9b20-056cae4d82a4', 'Writing Title');
INSERT INTO public.writings (id, title) VALUES ('4f084346-2602-4af6-b9bc-63f634ce15d9', 'Writing title2');

INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('e1924950-96e5-420c-8b38-61551ea00df6', NULL, NULL);
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('e0e0f618-4da6-4df1-8b62-280c51f4ba89', NULL, NULL);
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('f2b9e2cc-f33e-4d12-b543-9f521e523d24', NULL, NULL);
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('e750b21a-5f2f-49e7-9329-9ce591b55553', NULL, NULL);
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('deedb4c8-f1b9-4c95-916a-7e5ce7082100', NULL, NULL);
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('e7ad9dfc-d5fb-4ab6-8d16-ef40a8f50ae3', NULL, NULL);
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('03109227-46ca-4250-90e9-dac857566261', 'd25a532c-7ed1-4328-8fdc-10c8be3ba228', '0a2fdea4-f071-48c7-b31b-10c350f1dd46');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('06909ae1-cfea-4b0e-be44-3322bb6e6590', '4bcf7623-f168-4956-84da-a84e3195b97e', '0a2fdea4-f071-48c7-b31b-10c350f1dd46');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('08498986-d957-41d1-a9f5-1be9f98f6424', '0238e96d-4f16-448d-842e-dae8f30b39fe', '0a2fdea4-f071-48c7-b31b-10c350f1dd46');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('0b3d7795-ccc6-41b8-be22-8f9e0656be1d', 'd25a532c-7ed1-4328-8fdc-10c8be3ba228', '22ecdf74-35a4-4577-b045-b0ab9e7ca548');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('0c0181eb-4c84-497a-ab9c-b5c6f80e1f88', '4bcf7623-f168-4956-84da-a84e3195b97e', '34991964-e20c-483d-bf5a-4d58477636ad');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('124769ad-b4dc-4eee-9204-30716313da5e', '0238e96d-4f16-448d-842e-dae8f30b39fe', '3eac9689-9c8e-4cc9-ac90-a1bb248f0312');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('1808d2a9-4b2d-4647-8981-a10e0463088d', 'da33d6ed-4127-4c27-85ad-3db56bacb419', '20ff39ff-6d8b-4aef-9129-b053cbd86c01');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('1cd3c7b2-a386-4859-bdfc-a7b03faa77f3', '225e366d-ee01-4108-8118-f6aa41ad45f6', '414e4e93-a62c-42df-a954-b8ab8fcf67de');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('215306a7-49b2-40b2-a3e8-5f510d260d5a', 'e21230ad-d7f6-45ba-8483-71810e0b9894', '5ccb0024-4227-484d-be95-cc10515c1a02');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('225c2e65-d23b-418c-82f3-691336577fbb', 'c7884b7a-fca4-4e1f-a5f2-8f9bff788711', '685148f4-6b7a-4536-a80f-fa2d9b4c181d');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('24acb537-d720-4296-9ad4-04be01419d75', '050ef211-7939-4535-9e77-b5e2391dfd82', '74f83d2f-bc03-4707-8a7d-aee5bf4e3ea5');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('2e35286a-e351-4411-9f94-d13472b04a76', '0031b981-fd90-4e36-aff0-285561985ad2', '7919644e-b62b-4eec-9571-61ad448271ac');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('31e53601-055f-4631-b0a3-619e72e525aa', 'd2410c0f-b3ba-457d-b545-a2547ced8c26', '7b525a90-fba0-4c4d-aa6e-848ba5935032');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('378e0f84-102d-4ad0-bdde-07e6b9fc4578', '81c2b8ee-3cdd-4019-b5c5-5bb3b31f04f6', '7dfbd1be-660f-4ec5-8729-b61f80a4f47e');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('42b21ee0-774c-4670-9de2-baa822a6158b', '2236b082-c01c-4727-9def-e6eb29cdf484', '7eff9188-35e4-49bd-9c7a-62eba1dd53e0');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('42bac663-b988-4d8f-b607-6b5147cd5bac', '044ec7f8-c362-4bef-8966-a0c73cb6dcc4', '816e946c-d8d6-43b0-b6a2-4f6b6dd99083');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('4eb84cab-185a-4615-aaf1-fc2e4aa0a212', '88653305-e922-44c9-a1c2-0f9edba5d7c3', '816e946c-d8d6-43b0-b6a2-4f6b6dd99083');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('6399b5b2-3a2a-429c-a33a-7b383976cb09', 'a66d5554-3a0e-49b6-920c-525f5e2fd15d', '8ab77367-0095-4da3-a679-3f2fcbd1c4d3');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('63c619db-df45-4bec-a7aa-f613f1a58cbf', '95314f2f-70ac-4a2b-8d65-8a989d2c7cb8', '91054e61-db12-47c8-ad29-dbf2e9bf251a');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('699f2410-05ed-4190-9d8b-6fbb5d2ceef3', '84a9a20f-745a-4b14-8267-39eb37cc76fe', 'a0a5c07e-f898-4ef4-88f9-0d3404671778');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('6be97474-f873-46ea-b1fc-c3d42f773449', '42d6d427-ad95-462a-acbc-2d0ae9286b5c', 'a2dfc699-5ee1-4138-a657-ef81363ac8a5');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('835c8d1c-a63f-471d-8dad-a090be17e2c1', '3608cba9-eb26-4720-bd4a-c3d87cc2a851', 'a5e267a3-9872-4e85-a8af-e0d17c62d83b');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('972e723f-03d9-47b8-9fbd-9a4ffa165a8a', 'b3e0a442-55ab-4e88-a1d8-3838308571df', 'ba95c70a-0001-486a-9e05-9cf0d8c9ba45');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('a6fbe589-29fa-4701-b9d7-cf063dbb9510', '7bfb7139-1c5c-4e39-bdd5-c3c532793d84', 'c8015c04-02fe-4dd0-9f4a-ebdf93951bd2');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('a874e8f5-e575-4a29-99e9-7b3f92cc5493', '93455828-4268-42f2-84b8-4df8b94de9cd', 'c87f5b43-8ec1-4119-acfc-743857fd2478');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('ad112c0a-502e-4055-ab38-f4b3f2c73ae2', 'b3e0a442-55ab-4e88-a1d8-3838308571df', 'd6010576-6ed0-4586-9c65-0c5f2971e9bb');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('af8b7d96-f16e-4cf4-80a5-aca8d76de942', '17412b6d-84c1-4a7b-99d5-0b1ed03bb38f', 'd6010576-6ed0-4586-9c65-0c5f2971e9bb');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('b2faef12-7af7-4f7a-bd50-4e5bcd0bcaa9', '2df18615-4413-4e35-a17b-fc8792e292b2', 'd6010576-6ed0-4586-9c65-0c5f2971e9bb');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('cbe66fc2-4c29-4099-bf51-39010c3c8529', '93455828-4268-42f2-84b8-4df8b94de9cd', 'd6010576-6ed0-4586-9c65-0c5f2971e9bb');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('cdc4808e-0beb-4df9-9b56-f86f15fb7c8d', 'c828e059-20be-4f54-b84e-99e356ed70b4', 'e2299980-febb-480e-a8ea-c60903e69667');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('d0db3983-b53c-48b6-8cc8-c1ab128604f9', '99138471-2215-4ced-9a48-7a1e0bd4f901', 'e70a41dd-fb34-4fe5-8824-911050f66eb8');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('d13d041f-60c8-4dc6-ad6b-710d1a659f52', '76b1fe68-a0db-442a-8756-8a7b89b65b29', 'e8ef2299-6718-4fcf-b7d8-83f22fd169c3');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('da5c2171-2e8b-4c8e-afc3-833ab5ec405b', 'e8973367-5242-4967-92b6-69baee663c55', 'f2411d65-b391-458e-99cd-66d951403552');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('dcb4c778-ddf6-4bd3-abb6-f8d3542c4d0f', '641a46ed-8319-44e4-acea-bdc39d9c9d5f', 'f4669dfe-45a8-4f49-8c00-40e5a11007ea');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('f1694cee-509d-11ed-ac02-00ffc14b038b', 'ad1fed84-613b-4568-9b20-056cae4d82a4', '3d278fdd-be22-4206-9e43-c43482516a5b');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('acd68e56-509e-11ed-b58e-00ffc14b038b', 'ad1fed84-613b-4568-9b20-056cae4d82a4', 'c7e4da37-b8de-4eab-be69-bb11f2255031');
INSERT INTO public.writing_to_book (id, writing_id, book_id) VALUES ('42b15b32-50a3-11ed-98ae-00ffc14b038b', '4f084346-2602-4af6-b9bc-63f634ce15d9', 'b6ca07fc-f26c-48a4-a696-64d9e7f79f97');



INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('e88a0e28-3ffa-11ed-a38b-00ffc14b038b', 'b625e20e-1630-4c31-80d6-318cda76f98e', '2236b082-c01c-4727-9def-e6eb29cdf484');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('e88ad60a-3ffa-11ed-a38c-00ffc14b038b', 'b625e20e-1630-4c31-80d6-318cda76f98e', '81c2b8ee-3cdd-4019-b5c5-5bb3b31f04f6');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('e88afd7e-3ffa-11ed-a38d-00ffc14b038b', 'b625e20e-1630-4c31-80d6-318cda76f98e', 'd2410c0f-b3ba-457d-b545-a2547ced8c26');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('e88b2920-3ffa-11ed-a38e-00ffc14b038b', 'b625e20e-1630-4c31-80d6-318cda76f98e', '0031b981-fd90-4e36-aff0-285561985ad2');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('e88b50ee-3ffa-11ed-a38f-00ffc14b038b', 'b625e20e-1630-4c31-80d6-318cda76f98e', '050ef211-7939-4535-9e77-b5e2391dfd82');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('e88b77f4-3ffa-11ed-a390-00ffc14b038b', 'b625e20e-1630-4c31-80d6-318cda76f98e', 'c7884b7a-fca4-4e1f-a5f2-8f9bff788711');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('e88b77f5-3ffa-11ed-a391-00ffc14b038b', 'b625e20e-1630-4c31-80d6-318cda76f98e', 'e21230ad-d7f6-45ba-8483-71810e0b9894');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('e88b9f04-3ffa-11ed-a392-00ffc14b038b', '61e0c8c2-ee15-4054-a4d7-73647033db19', '225e366d-ee01-4108-8118-f6aa41ad45f6');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('e88b9f05-3ffa-11ed-a393-00ffc14b038b', '61e0c8c2-ee15-4054-a4d7-73647033db19', 'da33d6ed-4127-4c27-85ad-3db56bacb419');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('e88bc614-3ffa-11ed-a394-00ffc14b038b', '61e0c8c2-ee15-4054-a4d7-73647033db19', 'd25a532c-7ed1-4328-8fdc-10c8be3ba228');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('24130706-3ffb-11ed-a61a-00ffc14b038b', '61e0c8c2-ee15-4054-a4d7-73647033db19', '0238e96d-4f16-448d-842e-dae8f30b39fe');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('24138884-3ffb-11ed-a61b-00ffc14b038b', '61e0c8c2-ee15-4054-a4d7-73647033db19', '4bcf7623-f168-4956-84da-a84e3195b97e');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('540ed332-3fff-11ed-9bcd-00ffc14b038b', '645e603d-118b-47ef-be43-c5afa8b3f1c4', '044ec7f8-c362-4bef-8966-a0c73cb6dcc4');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('540f4fa6-3fff-11ed-9bce-00ffc14b038b', '645e603d-118b-47ef-be43-c5afa8b3f1c4', '88653305-e922-44c9-a1c2-0f9edba5d7c3');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('540f88e0-3fff-11ed-9bcf-00ffc14b038b', '5e507160-576f-4120-8f5e-9f7836cc8153', 'a66d5554-3a0e-49b6-920c-525f5e2fd15d');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('540f88e1-3fff-11ed-9bd0-00ffc14b038b', '5e507160-576f-4120-8f5e-9f7836cc8153', '95314f2f-70ac-4a2b-8d65-8a989d2c7cb8');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('540f88e2-3fff-11ed-9bd1-00ffc14b038b', '764b2fa0-e08c-461a-8e1f-5f12a40d3754', '84a9a20f-745a-4b14-8267-39eb37cc76fe');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('540fb004-3fff-11ed-9bd2-00ffc14b038b', '386dda62-62ae-4571-96a1-a5e2635d66ac', '42d6d427-ad95-462a-acbc-2d0ae9286b5c');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('540fb005-3fff-11ed-9bd3-00ffc14b038b', '386dda62-62ae-4571-96a1-a5e2635d66ac', '3608cba9-eb26-4720-bd4a-c3d87cc2a851');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('540fd778-3fff-11ed-9bd4-00ffc14b038b', '48072ee3-75af-4ec6-ba6a-007fc45a1ce4', 'b3e0a442-55ab-4e88-a1d8-3838308571df');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('540fd779-3fff-11ed-9bd5-00ffc14b038b', '48072ee3-75af-4ec6-ba6a-007fc45a1ce4', '7bfb7139-1c5c-4e39-bdd5-c3c532793d84');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('540fff28-3fff-11ed-9bd6-00ffc14b038b', '45ef76b2-ce1b-434b-9a40-2e4fdeaf6e7d', '641a46ed-8319-44e4-acea-bdc39d9c9d5f');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('caadd820-4000-11ed-8b15-00ffc14b038b', '48072ee3-75af-4ec6-ba6a-007fc45a1ce4', '93455828-4268-42f2-84b8-4df8b94de9cd');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('caae7b0e-4000-11ed-8b16-00ffc14b038b', '76ba6a93-e246-49f5-8a88-3c7871b2b188', 'c828e059-20be-4f54-b84e-99e356ed70b4');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('f752f4dc-4000-11ed-8b17-00ffc14b038b', 'b6e80384-bc46-440c-8f33-79d941b809f4', '99138471-2215-4ced-9a48-7a1e0bd4f901');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('f7531bf6-4000-11ed-8b18-00ffc14b038b', '45ef76b2-ce1b-434b-9a40-2e4fdeaf6e7d', '99138471-2215-4ced-9a48-7a1e0bd4f901');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('f7531bf7-4000-11ed-8b19-00ffc14b038b', 'b6e80384-bc46-440c-8f33-79d941b809f4', '76b1fe68-a0db-442a-8756-8a7b89b65b29');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('f7534310-4000-11ed-8b1a-00ffc14b038b', '45ef76b2-ce1b-434b-9a40-2e4fdeaf6e7d', '76b1fe68-a0db-442a-8756-8a7b89b65b29');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('f7536a16-4000-11ed-8b1b-00ffc14b038b', 'b6e80384-bc46-440c-8f33-79d941b809f4', 'e8973367-5242-4967-92b6-69baee663c55');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('f7536a17-4000-11ed-8b1c-00ffc14b038b', '45ef76b2-ce1b-434b-9a40-2e4fdeaf6e7d', 'e8973367-5242-4967-92b6-69baee663c55');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('0d6181fe-4005-11ed-aa9e-00ffc14b038b', '48072ee3-75af-4ec6-ba6a-007fc45a1ce4', '2df18615-4413-4e35-a17b-fc8792e292b2');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('0d621f92-4005-11ed-aa9f-00ffc14b038b', '48072ee3-75af-4ec6-ba6a-007fc45a1ce4', '17412b6d-84c1-4a7b-99d5-0b1ed03bb38f');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('680c200e-4fc9-11ed-879c-00ffc14b038b', 'e8f1c243-337d-46e2-b6a5-ea2c18b4b33d', '6ee6f27c-2538-445e-939d-016c57639a64');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('680c200f-4fc9-11ed-879d-00ffc14b038b', 'f6ada4b4-619b-4b34-aac6-11d72ab27a4c', '6ee6f27c-2538-445e-939d-016c57639a64');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('f1689b46-509d-11ed-ac00-00ffc14b038b', '828cb4a3-5e9a-46ab-a54f-517f47ebfa09', 'ad1fed84-613b-4568-9b20-056cae4d82a4');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('f168fdca-509d-11ed-ac01-00ffc14b038b', 'a5310a3e-d98a-4ea1-a5e5-b5df0755b868', 'ad1fed84-613b-4568-9b20-056cae4d82a4');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('556b49fa-50a2-11ed-8556-00ffc14b038b', 'e8f1c243-337d-46e2-b6a5-ea2c18b4b33d', '4f084346-2602-4af6-b9bc-63f634ce15d9');
INSERT INTO public.author_to_writing (id, author_id, writing_id) VALUES ('556bfcd8-50a2-11ed-8557-00ffc14b038b', 'f6ada4b4-619b-4b34-aac6-11d72ab27a4c', '4f084346-2602-4af6-b9bc-63f634ce15d9');




INSERT INTO public.orders (id, book_id, user_id, issue_date, return_date, due_date, status) VALUES ('1e7a4e1c-9458-4113-bc7e-20a7fb874d77', '0a2fdea4-f071-48c7-b31b-10c350f1dd46', '7c6e373d-679a-44af-9136-93875d3f516c', '2022-10-17', NULL, '2023-01-15', 'CANCELLED');
INSERT INTO public.orders (id, book_id, user_id, issue_date, return_date, due_date, status) VALUES ('1454cdcb-0063-414a-a2f9-f7479f9a72c0', '0a2fdea4-f071-48c7-b31b-10c350f1dd46', '7c6e373d-679a-44af-9136-93875d3f516c', '2022-10-17', NULL, '2023-01-15', 'CANCELLED');
INSERT INTO public.orders (id, book_id, user_id, issue_date, return_date, due_date, status) VALUES ('eadb8126-f36d-4b00-86b8-4679d0ec9f9f', '20ff39ff-6d8b-4aef-9129-b053cbd86c01', '7c6e373d-679a-44af-9136-93875d3f516c', '2022-10-17', NULL, '2022-11-16', 'CANCELLED');
INSERT INTO public.orders (id, book_id, user_id, issue_date, return_date, due_date, status) VALUES ('5cdc6e74-c9d7-4421-b5d4-9e43e0824034', '74f83d2f-bc03-4707-8a7d-aee5bf4e3ea5', '7c6e373d-679a-44af-9136-93875d3f516c', '2022-10-17', NULL, '2022-11-16', 'CANCELLED');
INSERT INTO public.orders (id, book_id, user_id, issue_date, return_date, due_date, status) VALUES ('c3359a2f-2339-43a3-b138-1e346aa59ef3', '0a2fdea4-f071-48c7-b31b-10c350f1dd46', '7c6e373d-679a-44af-9136-93875d3f516c', '2022-10-17', NULL, '2023-01-15', 'CANCELLED');
INSERT INTO public.orders (id, book_id, user_id, issue_date, return_date, due_date, status) VALUES ('133bc2c5-8bc4-4b15-b169-97077add852c', '5ccb0024-4227-484d-be95-cc10515c1a02', '7c6e373d-679a-44af-9136-93875d3f516c', '2022-10-17', NULL, '2022-11-16', 'CANCELLED');
INSERT INTO public.orders (id, book_id, user_id, issue_date, return_date, due_date, status) VALUES ('586ae600-95e5-44d9-ae97-0cf8c0bda05c', '0a2fdea4-f071-48c7-b31b-10c350f1dd46', 'e1defbcb-a07b-4b01-a0cc-67f13c812404', '2022-10-19', NULL, '2023-01-17', 'IN_PROGRESS');
INSERT INTO public.orders (id, book_id, user_id, issue_date, return_date, due_date, status) VALUES ('afab3a78-c796-48e8-9899-b2075812a916', '22ecdf74-35a4-4577-b045-b0ab9e7ca548', '7c6e373d-679a-44af-9136-93875d3f516c', '2022-10-17', NULL, '2022-11-16', 'IN_PROGRESS');
INSERT INTO public.orders (id, book_id, user_id, issue_date, return_date, due_date, status) VALUES ('ce2aee18-8ae3-4a7f-8af7-92e2f839c381', '20ff39ff-6d8b-4aef-9129-b053cbd86c01', 'e1defbcb-a07b-4b01-a0cc-67f13c812404', '2022-10-19', NULL, '2022-11-18', 'DONE');
INSERT INTO public.orders (id, book_id, user_id, issue_date, return_date, due_date, status) VALUES ('fd1a4d29-d85d-45b2-bd0e-a5f02fd9dc4d', '3eac9689-9c8e-4cc9-ac90-a1bb248f0312', '7c6e373d-679a-44af-9136-93875d3f516c', '2022-10-23', NULL, '2022-11-22', 'CANCELLED');
INSERT INTO public.orders (id, book_id, user_id, issue_date, return_date, due_date, status) VALUES ('39ab63c9-a623-4a21-af2c-87462feaba7c', '20ff39ff-6d8b-4aef-9129-b053cbd86c01', '7c6e373d-679a-44af-9136-93875d3f516c', '2022-10-21', NULL, '2022-11-20', 'CANCELLED');
INSERT INTO public.orders (id, book_id, user_id, issue_date, return_date, due_date, status) VALUES ('6816a938-f70e-4f2b-a2b7-897789a894f3', '34991964-e20c-483d-bf5a-4d58477636ad', '7c6e373d-679a-44af-9136-93875d3f516c', '2022-10-23', NULL, '2022-11-22', 'PENDING');
INSERT INTO public.orders (id, book_id, user_id, issue_date, return_date, due_date, status) VALUES ('38a7c2f7-1c85-4a00-bd57-50b52df6906f', '20ff39ff-6d8b-4aef-9129-b053cbd86c01', '7c6e373d-679a-44af-9136-93875d3f516c', '2022-10-24', NULL, '2022-11-23', 'PENDING');

