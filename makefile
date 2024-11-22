# Variables
TARGET=README.md
SCRIPT=guessinggame.sh

all: $(TARGET)

$(TARGET): $(SCRIPT)
	echo "# Guessing Game" > $(TARGET)
	echo "Generated on: $$(date)" >> $(TARGET)
	echo "" >> $(TARGET)
	echo "## Project Details" >> $(TARGET)
	echo "- Total lines in guessinggame.sh: $$(wc -l < $(SCRIPT))" >> $(TARGET)

clean:
	rm -f $(TARGET)
