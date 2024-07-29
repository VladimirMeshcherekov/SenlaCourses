select strtT.starttime as start, nm.name as name
	from
		cd.facilities nm
		inner join cd.bookings strtT
			on nm.facid = strtT.facid
	where
		nm.name like '%Tennis Court%' and
		strtT.starttime >= '2012-09-21' and
		strtT.starttime < '2012-09-22'
order by strtT.starttime;