set -euo pipefail
export VITE_BASE_URL=./
# Original: Validate client and server entries
set -euo pipefail
test "$(calcit --version)" = "$EXPECTED_CALCIT"
calcit calcit.cirru fix --workflow strict --verify --format json \
  | jq -e '.data.workflow.status == "passed" and .diagnostics == []'
calcit calcit.cirru --check-only --keep-going
calcit calcit.cirru --entry server --check-only --keep-going
calcit calcit.cirru --check-only \
  --ns app.client --ns app.comp.container --ns app.comp.history \
  --ns app.comp.login --ns app.comp.navigation --ns app.comp.plan \
  --ns app.comp.profile --ns app.comp.today --ns app.config \
  --ns app.schema --ns app.style --ns app.twig.container \
  --ns app.twig.user --ns app.updater --ns app.updater.operation \
  --ns app.updater.plan --ns app.updater.router \
  --ns app.updater.session --ns app.updater.user --ns app.util \
  --summary-only --format json
calcit calcit.cirru --entry server --check-only \
  --ns app.config --ns app.schema --ns app.server \
  --ns app.twig.container --ns app.twig.user --ns app.updater \
  --ns app.updater.operation --ns app.updater.plan \
  --ns app.updater.router --ns app.updater.session \
  --ns app.updater.user \
  --summary-only --format json
# Original: Build web and server artifacts
set -euo pipefail
yarn build
calcit calcit.cirru --entry server ir
mkdir -p dist-server
cp js-out/program-ir.cirru dist-server/compact.cirru
cp calcit.cirru deps.cirru package.json dist-server/
