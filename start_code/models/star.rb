require_relative('casting')
require_relative('movie')
require_relative('../db/sql_runner')

class Star

  attr_reader :id
  attr_accessor :first_name, :last_name

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
  end

  def save()

    sql = "INSERT INTO stars (
    first_name,
    last_name
    ) VALUES (
    $1, $2
    ) RETURNING id"
    values = [@first_name, @last_name]
    star = SqlRunner.run(  sql, values  ).first
    @id = star['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM stars"
    stars = SqlRunner.run(sql)
    return Star.map_items(stars)
  end

  def self.map_items(star_hashes)
    result = star_hashes.map { |star_hash| Star.new(star_hash)}
    return result
  end

end
