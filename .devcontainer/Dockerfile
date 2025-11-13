FROM node:alpine

LABEL maintainer="Andre Dreyer"

# Dependencies for my dotfiles and work setup
RUN apk add --no-cache vim nushell fish starship stow git gum font-fira-code-nerd

# Claude Code
RUN npm install -g @anthropic-ai/claude-code

# Task Master .dev (MCP)
RUN npm install -g task-master-ai

# Install git and configure user
RUN git config --global user.name "André Dreyer" && git config --global user.email "github@andredreyer.com"

# Set fish as default shell
ENV SHELL=/usr/bin/fish

ENTRYPOINT ["/usr/bin/fish"]
