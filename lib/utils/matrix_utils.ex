defmodule Matrix.Utils do
	# Matrix.Utils.make_array creates array of N length, populated with `char` in each entry
	def make_array(char,n), do: make_array([char], char,n-1)
	def make_array(x, char, 0), do: x
	def make_array(x, char,n), do: make_array(x++[char], char, n-1)

	# Matrix.Utils.make_matrix merely calls make_array M times
	def make_matrix(char, n, m), do: make_matrix([make_array(char, n)], char, n, m-1)
	def make_matrix(matrix, char, n, 0), do: matrix
	def make_matrix(matrix, char, n, m), do: make_matrix(matrix++[make_array(char, n)], char, n, m-1)
end
