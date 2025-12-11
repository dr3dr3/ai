FROM debian:bookworm-slim

LABEL maintainer="Andre Dreyer"

# Install Node.js, npm, git, and fish
RUN apt-get update && apt-get install -y --no-install-recommends \
    nodejs \
    npm \
    git \
    fish \
    && rm -rf /var/lib/apt/lists/*

# Claude Code
RUN npm install -g @anthropic-ai/claude-code

# Continuedev CLI
RUN npm i -g @continuedev/cli

# Task Master .dev (MCP)
RUN npm install -g --legacy-peer-deps task-master-ai

# Configure git user
RUN git config --global user.name "André Dreyer" && git config --global user.email "github@andredreyer.com"

# Set fish as default shell
ENV SHELL=/usr/bin/fish

ENTRYPOINT ["/usr/bin/fish"]
