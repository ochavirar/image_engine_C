CC := gcc

CODE_FILES := main.c
OUTPUT_FILES := main.o

OUT_DIR := build
TARGET := $(OUT_DIR)/$(OUTPUT_FILES)
EXEC_FILE := $(OUT_DIR)/main


.PHONY: all compile link exec clean

all: $(TARGET_DIR) compile link clean
	echo "Build is complete"

$(OUT_DIR):
	mkdir -p $(OUT_DIR)
	echo "build folder was created."

compile: $(OUT_DIR)
	$(CC) -c $(CODE_FILES) -o $(TARGET)

link: $(TARGET)
	$(CC) -o $(EXEC_FILE) $(TARGET)

exec:
	./$(EXEC_FILE)

clean:
	rm -rf $(TARGET)