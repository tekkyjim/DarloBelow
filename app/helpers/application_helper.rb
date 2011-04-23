module ApplicationHelper
    def file_array(directory, type)
    array = []
    Dir.glob("#{Rails.root.to_s}#{directory}/#{type}").each do |file|
      array << File.basename(file)
      puts array
    end
    array.sort
  end
end
 