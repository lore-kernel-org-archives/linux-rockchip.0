Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A66ECC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 05:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9HyumfTJ+A3xmNx/fXBQb2u6H/C3rRWx9Xb21XMEljU=; b=3lp+CZ6qQxADIpyZfjubD0v9XT
	1g9A8MED8NTaWegI6IGltSlLIY9fSmJtWM3XykVjdY+qHnfsS5JKRrt7kCxsfPgs334kwOzU40L+7
	0DDRxL3mFVHq6i+cDjh3gXJLqBujGhnjGNHebSk18V6y+jH/lkpeEZqGFWtyxP72dSCOP0JIRH9yw
	3n6T8Y0MjopOZr6PcIzuJIU5i9Pb+8oZEgB0ESYuW3OgwqGzITleVooXyKojaDxl0lEsXYnvrZGaO
	OgmaaXgYMvJ7MVQt9q2FalZ9HxfQ/DBeqCe865b0OP36nwV7pVZpnKFH1CYZkvQ3GbjbVVKgnduqC
	vRZW4kbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLFyt-0000000DOpO-2sWE;
	Sun, 23 Jun 2024 05:41:39 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLFyn-0000000DOon-1G4e;
	Sun, 23 Jun 2024 05:41:35 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719121291;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1hA4dCOLp0zx4KWYxG86LNj6SzPfCiUAfc/2NfNSI7k=;
	b=bZMlifUds8UpGha6YTfwdj9vQC190I7o1RV82fY5Skw4kMEFmh/mtP6MrcJXK1S8Y1zquM
	IOk8O3Z9h7TaaENQfH//dhVjci+kZj9+PMgcZSpGlFuzG1XQskmgPUHL6yvz/uQNid3Yfg
	LuzY+iXeerazKvlIjCorkz2WGz4g2FsAKQIOyI1Sn5rkVp38F1IlF9+x3su2VL4mWP/H8i
	PBEcJBiTT6US6wStHFLErWiXJ9KT8oNRZ98ODDJ7OPkwTepFStaekpU6UywFDBJpZz0aQw
	1zHc2YCYD4G4mQ9XUgQjpS9rLmODGVRYd9APv3gtxklUsHztj9t3p76jEzbAmw==
Date: Sun, 23 Jun 2024 07:41:28 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Krzysztof Kozlowski
 <krzk@kernel.org>, Daniel Golle <daniel@makrotopia.org>, Aurelien Jarno
 <aurelien@aurel32.net>, Olivia Mackall <olivia@selenic.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Philipp
 Zabel <p.zabel@pengutronix.de>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Anand Moon <linux.amoon@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Martin Kaiser <martin@kaiser.cx>, Ard
 Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] hwrng: add Rockchip SoC hwrng driver
In-Reply-To: <6u4bgwemukkpjvregtvrhdarelvy4rf76n5dv5oiclbyh4q7gd@b776tut4a6ki>
References: <cover.1718921174.git.daniel@makrotopia.org>
 <ead26406-dd3b-491c-b6ab-11002a2db11a@kernel.org>
 <07fba45d99e9eabf9bcca71b86651074@manjaro.org> <3660160.WbyNdk4fJJ@diego>
 <b0164e0d05d9e445a844ffdfca7a82d5@manjaro.org>
 <6u4bgwemukkpjvregtvrhdarelvy4rf76n5dv5oiclbyh4q7gd@b776tut4a6ki>
Message-ID: <adcfb712619033fb2e55f25a512f375a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_224133_952052_168023BD 
X-CRM114-Status: GOOD (  25.47  )
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

