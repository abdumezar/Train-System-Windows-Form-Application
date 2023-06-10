/*
	Seedin Fake Data For Testing:
		- 13  Users  [10 Passengers - 3 Admins]
		- 24  Trains [11 Normal - 8 Express - 5 High-Class]
		- 30  Trips  [Brtween Different  Cities ]
		- 850 Booked_Trips
*/
Go
Use Train_Booking_System

Go
-- Inserting Admins:
INSERT INTO Users VALUES ('Admin', 'Admin', 'admin@admin.com', 'admin', '+0 (111) 222-3333', 1);
INSERT INTO Users VALUES ('Abdulrhman', 'Mezar', 'abdumezar@example.com', 'S3cur3P@ss', '+1 (514) 524-9652', 1);
INSERT INTO Users VALUES ('Mohamed', 'Ahmed', 'mohamedAhmed@example.com', 'Pass123', '+1 (514) 524-9653', 1);
INSERT INTO Users VALUES ('Mahmoud', 'Labib', 'mahmoudLabib@example.com', 'Secret123', '+1 (514) 524-9654', 1);
INSERT INTO Users VALUES ('Mohamed', 'Amr', 'mhdAmr@example.com', 'Secret123', '+1 (514) 524-9654', 1);

-- Inserting Passengers
INSERT INTO Users VALUES ('John', 'Doe', 'john.doe@example.com', 'P4ssw0rd', '+1 (514) 524-9651', 0);
INSERT INTO Users VALUES ('Emily', 'Smith', 'emily.smith@example.com', 'S3cur3P@ss', '+1 (514) 524-9652', 0);
INSERT INTO Users VALUES ('Daniel', 'Johnson', 'daniel.johnson@example.com', 'Pass123', '+1 (514) 524-9653', 0);
INSERT INTO Users VALUES ('Sophia', 'Williams', 'sophia.williams@example.com', 'Secret123', '+1 (514) 524-9654', 0);
INSERT INTO Users VALUES ('William', 'Brown', 'william.brown@example.com', 'P@ssw0rd', '+1 (514) 524-9655', 0);
INSERT INTO Users VALUES ('Olivia', 'Davis', 'olivia.davis@example.com', 'SecurePwd', '+1 (514) 524-9656', 0);
INSERT INTO Users VALUES ('James', 'Miller', 'james.miller@example.com', 'Password123', '+1 (514) 524-9657', 0);
INSERT INTO Users VALUES ('Ava', 'Wilson', 'ava.wilson@example.com', 'StrongPwd', '+1 (514) 524-9658', 0);
INSERT INTO Users VALUES ('Logan', 'Anderson', 'logan.anderson@example.com', 'Passw0rd!', '+1 (514) 524-9659', 0);
INSERT INTO Users VALUES ('Mia', 'Taylor', 'mia.taylor@example.com', 'P@ssword!', '+1 (514) 524-9650', 0);
INSERT INTO Users VALUES ('Benjamin', 'Clark', 'benjamin.clark@example.com', 'P@ssw0rd123', '+1 (514) 524-9651', 0);
INSERT INTO Users VALUES ('Emma', 'Lewis', 'emma.lewis@example.com', 'SecurePass', '+1 (514) 524-9652', 0);
INSERT INTO Users VALUES ('Henry', 'Harris', 'henry.harris@example.com', 'Pass123!', '+1 (514) 524-9653', 0);
INSERT INTO Users VALUES ('Ella', 'Garcia', 'ella.garcia@example.com', 'P@ssw0rd123', '+1 (514) 524-9654', 0);
INSERT INTO Users VALUES ('Jacob', 'Martinez', 'jacob.martinez@example.com', 'StrongPwd!', '+1 (514) 524-9655', 0);
INSERT INTO Users VALUES ('Sofia', 'Lopez', 'sofia.lopez@example.com', 'Password456', '+1 (514) 524-9656', 0);
INSERT INTO Users VALUES ('Michael', 'Lee', 'michael.lee@example.com', 'P@ssword456', '+1 (514) 524-9657', 0);
INSERT INTO Users VALUES ('Isabella', 'Robinson', 'isabella.robinson@example.com', 'SecurePwd123', '+1 (514) 524-9658', 0);
INSERT INTO Users VALUES ('Alexander', 'Walker', 'alexander.walker@example.com', 'P4ssw0rd!', '+1 (514) 524-9659', 0);
INSERT INTO Users VALUES ('Grace', 'Hall', 'grace.hall@example.com', 'P@ssword!', '+1 (514) 524-9650', 0);
INSERT INTO Users VALUES ('Matthew', 'Young', 'matthew.young@example.com', 'Passw0rd123', '+1 (514) 524-9651', 0);
INSERT INTO Users VALUES ('Lily', 'Turner', 'lily.turner@example.com', 'SecurePass', '+1 (514) 524-9652', 0);
INSERT INTO Users VALUES ('Christopher', 'Baker', 'christopher.baker@example.com', 'Pass123!', '+1 (514) 524-9653', 0);
INSERT INTO Users VALUES ('Victoria', 'Scott', 'victoria.scott@example.com', 'P@ssw0rd123', '+1 (514) 524-9654', 0);
INSERT INTO Users VALUES ('Andrew', 'Green', 'andrew.green@example.com', 'StrongPwd!', '+1 (514) 524-9655', 0);
INSERT INTO Users VALUES ('Zoe', 'Adams', 'zoe.adams@example.com', 'Password456', '+1 (514) 524-9656', 0);
INSERT INTO Users VALUES ('David', 'Campbell', 'david.campbell@example.com', 'P@ssword456', '+1 (514) 524-9657', 0);
INSERT INTO Users VALUES ('Chloe', 'Hill', 'chloe.hill@example.com', 'SecurePwd123', '+1 (514) 524-9658', 0);
INSERT INTO Users VALUES ('Joseph', 'Mitchell', 'joseph.mitchell@example.com', 'P4ssw0rd!', '+1 (514) 524-9659', 0);
INSERT INTO Users VALUES ('Natalie', 'Ward', 'natalie.ward@example.com', 'P@ssword!', '+1 (514) 524-9650', 0);

