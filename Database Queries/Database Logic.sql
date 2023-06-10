/*------------------------ Users Module ------------------------------*/
-- Add Passenger [Sign Up]
Go
insert into Users
values('FirstName', 'LastName', 'Email', 'Password', 'PhoneNumber', 0)

-- Add Admin	 [Sign Up]
Go
insert into Users
values('FirstName', 'LastName', 'Email', 'Password', 'PhoneNumber', 1)

-- Update User Details [Can`t Update (IsAdmin) Column]
Go
Update Users
set FirstName = 'FirstNameUpdated', LastName = 'LastNameUpdated', PhoneNumber = 'PhoneNumberUpdated', Email = 'EmailUpdated', Password = 'PasswordUpdated'
where UserId = 1	-- input (User Id)

-- Delete Account
Go
Delete From Users
Where UserId = 2	-- input (User Id)

/*------------------------ Trains Module ------------------------------*/
-- Add Train Get (train model, number of carriages, number of seats in each carriage) -- My Inputs
-- Check:
-- User is Admin
-- numbers are Grater than zero
-- train id is exist

Go
DECLARE @numberOfCarriages INT = 4;							-- input (Number Of Carriages)
Declare @numberOfSeats INT = 5;								-- input (Number Of Seats for Each Carriage)
insert into Trains											
values('TrainModel', @numberOfCarriages, @numberOfSeats)	-- input (Train Model)

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

-- delete train
go
Delete from Trains
Where TrainId = 1	-- input (Train Id)

-- Update Train [Edit Train Model or Number Of Carriages]
Go
Declare @TrainId INT = 1						 -- Input (Train Id)
DECLARE @numberOfCarriagesIn INT = 1;			 -- Input (New Number Of Carriages)
Declare @newModel varchar(50) = 'TrainModel';	 -- Input (New Model Name)

DECLARE @CarriageId INT = (Select NumberOfCarriages From Trains where TrainId = @TrainId) + 1;

Update Trains
set TrainModel = @newModel, NumberOfCarriages = @numberOfCarriagesIn
where TrainId = @TrainId

Declare @numberOfSeats int = (Select NumberOfSeats From Trains where TrainId = @TrainId);

if(@CarriageId <= @numberOfCarriagesIn)
Begin
	WHILE @CarriageId <= @numberOfCarriagesIn
	BEGIN
		insert into Carriages values(@CarriageId, @TrainId)
		DECLARE @SeatId int = 1
		While @SeatId <= @numberOfSeats
		Begin
			insert into Seats
			values(@SeatId, @CarriageId, @TrainId, null)
			SET @SeatId = @SeatId + 1;
		End;
		SET @CarriageId = @CarriageId + 1;
	END;
End
else
begin
	SET @CarriageId = @CarriageId - 1;
	WHILE @CarriageId > @numberOfCarriagesIn
	BEGIN
		Delete From Carriages
		Where CarriageId = @CarriageId and TrainId = @TrainId;
		SET @CarriageId = @CarriageId - 1 
	END;
end

/*------------------------ Trips Module ------------------------------*/
-- Add Trip (train Id, Trip DateTime, Cost, Source, Destination)
-- should Make sure that date is in future (grater than current time)
Go
insert into Trips
values(1, '2024-04-27 11:45:02', 100.00, 'Cairo', 'Alex')

-- Edit Trip [Can Edit All Trip Details (train Id, Trip DateTime, Cost, Source, Destination)]
Go
Update TRIPS
set TrainId = 1, TripDateTime = '2028-07-04 11:45:02', Cost = 700, Source = 'Source', Destination = 'Dest'	-- input updates
where TripId = 1		-- input (Trip Id)

-- Delete Trip
Go
Delete From Trips
where TripId = 1		-- input (Trip Id)

/*------------------------ Booking Module ------------------------------*/
-- Book a trip
Go
Declare @NumOfSeats INT = 2		-- input (Number Of Seats needed)
Declare @TripID INT = 1			-- input (Trip Id)
Declare @UserID INT = 2			-- input (User Id)

insert into Booked_Trips
values(@NumOfSeats, @UserID, @TripID )

Update top (@NumOfSeats) Seats
Set IsOccupatedByUserId = @UserID
Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)

-- cancel a trip
Go
Declare @TripID INT = 1			-- input
Declare @UserID INT = 2			-- input

Delete From Booked_Trips
where TripId = @TripID and UserId = @UserID

Update Seats
Set IsOccupatedByUserId = null
Where IsOccupatedByUserId = @UserID and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)

