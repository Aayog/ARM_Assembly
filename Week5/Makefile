$(file): $(file).o
	ld -o $(file) $(file).o
$(file).o: $(file).s
	as -g -o $(file).o $(file).s
clean:
	rm *.o $(file)
