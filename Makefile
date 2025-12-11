.PHONY: install-git-aliases install clean

install-git-aliases:
	@echo "Adding git aliases to ~/.bashrc..."
	cat bash/git-aliases.sh >> ~/.bashrc
	@echo "✓ Git aliases added!"
	bash -c "source ~/.bashrc && echo '✓ Configuration reloaded!'"
install: install-git-aliases

help:
	@echo "Available commands:"
	@echo "  make install-git-aliases  - Add git aliases to .bashrc"
	@echo "  make help                 - Show this message"
