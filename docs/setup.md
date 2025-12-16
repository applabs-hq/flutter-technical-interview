## Setup

1. Option 1 is to clone to your local dev environment, we allow this fully, so long as you do all work within the shared meeting screen
2. Option 2 is to use a github codespace, this is more awkward for flutter and has free AI models but has been setup for you

```bash
cd app
flutter pub get
```

This will install all dependencies including the `timezone` package.

## Debugging

### if you are using codespaces

Run the `Run Flutter Web Server` debug task.

### if you are using your personal IDE

Run the `Run Flutter Web` debug task.

---

This should deploy and launch a Flutter web instance at a unique port forwarded URL.

If this doesn't auto launch, it is available in the debug console under the `ports` tab.

## Hot Reload

Hot reload does not work well with web and codespaces. You will need to refresh the page for changes to take effect.
