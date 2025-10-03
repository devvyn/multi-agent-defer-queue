#!/bin/bash
#
# Basic Usage Examples - Multi-Agent Defer Queue
#

set -euo pipefail

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../scripts" && pwd)"

echo "=== Multi-Agent Defer Queue - Basic Examples ==="
echo ""

# Example 1: Smart routing with automatic classification
echo "Example 1: Automatic Classification & Routing"
echo "----------------------------------------------"

cat > /tmp/strategic-insight.md <<'EOF'
# Alternative Architecture for Agent Communication

We could explore using event sourcing instead of direct message passing.
This would provide better auditability and allow time-travel debugging.

Worth investigating when we have bandwidth for architectural changes.
EOF

echo "Message created: /tmp/strategic-insight.md"
echo ""
echo "Running: bridge-send-smart.sh --auto code \"Alternative Architecture\" strategic-insight.md"
echo ""
echo "Expected: Classified as strategic/eventual → deferred for weekly review"
echo ""

# Example 2: Manual defer with classification
echo "Example 2: Manual Defer"
echo "-----------------------"

cat > /tmp/optimization-idea.md <<'EOF'
# Query Optimization Opportunity

The pattern detection loop could be optimized with parallel processing.
Estimated 40% performance improvement.

Should implement when Project X performance work begins.
EOF

echo "Message created: /tmp/optimization-idea.md"
echo ""
echo "Running: defer-item.sh /tmp/optimization-idea.md --auto-classify"
echo ""
echo "Expected: Deferred with trigger monitoring for 'Project X'"
echo ""

# Example 3: Review deferred items
echo "Example 3: Review Deferred Strategic Items"
echo "------------------------------------------"
echo "Running: review-deferred.sh --category strategic"
echo ""
echo "Expected: Report showing all strategic items awaiting review"
echo ""

# Example 4: Trigger-based review
echo "Example 4: Condition-Based Review"
echo "---------------------------------"
echo "Running: review-deferred.sh --trigger 'project-X'"
echo ""
echo "Expected: All items waiting for Project X to start"
echo ""

# Example 5: Activate deferred item
echo "Example 5: Activate When Ready"
echo "------------------------------"
echo "# When Project X starts..."
echo "Running: activate-deferred.sh <item-id> --route code --priority HIGH"
echo ""
echo "Expected: Item promoted to active routing, sent to CODE agent"
echo ""

# Example 6: Age-based review
echo "Example 6: Review Aging Items"
echo "-----------------------------"
echo "Running: review-deferred.sh --older-than 30d"
echo ""
echo "Expected: Items deferred >30 days ago requiring re-evaluation"
echo ""

echo ""
echo "=== Advanced Patterns ==="
echo ""

# Example 7: Conditional deferral
echo "Example 7: Complex Trigger"
echo "-------------------------"

cat > /tmp/conditional-work.md <<'EOF'
# Cross-Project Optimization

This optimization applies when:
1. Project X is in production
2. Performance metrics show >1000 QPS
3. Budget allocated for optimization work

Defer until all conditions met.
EOF

echo "Message created with multiple trigger conditions"
echo "Running: defer-item.sh /tmp/conditional-work.md --auto-classify"
echo ""

# Example 8: Integration with monitoring
echo "Example 8: Monitoring Integration"
echo "---------------------------------"
echo "# Add to crontab:"
echo "*/30 * * * * /path/to/review-deferred.sh --auto-activate"
echo ""
echo "Expected: Automatic review every 30 min, items activated when conditions met"
echo ""

echo ""
echo "=== Classification Examples ==="
echo ""

# Example 9: Strategic classification
cat > /tmp/strategic.md <<'EOF'
# Framework Evolution Proposal

We should consider migrating to event-driven architecture for better scalability
and cross-project coordination. This would enable:
- Better auditability
- Time-travel debugging
- Easier integration

Long-term initiative, evaluate in Q2 planning.
EOF

echo "Strategic message (framework evolution)"
echo "Classification: strategic/eventual/collaborative → defer-strategic"
echo ""

# Example 10: Tactical classification
cat > /tmp/tactical.md <<'EOF'
# Algorithm Optimization

Current sorting algorithm is O(n²). Can optimize to O(n log n) with heap sort.
Estimated 40% performance improvement on large datasets.

Implement next sprint if time allows.
EOF

echo "Tactical message (implementation improvement)"
echo "Classification: tactical/soon/agent-capable → defer-tactical or agent-queue"
echo ""

# Example 11: Operational classification
cat > /tmp/operational.md <<'EOF'
# Cleanup Old Logs

Archive logs older than 90 days to save disk space.
Standard maintenance task, low priority.
EOF

echo "Operational message (routine maintenance)"
echo "Classification: operational/eventual/agent-capable → defer-operational"
echo ""

echo ""
echo "=== Integration Examples ==="
echo ""

# Example 12: With existing message queue
echo "Example 12: Message Queue Integration"
echo "-------------------------------------"
echo "# Instead of dead-letter queue:"
echo "if message_processing_fails:"
echo "    defer-item.sh failed-message.md --auto-classify"
echo ""

# Example 13: With event sourcing
echo "Example 13: Event Sourcing Integration"
echo "--------------------------------------"
echo "# Defer as event type:"
echo "append-event.sh defer \"Strategic insight deferred\" code /tmp/strategic.md"
echo ""

# Example 14: With workflow engine
echo "Example 14: Workflow Integration"
echo "--------------------------------"
echo "# Defer as workflow state:"
echo "workflow transition → DEFER_STATE"
echo "defer-item.sh workflow-task.md --auto-classify"
echo ""

echo ""
echo "=== Value Extraction Examples ==="
echo ""

# Example 15: Pattern detection
echo "Example 15: Pattern Detection from Deferred Items"
echo "-------------------------------------------------"
echo "# INVESTIGATOR agent scans defer queue:"
echo "for item in defer-queue/*/*.md; do"
echo "    extract_patterns \$item"
echo "done"
echo ""
echo "Expected: Patterns found even in 'not now' items"
echo ""

# Example 16: Collective memory
echo "Example 16: Collective Memory Accumulation"
echo "------------------------------------------"
echo "# Knowledge extraction:"
echo "knowledge-extract.sh"
echo ""
echo "Expected: Insights from active + deferred + archived → collective memory"
echo ""

echo ""
echo "=== Cleanup ==="
rm -f /tmp/strategic-insight.md
rm -f /tmp/optimization-idea.md
rm -f /tmp/conditional-work.md
rm -f /tmp/strategic.md
rm -f /tmp/tactical.md
rm -f /tmp/operational.md

echo ""
echo "✅ Examples complete!"
echo ""
echo "Next steps:"
echo "1. Try the scripts with your own messages"
echo "2. Set up monitoring integration (cron/LaunchAgent)"
echo "3. Review deferred items weekly"
echo "4. Watch your collective intelligence grow!"
