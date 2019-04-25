FROM peaceiris/mkdocs-material:latest

LABEL "com.github.actions.name"="GitHub Actions for MkDocs and GitHub Pages"
LABEL "com.github.actions.description"="Build markdown documentation with Material for MkDocs and push to GitHub Pages with GitHub Actions."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/peaceiris/actions-mkdocs-gh-pages"
LABEL "homepage"="https://github.com/peaceiris/actions-mkdocs-gh-pages"
LABEL "maintainer"="peaceiris"

RUN apk add --no-cache \
    git \
    openssh-client

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
