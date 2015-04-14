require 'flickraw'

begin
        extras = 'owner_name, views, date_taken, geo'

        if params[:category] == 'user'
          user = flickr.people.findByUsername(:username => params[:search_term])
          search_term = user.nsid
          type = 'user_id'
          params[:sort] = 'date-posted-desc' if params[:sort].nil?
        else
          search_term = params[:search_term]
          type = 'text'
          params[:sort] = 'relevance' if params[:sort].nil?
        end

        @photos = flickr.photos.search(:sort => params[:sort], type.to_sym => search_term, :extras => extras)
      rescue Exception => e
        flash[:error] = 'No results'
        logger.info "#{e.message}"
      end

