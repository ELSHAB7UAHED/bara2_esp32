# Makefile for ESP32 Project - bara2
# Build automation for ESP32 firmware

.PHONY: all clean build upload monitor release help

# Default target
TARGETS = esp32dev esp32-c3 esp32-s3

# Default target
all: build

# Install PlatformIO
install:
	@echo "Installing PlatformIO Core..."
	pip install platformio

# Clean build artifacts
clean:
	@echo "Cleaning build artifacts..."
	cd esp32_project && pio run --target clean

# Build for all targets
build: install
	@echo "Building for all ESP32 targets..."
	@for target in $(TARGETS); do \
		echo "Building $$target..."; \
		cd esp32_project && pio run --environment $$target; \
		echo "✓ Built $$target successfully"; \
	done

# Build specific target
build-one:
	@echo "Building $(TARGET)..."
	cd esp32_project && pio run --environment $(TARGET)

# Upload firmware to device
upload: build
	@echo "Uploading firmware to device..."
	cd esp32_project && pio device monitor || pio run --target upload

# Upload to specific target
upload-one: build-one
	@echo "Uploading $(TARGET) to device..."
	cd esp32_project && pio device monitor || pio run --target upload --environment $(TARGET)

# Monitor serial output
monitor:
	@echo "Starting serial monitor..."
	cd esp32_project && pio device monitor

# Create release package
release: build
	@echo "Creating release package..."
	mkdir -p release
	@for target in $(TARGETS); do \
		cp esp32_project/.pio/build/$$target/firmware.bin release/bara2_$$target.bin; \
		cp esp32_project/.pio/build/$$target/firmware.elf release/bara2_$$target.elf; \
	done
	tar -czf release/bara2_firmware.tar.gz -C release *.bin *.elf
	@echo "Release package created: release/bara2_firmware.tar.gz"

# Run tests
test: install
	@echo "Running tests..."
	cd esp32_project && pio test

# Show help
help:
	@echo "ESP32 Project - bara2 Build System"
	@echo ""
	@echo "Available targets:"
	@echo "  all          - Build for all targets (default)"
	@echo "  install      - Install PlatformIO Core"
	@echo "  clean        - Clean build artifacts"
	@echo "  build        - Build for all ESP32 variants"
	@echo "  build-one    - Build specific target (use TARGET=target_name)"
	@echo "  upload       - Upload firmware to device"
	@echo "  upload-one   - Upload to specific target"
	@echo "  monitor      - Start serial monitor"
	@echo "  release      - Create release package"
	@echo "  test         - Run tests"
	@echo "  help         - Show this help"
	@echo ""
	@echo "Examples:"
	@echo "  make TARGET=esp32dev build-one"
	@echo "  make TARGET=esp32-c3 upload-one"
	@echo "  make clean all"