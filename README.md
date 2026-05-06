# binary-move-tablebase-scope

`binary-move-tablebase-scope` explores chess and game engines with a small Elixir codebase and local fixtures. The technical goal is to build an Elixir toolkit that studies tablebase behavior through layout fixtures, with stable geometry snapshots and local-only command execution.

## Use Case

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Binary Move Tablebase Scope Review Notes

`stale` and `baseline` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Highlights

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/binary-move-tablebase-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `position pressure` and `position pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `position pressure`, `move ordering`, `search width`, and `endgame risk`.

The added Elixir path is deliberately direct, with fixtures doing most of the explaining.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Future Work

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
