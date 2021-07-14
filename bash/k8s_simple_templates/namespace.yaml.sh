#!/usr/bin/env bash
set -o errexit -o nounset -o pipefail
cat <<EOF
apiVersion: v1
kind: Namespace
metadata:
  name: ${NAMESPACE}
  labels:
    team: ${TEAM}
EOF
