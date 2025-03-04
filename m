Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACF6CC021B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 19:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WapLJYFIvUK56p2FM/MlQjH8/1JGi6BoLnfCXt49tQ=; b=rbwtwETSL5bSVC
	z3Jj0eIVK592ABb48H91tuJPAEo67nrkdyQq4u/DpB0+12WXo4+N6XMwD6asZ8Qv5wAjMAcG05kjd
	oFMX9IraVhep3mBWs2xEIxHaU9nQfXC+FJi+YnO0ytGRj1BZso+vlcdsYLGpmRDyMl7b64hBNRhsr
	k/cqF7DJ5hua8pCtJ5Lvz7uc5rBffrzyGhZ5Wq9I/eWHjKPRIscyz2MLe9HvLeqgRQCGtoxjmNHTI
	B7hEW4zPLMR+Y1Pbk89DKv/AEzv9rD5dTW3/JrbwBsPmlQQY1zr+v6Imy78yQLDm0WKHBiLJj+XlU
	cKLAv4Lj0fxLZXi00gWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpY67-000000063Km-1iO5;
	Tue, 04 Mar 2025 19:38:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpWzK-00000005qLk-0KyR;
	Tue, 04 Mar 2025 18:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Rx3ABjWk1ldP5FCol6X6uLC9GxswBZMZjKTR2QA7emY=; b=U1QHWCT9UD8B5CFoYhbQgwOvsF
	OOKGwJGGFZqykpEBZCeKHycT6lngMmBvJ5vbJ03Z7lsGsDBznVTQST/1zQL18qCDqAzP+ImzogFHa
	cc/tNE6MeW59JiTn9y2rR3Jcg/7psRvSLpMxfxFnRY3Eqn4q0fCNWZu2yj1WgLwl3M5rA+/SVMpTp
	1/Mbvvqf9tRei7TBZhgfDNKkCIcgtvxplRB3+lTt4PDbPTfTVu7N+MJJQq4zCgzLk7uQTLGCuk55k
	0pZVOZ7MNMvhrjPGPbIVAHQYzwSuBQ2XdsxMceuMA3JDlIh3zpkvOaI6LqcTuEgjMIheV6KgKbgg4
	OFD+MdTQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpWzG-000000009vl-2ZIS;
	Tue, 04 Mar 2025 18:27:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Rx3ABjWk1ldP5FCol6X6uLC9GxswBZMZjKTR2QA7emY=; b=NnwGEh6AY17SgydLVqzuydkcBe
	jteeXwmvTz7HIE32jeBKVj3KCJF8qYd8Izu3NvV6ORUZEGcWgIFUaA13CMp5L4My6GAaS9AH0/dof
	GU99zZRbYbpiSAVjmL79REoXvj4bW50wcp9pVtYs8Upj3tDRuuNrmz0Ab26iwZpw2+FKkUTyuiF2Q
	1HbV4v0wuXy8as4HO56T7BdhU5udPybpBKcjRj8ahSOZSLJpkR7eC8PYoh0F3oi7UoHtoJZblRDuB
	nlkwGP46Iu5mQq8pp/kFEjcG5pWhjCjuV1Q8ADcwsBEL7r6nGzIPz6TvwcrBHirL/7SIXNaTvrq6y
	B0khax1A==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tpWz9-0005NR-IB; Tue, 04 Mar 2025 19:27:19 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Yao Zi <ziyao@disroot.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/7] rockchip: Add support for leds and user button on
 Radxa E20C
Date: Tue, 04 Mar 2025 19:27:18 +0100
Message-ID: <8941439.NyiUUSuA9g@diego>
In-Reply-To: <03c34bdf-d470-4c99-bb06-0eb7496465a3@kwiboo.se>
References: <20250228064024.3200000-1-jonas@kwiboo.se>
 <174108970986.65436.4272591414898454986.b4-ty@sntech.de>
 <03c34bdf-d470-4c99-bb06-0eb7496465a3@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_182726_812038_C83F1CC5 
X-CRM114-Status: GOOD (  19.36  )
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

