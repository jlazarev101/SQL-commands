CREATE TABLE [Artist] (
  [ArtistID] int identity(1000,1),
  [Firstname] varchar(50),
  [Surname] varchar(50),
  [ArtisticMovement] varchar(50),
  [Century] int,
  PRIMARY KEY ([ArtistID])
);

CREATE TABLE [Conserver] (
  [ConserverID] int identity(100,1),
  [Firstname] varchar(50),
  [Surname] varchar(50),
  [Email] varchar(100),
  [DateHired] date,
  PRIMARY KEY ([ConserverID])
);

CREATE TABLE [Director] (
  [DirectorID] int identity(100,1),
  [Firstname] varchar(50),
  [Surname] varchar(50),
  [Email] varchar(100),
  [DateHired] date,
  PRIMARY KEY ([DirectorID])
);

CREATE TABLE [Curator] (
  [CuratorID] int identity(100,1),
  [Firstname] varchar(50),
  [Surname] varchar(50),
  [Email] varchar(50),
  [DateHired] date,
  [DirectorID] int,
  PRIMARY KEY ([CuratorID]),
  CONSTRAINT [FK_Curator.DirectorID]
    FOREIGN KEY ([DirectorID])
      REFERENCES [Director]([DirectorID])
);

CREATE TABLE [Exhibit] (
  [ExhibitID] int identity(10000,1),
  [Name] varchar(50),
  [DateOpened] date,
  [CuratorID] int,
  PRIMARY KEY ([ExhibitID]),
  CONSTRAINT [FK_Exhibit.CuratorID]
    FOREIGN KEY ([CuratorID])
      REFERENCES [Curator]([CuratorID])
);

CREATE TABLE [Guide] (
  [GuideID] int identity(100,1),
  [Firstname] varchar(50),
  [Surname] varchar(50),
  [Email] varchar(100),
  [DateHired] datetime,
  [ExhibitID] int,
  PRIMARY KEY ([GuideID]),
  CONSTRAINT [FK_Guide.ExhibitID]
    FOREIGN KEY ([ExhibitID])
      REFERENCES [Exhibit]([ExhibitID])
);

CREATE TABLE [Painting] (
  [PaintingID] int identity(100000,1),
  [Name] varchar(50),
  [DatePainted] date,
  [ExhibitID] int,
  [ArtistID] int,
  [ConserverID] int,
  PRIMARY KEY ([PaintingID]),
  CONSTRAINT [FK_Painting.ExhibitID]
    FOREIGN KEY ([ExhibitID])
      REFERENCES [Exhibit]([ExhibitID]),
  CONSTRAINT [FK_Painting.ConserverID]
    FOREIGN KEY ([ConserverID])
      REFERENCES [Conserver]([ConserverID]),
  CONSTRAINT [FK_Painting.ArtistID]
    FOREIGN KEY ([ArtistID])
      REFERENCES [Artist]([ArtistID])
);

