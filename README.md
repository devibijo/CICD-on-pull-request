# CI/CD-on-Pull-Request

This project demonstrates a robust CI/CD pipeline setup for a Node.js and TypeScript project using GitHub Actions. It includes automated linting, Playwright end-to-end testing, and artifact management, all triggered by pull requests and pushes to the main branch.

---

## Features

- **Automated Linting:** Ensures code quality and consistency using ESLint and TypeScript.
- **Playwright Testing:** Runs end-to-end tests with Playwright on every relevant code change.
- **Conditional Workflows:** Automation jobs run on:
  - Every push to the `main` branch
  - Pull requests with the `test` label
- **Artifact Upload:** Test reports are uploaded and retained for 30 days.
- **Reusable Composite Actions:** Common setup steps are centralized for maintainability.

---

## Workflow Overview

- **Lint Job:**  
  Checks code style and syntax on every push to `main` and on pull requests.
- **Automation Tests:**  
  Runs Playwright tests after linting, either on push to `main` or when a PR has the `test` label.

---

## Project Structure

```
.github/
  workflows/
    ci_pipeline.yml         # Main workflow definition
  setup-action/             # Composite action for setup steps
ci/
  lint_job.sh               # Shell script for linting
  playwright_job.sh         # Shell script for Playwright tests
package.json                # Project dependencies and scripts
```

---

## Usage

1. **Clone the repository:**

   ```sh
   git clone https://github.com/<your-username>/CICD-on-pull-request.git
   cd CICD-on-pull-request
   ```

2. **Install dependencies:**

   ```sh
   npm ci
   ```

3. **Run linting locally:**

   ```sh
   ./ci/lint_job.sh
   ```

4. **Run Playwright tests locally:**

   ```sh
   ./ci/playwright_job.sh
   ```

5. **CI/CD:**
   - On every push to `main`, or on PRs with the `test` label, the workflow will:
     - Lint your code
     - Run Playwright tests
     - Upload test reports as artifacts

---

## Customization

- **Change branch triggers:**  
  Edit the `branches` section in `.github/workflows/ci_pipeline.yml`.
- **Modify test or lint scripts:**  
  Update `ci/lint_job.sh` or `ci/playwright_job.sh` as needed.
- **Add more jobs:**  
  Extend the workflow YAML to include additional checks or deployment steps.

---

## Requirements

- Node.js (LTS recommended)
- npm
- GitHub repository with Actions enabled

---

## License

MIT

---

## Credits

- [GitHub Actions](https://github.com/features/actions)
- [Playwright](https://playwright.dev/)
- [ESLint](https://eslint.org/)
