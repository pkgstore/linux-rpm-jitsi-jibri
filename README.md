# Jibri

**Jibri** provides services for recording or streaming a Jitsi Meet conference.

It works by launching a Chrome instance rendered in a virtual framebuffer and capturing and encoding the output with ffmpeg. It is intended to be run on a separate machine (or a VM), with no other applications using the display or audio devices. Only one recording at a time is supported on a single jibri.

## Install

### Fedora COPR

```
$ dnf copr enable pkgstore/jitsi
$ dnf install -y jibri
```

### Open Build Service (OBS)

```
# Work in Progress
```

## Update

```
$ dnf upgrade -y jibri
```

## Remove

```
$ dnf erase -y jibri
$ dnf copr remove pkgstore/jitsi
```

## How to Build

1. Get source from [pagure.io](https://pagure.io/jitsi-rpm).
2. Write last commit SHA from [pagure.io](https://pagure.io/jitsi-rpm) to [CHANGELOG](CHANGELOG).
3. Modify & update source (and `*.spec`).
4. Build SRPM & RPM.
