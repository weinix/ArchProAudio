# ArchProAudio Makefile
# Professional audio system management utilities

.PHONY: help smt-disable smt-enable smt-status cpu-gov-performance cpu-gov-status rtcqs clean

help:
	@echo "ArchProAudio - Professional Audio Management"
	@echo "Available targets:"
	@echo "  smt-disable          - Disable SMT for audio performance"
	@echo "  smt-enable           - Enable SMT for general computing"
	@echo "  smt-status           - Show current SMT status"
	@echo "  cpu-gov-performance  - Set CPU governor to performance"
	@echo "  cpu-gov-status       - Show current CPU governor"
	@echo "  rtcqs                - Run audio configuration check"
	@echo "  clean                - Clean temporary files"

smt-disable:
	@if [ "$$(id -u)" -ne 0 ]; then \
		echo "SMT disable requires root privileges. Using sudo..."; \
		echo "off" | sudo tee /sys/devices/system/cpu/smt/control; \
	else \
		echo "Disabling SMT for improved audio performance..."; \
		echo "off" > /sys/devices/system/cpu/smt/control; \
	fi
	@echo "SMT disabled. Reboot recommended for full effect."

smt-enable:
	@if [ "$$(id -u)" -ne 0 ]; then \
		echo "SMT enable requires root privileges. Using sudo..."; \
		echo "on" | sudo tee /sys/devices/system/cpu/smt/control; \
	else \
		echo "Enabling SMT for general computing performance..."; \
		echo "on" > /sys/devices/system/cpu/smt/control; \
	fi
	@echo "SMT enabled. Reboot recommended for full effect."

smt-status:
	@echo "Current SMT status:"
	@cat /sys/devices/system/cpu/smt/control

cpu-gov-performance:
	@if [ "$$(id -u)" -ne 0 ]; then \
		echo "Setting CPU governor to performance requires root privileges. Using sudo..."; \
		echo "performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; \
	else \
		echo "Setting CPU governor to performance..."; \
		echo "performance" > /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; \
	fi
	@echo "CPU governor set to performance."

cpu-gov-status:
	@echo "Current CPU governor:"
	@cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

rtcqs:
	@echo "Running audio configuration check..."
	@cd rtcqs && ./src/rtcqs/rtcqs.py

clean:
	@echo "Cleaning temporary files..."
	@find . -name "*.tmp" -delete 2>/dev/null || true
	@echo "Clean complete."