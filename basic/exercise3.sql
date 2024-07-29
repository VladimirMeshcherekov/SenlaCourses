select facid, name, membercost, guestcost, initialoutlay, monthlymaintenance
 from cd.facilities
  where
    membercost > 0;