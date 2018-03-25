/* 3/25 VERSION */

create table songs (
  id                 serial primary key,
  song_name          varchar(50),
  artist_name        varchar(50),
  primary_artist_id  integer not null references artists(id),
  feat_artist        varchar(50),
  feat_artist_id     integer references artists(id),
  genre              varchar(50),
  bpm                integer,
  duration           time,
  release_date       date
);

create table artists (
  id            serial primary key,
  artist_name   varchar(50),
  location      varchar(100),
  genre         varchar(100)
);

INSERT INTO artists (
  artist_name,
  location,
  genre
)

VALUES (
  'Oseas Kline',
  'Houston, Texas',
  'Electronic'
);

INSERT INTO artists (
  artist_name,
  location,
  genre
)

VALUES (
  'Fox Rhett',
  'Los Angeles, California',
  'Hard Rock'
);

INSERT INTO artists (
  artist_name,
  location,
  genre
)

VALUES (
  'Anchor North',
  'Houston, Texas',
  'Indie Rock'
);

INSERT INTO songs (
  song_name,
  artist_name,
  primary_artist_id,
  genre,
  bpm,
  duration,
  release_date
)

VALUES (
  'NSFW',
  'Oseas Kline',
  1,
  'Electro House',
  110,
  '00:01:09',
  to_date('2018-07-15', 'YYYY-MM-DD')
);

INSERT INTO songs (
  song_name,
  artist_name,
  primary_artist_id,
  feat_artist,
  feat_artist_id,
  genre,
  bpm,
  duration,
  release_date
)

VALUES (
  'Falling Stars',
  'Oseas Kline',
  1,
  'Fox Rhett',
  2,
  'Chillwave',
  90,
  '00:05:13',
  to_date('2017-05-13', 'YYYY-MM-DD')
);

INSERT INTO songs (
  song_name,
  artist_name,
  primary_artist_id,
  feat_artist,
  feat_artist_id,
  genre,
  bpm,
  duration,
  release_date
)

VALUES (
  'Wrong (Oseas Kline Remix)',
  'Anchor North',
  3,
  'Oseas Kline',
  1,
  'Dream Pop',
  118,
  '00:06:17',
  to_date('2017-11-10', 'YYYY-MM-DD')
);
