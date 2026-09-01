# Executive Memo

## Decision
The reported “11% month-on-month recovery improvement” is **not substantiated as a sustained 12-month improvement** by the supplied data. The event history covers Jan 1–Aug 8, 2026 for most operational datasets, so August is incomplete and a literal 12-month claim cannot be reconstructed.

Under a conservative payment canonicalization, recovery changes are volatile: Feb -8.7%, Mar +11.9%, Apr -9.0%, May +5.3%, Jun -3.6%, Jul +4.7%, Aug -73.6% (partial). The +11% headline appears as a single monthly movement, not a persistent trend.

## Why
The largest reporting risk is payment integrity. Raw successful-payment value is about ₹1.342B; the conservative canonical value is about ₹0.973B, a ~27.4% gap. There are 3,745 repeated payment references, 1,681 references with multiple statuses and 3,407 references mapping to multiple accounts.

Historical-state data also requires repair: 30,191 status-history rows have recorded_at earlier than event_at, and current account status disagrees with latest history for 22,295 matched accounts. Agent identity and event borrower IDs are also inconsistent.

## Recommendation
Prioritize **better borrower targeting**, but do not commit the full ₹10 Cr immediately. Run a randomized, stratified targeting experiment first. The current observational data shows strategy conversion clustered around 1.22–1.33%, so it does not justify a causal lift or ROI claim.

Deploy the remaining capital only if the experiment demonstrates statistically credible incremental canonical recovery and the lower confidence bound on ROI clears the investment hurdle.

## Confidence
High confidence that the 11% headline is not a reliable sustained trend and that payment/data-integrity issues materially affect reported recovery. Low confidence in any causal estimate of targeting lift from the supplied observational data.
