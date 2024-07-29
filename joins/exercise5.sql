select distinct mems.firstname || ' ' || mems.surname as member, facs.name as facility
	from
		cd.members mems
		inner join cd.bookings bks
			on mems.memid = bks.memid
		inner join cd.facilities facs
			on bks.facid = facs.facid
	where
		facs.name like 'Tennis Court%'
order by member, facility 