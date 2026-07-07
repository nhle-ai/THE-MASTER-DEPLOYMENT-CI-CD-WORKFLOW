name: Content Integrity & Garrison Validation
on:
  push:
    branches: [ "main", "content/*", "ops/*", "guild/*" ]
  pull_request:
    branches: [ "main" ]

jobs:
  forensic-audit:
    runs-on: ubuntu-latest
    steps:
    - name: Checkout Code Architecture
      uses: actions/checkout@v4

    - name: Audit Structural Placeholders & SECULAR CLOAKS
      run: |
        echo "Initializing Forensic System Audit..."
        # Critical Stop: Eradicate un-filled development indicators and empty metadata templates
        if grep -r "INSERT_TEXT_HERE" ./curriculum-assets/ || grep -r "Lorem Ipsum" ./curriculum-assets/; then
          echo "CRITICAL DEPLOYMENT FAILURE: Unresolved development placeholders detected."
          exit 1
        fi

    - name: Enforce Identity & Purpose Formatting Constraints
      run: |
        echo "Verifying Visual Zoning Configurations..."
        # Enforce the Bestseller 7-Step Scannability Standard: Every markdown asset must include high-impact horizontal rule breaklines
        for file in ./curriculum-assets/**/*.md; do
          if ! grep -q "---" "$file"; then
            echo "WARNING: $file fails our high-impact scannability protocol. Rule breaklines are missing."
          fi
        done

    - name: Verify AI Garrison Identity Integrity
      run: |
        echo "Auditing Agent Allocation Protocols..."
        # Ensure the master system path contains our version-locked AI Team Registry file
        if [ ! -f ./internal-governance/ai-garrison-registry.md ]; then
          echo "CRITICAL SYSTEM FAILURE: Active Garrison Mapping Registry has been compromised or deleted."
          exit 1
        fi
        echo "Systems Audit Complete. Codebase passes all security and content perimeters."
