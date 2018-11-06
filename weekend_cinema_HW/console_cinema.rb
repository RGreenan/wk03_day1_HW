require_relative('models/customer')
require_relative('models/ticket')
require_relative('models/film')

## CUSTOMERS
customer1 = Customer.new('name' => 'Jeff', 'funds' => 10)
customer2 = Customer.new('name' => 'Lucille', 'funds' => 15)
customer1.save()
customer2.save()
# working update method
customer1.name = 'Jeffrey'
customer1.update
# p customer1
# p customer2


## FILMS
film1 = Film.new('title' => 'Predator', 'price' => 10)
film2 = Film.new('title' => 'Total Recall', 'price' => 5)
film1.save()
film2.save()
# working update method
film1.price = 15
film1.update


## TICKETS
ticket1 = Ticket.new('customer_id' => customer1.id, 'film_id' => film1.id)
ticket2 = Ticket.new('customer_id' => customer2.id, 'film_id' => film2.id)
ticket1.save()
ticket2.save()
# p ticket1
# ## TODO: update method?!??!??!
# p ticket1.customer_has_ticket
# p ticket1.ticket_for_film

p customer1.films





######delete function for Tickets??######
