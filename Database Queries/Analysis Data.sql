/*------------------------ Showing Data Module ------------------------------*/
-- Show booked Trips by user id
Go
Declare @UserID INT = 2			-- input
select T.Source, T.Destination, T.Cost, BT.NumberOfSeates , T.TripDateTime, Train.TrainModel
From Trips T, Trains Train, Booked_Trips BT
Where T.TrainId = Train.TrainId and BT.TripId = T.TripId and BT.UserId = @UserID

-- Show Avaliable Trips ..
-- All
Go
Select T.Source, T.Destination, T.Cost, T.TripDateTime, Train.TrainModel
From Trips T, Trains Train
Where T.TrainId = Train.TrainId

-- by Source
Go
Declare @Source varchar(50) = 'Cairo'		-- input
Select T.Source, T.Destination, T.Cost, T.TripDateTime, Train.TrainModel
From Trips T, Trains Train
Where T.TrainId = Train.TrainId and T.Source = @Source

-- by Destination
Go
Declare @Destination varchar(50) = 'Aswan'	-- input
Select T.Source, T.Destination, T.Cost, T.TripDateTime, Train.TrainModel
From Trips T, Trains Train
Where T.TrainId = Train.TrainId and T.Destination = @Destination

-- Avaliable Seats [Returns one String per row] 
Go
Select CONCAT('Seat No. ', S.SeatId, ' In Carraiage No.', S.CarriageId/*, ' In Train No.', S.TrainId*/, ' For Trip From ', T.Source, ' To ', T.Destination ) [Avaliable Seats]
From Seats S, Trips T
Where IsOccupatedByUserId is null and T.TripId = S.TrainId

-- Avaliable Seats
select COUNT(S.SeatId)
from Trips T, Seats S
where T.TrainId = S.TrainId and S.IsOccupatedByUserId is null and TripId = 1


--------------------------------------------------------------------------
select TrainModel , count(*)
from Trains
group by TrainModel

-- For Each Trip : (Train Model - Number of Researved Seats - Number of Avaliable Seats - Trip Details)
-- number of occupated seats
select Count(SeatId) as NumberOfOccupatedSeats
from Seats
where TrainId = 2 and IsOccupatedByUserId is not null

-- The Max 5 Trip Have Ocuupated Seats
select Top 5 (tr.source + ' To ' + tr.destination) as [Trip] , sum(bt.NumberOfSeates) as [Number of Seats Booked]
from Booked_Trips bt , Trips tr
where bt.tripid = tr.tripid
group by tr.source , tr.destination 
order by [Number of Seats Booked] desc

-- For each train - how many time used
select Train.TrainModel as [Type of train], Count(Trip.TripId) as [Number of using]
from Trips Trip, Trains Train
where Train.TrainId = Trip.TrainId
group by Train.TrainModel

-- Top 5 Trips bought
SELECT TOP 5 (tr.source + ' To ' + tr.destination) AS [Trip], SUM(bt.NumberOfSeates * tr.cost) AS [Total Cost]
FROM Booked_trips bt, Trips tr
WHERE bt.tripid = tr.tripid 
GROUP BY tr.source , tr.destination
ORDER BY [Total Cost] DESC;

-- Top 5 Bookings
SELECT TOP 5 (U.firstname + ' ' + U.lastname) AS [User Name], (tr.source + ' To ' + tr.destination) AS [Trip], SUM(bt.NumberOfSeates * tr.cost) AS [Total Cost]
FROM Booked_trips bt, Trips tr , Users U
WHERE bt.tripid = tr.tripid AND U.UserId = bt.UserId
GROUP BY U.firstname,U.lastname ,tr.source , tr.destination
ORDER BY [Total Cost] DESC;

 -- The Max 5 Users Payed Money
SELECT TOP 5 (U.firstname + ' ' + U.lastname) AS [User Name], SUM(bt.NumberOfSeates * tr.cost) AS [Total Cost]
FROM Booked_trips bt, Trips tr, Users U
WHERE bt.tripid = tr.tripid AND U.UserId = bt.UserId
GROUP BY U.firstname, U.lastname
ORDER BY [Total Cost] DESC;

-- Top 5 been reserved
SELECT TOP 5 Train.TrainModel as [Type of train], SUM(bt.NumberOfSeates * tr.cost) AS [Total Cost]
FROM Booked_trips bt, Trips tr , Trains Train
WHERE bt.tripid = tr.tripid and tr.tripid = Train.TrainId 
GROUP BY Train.TrainModel
ORDER BY [Total Cost] DESC;

