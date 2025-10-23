import { test, expect } from '../fixtures/axe-test';

test.describe('homepage', () => {
 test('example using custom fixture', async ({ page, makeAxeBuilder }) => {
  await page.goto('https://your-site.com/');

  const accessibilityScanResults = await makeAxeBuilder()
      // Automatically uses the shared AxeBuilder configuration,
      // but supports additional test-specific configuration too
      .analyze();

  expect(accessibilityScanResults.violations).toEqual([]);
 });
});

