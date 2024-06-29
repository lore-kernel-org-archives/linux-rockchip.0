Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85DCAC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jun 2024 16:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UPt5VrL4LeXrP1AqKEQ0V1FTEXrsYLp1p/q23BbpT4Q=; b=Eb3XN8qZQ369yTx5d8fWXPozPr
	RcGUHfKNGMKkVdgaoFxjrU917lIBupmQ4yJTTPfJAEEiO2KW0X3ZbYS0M+KgUGvSzLNtmCIQ7H8B8
	7bRrg4v+r1EADyw2+0YhxM+GdN6iFWPsO5y+FVLSj0+jPVmXWa3R3etlfBUta6Wyo/ZvBjt5UPWNN
	IfE5MovFR+7WyLlax3IDE2LQaDVD3oVoo3VoIWOsmmQbyzIuehd9R9KDHh2PkZQ8UQhcLJthgW/5l
	vubxWvQ8Vjmphd8vV0/s/zDhEfCkM3s7I0DjjFiQQhQVpcdFAqyYiT2Jhn6r+BlK/tE9Xvi7yAahs
	W47EFJqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNaqJ-0000000Gdtr-0NYM;
	Sat, 29 Jun 2024 16:22:27 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNaq8-0000000Gdsh-43Ys;
	Sat, 29 Jun 2024 16:22:18 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719678135;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TmaryQAjzocqFJcJHYAJO/SJgA2TIwOO9948WPpEdHc=;
	b=HwN6sE32jvPYG7rQ4QHo7m9ULaSOYx/0hzY2zZA1SKUQOfRU+eR004fjq+qHMiZlE9+xdn
	ivu6tuHroDFe+E+gr6Z6CRWe4JG7GabOb7HYj6mrmX5HA4pPM2toLv3JF6tJjrHneOl/up
	ca7erP5jBUmGpWKuj+jVbMdzByP0Ze+ZpuUJFKVnHh9CK21Azo9prIho17Rb0mK1/RheXA
	frM1NKbb4opoSgnylYpHINeeaK6X6Lt8JX7gFa526Tb44wY/rilcRAem/jXJLKGlKzbg9d
	730b/VsTiM/Yqxs9KzUwrAXAJjyEGkAUThXGuqaIgtY9M2mvoHkMkcQK2eMucg==
Date: Sat, 29 Jun 2024 18:22:14 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, Diederik de Haas <didi.debian@cknow.org>,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: Add optional GPU OPP voltage ranges
 to RK356x SoC dtsi
In-Reply-To: <9297854.CDJkKcVGEf@diego>
References: <446399362bd2dbeeaecd8351f68811165429749a.1719637113.git.dsimic@manjaro.org>
 <f10d5a3c425c2c4312512c20bd35073c@manjaro.org>
 <36170f8485293b336106e92346478daa@manjaro.org> <9297854.CDJkKcVGEf@diego>
