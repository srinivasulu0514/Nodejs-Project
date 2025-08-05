# NPM Artifactory Demo

A simple NPM package to demonstrate publishing to Artifactory.

## Setup

1. Install dependencies:
   ```bash
   npm install
   ```

2. Build the package:
   ```bash
   npm run build
   ```

3. Test the function:
   ```bash
   node test.js
   ```

4. Publish:
   ```bash
   export NPM_TOKEN=your_actual_token
   ./publish-to-artifactory.sh
   ```

Make sure you update `package.json` version if you're republishing.
