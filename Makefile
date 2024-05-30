SRC = src/*.hs

NAME = ft_ality

GRAMMAR = assets/sf6_ryu_modern.gmr

COMPILE_INTO = obj

all: build run

build:
	mkdir -p $(COMPILE_INTO)
	ghc -outputdir $(COMPILE_INTO) -o $(NAME) $(SRC)

run:
	./$(NAME) $(GRAMMAR)
	
clean:
	rm $(NAME)

fclean: clean
	rm $(COMPILE_INTO)/*
	rmdir $(COMPILE_INTO)