SGVsbG8gVXdlLAoKT24gMjAyNC0wNi0yMyAwMjoyMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6
Cj4gT24gU2F0LCBKdW4gMjIsIDIwMjQgYXQgMTA6NDU6MjJQTSArMDIwMCwgRHJhZ2FuIFNpbWlj
IHdyb3RlOgo+PiBPbiAyMDI0LTA2LTIyIDIyOjI2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4g
PiBBbSBTYW1zdGFnLCAyMi4gSnVuaSAyMDI0LCAxMjoyOTozMyBDRVNUIHNjaHJpZWIgRHJhZ2Fu
IFNpbWljOgo+PiA+ID4gT24gMjAyNC0wNi0yMiAwMDoxNiwgVXdlIEtsZWluZS1Lw7ZuaWcgd3Jv
dGU6Cj4+ID4gPiA+IE9uIDYvMjEvMjQgMjA6MTMsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gPiA+
ID4+IE9uIDIwMjQtMDYtMjEgMTE6NTcsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+ID4g
PiA+Pj4gT24gMjEvMDYvMjAyNCAwMzoyNSwgRGFuaWVsIEdvbGxlIHdyb3RlOgo+PiA+ID4gPj4+
PiArICAgIGRldl9pbmZvKCZwZGV2LT5kZXYsICJSZWdpc3RlcmVkIFJvY2tjaGlwIGh3cm5nXG4i
KTsKPj4gPiA+ID4+Pgo+PiA+ID4gPj4+IERyb3AsIGRyaXZlciBzaG91bGQgYmUgc2lsZW50IG9u
IHN1Y2Nlc3MuCj4+ID4gPiA+Pgo+PiA+IFsuLi5dCj4+ID4gU28gcmVhbGx5IHRoaXMgbWVzc2Fn
ZSBzaG91bGQgYmUgZHJvcHBlZCBvciBhdCBsZWFzdCBhcyBVd2Ugc3VnZ2VzdHMKPj4gPiBtYWRl
IGEgZGV2X2RiZy4KPj4gCj4+IEFzIGEgbm90ZSwgImRtZXNnIC0tbGV2ZWw9ZXJyLHdhcm4iLCBm
b3IgZXhhbXBsZSwgaXMgcmF0aGVyIHVzZWZ1bAo+PiB3aGVuIGl0IGNvbWVzIHRvIGZpbHRlcmlu
ZyB0aGUga2VybmVsIG1lc3NhZ2VzIHRvIHNlZSBvbmx5IHRob3NlIHRoYXQKPj4gYXJlIHNpZ25z
IG9mIGEgdHJvdWJsZS4KPiAKPiBJTUhPIGl0J3MgYSBiaXQgc2FkLCB0aGF0IHRoZXJlIGlzIHN1
Y2ggYSBsb25nIHRocmVhZCBhYm91dCBzb21ldGhpbmcgCj4gc28KPiB0cml2aWFsLCBidXQgSSB3
YW50IHRvIG1ha2UgYSBmZXcgcG9pbnRzOgo+IAo+ICAtIG5vdCBhbGwgZG1lc2cgaW1wbGVtZW50
YXRpb25zIHN1cHBvcnQgdGhpczoKPiAKPiAJcm9vdEBtYWNoaW5lOn4gZG1lc2cgLS1sZXZlbD1l
cnIsd2Fybgo+IAlkbWVzZzogdW5yZWNvZ25pemVkIG9wdGlvbiAnLS1sZXZlbD1lcnIsd2FybicK
PiAJQnVzeUJveCB2MS4zNi4xICgpIG11bHRpLWNhbGwgYmluYXJ5Lgo+IAo+IAlVc2FnZTogZG1l
c2cgWy1jcl0gWy1uIExFVkVMXSBbLXMgU0laRV0KPiAKPiAJUHJpbnQgb3IgY29udHJvbCB0aGUg
a2VybmVsIHJpbmcgYnVmZmVyCj4gCj4gCQktYyAgICAgICAgICAgICAgQ2xlYXIgcmluZyBidWZm
ZXIgYWZ0ZXIgcHJpbnRpbmcKPiAJCS1uIExFVkVMICAgICAgICBTZXQgY29uc29sZSBsb2dnaW5n
IGxldmVsCj4gCQktcyBTSVpFICAgICAgICAgQnVmZmVyIHNpemUKPiAJCS1yICAgICAgICAgICAg
ICBQcmludCByYXcgbWVzc2FnZSBidWZmZXIKPiAKPiAgLSBZb3VyIGFyZ3VtZW50IHRoYXQgdGhl
IG91dHB1dCBvZiB0aGlzIGRldl9pbmZvIGNhbiBlYXNpbHkgYmUgaWdub3JlZAo+ICAgIGlzIGEg
dmVyeSB3ZWFrIHJlYXNvbiB0byBrZWVwIGl0Lgo+IAo+ICAtIEkgcGVyc29uYWxseSBjb25zaWRl
ciBpdCBoYXJkIHNvbWV0aW1lcyB0byBhY2NlcHQgZmVlZGJhY2sgaWYgSSAKPiB0aGluawo+ICAg
IGl0J3Mgd3JvbmcgYW5kIHRoZXJlIGlzIGEgZ29vZCByZWFzb24gdG8gZG8gaXQgdGhlIHdheSBJ
IHdhbnQgaXQuCj4gICAgQnV0IHRoZXJlIGFyZSBub3cgdGhyZWUgcGVvcGxlIG9wcG9zaW5nIHlv
dXIgcG9zaXRpb24sIHdobyBicm91Z2h0Cj4gICAgZm9yd2FyZCAoSU1ITykgZ29vZCByZWFzb25z
IGFuZCBldmVuIGEgY29uc3RydWN0aXZlIGFsdGVybmF0aXZlIHdhcwo+ICAgIHByZXNlbnRlZC4g
UGxlYXNlIHN0YXkgb3BlbiBtaW5kZWQgd2hpbGUgd2VpZ2h0aW5nIHRoZSBvcHRpb25zLgo+ICAg
IFRoZSBxdWVzdGlvbnMgdG8gYXNrIGhlcmUgaW5jbHVkZToKPiAKPiAgICAgLSBIb3cgbWFueSBw
ZW9wbGUgY2FyZSBmb3IgdGhpcyBtZXNzYWdlPyBEdXJpbmcgZXZlcnkgYm9vdD8gSXMgaXQKPiAg
ICAgICBtYXliZSBlbm91Z2ggZm9yIHRoZXNlIHBlb3BsZSB0byBjaGVjayBpbiAvc3lzIGlmIHRo
ZSBkZXZpY2UKPiAgICAgICBwcm9iZWQgc3VjY2Vzc2Z1bGx5PyBPciBtYXliZSBldmVuIHRoZSBh
YnNlbmNlIG9mIGFuIGVycm9yIAo+IG1lc3NhZ2UKPiAgICAgICBpcyBlbm91Z2g/Cj4gICAgIC0g
SG93IG1hbnkgcGVvcGxlIGdldCB0aGlzIG1lc3NhZ2UgYW5kIGRvbid0IGNhcmUgYWJvdXQgdGhl
Cj4gICAgICAgcHJlc2VudGVkIGluZm9ybWF0aW9uPyBIb3cgbWFueSBwZW9wbGUgYXJlIGV2ZW4g
YW5ub3llZCBieSBpdD8KPiAgICAgLSBJcyB0aGUgZGVsYXkgYW5kIG1lbW9yeSB1c2FnZSBpbnRy
b2R1Y2VkIGJ5IHRoaXMgbWVzc2FnZSAKPiBqdXN0aWZpZWQKPiAgICAgICB0aGVuLCBldmVuIGlm
IGl0J3Mgc21hbGw/CgpJJ20gc29ycnkgaWYgbXkgcmVzcG9uc2VzIGNhdXNlZCBhbnkgaW5jb252
ZW5pZW5jZS4gIEkgZmluZCBtb3N0IG9mIHlvdXIKcG9pbnRzIHRvdGFsbHkgdmFsaWQsIGJ1dCB0
aGVyZSBhcmUgYSBjb3VwbGUgb2YgdGhlbSBJIGNvdWxkIGNvbnRpbnVlCmFyZ3VpbmcgYWJvdXQu
ICBUaG91Z2gsIGFzIHlvdSBhbHNvIHBvaW50ZWQgb3V0LCBteSBvcGluaW9uIGhhcyBiZWVuCmFs
cmVhZHkgb3V0dm90ZWQsIHNvIEknbGwgcmVtYWluIHNpbGVudC4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
