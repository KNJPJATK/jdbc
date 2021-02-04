CREATE TABLE book (
    id INTEGER NOT NULL,
    title VARCHAR(255) NOT NULL,
    subtitle VARCHAR(255),
    author VARCHAR(255) NOT NULL,
    description TEXT,
    PRIMARY KEY (id)
);

INSERT INTO book (id, title, subtitle, author, description) VALUES (
    1,
    'inaczej',
    'Jak pracować mniej, ale lepiej i przyjemniej',
    'Radek Kotarski',
    'To właśnie w pracy spędzasz większość swojego świadomego, dorosłego życia...'
), (
    2,
    'Turbulencja',
    NULL,
    'Kpt. Dariusz Kulik',
    'Wszystkie rzeczy, o które chiałbyś zapytać pilota, ale nie możesz bo siedzi za pancernymi drzwiami.'
), (
     3,
     '4-godzinny tydzień pracy',
     'Uwolnij się od schematu od 9 do 17 dołącz do niezależnych finansowo',
     'Timothy Ferriss',
     'Sami wywołujemy u siebie stres, ponieważ czujemy, że musimy coś zrobić. Musimy. Ja już tak nie czuję.'
 ), (
      4,
      'Pełna moc życia',
      'Jeśli o czymś w życiu marzysz - sięgnij po to',
      'Jacek Walkiewicz',
      'Some description here'
  ), (
     5,
     'Ty jesteś marką',
     NULL,
     'Ks. Piotr Pawlukiewicz',
     'Some description here'
 ), (
    6,
    'Domain-Driven Design Distilled',
    NULL,
    'Vaughn Vernon',
    'Some description here'
), (
   7,
   'Implementing Domain-Driven Design',
   NULL,
   'Vaughn Vernon',
   'Some description here'
);