QW0gRGllbnN0YWcsIDQuIE3DpHJ6IDIwMjUsIDE5OjEzOjEwIE1FWiBzY2hyaWViIEpvbmFzIEth
cmxtYW46Cj4gSGkgSGVpa28sCj4gCj4gT24gMjAyNS0wMy0wNCAxMzowMiwgSGVpa28gU3R1ZWJu
ZXIgd3JvdGU6Cj4gPiAKPiA+IE9uIEZyaSwgMjggRmViIDIwMjUgMDY6NDA6MDYgKzAwMDAsIEpv
bmFzIEthcmxtYW4gd3JvdGU6Cj4gPj4gVGhlIFJhZHhhIEUyMEMgaGFzIHRocmVlIGdwaW8gbGVk
cyBhbmQgb25lIGdwaW8gYnV0dG9uLgo+ID4+Cj4gPj4gVGhpcyBzZXJpZXMgYWRkcyBkdC1iaW5k
aW5nLCBkcml2ZXIgc3VwcG9ydCwgRFQgbm9kZSBpbiBTb0MgLmR0c2kgYW5kCj4gPj4gZ3Bpby1r
ZXlzIGFuZCBncGlvLWxlZHMgbm9kZXMgaW4gYm9hcmQgRFQgdG8gc3VwcG9ydCB0aGUgbGVkcyBh
bmQgdXNlcgo+ID4+IGJ1dHRvbi4KPiA+Pgo+ID4+IFRoaXMgc2VyaWVzIGJ1aWxkcyBvbiB0b3Ag
b2YgdGhlICJyb2NrY2hpcDogQWRkIHN1cHBvcnQgZm9yIG1hc2tyb20KPiA+PiBidXR0b24gb24g
UmFkeGEgRTIwQyIgc2VyaWVzIFsxXS4KPiA+Pgo+ID4+IFsuLi5dCj4gPiAKPiA+IEFwcGxpZWQs
IHRoYW5rcyEKPiA+IAo+ID4gWzEvN10gZHQtYmluZGluZ3M6IHNvYzogcm9ja2NoaXA6IEFkZCBS
SzM1MjggaW9jIGdyZiBzeXNjb24KPiA+ICAgICAgIGNvbW1pdDogYWMzMmFkMDdhOTc2NDhlYjgz
MzBiMmM0Y2I4NDBiMGVmNDY5MDNhZQo+ID4gWzQvN10gYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFk
ZCBwaW5jdHJsIGFuZCBncGlvIG5vZGVzIGZvciBSSzM1MjgKPiA+ICAgICAgIGNvbW1pdDogYTMx
ZmFkMTlhZTM5ZWEyN2I1MDY4ZTNiMDJiY2JmMzBhOTA1MzM5Ygo+ID4gWzUvN10gYXJtNjQ6IGR0
czogcm9ja2NoaXA6IEFkZCB1YXJ0MCBwaW5jdHJsIHRvIFJhZHhhIEUyMEMKPiA+ICAgICAgIGNv
bW1pdDogMGQyMzEyZjBkM2U0Y2U3NGFmMDk3N2MxNTE5YTA3ZGZjNzFhODJhYwo+ID4gCj4gPiBQ
YXRjaGVzIDYrNyBkZXBlbmQgb24gdGhlIHBhcmFsbGVsIHNhcmFkYyBzdXBwb3J0IHNlcmllcyBh
bmQgdGh1cwo+ID4gZG8gbm90IGFwcGx5IC0gYW5kIG5lZWQgdG9vIG11Y2ggcmV3b3JrIHRvIHNh
ZmVseSBhcHBseS4KPiAKPiBEbyB5b3Ugd2FudCBtZSB0byByZWJhc2UvcmVvcmRlciBhbmQgc2Vu
ZCBhbiB1cGRhdGVkIHZlcnNpb24gd2l0aAo+IHJlbWFpbmluZyBwYXRjaGVzPyBMb29rIGxpa2Ug
dGhlIGlpbyBzYXJhZGMgcGF0Y2hlcyBbMl0gaXMgcGVuZGluZyBhcHBseQo+IHNvIG1heWJlIG5v
dCBuZWVkZWQ/CgpOb3Qgc3VyZSBob3cgbG9uZyB0aGUgdGhhdCB0ZXN0IHJ1biB3aWxsIGJlIHRh
a2luZyAuLi4KYW5kIHdoZXJlIGFmdGVyIC1yYzUuIEJ1dCBpbiB0aGVvcnkgdGhpbmdzIHNob3Vs
ZCBiZSBmaW5lIHRob3VnaC4KClNvIGVzc2VudGlhbGx5IHVwIHRvIHlvdSAtIGFuZCBpZiB5b3Ug
YWN0dWFsbHkgaGF2ZSBzcGFyZSBtaW51dGVzLgoKSGVpa28KCgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
