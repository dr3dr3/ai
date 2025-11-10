FROM node:alpine

LABEL maintainer="Andre Dreyer"

RUN apk add --no-cache fish starship stow git gum font-fira-code-nerd

# Claude Code
RUN npm install -g @anthropic-ai/claude-code

# Continue.dev
RUN npm install -g @continuedev/cli

# Task Master .dev (MCP)
RUN npm install -g task-master-ai

ENV SHELL=/usr/bin/fish

ENTRYPOINT ["/usr/bin/fish"]

VOLUME ["/workspace/local"]