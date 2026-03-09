# Conventions

## Files
- Keep `View.body` small.
- Move sections/components to `extension` blocks.

## Naming
- Sections: `*Section`
- Rows/components: `*Row`, `*Card`, `*Screen`

## State
- `ViewModel` is `@MainActor` + `ObservableObject`
- Prefer small, testable methods over giant `body` logic
