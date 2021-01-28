class Api::V1::AuthorsController < Api::V1::BaseControllerController
	def show
		author = Author.find_by(id: params[:id])
		if author.present?
			render json: {author: author, books: author.books}
		else
			render :json => { :message => "Author does not exit", :status => 406} 
		end
	end
end
