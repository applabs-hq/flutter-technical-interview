FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Install system deps Flutter commonly needs
RUN apt-get update && apt-get install -y \
  curl git unzip xz-utils zip \
  libglu1-mesa \
  && rm -rf /var/lib/apt/lists/*

# Install Flutter SDK
ENV FLUTTER_HOME=/opt/flutter
RUN git clone https://github.com/flutter/flutter.git ${FLUTTER_HOME} --depth 1 -b stable

# Put flutter on PATH for all users
ENV PATH="${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin:${PATH}"

# Pre-cache basics to reduce first-run cost
RUN flutter --version && flutter config --enable-web && flutter precache --web

# Give non-root user access to Flutter directory
RUN chown -R vscode:vscode ${FLUTTER_HOME}