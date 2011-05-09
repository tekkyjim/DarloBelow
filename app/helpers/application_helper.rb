module ApplicationHelper
    def file_array(directory, type)
    array = []
    Dir.glob("#{Rails.root.to_s}#{directory}/#{type}").each do |file|
      array << File.basename(file)
      puts array
    end
    array.sort
    end
    
   def list_adjectives(type, bias)
    words = []
    unless type == "All"
      list = Adjective.where(:type => type, :bias => bias)
    else
      list = Adjective.where(:bias => bias)
    end
    list.each do |beep|
      words << beep.word
    end
    words
   end
  def list_users
    users = []
    userlist = User.asc(:name)
    userlist.each do |beep|
      users << beep.name
    end
    users
  end
end
 