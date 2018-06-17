defmodule Matrix do
	defstruct body: Matrix.Utils.make_matrix(nil, 3,3)

	def modify_entry(matrix, row, col, new_value) do
		%Matrix{body: body} = matrix
		Access.get_and_update(body, row, fn(x) -> IO.inspect x[col] end)
		IO.inspect body
	end


	def set_at_location(matrix, row, col, value) do # really this is just a copy, with replacement at the N/M coordinate location		
		%Matrix{body: body} = matrix
		colz = Enum.fetch!(body, row)
		List.update_at(body, row, fn(x) -> List.update_at(x, col, fn(y) -> value end) end)
	end

	def set_at_location(matrix, row, col, value) do # really this is just a copy, with replacement at the N/M coordinate location		
		%Matrix{body: body} = matrix
		set_at_location(body, row, col, value)
	end
end
