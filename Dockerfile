# Use the official Code Server image
FROM  codercom/code-server:4.16.1

# Copy your .vsix extension file into the container
COPY ./my-extension.vsix /home/coder/

# Install the extension
RUN code-server --install-extension /home/coder/my-extension.vsix
