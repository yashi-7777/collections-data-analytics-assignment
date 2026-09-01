| Issue                            | Impact                                            | Treatment                                                        |
|:---------------------------------|:--------------------------------------------------|:-----------------------------------------------------------------|
| Duplicate payment references     | Potential recovery inflation                      | Reference-level canonicalization + quarantine                    |
| Multi-account payment references | Ambiguous attribution                             | Exclude from conservative recovery; investigate processor ledger |
| Conflicting payment statuses     | SUCCESS-only sums may overstate realized recovery | Use terminal status; retain full audit trail                     |
| recorded_at before event_at      | Historical ordering ambiguity                     | Normalize event vs ingestion semantics                           |
| Current status vs latest history | Historical status unreliable                      | Use point-in-time event history                                  |
| Non-unique employee_code         | Agent attribution risk                            | Keep agent_id as key                                             |
| Borrower/account mismatches      | Event attribution risk                            | Use account master borrower_id                                   |