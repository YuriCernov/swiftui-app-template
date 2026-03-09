# SwiftUI App Template

**Production-ready SwiftUI app starter** — clean structure, DI, networking, storage, and a polished Home screen.

✅ Use this repo as a GitHub **Template** and start new apps with a solid foundation.

---

## What's included

- **SwiftUI + MVVM** (scalable folder structure)
- **AppContainer (DI)** — explicit, easy to extend
- **Networking layer** — `APIClient + Endpoint + APIError` (async/await)
- **Local storage** — `KeyValueStore` + `UserDefaultsStore`
- **Reusable UI** — `AppPrimaryButtonStyle`
- **Starter Home screen** — counter + note persistence + navigation

---

## Quick start

1. Click **Use this template** on GitHub (or `gh repo create --template ...`)
2. Open the project in Xcode: `SwiftUIAppTemplate.xcodeproj`
3. Run (⌘R)

---

## Recommended rename (when starting a real app)

- Rename the Xcode project & targets
- Search & replace: `SwiftUIAppTemplate` → `YourAppName`
- Update bundle id & display name

---

## Structure

SwiftUIAppTemplate/
App/
Core/
Core/DI/
Core/Networking/
Core/Storage/
Core/Logging/
Core/UI/
Features/
Features/Home/
Docs/

---

## Roadmap (optional)

- [ ] GitHub Actions CI (build + tests)
- [ ] SwiftLint
- [ ] Example feature module template
- [ ] Snapshot testing template

---

## License

MIT
