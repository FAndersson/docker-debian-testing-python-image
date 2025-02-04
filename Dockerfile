# Docker image containing Python stuff based on base development image for
# Debian testing.

FROM fredrikandersson/debian-testing-dev-image-base:2025-02-03

RUN apt-get update --quiet --yes && apt-get install --quiet --yes \
    dvipng \
    pipenv \
    python3-full \
    python3-pip \
    python3-poetry \
    python3-numpy \
    python3-scipy \
    texlive-latex-extra \
    texlive-latex-recommended

# Create default user.
RUN useradd --create-home --shell /bin/bash fredrik
USER fredrik
WORKDIR /home/fredrik
