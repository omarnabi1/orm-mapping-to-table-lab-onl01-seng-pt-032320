class Student

 attr_accessor :name, :grade
 attr_reader :id
  
  def initialize (name, grade, id=nill)
    @name = name
    @grade = grade
    @id = id 
  end
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXIST songs (
      id INTEGER PRIMARY KEY
      name TEXT, 
      album TEXT
      )
      SQL 
    DB[:conn].execute(sql)
  end
end
