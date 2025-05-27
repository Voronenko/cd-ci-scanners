FROM node:18.15.0

RUN apt update -yq && apt install -yq python3-pip git git-lfs && \
    pip install --no-input semgrep

RUN  npm install -g snyk &&  \
     npm install mega-linter-runner -g &&\		
     npm install -g eslint &&  \
     npm install -g @typescript-eslint/eslint-plugin &&\
     npm install -g eslint-plugin-unused-imports && \
     npm install -g @typescript-eslint/parser && \
     npm install -g @typescript-eslint/eslint-plugin@latest --save-dev &&\
     npm install -g @microsoft/eslint-formatter-sarif --save-dev &&\
     npm install -g sarif-junit@latest
