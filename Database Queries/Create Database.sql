create database Train_Booking_System;

Go
use Train_Booking_System

Create Table Users(
	UserId		int				not null Identity(1, 1), 
	FirstName	varchar(50)		not null,
	LastName	varchar(50)		not null,
	Email		varchar(50)		not null,
	Password	varchar(50)		not null,
	PhoneNumber varchar(20)		not null,
	IsAdmin		bit				not null default 0, 
	Primary Key(UserId)
);

Create Table Trains(
	TrainId		int				not null Identity(1, 1), 
	TrainModel	varchar(50)		not null,
	NumberOfCarriages	int			not null,
	NumberOfSeats		int			not null,
	Primary Key(TrainId)
);

Create Table Trips(
	TripId               int                  not null identity(1, 1),
	TrainId              int                  not null,
	TripDateTime         datetime             not null,
	Cost                 decimal(7,2)         not null,
	Source               varchar(100)         not null,
	Destination          varchar(100)         not null,
	Foreign Key(TrainId) references Trains On Delete Cascade,
	Primary Key(TripId)
);

Create Table Booked_Trips(
	NumberOfSeates		int		not null,
	UserId				int		not null,
	TripId				int		not null,
	Foreign Key(UserId) references Users On Delete Cascade,
	Foreign Key(TripId) references Trips On Delete Cascade,
	Primary Key(TripId, UserId)
);

Create Table Carriages(
	CarriageId	int		not null,
	TrainId		int		not null,
	Foreign Key(TrainId) references Trains On Delete Cascade,
	Primary Key(TrainId, CarriageId)
);

Create Table Seats(
	SeatId				int		not null,
	CarriageId			int		not null,
	TrainId				int		not null,
	IsOccupatedByUserId int		null,
	Foreign Key(IsOccupatedByUserId) references Users(UserId),
	Foreign Key(TrainId, CarriageId) references Carriages On Delete Cascade,
	Primary Key(TrainId, CarriageId, SeatId)
);
