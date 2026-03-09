# Architecture

This template follows a simple, scalable structure:

- **App/** — app entry point and root composition
- **Core/** — reusable foundations (DI, networking, storage, logging, UI)
- **Features/** — feature modules (Views + ViewModels + feature-specific helpers)

## Dependency rule

Features may depend on Core.
Core should not depend on Features.

## DI

`AppContainer` is the single composition root:
- created in `App`
- passed down to feature ViewModels

Keep DI explicit and boring.
