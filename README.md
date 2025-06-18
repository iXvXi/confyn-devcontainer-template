Welcome! This repository contains a Development Container template for building powerful, code-aware AI agents on the **Confyn platform**.

This template provides a fully configured, containerized environment that includes the necessary tools, extensions, and Language Server Protocols (LSPs) to enable Confyn agents to intelligently read, understand, and modify your codebases.

## Features

-   **One-Click Setup:** Get a complete development environment running in minutes without installing Python, Docker, or any dependencies locally.
-   **Consistent Environment:** Ensures every developer on your team uses the exact same tools and configurations, eliminating "it works on my machine" problems.
-   **LSP-Powered Tools:** Comes pre-configured with Language Servers for Go and TypeScript, enabling Confyn's `lsp.*` tools to work out of the box.
-   **Seamless VS Code Integration:** Uses the full power of VS Code's remote development capabilities, whether you're running the container locally, on a remote server via SSH, or in a cloud service like GitHub Codespaces.
-   **Keeps Your Local Machine Clean:** All dependencies and tools are installed inside the container, not on your local machine.

## Prerequisites

1.  **Docker Desktop:** Must be installed and running on your local machine.
2.  **Visual Studio Code:** The editor where you'll work.
3.  **Dev Containers Extension:** The official Microsoft extension for VS Code. You can install it from the [VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).

## Getting Started

Follow these steps to apply this template to your own project:

1.  **Open Your Project:** Open the folder containing your project's code in VS Code.
2.  **Add Dev Container Files:**
    *   Open the Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P`).
    *   Type `Dev Containers: Add Development Container Configuration Files...` and select it.
    *   VS Code will show a list of available templates.

3.  **Select the Confyn Template:**
    *   In the template list, search for **"Confyn Agent Development Environment"**.
    *   *(If it's not in the main list yet)*: Choose **"From a Git Repository..."** and paste this URL: `https://github.com/{your-org}/confyn-devcontainer-template`
4.  **Customize (Optional):** VS Code may ask you to select a Python version. The default is `3.11`.
5.  **Reopen in Container:** VS Code will create a `.devcontainer` folder in your project and ask to reopen it inside the container. Click **"Reopen in Container"**.

That's it! VS Code will build the Docker container and configure your environment. This might take a few minutes the first time.

## Post-Setup Workflow

Once the container is running:

1.  Wait for the `post-create.sh` script to finish. You can watch its progress in the terminal log.
2.  Open the integrated terminal in VS Code (`Ctrl+`` or `Cmd+J`). This terminal is now a shell *inside* your container.
3.  Start the Confyn API server (assuming your project has one):
    ```bash
    # Example for a Poetry project
    poetry run uvicorn app.main:app --host 0.0.0.0 --port 8000
    ```
4.  You can now access your running Confyn services, including the Web UI, from your **local browser** at `http://localhost:<port>`. The ports are automatically forwarded from the container to your local machine.

## Customization

You can easily customize the environment after adding the template:
*   **Add more VS Code extensions:** Edit the `customizations.vscode.extensions` array in `.devcontainer/devcontainer.json`.
*   **Install more system packages or tools:** Add commands to `.devcontainer/post-create.sh`.

## Licensing

This Dev Container Template is licensed under the **MIT License**. You are free to use, modify, and distribute these configuration files as you see fit.

**Important Note:** The MIT license for this template applies **only to the files within this repository**. It does **not** apply to:
*   The **Confyn platform** itself, which is a closed-source product governed by its own license agreement.
*   Any **code or projects you create** inside the development environment provided by this template. Your own code remains under your chosen license.

## Feedback and Support

For issues or suggestions related to this template, please [open an issue](https://github.com/{your-org}/confyn-devcontainer-template/issues) in this repository. For support with the Confyn platform itself, please refer to the main Confyn documentation.
