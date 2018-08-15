module Response

	def render_json(obj, status= :ok)
		render json: obj, status: :status
	end
end