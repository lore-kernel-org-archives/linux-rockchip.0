Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ADB5C56208
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 22:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CK1KjFCHLecnM2sVb2ZAO5jyNORYrqDWS0L4WIZsquU=; b=0C4gdd4PCKOIJn
	yHEaRpVTnk34xD6c0GTn/O1WTDhlV4HvyqzkbynS8ojCrgPAPftZBUDy28IsmukdcZgfP/FWBazu3
	FSOwgFXtA5Ps7Pc8KvsdWCFvrKGXs3qSlIRHgKP1vLe3XeluClLY6fFmNxAiDBA3CdVdsOPLYhB9p
	XztzCd47OL6kK+g06Hg6EgjIJpEEX1j1n9zTxOpF2vNFqWhqDz1WyjQqClQd8Sadpnox4X9IbsTe7
	pmOwNSoOfr6rXmdLGnwErLl2HjXNqAFQGdcaopiijOmnV7aK0RaeKt+HXol/790G4zQ7O9edhamA1
	NsT6IvPOs1mGMlWEofMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws6Kq-00000006n0M-17g7;
	Thu, 06 Aug 2026 22:13:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws6Ko-00000006mz5-2Wsh
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 22:13:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EF9CC43D3B
	for <linux-rockchip@lists.infradead.org>; Thu,  6 Aug 2026 22:13:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4B531F00ACF
	for <linux-rockchip@lists.infradead.org>; Thu,  6 Aug 2026 22:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786054385;
	bh=vjzTiVXW2/y+MU8ujdi+EYr76HH3zaimBCpOT0o3bgI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=hLHo7vAfuR3iX5N3dSh/v5YiHmKofEzbCGMRnW5ZtjHIcnWMSdm/PGkpNgggjnE8o
	 ASNxZzhQ1mGUB4ChfjpQygQo6C54rznb63Nz2Wjd9rNLjMzFrrUJsCT9PebR4yFSaX
	 s0JEmzfQZgPGdSDoegb4zlDyT4KY3TqytVolY1caalzlSmAvBqjFYXWOPSoWJY4+0+
	 tfxiMuT83DM6M94FzDXpH07AxhvLifTlTcapKBUw97Lb17TlwpKrFAQe877W2pZS7K
	 O2/4Osr2CMF124x9Eh46GOTEwv2pRgovVlbdOTYo0wgvqfFtM0ufjq6VKLBhFL99+o
	 nukkIiuEloK0Q==
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5aeb2bc82ccso3367919e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Aug 2026 15:13:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Ro0DOnjYeiDSWG99SlNC3FiJJAt6mP/Kwcnqsp/jcNgFiVkxb8mv/SoOmknc2g6NKzXRf71XRYFJwuf4fQ59A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwGd6GdnAY4GIT+ujYnbFHQqpwuFRQNMxVYBz3muE3AP5VZElr5
	PaicyYv025RTUENMjPE+cl28Aot99bDhtGp+OFXcdx3gGUVHIahpggAmLC12Lt6VWc0hvfUWqSX
	GWA2BfOJOj0mdWhO2e5Z2PtPTxbDBHIM=
X-Received: by 2002:a05:651c:198f:b0:39b:b6d:59a1 with SMTP id
 38308e7fff4ca-39fbb0622a3mr22304141fa.3.1786054384637; Thu, 06 Aug 2026
 15:13:04 -0700 (PDT)
