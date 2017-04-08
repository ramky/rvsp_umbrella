unless(Rsvp.EventQueries.any) do
  Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2017-08-13 09:00:00", title: "Summer codefest", location: "Anaheim"}))
  Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2017-09-11 09:00:00", title: "Summer gala", location: "Alaska"}))
end
