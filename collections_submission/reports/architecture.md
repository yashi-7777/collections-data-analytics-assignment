# Production Architecture

Raw sources → Raw immutable storage → Staging/schema validation → Clean/entity resolution → Golden facts/dimensions → Features → Metrics → Dashboard.

Add orchestration, lineage, DQ tests, late-arrival handling, backfills, monitoring and anomaly alerts.
