# Piper packages

Here is nodes collection for Piper.

# Ho to release

```
git tag 1.0.1
git push origin 1.0.1
git tag latest
git push origin latest
git tag -f latest 1.0.1
git push origin latest --force
```

Go to https://www.jsdelivr.com/tools/purge

Put `https://cdn.jsdelivr.net/gh/breslavsky/piper-packages@latest/packages/gpt4free.yaml`
