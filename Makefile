CC=gcc
SRC_FILE=main.c
BUILD_FILE=fima
SRC_PATH=src
BUILD_PATH=src

FLAGS=-Wall -Wextra -Werror -pedantic -std=c2x

all:
	@make build
	@make run

build:
	@echo [+] Starting Build...$(BUILD_FILE)
	@mkdir -p ./$(BUILD_PATH)
	@echo [+] Compiling...
	$(CC) $(LIBS) $(SRC_PATH)/$(SRC_FILE) -o $(BUILD_PATH)/$(BUILD_FILE) $(FLAGS)

run:
	@echo [+] Running...
	./$(BUILD_PATH)/$(BUILD_FILE)
