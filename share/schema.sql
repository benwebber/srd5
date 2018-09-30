CREATE TABLE IF NOT EXISTS spells (
  name TEXT NOT NULL,
  level INTEGER NOT NULL,
  school TEXT NOT NULL,
  cantrip BOOLEAN NOT NULL,
  ritual BOOLEAN NOT NULL,
  casting_time TEXT NOT NULL,
  range TEXT NOT NULL,
  verbal BOOLEAN NOT NULL,
  somatic BOOLEAN NOT NULL,
  material BOOLEAN NOT NULL,
  materials TEXT,
  duration TEXT NOT NULL,
  concentration BOOLEAN NOT NULL,
  description BOOLEAN NOT NULL
);
