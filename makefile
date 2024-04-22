# Makefile for converting resume.md to resume.txt and cleaning up the output

# Specify the source and target files
SOURCE = resume.md
TARGET = resume.txt

# Default target
all: $(TARGET)

# Rule for file conversion
$(TARGET): $(SOURCE)
	pandoc $(SOURCE) -o $(TARGET)
	sed -i 's/\\//g' $(TARGET)

# Clean target to remove the generated file
clean:
	rm -f $(TARGET)
