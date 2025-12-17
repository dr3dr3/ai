FROM debian:bookworm-slim

LABEL maintainer="Andre Dreyer"

# Install Node.js, npm, git, bash, and fish
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    gnupg \
    git \
    bash \
    fish \
    && mkdir -p /etc/apt/keyrings \
    && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \
    && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_24.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends nodejs \
    && rm -rf /var/lib/apt/lists/*

# Install CLI tools in isolated directories to avoid dependency conflicts
RUN mkdir -p /opt/cli-tools/claude-code /opt/cli-tools/copilot /opt/cli-tools/gemini /opt/cli-tools/taskmaster

# Claude Code
RUN npm install --prefix /opt/cli-tools/claude-code @anthropic-ai/claude-code

# GitHub Copilot CLI
RUN npm install --prefix /opt/cli-tools/copilot @github/copilot

# Google Gemini CLI
RUN npm install --prefix /opt/cli-tools/gemini @google/gemini-cli

# TaskMaster.dev
RUN npm install --legacy-peer-deps --prefix /opt/cli-tools/taskmaster task-master-ai

# Add all CLI tools to PATH
ENV PATH="/opt/cli-tools/claude-code/node_modules/.bin:/opt/cli-tools/copilot/node_modules/.bin:/opt/cli-tools/gemini/node_modules/.bin:/opt/cli-tools/taskmaster/node_modules/.bin:${PATH}"

# Configure git user
RUN git config --global user.name "André Dreyer" && git config --global user.email "github@andredreyer.com"

# Set fish as default shell
ENV SHELL=/usr/bin/fish

ENTRYPOINT ["/usr/bin/fish"]
