defmodule Matrix do
	use GenServer
	defstruct dim1: 3,
			  dim2: 3,
			  body: [
			  	[0,0,0],
			  	[0,0,0],
			  	[0,0,0]
			  ]

	def set(row,col) do
	end

	def make_array(char,n), do: make_array([char], char,n-1)
	def make_array(x, char, 0), do: x
	def make_array(x, char,n), do: make_array(x++[char], char, n-1)

	def make_matrix(char, n, m), do: make_matrix([make_array(char, n)], char, n, m-1)
	def make_matrix(matrix, char, n, 0), do: matrix
	def make_matrix(matrix, char, n, m), do: make_matrix(matrix++[make_array(char, n)], char, n, m-1)
end
