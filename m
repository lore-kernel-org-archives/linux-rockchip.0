Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D4B5C47422
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 20:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FomvyWvGmGHsRZgUfnTEhi7BGqP+IcURaxQmpKtUUA0=; b=uzE4wBthCAatK2bW8Zwk1YxvKT
	7I0mJ1CgbxwKM/NWcWpoNhPz9THGdOYg1en07n4jU+vffYCwrgvYilX4lZV6o9HU5g6tS/UM8YwFh
	wmr8S1nGZBV94qI7DP/5TIXyVeENGoTnCPmNeiO3yzuGBgBs2WQl3bjIjDrp+UXUqmKOdYOhBaZdh
	u/6+CNMhXN+85BoRZi+/T9nHFANJv8FL8AFY0ZQLdoe3Z3baJhhKzCG0s8u26Eb609mocT1HVNxby
	+sfA5Ii6/h4Qq5x4Q0y7+nCQtPlATSbrL8ULfUaMINcloUnSJnJExkazwiZ8yEjg7xsYIUyXFA53r
	avWpUfMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTSR2-00000005JiV-2IhN;
	Fri, 26 Jan 2024 20:04:20 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTSQy-00000005Jhh-31zk;
	Fri, 26 Jan 2024 20:04:18 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706299453;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GSe9cmELggsROW8Xa3K0sEdzswCwt2lkxHp4I65nO1s=;
	b=i/lX5FaqbJSyzbAnEJyyaHyMOF4YfJwfmEhG3d7hPKYl5Gdati1LZW5uuDVPxyQm5GvoOB
	JQrwFbRDLuiKl/9c6olOazGw5ERUg/IQKZk9vb/GZhnHAnNVGGEUxNMqpi/k2vzTM3K9nx
	SwMQ0ipJknBOEbTbruAhcgqotsJkjWO8FjFj5biTohvmu3IBvwlSYngGrb7H6XwmpnFZqm
	tZlzcD4AGC/qI7jxs92HXlXo6ojYJrvUaXnDCOqfftK24KdQw3RTVAElogAJIyFiGvLhsZ
	e9T0SjMPoeI50YvU93d8zHFdNmArScFaon66WpNc0BIC+N2ZInwLyGLLs7tPbA==
Date: Fri, 26 Jan 2024 21:04:12 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Viresh
 Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add OPP data for CPU cores on
 RK3588
In-Reply-To: <9b72b688-be63-464e-a5dc-cf6051ccee12@linaro.org>
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
 <20240125-rk-dts-additions-v1-4-5879275db36f@gmail.com>
 <731aac66-f698-4a1e-b9ee-46a7f24ecae5@linaro.org>
 <ccc004cfae513195351ce0a79e12f6af@manjaro.org>
 <CABjd4YxSTLZjrnSCn0fh81US682-uhZ16-cgydzz97shhCpq4w@mail.gmail.com>
 <1f0608831cfb95c80edf16cd751eee76@manjaro.org>
 <CABjd4Yx06igrZQvHA4q-mcr2oSEf7eQyUS+KEATUGbw6qLc2sg@mail.gmail.com>
 <528a37d84cdd871e717b4ebf648bb8a7@manjaro.org>
 <9b72b688-be63-464e-a5dc-cf6051ccee12@linaro.org>
Message-ID: <0ed47e91c2d69ade447bd79bdfe5637a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_120417_079152_BC53DF7B 
X-CRM114-Status: GOOD (  29.42  )
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

