# GitHub Repo Pusher - Design Philosophy

## Chosen Design Approach: **Modern Developer Workspace**

### Design Movement
**Minimalist Brutalism with Developer Ergonomics** — Clean, functional interfaces inspired by professional development tools (VS Code, GitHub Desktop) combined with modern SaaS polish. The design prioritizes clarity, efficiency, and a sense of technical competence.

### Core Principles
1. **Clarity Over Decoration** — Every visual element serves a functional purpose. No unnecessary ornamentation.
2. **Progressive Disclosure** — Complex workflows broken into digestible steps. Users see only what they need at each stage.
3. **Developer Empathy** — Familiar patterns from GitHub, Git CLI, and code editors. Keyboard-friendly, clear error messages.
4. **Confidence Through Feedback** — Real-time status updates, clear success/error states, and progress indicators that build trust.

### Color Philosophy
- **Primary: Deep Slate Blue** (`oklch(0.35 0.15 260)`) — Professional, trustworthy, associated with code and GitHub.
- **Accent: Vibrant Emerald** (`oklch(0.65 0.2 140)`) — Represents "go," success, and forward momentum.
- **Background: Off-White** (`oklch(0.98 0.001 0)`) — Clean, reduces eye strain during extended use.
- **Text: Charcoal** (`oklch(0.25 0.01 0)`) — High contrast, readable in all contexts.
- **Success: Emerald** — Matches accent, signals completion.
- **Error: Coral Red** (`oklch(0.6 0.2 25)`) — Warm, approachable error state.

### Layout Paradigm
**Asymmetric Two-Column Layout** — Left sidebar for navigation/status, right panel for primary content. Mimics IDE layouts developers are familiar with. Responsive: stacks on mobile.

### Signature Elements
1. **Terminal-Inspired Input Fields** — Monospace font, subtle border, focus state with glow effect.
2. **Step Indicators** — Numbered circles showing progress through the workflow.
3. **Status Cards** — Compact, scannable cards showing repository info, file counts, and push status.

### Interaction Philosophy
- **Instant Feedback** — Buttons respond immediately with visual feedback (scale, color shift).
- **Keyboard Support** — Tab navigation, Enter to submit, Escape to cancel.
- **Non-Blocking Notifications** — Toast notifications for success/errors that don't interrupt workflow.
- **Drag & Drop** — Intuitive folder upload via drag-and-drop or file picker.

### Animation
- **Entrance Animations** — Subtle fade-in + slide-up (200ms) for modals and cards.
- **Button Interactions** — Scale down (0.97) on click, 100ms ease-out.
- **Progress Indicators** — Smooth linear progress bar during upload/push operations.
- **Status Transitions** — Fade between states (loading → success/error) in 150ms.

### Typography System
- **Display Font: IBM Plex Mono** (for code/terminal aesthetic) — Headers, labels, monospace inputs.
- **Body Font: Inter** (modern, readable) — Descriptions, helper text, UI labels.
- **Hierarchy:**
  - H1: 32px, 700 weight, Plex Mono (page title)
  - H2: 24px, 600 weight, Plex Mono (section headers)
  - Body: 14px, 400 weight, Inter (descriptions)
  - Small: 12px, 400 weight, Inter (helper text)

### Brand Essence
**"Git Made Effortless"** — For developers who want to push code to GitHub without leaving their browser. Efficient, trustworthy, and developer-first.

**Personality Adjectives:** Efficient, Trustworthy, Approachable.

### Brand Voice
- **Headlines:** Action-oriented, technical but friendly. Examples:
  - "Push Your Code in Three Steps"
  - "Your Repository Awaits"
- **CTAs:** Direct, confident. Examples:
  - "Create Repository & Push"
  - "Connect GitHub"
- **Microcopy:** Clear, jargon-light. Examples:
  - "Paste your GitHub Personal Access Token (with repo permissions)"
  - "Upload your project folder or drag it here"

### Wordmark & Logo
**Logo Concept:** A stylized Git branch icon (fork symbol) merging into a checkmark, rendered in Deep Slate Blue with Emerald accent on the checkmark. Modern, geometric, instantly recognizable.

### Signature Brand Color
**Deep Slate Blue** (`oklch(0.35 0.15 260)`) — Unmistakably professional, tied to development tools and GitHub's visual language.

---

## Style Decisions (Applied During Development)
- Monospace font (IBM Plex Mono) for all code/token inputs to reinforce technical context.
- Emerald accent used sparingly for CTAs and success states to draw attention without overwhelming.
- Subtle shadows (0 4px 12px rgba(0,0,0,0.08)) on cards for depth without heaviness.
- Rounded corners: 8px for cards, 4px for inputs — functional, not decorative.