MIME-Version: 1.0
References: <20260803141028.710706-1-sjg@chromium.org>
In-Reply-To: <20260803141028.710706-1-sjg@chromium.org>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 7 Aug 2026 00:12:51 +0200
X-Gmail-Original-Message-ID: <CAD++jLn8nZT9a0Qe+wtk+2zJ5tPvHjAq4PDPt18ANWiyJPdXpw@mail.gmail.com>
X-Gm-Features: AUfX_my-q5AZNQnyrDKzTBxgtSjpIToNkuwuVSkTL2dNFQAFVD3IOuhBlGJ6384
Message-ID: <CAD++jLn8nZT9a0Qe+wtk+2zJ5tPvHjAq4PDPt18ANWiyJPdXpw@mail.gmail.com>
Subject: Re: [PATCH 0/2] pinctrl: rockchip: Two fixes for latent driver bugs
To: Simon Glass <sjg@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-gpio@vger.kernel.org, 
	Vladislav Leonov <vlad@zlab.su>, Jonas Karlman <jonas@kwiboo.se>, Fabio Estevam <festevam@nabladev.com>, 
	Jeffy Chen <jeffy.chen@rock-chips.com>, huang lin <hl@rock-chips.com>, 
	linux-kernel@vger.kernel.org
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU2ltb24sCgpPbiBNb24sIEF1ZyAzLCAyMDI2IGF0IDQ6MTDigK9QTSBTaW1vbiBHbGFzcyA8
c2pnQGNocm9taXVtLm9yZz4gd3JvdGU6Cgo+IFRoaXMgc2VyaWVzIGNvbnRhaW5zIHR3byBzbWFs
bCBmaXhlcyBmb3IgcHJlLWV4aXN0aW5nIGlzc3VlcyBpbiB0aGUKPiBSb2NrY2hpcCBwaW5jdHJs
IGRyaXZlciwgZm91bmQgYnkgdGhlIHNhc2hpa28gQUkgcmV2aWV3IG9mIG15IFJWMTEwNgo+IHNl
cmllcy4KPgo+IFRoZSBmaXJzdCBtYWtlcyB0aGUgU29DLWRhdGEgY2FsY3VsYXRpb24gc2FmZSB3
aGVuIHRoZSBwcm9iZSBydW5zCj4gbW9yZSB0aGFuIG9uY2UgZHVlIHRvIGEgcHJvYmUgZGVmZXJy
YWw6IHRoZSBwaW4gY291bnQgY3VycmVudGx5Cj4gYWNjdW11bGF0ZXMgYWNyb3NzIHJ1bnMsIHNo
aWZ0aW5nIGV2ZXJ5IGJhbmsncyBwaW4gYmFzZS4gVGhlIHNlY29uZAo+IGFsaWducyB0aGUgUlYx
MTAzQiBkcml2ZS10eXBlIG92ZXJyaWRlIGluIHRoZSBnZXQgcGF0aCB3aXRoIHRoZSBzZXQKPiBw
YXRoLCB3aGljaCByZXN0cmljdHMgaXQgdG8gYmFuayAyLgo+Cj4gVGhlIGZpcnN0IGZpeCBpcyB0
ZXN0ZWQgb24gYSBMdWNrZm94IFBpY28gTWluaSBCIGJ5IGZvcmNpbmcgdGhlCj4gcHJvYmUgdG8g
ZGVmZXIgb25jZTogd2l0aG91dCB0aGUgZml4IHRoZSBzZWNvbmQgcHJvYmUgZG91YmxlcyB0aGUK
PiBwaW4gY291bnQgYW5kIG5vIEdQSU8gYmFuayBjb21lcyB1cCwgd2hpbGUgd2l0aCBpdCB0aGUg
dmFsdWVzIGFyZQo+IHJlY2FsY3VsYXRlZCBpZGVudGljYWxseSBhbmQgYWxsIGJhbmtzIHdvcmsu
IFRoZSBzZWNvbmQgaXMgYQo+IGJlaGF2aW91cmFsIG5vLW9wIHVudGlsIGRyaXZlLXN0cmVuZ3Ro
IGRlY29kaW5nIGlzIGFkZGVkIHRvIHRoZSBnZXQKPiBwYXRoLCBzbyBpdCBpcyB2ZXJpZmllZCBi
eSBpbnNwZWN0aW9uIGFnYWluc3QgdGhlIHNldCBwYXRoLgoKUGF0Y2hlcyBsb29rcyBnb29kIGFu
ZCB0aGUgUm9ja2NoaXAgbWFpbnRhaW5lcnMgaGF2ZW4ndApjb21tZW50ZWQgb24gdGhlIG90aGVy
IHdlZWstb2xkIHBhdGNoZXMgeWV0IHNvIEkgYXBwbGllZAp0aGVzZSB0d28gcGF0Y2hlcy4KCklm
IHRoZSBtYWludGFpbmVycyBoYXZlIGlzc3VlcyB3aXRoIHRoZW0gSSBjYW4gcHVsbCB0aGVtIG91
dC4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