-------------------------------------------------------------------------------
-- Add Trains with carriages with seats, with default number of carriages = 6 and number of seats = 30

Go
Declare @Counter int = 0
While @Counter < 11
	Begin
	DECLARE @numberOfCarriages INT = 6; -- Carriages	-- input
	Declare @numberOfSeats INT = 30;		-- Seats		-- input
	insert into Trains
	values('Normal', @numberOfCarriages, @numberOfSeats)				-- train model	-- input

	DECLARE @CarriageId INT = 1;
	DECLARE @SeatId INT = 1;

	DECLARE @trainID INT;
	select @trainID = Max(TrainId) from Trains

	WHILE @CarriageId <= @numberOfCarriages
	BEGIN
		insert into Carriages values(@CarriageId, @trainID)
		SET @SeatId = 1
		While @SeatId <= @numberOfSeats
		Begin
			insert into Seats
			values(@SeatId, @CarriageId, @trainID, null)
			SET @SeatId = @SeatId + 1;
		End;
		SET @CarriageId = @CarriageId + 1;
	END;
	Set @Counter = @Counter + 1;
End;

Go
Declare @Counter int = 0
While @Counter < 8
	Begin
	DECLARE @numberOfCarriages INT = 6; -- Carriages	-- input
	Declare @numberOfSeats INT = 30;		-- Seats		-- input
	insert into Trains
	values('Express', @numberOfCarriages, @numberOfSeats)				-- train model	-- input

	DECLARE @CarriageId INT = 1;
	DECLARE @SeatId INT = 1;

	DECLARE @trainID INT;
	select @trainID = Max(TrainId) from Trains

	WHILE @CarriageId <= @numberOfCarriages
	BEGIN
		insert into Carriages values(@CarriageId, @trainID)
		SET @SeatId = 1
		While @SeatId <= @numberOfSeats
		Begin
			insert into Seats
			values(@SeatId, @CarriageId, @trainID, null)
			SET @SeatId = @SeatId + 1;
		End;
		SET @CarriageId = @CarriageId + 1;
	END;
	Set @Counter = @Counter + 1;
End;

Go
Declare @Counter int = 0
While @Counter < 5
	Begin
	DECLARE @numberOfCarriages INT = 6; -- Carriages	-- input
	Declare @numberOfSeats INT = 30;		-- Seats		-- input
	insert into Trains
	values('High-Class', @numberOfCarriages, @numberOfSeats)				-- train model	-- input

	DECLARE @CarriageId INT = 1;
	DECLARE @SeatId INT = 1;

	DECLARE @trainID INT;
	select @trainID = Max(TrainId) from Trains

	WHILE @CarriageId <= @numberOfCarriages
	BEGIN
		insert into Carriages values(@CarriageId, @trainID)
		SET @SeatId = 1
		While @SeatId <= @numberOfSeats
		Begin
			insert into Seats
			values(@SeatId, @CarriageId, @trainID, null)
			SET @SeatId = @SeatId + 1;
		End;
		SET @CarriageId = @CarriageId + 1;
	END;
	Set @Counter = @Counter + 1;
End;

------------------------------------------------------------------------------------------
-- Inserting Trips

insert into Trips
values(8, '2024-02-02 06:02:54', 150, 'Matrouh', 'Cairo')
     
insert into Trips
values(15, '2023-10-19 20:08:45', 250, 'Port Said', 'Aswan')
   
