require_relative("../db/sql_runner")

class Customer

  attr_accessor :name, :funds
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options ['id']
    @name = options['name']
    @funds = options['funds'].to_i
  end

  def save()
    sql = "INSERT INTO customers
    (name, funds)
    VALUES ($1, $2)
    RETURNING id"
    values = [@name, @funds]
    customer = SqlRunner.run(sql, values).first
    @id = customer['id'].to_i
  end

  def update()
    sql = "UPDATE customers SET name = $1 WHERE id = $2"
    values = [@name, @funds]
    SqlRunner.run(sql, values)
  end

  ## link to film ##
  #### FIX ###
  def films()
    sql = "SELECT films.*
    FROM films
    INNER JOIN tickets
    ON tickets.film_id = films.id
    WHERE customer_id = $1"
    values = [@id]
    films = SqlRunner.run(sql, values)
    return films.map { |films| Film.new(films) }
  end

end
