# 🎭 Personal Playwright E2E Testing Project

This repository contains a personal setup of Playwright for end-to-end testing, along with a GitHub Actions CI pipeline that runs tests on pull requests with specific labels or titles.

> ⚠️ **Notice:**  
> This project is for **personal learning and experimentation only**.  
> It is **not intended for public use, contribution, or production deployment**.

---

## 📚 Purpose

This repo serves as a sandbox for:

- Learning Playwright fundamentals
- Practicing CI/CD workflows with GitHub Actions
- Experimenting with PR-based test automation

---

## 🛠️ Features

- Playwright test setup using `@playwright/test`
- GitHub Actions workflow that:
  - Runs on pull requests to `main`
  - Only triggers if PR title includes `[e2e]` or has the label `run-playwright`

---

## 🚀 Running Locally

```bash
npm install
npx playwright install
npx playwright test
