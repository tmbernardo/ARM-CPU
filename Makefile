OBJS = sum_array_a.o find_max_a.o fib_iter_a.o fib_rec_a.o find_str_a.o

driver :
	as -o sum_array_a.o sum_array_a.s
	as -o find_max_a.o find_max_a.s
	as -o fib_iter_a.o fib_iter_a.s
	as -o fib_rec_a.o fib_rec_a.s

clean:
	rm -rf ${OBJS}
