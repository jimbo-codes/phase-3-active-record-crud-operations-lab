class Movie < ActiveRecord::Base
   
    def self.create_with_title(title)
        Movie.create(title:"#{title}")
    end

    def self.first_movie
        Movie.first
    end
    def self.last_movie
        Movie.last
    end
    
    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find_by id: id
    end

    def self.find_movie_with_attributes(attr1, attr2=nil)
        Movie.find_by attr1
        # Movie.where("title = ?",)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
        # console log what movie has & query that?
    end

    def update_with_attributes(attr1)
        self.update(attr1)
    end

    def self.update_all_titles(thing)
        Movie.update(title: thing)
    end

    def self.delete_by_id(thing)
        # Movie.find(thing).destroy
        Movie.destroy(thing)
    end
    def self.delete_all_movies
        Movie.destroy_all
    end
end