T24gMjAyNC0wMS0yNiAxMzo1NiwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gT24gMjYvMDEvMjAy
NCAwODo0OSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiBPbiAyMDI0LTAxLTI2IDA4OjMwLCBBbGV4
ZXkgQ2hhcmtvdiB3cm90ZToKPj4+IE9uIEZyaSwgSmFuIDI2LCAyMDI0IGF0IDExOjA14oCvQU0g
RHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IAo+Pj4gd3JvdGU6Cj4+Pj4gT24gMjAy
NC0wMS0yNiAwNzo0NCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4+Pj4gPiBPbiBGcmksIEphbiAy
NiwgMjAyNCBhdCAxMDozMuKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPgo+
Pj4+ID4gd3JvdGU6Cj4+Pj4gPj4gT24gMjAyNC0wMS0yNSAxMDozMCwgRGFuaWVsIExlemNhbm8g
d3JvdGU6Cj4+Pj4gPj4gPiBPbiAyNC8wMS8yMDI0IDIxOjMwLCBBbGV4ZXkgQ2hhcmtvdiB3cm90
ZToKPj4+PiA+PiA+PiBCeSBkZWZhdWx0IHRoZSBDUFVzIG9uIFJLMzU4OCBzdGFydCB1cCBpbiBh
IGNvbnNlcnZhdGl2ZSBwZXJmb3JtYW5jZQo+Pj4+ID4+ID4+IG1vZGUuIEFkZCBmcmVxdWVuY3kg
YW5kIHZvbHRhZ2UgbWFwcGluZ3MgdG8gdGhlIGRldmljZSB0cmVlIHRvIGVuYWJsZQo+IAo+IFsg
Li4uIF0KPiAKPj4+IFRocm90dGxpbmcgd291bGQgYWxzbyBsb3dlciB0aGUgdm9sdGFnZSBhdCBz
b21lIHBvaW50LCB3aGljaCBjb29scyBpdAo+Pj4gZG93biBtdWNoIGZhc3RlciEKPj4gCj4+IE9m
IGNvdXJzZSwgYnV0IHRoZSBrZXkgaXMgbm90IHRvIGNvb2wgKGFuZCBzbG93IGRvd24pIHRoZSBD
UFUgY29yZXMgCj4+IHRvbwo+PiBtdWNoLCBidXQganVzdCBlbm91Z2ggdG8gc3RheSB3aXRoaW4g
dGhlIGF2YWlsYWJsZSB0aGVybWFsIGVudmVsb3BlLAo+PiB3aGljaCBpcyB3aGVyZSB0aGUgc2Ft
ZS12b2x0YWdlLCBsb3dlci1mcmVxdWVuY3kgT1BQcyBzaG91bGQgc2hpbmUuCj4gCj4gVGhhdCBp
bXBsaWVzIHRoZSByZXN1bHRpbmcgcG93ZXIgaXMgc3VzdGFpbmFibGUgd2hpY2ggSSBkb3VidCBp
dCBpcyB0aGUgCj4gY2FzZS4KCkhtbSwgd2h5IHdvdWxkbid0IGl0IGJlIHN1c3RhaW5hYmxlPyAg
V291bGQgeW91IGVsYWJvcmF0ZSBhIGJpdCwgcGxlYXNlPwpJIG1lYW4sIHRoZXJlIGFyZSBzbyBt
YW55IGZhY3RvcnMgdGhhdCBjYW4ndCBiZSBrbm93biBmb3Igc3VyZSBpbiAKYWR2YW5jZSwKc28g
cHJvdmlkaW5nIGFkZGl0aW9uYWwgQ1BVIHRocm90dGxpbmcgZ3JhbnVsYXJpdHkgY2FuIG9ubHkg
YmUgaGVscGZ1bC4KCj4gVGhlIHZvbHRhZ2Ugc2NhbGluZyBtYWtlcyB0aGUgY29vbGluZyBlZmZl
Y3QgZWZmaWNpZW50IG5vdCB0aGUgCj4gZnJlcXVlbmN5Lgo+IAo+IEZvciBleGFtcGxlOgo+IAlv
cHA1ID0gb3BwKDJHSHosIDFWKSA9PiAyIEJvZ29XYXR0Cj4gCW9wcDQgPSBvcHAoMS45R0h6LCAx
VikgPT4gMS45IEJvZ29XYXR0Cj4gCW9wcDMgPSBvcHAoMS44R0h6LCAwLjlWKSA9PiAxLjQ1OCBC
b2dvV2F0dAo+IAlbIG90aGVyIHN0YXRlcyBidXQgd2UgZm9jdXMgb24gdGhlc2UgMyBdCj4gCj4g
b3BwNS0+b3BwNCA9PiAtNSUgY29tcHV0ZSBjYXBhY2l0eSwgLTUlIHBvd2VyLCByYXRpbz0xCj4g
b3BwNC0+b3BwMyA9PiAtNSUgY29tcHV0ZSBjYXBhY2l0eSwgLTIzLjElIHBvd2VyLCByYXRpbz0y
MSw2Cj4gCj4gb3BwNS0+b3BwMyA9PiAtMTAlIGNvbXB1dGUgY2FwYWNpdHksIC0yNy4xJSBwb3dl
ciwgcmF0aW89MzYuOQo+IAo+IEluIGJ1cnN0IG9wZXJhdGlvbiAobm8gdGhlcm1hbCB0aHJvdHRs
aW5nKSwgb3BwNCBpcyBwb2ludGxlc3Mgd2UgYWdyZWUgCj4gb24gdGhhdC4KCldlbGwsIGlmIHRo
ZXJlJ3Mgbm8gdGhlcm1hbCB0aHJvdHRpbmcgYXQgYWxsLCB0aGUgb3BwMyBpcyBhbHNvIG5vdApu
ZWVkZWQuICBJbiBhbiB1bmxpa2VseSBzY2VuYXJpbyBsaWtlIHRoYXQsIHRoZSBvcHA1IGlzIGFs
bCB3ZSBuZWVkLgoKPiBJTU8gdGhlIGZvbGxvd2luZyB3aWxsIGhhcHBlbjogaW4gYnVyc3Qgb3Bl
cmF0aW9uIHdpdGggdGhlcm1hbAo+IHRocm90dGxpbmcgd2UgaGl0IHRoZSB0cmlwIHBvaW50IGFu
ZCB0aGVuIHRoZSBzdGVwIHdpc2UgZ292ZXJub3IKPiByZWR1Y2VzIG9wcDUgLT4gb3BwNC4gV2Ug
aGF2ZSBzbGlnaHQgcG93ZXIgcmVkdWN0aW9uIGJ1dCB0aGUKPiB0ZW1wZXJhdHVyZSBkb2VzIG5v
dCBkZWNyZWFzZSwgc28gYXQgdGhlIG5leHQgaXRlcmF0aW9uLCBpdCBpcwo+IHRocm90dGxlIGF0
IG9wcDMuIEFuZCBhdCB0aGUgZW5kIHdlIGhhdmUgb3BwNCA8LT4gb3BwMyBiYWNrIGFuZCBmb3J0
aAo+IGluc3RlYWQgb2Ygb3BwNSA8LT4gb3BwMy4KCldoeSBzaG91bGQgdGhlIHRlbXBlcmF0dXJl
IG5vdCBkZWNyZWFzZSB3aGVuIHN3aXRjaGluZyBmcm9tIHRoZSBvcHA1CnRvIHRoZSBvcHA0PyAg
U2VlLCB3ZSBjYW4ndCBhc3N1bWUgb3Iga25vdyBpbiBhZHZhbmNlIHRoYXQgcmVkdWNpbmcKdGhl
IHBvd2VyIGNvbnN1bXB0aW9uIGJ5IDUlIHdvdWxkbid0IGRvIGFueXRoaW5nOyAgNSUgaXMgYWN0
dWFsbHkKcXVpdGUgYSBsb3QuICBJZiB0aGF0IHdvdWxkIGRvIGFic29sdXRlbHkgbm90aGluZywg
dGhlbiBzb21ldGhpbmcKZWxzZSB3b3VsZCBwcm9iYWJseSBiZSB3cm9uZyBvciBub3QgYXMgZXhw
ZWN0ZWQuCgpBbHNvLCBmb3Igc29tZSB3b3JrbG9hZHMgaXQgbWlnaHQgYmUgYmV0dGVyIHRvIGhh
dmUgcmF0aGVyIGZyZXF1ZW50CnRyYW5zaXRpb25zIGJldHdlZW4gdGhlIG9wcDQgYW5kIHRoZSBv
cHAzLCBpbnN0ZWFkIG9mIHN0YXlpbmcgYXQgdGhlCm9wcDMgZm9yIGxvbmdlciBwcmlvZHMgb2Yg
dGltZS4gIFJ1bm5pbmcgMTAwIE1IeiBmYXN0ZXIgY2FuIGJlIHF1aXRlCnNpZ25pZmljYW50LCBl
c3BlY2lhbGx5IG9uIHR3byBDUFUgY29yZXMuCgo+IEl0IGlzIHByb2JhYmxlIHdlIGVuZCB1cCB3
aXRoIGFuIGVxdWl2YWxlbnQgZnJlcXVlbmN5IGF2ZXJhZ2UgKG9yCj4gY29tcHV0ZSBjYXBhY2l0
eSBhdmcpLgo+IAo+IG9wcDQgPC0+IG9wcDMgKGxvbmdlciBkdXJhdGlvbiBpbiBzdGF0ZXMsIGxl
c3MgdHJhbnNpdGlvbnMpCj4gb3BwNSA8LT4gb3BwMyAoc2hvcnRlciBkdXJhdGlvbiBpbiBzdGF0
ZXMsIG1vcmUgdHJhbnNpdGlvbnMpCj4gCj4gU29tZSBwbGF0Zm9ybXMgaGFkIHRoZWlyIGhpZ2hl
ciBPUFBzIHdpdGggdGhlIHNhbWUgdm9sdGFnZSBhbmQgdGhleQo+IGZhaWxlZCB0byBjb29sIGRv
d24gdGhlIENQVSBpbiB0aGUgbG9uZyBydW4uCj4gCj4gQW55d2F5LCB0aGVyZSBpcyBvbmx5IG9u
ZSB3YXkgdG8gY2hlY2sgaXQgb3V0IDopCj4gCj4gQWxleGV5LCBpcyBpdCBwb3NzaWJsZSB0byBj
b21wYXJlIHRoZSBjb21wdXRlIGR1cmF0aW9uIGZvciAnZGhyeXN0b25lJwo+IHdpdGggdGhlc2Ug
dm9sdGFnZSBPUFAgYW5kIHdpdGhvdXQgPyAod2l0aCBhIHBlcmlvZCBvZiBjb29sIGRvd24KPiBi
ZXR3ZWVuIHRoZSB0ZXN0IGluIG9yZGVyIHRvIHN0YXJ0IGF0IHRoZSBzYW1lIHRoZXJtYWwgY29u
ZGl0aW9uKSA/CgpJIGFncmVlIHRoYXQgdGVzdGluZyBhbmQgcmVjb3JkaW5nIGFzIG11Y2ggZGF0
YSBhcyBwb3NzaWJsZSBpcyB0aGUgYmVzdAphcHByb2FjaC4gIEhvd2V2ZXIsIHF1aXRlIGZyYW5r
bHksIHdlIHNob3VsZCBydW4gbW9yZSBkaWZmZXJlbnQgdGVzdHMsCm5vdCBvbmx5IG9uZSBzeW50
aGV0aWMgdGVzdC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
