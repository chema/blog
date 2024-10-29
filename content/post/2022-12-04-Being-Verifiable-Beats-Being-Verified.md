---
date: "2022-12-04T00:00:00Z"
image: /public/img/greencheckmarktable.jpg
images:
  - /public/img/greencheckmarktable.jpg
title: Being Verifiable Beats Being Verified
post: Being Verifiable Beats Being Verified
---

{{< figure src="/public/img/greencheckmarktable.jpg" caption="Green Check Mark on a White Table" height="60%" width="auto" >}}

It goes without saying that knowing that the person you're talking to is *actually* the person you *think* you're talking to is important. That is why Twitter created the infamous verified blue check mark: People wanted an assurance that the Twitter account of a particular government agency or their favorite celebrity was legit and not some dude in a basement impersonating them.

As we move on from this particular walled garden, knowing who you're actually talking to remains important, maybe even more so. On the fediverse (where Mastodon lives), there's a plethora of users flaunting blue check marks, but without a verification authority like on Twitter, they lack the value of the original incarnation. Even the third parties that will "verify" you depend on your Twitter verification or presence.<!--more-->

Last month, in a rare moment of clarity, it became clear to me that instead of replicating the model of third-party verification that so quickly fell apart, the fediverse should instead pursue distributed account verifiability so anyone can verify an identity.

Public key encryption is really good at this; Signal and Proton Mail already do it transparently. If you’re savvy enough to have a PGP key, you can do it right now with [Keyoxide](https://keyoxide.org/) (and [Keybase](https://keybase.io/), although this one is looking more and more like abandonware).

Keyoxide's approach is elegant: You self-create a digital identity with OpenPGP (a cryptographic key pair) and annotate it with proofs of other online identities (domain names, websites, social networks, &c). You share the public part of the key widely and this is what any Keyoxide server, *but also anyone with your public key*, can use to verify your various identities. In other words, verifiability does not require or depend on Keyoxide. If your accounts are ever hijacked, you can update the key accordingly. If you lose access to your email, you can revoke the entire identity permanently.

This sort of distributed verification solution eliminates the need for central verification authorities entirely. Each fediverse/Mastodon server could use it to verify not just websites, but emails, domain names, social network accounts, &c.

A convention around verifiability has already appeared: the green check mark. Keyoxide and Mastodon both use it, so [I've adopted it as well](https://social.sanfranciscan.org/@chema) on my profile page. To me, the green check mark denotes something more powerful than being verified: being verifiable.

I hope we can move on from relying on third parties to verify our identities. We've got the tools to do it, so let's use them.

{{< figure src="/public/img/mykeyoxide.png" caption="My Keyoxide Profile" height=600px link="https://keyoxide.org/chema@sanfranciscan.org" >}}

What my [Keyoxide profile](https://keyoxide.org/chema@sanfranciscan.org) looks like right now and my current OpenGPG key notations:

    proof@ariadne.id=https://twitter.com/elsanfranciscan/status/1594168491531063296
    proof@ariadne.id=dns:sanfranciscan.org?type=TXT
    proof@ariadne.id=https://social.sanfranciscan.org/@chema
    proof@ariadne.id=https://gist.github.com/chema/9e6feb9d9485237cfe96eda41deb96a0
