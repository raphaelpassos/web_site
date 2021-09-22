class Project < ApplicationRecord
    def work=(value)
        if value.is_a?(String)
            super(value)
        else
            name_work = "#{Time.now.to_i}-#{value.original_filename}"
            path_work = "#{Rails.root}/public/works/"
            path_with_work = "#{path_work}#{name_work}"

            Dir.mkdir(path_work) unless Dir.exists?(path_work)
            File.open(path_with_work, "wb") { |f| f.write(value.read)}
            super("/works/#{name_work}")
        end
    end
end