Message-ID: <54fc7e18a6498d15e008733864f26070@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240629_092217_176010_B154B569 
X-CRM114-Status: GOOD (  21.27  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNC0wNi0yOSAxODoxOCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gU2Ftc3RhZywg
MjkuIEp1bmkgMjAyNCwgMTc6Mzk6MzQgQ0VTVCBzY2hyaWViIERyYWdhbiBTaW1pYzoKPj4gT24g
MjAyNC0wNi0yOSAxNzoyNSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiA+IE9uIDIwMjQtMDYtMjkg
MTc6MTAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiA+PiBBbSBTYW1zdGFnLCAyOS4gSnVuaSAy
MDI0LCAwNzoxMToyNCBDRVNUIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+PiA+Pgo+PiA+Pj4gKyNp
Zm5kZWYgUkszNTZYX0dQVV9OUFVfU0hBUkVEX1JFR1VMQVRPUgo+PiA+Pgo+PiA+PiBpcyB0aGVy
ZSBzb21lIHJlYXNvbiBmb3IgdGhpcyBkdXBsaWNhdGluZyBvZiBvcHBzPwo+PiA+Pgo+PiA+PiBU
aGUgcmVndWxhdG9yIGZyYW1ld29yayBzaG91bGQgcGljayB0aGUgbG93ZXN0IHN1cHBvcnRlZCB2
b2x0YWdlCj4+ID4+IGFueXdheSwgc28gaXQgc2VlbXMgeW91J3JlIGp1c3QgZXh0ZW5kaW5nIHRo
ZW0gdXB3YXJkcyBhIGJpdC4KPj4gPj4KPj4gPj4gU28gSSByZWFsbHkgZG9uJ3Qgc28gd2h5IHdl
J2QgbmVlZCB0byBzZXRzIGhlcmUuCj4+ID4KPj4gPiBUaGUgcmVhc29uIGlzIGltcHJvdmVkIHN0
cmljdG5lc3MuICBIYXZpbmcgdGhlIGV4YWN0IEdQVSBPUFAgdm9sdGFnZXMKPj4gPiByZXF1aXJl
ZCBmb3IgdGhlIGJvYXJkcyB3aG9zZSBHUFUgcmVndWxhdG9ycyBjYW4gcHJvdmlkZSB0aG9zZSBl
eGFjdAo+PiA+IHZvbHRhZ2VzIG1ha2VzIGl0IHBvc3NpYmxlIHRvIGRldGVjdCBtaXNjb25maWd1
cmF0aW9ucyBtdWNoIGVhc2llciwKPj4gPiBqdXN0IGxpa2UgaXQgd2FzIHRoZSBjYXNlIHdpdGgg
dGhlIGJvYXJkIGR0cyBtaXNjb25maWd1cmF0aW9uIHRoYXQKPj4gPiByZXN1bHRlZCBpbiB0aGUg
cmVjZW50IERDRENfUkVHMiBwYXRjaC4gWzFdCj4+ID4KPj4gPiBJZiB3ZSBoYWQgR1BVIE9QUCB2
b2x0YWdlIHJhbmdlcyBpbiBwbGFjZSBpbnN0ZWFkLCB0aGUgYWZvcmVtZW50aW9uZWQKPj4gPiBp
c3N1ZSB3b3VsZCBwcm9iYWJseSByZW1haW4gdW5kZXRlY3RlZCBmb3Igc29tZSB0aW1lLiAgSXQg
d291bGRuJ3QgYmUKPj4gPiB0aGUgZW5kIG9mIHRoZSB3b3JsZCwgOikgb2YgY291cnNlLCBidXQg
dGhlIHJlc3VsdGluZyBpbmNyZWFzZWQgcG93ZXIKPj4gPiBjb25zdW1wdGlvbiBpc24ndCBvbmUg
b2YgdGhlIGRlc2lyZWQgb3V0Y29tZXMuCj4+ID4KPj4gPiBbMV0KPj4gPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC9lNzA3NDJlYTJkZjQzMmJmNTdiM2Y3ZGU1NDJkODFj
YTIyYjBkYTJmLjE3MTYyMjU0ODMuZ2l0LmRzaW1pY0BtYW5qYXJvLm9yZy8KPj4gCj4+IE9uIHNl
Y29uZCB0aG91Z2h0LCBhZnRlciBzZWVpbmcgdGhhdCB0aGUgUkszMzk5IENQVSBhbmQgR1BVIE9Q
UHMKPj4gYWxyZWFkeSBzcGVjaWZ5IHZvbHRhZ2UgcmFuZ2VzLCBJIHRoaW5rIGl0IHdvdWxkIGJl
IGJldHRlciB0byBkcm9wCj4+IHRoZSBkaXN0aW5jdGlvbiBiZXR3ZWVuIHRoZSBzZXBhcmF0ZSBz
dHJpY3Qgdm9sdGFnZXMgYW5kIHRoZSB2b2x0YWdlCj4+IHJhbmdlcyBpbiB0aGlzIHBhdGNoLAo+
IAo+IHllcywgdGhhdCB3YXMgd2hhdCBJIHdhcyB0cnlpbmcgdG8gc2F5IDotKQo+IAo+IEFsc28g
aXQgbWFrZXMgdGhlIE9QUHMgbGVzcyBjbHV0dGVyZWQuIEFsc28gZHQgaXMgZmlybXdhcmUsIEkg
ZG8gZXhwZWN0Cj4gcGVvcGxlIHRvIGJlIHJlYXNvbmFibHkga25vd2xlZGdlYWJsZSBpZiB0aGV5
IG1lc3MgYXJvdW5kIHdpdGggdGhlaXIKPiBib2FyZHMgT1BQcyA7LSkgLgoKWWVzLCBidXQgd2Ug
c3RpbGwgbmVlZCBuZXcgcmVndWxhdG9yL09QUCBkZWJ1Z2dpbmcgZmFjaWxpdGllcwp0aGF0IHNo
b3VsZCB0byBiZSB1c2VkIHdoaWxlIHdyaXRpbmcgRFRzIGZvciBuZXcgYm9hcmRzIGFuZCB3aGls
ZQp2ZXJpZnlpbmcgYWxyZWFkeSBleGlzdGluZyBib2FyZCBEVHMuIDopCgpJJ2xsIHByZXBhcmUg
YW5kIHNlbmQgdGhlIHYyIG9mIHRoaXMgcGF0Y2gsIGFuZCBJJ2xsIGFsc28gc3RhcnQKd29ya2lu
ZyBvbiB0aGUgbmV3IHBhdGNoIGZvciB0aG9zZSBkZWJ1Z2dpbmcgZmFjaWxpdGllcy4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