insert into Trips
values(9, '2023-09-02 11:15:07', 450, 'Suez', 'Aswan')
   
insert into Trips
values(15, '2023-12-27 20:37:12', 450, 'Aswan', 'Matrouh')
      
insert into Trips
values(12, '2023-11-28 01:12:35', 300, 'Luxor', 'Ismailia')
       
insert into Trips
values(5, '2024-03-28 04:25:23', 450, 'Matrouh', 'Port Said')
     
insert into Trips
values(15, '2023-07-31 01:16:33', 150, 'Port Said', 'Ismailia')
      
insert into Trips
values(3, '2023-07-02 16:09:38', 200, 'Cairo', 'Ismailia')
     
insert into Trips
values(2, '2023-09-07 06:52:24', 450, 'Luxor', 'Matrouh')
      
insert into Trips
values(5, '2024-05-20 14:38:59', 250, 'Matrouh', 'Suez')
       
insert into Trips
values(11, '2023-07-24 18:57:33', 150, 'Suez', 'Aswan')
      
insert into Trips
values(6, '2023-09-03 21:16:32', 150, 'Matrouh', 'Suez')
        
insert into Trips
values(12, '2024-05-01 05:42:48', 500, 'Cairo', 'Port Said')
       
insert into Trips
values(11, '2024-03-21 16:44:45', 350, 'Cairo', 'Alex')
       
insert into Trips
values(1, '2024-02-26 20:51:35', 300, 'Luxor', 'Suez')
     
insert into Trips
values(14, '2024-03-02 16:40:11', 400, 'Aswan', 'Ismailia')
                
insert into Trips
values(9, '2023-12-21 16:52:41', 500, 'Luxor', 'Matrouh')
    
insert into Trips
values(10, '2023-08-25 02:13:41', 500, 'Alex', 'Ismailia')

insert into Trips
values(12, '2023-09-01 02:11:09', 300, 'Matrouh', 'Ismailia')

insert into Trips
values(1, '2023-12-25 19:45:04', 200, 'Cairo', 'Luxor')

insert into Trips
values(17, '2023-08-29 15:11:51', 150, 'Ismailia', 'Matrouh')

insert into Trips
values(21, '2024-03-02 18:43:04', 300, 'Aswan', 'Port Said')

insert into Trips
values(18, '2024-03-22 13:18:44', 250, 'Suez', 'Ismailia')

insert into Trips
values(23, '2024-01-27 03:56:17', 450, 'Port Said', 'Cairo')

insert into Trips
values(22, '2024-04-27 11:45:02', 350, 'Cairo', 'Port Said')

insert into Trips
values(18, '2023-07-04 22:20:01', 250, 'Matrouh', 'Ismailia')

insert into Trips
values(23, '2023-09-23 16:40:33', 250, 'Luxor', 'Matrouh')

insert into Trips
values(18, '2023-12-02 07:44:15', 250, 'Alex', 'Port Said')

insert into Trips
values(22, '2023-10-05 09:51:31', 250, 'Suez', 'Ismailia')

insert into Trips
values(21, '2024-02-05 05:31:31', 300, 'Port Said', 'Luxor')

-------------------------------------------------------------------------
-- Booked Trips

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 33      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 25      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 23      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 4      -- input
Declare @UserID INT = 27      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 11      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 2      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 30      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 16      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 29      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 20      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 12      -- input
Declare @UserID INT = 21      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 8      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 19      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 32      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 16      -- input
Declare @UserID INT = 24      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 28      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 30      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 14      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 6      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 22      -- input
Declare @UserID INT = 22      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 27      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 6      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 25      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 18      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 5    -- input
Declare @TripID INT = 13      -- input
Declare @UserID INT = 35      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 15      -- input
Declare @UserID INT = 31      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 3      -- input
Declare @UserID INT = 18      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 9      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 19      -- input
Declare @UserID INT = 7      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 26      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 6    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 17      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 12      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 17      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 9    -- input
Declare @TripID INT = 7      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 24      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 1    -- input
Declare @TripID INT = 20      -- input
Declare @UserID INT = 9      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 26      -- input
Declare @UserID INT = 15      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 4    -- input
Declare @TripID INT = 10      -- input
Declare @UserID INT = 23      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 8    -- input
Declare @TripID INT = 29      -- input
Declare @UserID INT = 13      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 7    -- input
Declare @TripID INT = 1      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 3    -- input
Declare @TripID INT = 21      -- input
Declare @UserID INT = 14      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 5      -- input
Declare @UserID INT = 10      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 10    -- input
Declare @TripID INT = 8      -- input
Declare @UserID INT = 11      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
                

Go
Declare @NumOfSeats INT = 2    -- input
Declare @TripID INT = 28      -- input
Declare @UserID INT = 34      -- input

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
