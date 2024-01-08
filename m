Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F310C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jan 2024 12:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5PRjgBKakYomSR9fGmv+Z/U9Oufpnij9fPCABTZWgp0=; b=xZ0WVPEaE5LPye
	/GGw/pZaYjqq6yqyYJzut9G3P5jBXk9KrrPRXyuWqC3UyEhxCWLAZjQxy1RPrrebK/BYlqWl/foLs
	Np5kNYIBKDMZTAnSAK+O2AkoEgVLZZ2XiLmSM2NTPsfzQI26Sdn4aU0V9sh1iURuRWg7ReG8B2vdS
	3Ecvw2VEidVvmDcPJu03KbVKzHKdMxw+UxGWqnmr7wY/3/eIQ26Mx0JlQpClfCbITMJOjDDiTo1Ty
	L2tG4FTcGrImbPOvrj36IUa8PZQ1gR0qr0k7tc6F2b8uzuk4IVQhKpf+nVMRVuu2XwuTGckl3BQ98
	s1Z133wIUf8PTfE8P+fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMokk-0052zK-0x;
	Mon, 08 Jan 2024 12:29:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMokh-0052wx-2b
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jan 2024 12:29:13 +0000
Received: from i53875aaa.versanet.de ([83.135.90.170] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rMokb-0000yH-Ur; Mon, 08 Jan 2024 13:29:05 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>, Shantur Rathore <i@shantur.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
Date: Mon, 08 Jan 2024 13:29:05 +0100
Message-ID: <10691234.0AQdONaE2F@diego>
In-Reply-To: <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
References: <20231222141616.508073-1-i@shantur.com>
 <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
 <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_042911_839371_D0D51B98 
X-CRM114-Status: GOOD (  33.86  )
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

SGkgU2hhbnR1ciwKCkFtIE1vbnRhZywgOC4gSmFudWFyIDIwMjQsIDEzOjExOjE3IENFVCBzY2hy
aWViIFNoYW50dXIgUmF0aG9yZToKPiBPbiBUaHUsIEphbiA0LCAyMDI0IGF0IDk6NTDigK9BTSBE
cmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4gPiBPbiAyMDI0LTAxLTA0
IDEwOjQ0LCBTaGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4gPiA+IE9uIEZyaSwgRGVjIDI5LCAyMDIz
IGF0IDEwOjA44oCvUE0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4g
PiA+PiBBbSBGcmVpdGFnLCAyMi4gRGV6ZW1iZXIgMjAyMywgMTU6MTY6MTYgQ0VUIHNjaHJpZWIg
U2hhbnR1ciBSYXRob3JlOgo+ID4gPj4gPiBVU0IgcG9ydCByZWd1bGF0b3JzIHNob3VsZCBiZSBj
b250cm9sbGVkIGJ5IFBIWXMKPiA+ID4+ID4gc28gd2UgcmVtb3ZlIGFsd2F5cy1vbiBwcm9wZXJ0
eSBhbmQgbGV0IFBIWXMgbWFuYWdlIHRoZQo+ID4gPj4gPiByZWd1bGF0b3IuCj4gPiA+PiA+Cj4g
PiA+PiA+IHBoeS1zdXBwbHkgaXNuJ3Qgc2NvbmZ1Z3JlZCBmb3IgdGhlIFR5cGVDIHBvcnQgYW5k
IG5vdyB0aGF0IHdlIGFyZQo+ID4gPj4gICAgICAgICAgICAgICAgIF5eIGNvbmZpZ3VyZWQgPwo+
ID4gPj4KPiA+ID4+ID4gcmVtb3ZpbmcgcmVndWxhdG9yLWFsd2F5cy1vbiwgd2UgbmVlZCB0byBm
aXggdGhlIHBoeS1zdXBwbHkKPiA+ID4+ID4gc28gdGhlIFBIWXMgYXJlIGFibGUgdG8gdHVybiBw
b3dlciB0byB0eXBlLWMgcG9ydC4KPiA+ID4+ID4KPiA+ID4+ID4gU2VyaWVzLXZlcnNpb246IDIK
PiA+ID4+ID4KPiA+ID4+ID4gU2lnbmVkLW9mZi1ieTogU2hhbnR1ciBSYXRob3JlIDxpQHNoYW50
dXIuY29tPgo+ID4gPj4gPiAtLS0KPiA+ID4+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXJvY2twcm82NC5kdHNpIHwgMyArLS0KPiA+ID4+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4+ID4KPiA+ID4+ID4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPiA+
ID4+ID4gaW5kZXggYmNhMmI1MGUwYS4uZjcyNzNmNzk5MCAxMDA2NDQKPiA+ID4+ID4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPiA+ID4+
ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0
c2kKPiA+ID4+ID4gQEAgLTE5Miw3ICsxOTIsNiBAQCB2Y2M1djBfaG9zdDogdmNjNXYwLWhvc3Qt
cmVndWxhdG9yIHsKPiA+ID4+ID4gICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1
bHQiOwo+ID4gPj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdmNjNXYwX2hvc3RfZW4+
Owo+ID4gPj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYzV2MF9ob3N0IjsK
PiA+ID4+ID4gLSAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gPj4gPiAgICAg
ICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2MF91c2I+Owo+ID4gPj4gPiAgICAgICB9Owo+
ID4gPj4gPgo+ID4gPj4gPiBAQCAtMjAzLDcgKzIwMiw2IEBAIHZjYzV2MF90eXBlYzogdmNjNXYw
LXR5cGVjLXJlZ3VsYXRvciB7Cj4gPiA+PiA+ICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKPiA+ID4+ID4gICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JnZjYzV2MF90
eXBlY19lbj47Cj4gPiA+PiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYw
X3R5cGVjIjsKPiA+ID4+ID4gLSAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4g
Pj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2MF91c2I+Owo+ID4gPj4gPiAg
ICAgICB9Owo+ID4gPj4gPgo+ID4gPj4gPiBAQCAtODU5LDYgKzg1Nyw3IEBAICZ1MnBoeTAgewo+
ID4gPj4gPiAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiA+PiA+Cj4gPiA+PiA+ICAgICAgIHUy
cGh5MF9vdGc6IG90Zy1wb3J0IHsKPiA+ID4+ID4gKyAgICAgICAgICAgICBwaHktc3VwcGx5ID0g
PCZ2Y2M1djBfdHlwZWM+Owo+ID4gPj4gPiAgICAgICAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsK
PiA+ID4+ID4gICAgICAgfTsKPiA+ID4+Cj4gPiA+PiBKdXN0IHRvIGV4cGxhaW4gZm9yIG1lLCB3
aGF0IGlzIHN1cHBseWluZyB0aGUgIm90aGVyIiBPVEcgcG9ydAo+ID4gPj4gICAgICAgICB1MnBo
eTFfb3RnOiBvdGctcG9ydCB7fQo+ID4gPj4KPiA+ID4+IGluIHUycGh5MSAuLi4gdGhpcyBvbmUg
aXMgc3RhdHVzIG9rYXksIGJ1dCBkb2VzIG5vdCBoYXZlIGFueSBwaHkKPiA+ID4+IHN1cHBseT8K
PiA+ID4+Cj4gPiA+IEluIFJvY2tQcm82NCB0aGVyZSBpcyBvbmx5IDEgVVNCLUMgT1RHIHBvcnQg
YW5kIHRoZSBvdGhlciBwb3J0Cj4gPiA+IGlzIGEgVVNCLTMuMCBwb3J0Lgo+ID4gPiBUbyBiZSBo
b25lc3QsIEkgYW0gbm90IDEwMCUgc3VyZSBob3cgdGhpcyBhbGwgd29ya3MsIGFzIEkgdW5kZXJz
dGFuZAo+ID4gPiB0aGUgVVNCMy4wIHBvcnQgaXMgd2lyZWQgdG8gdGhlIHNlY29uZCBUeXBlQyBQ
aHkuCj4gPiA+Cj4gPiA+IE1heWJlIERyYWdhbiBoYXMgbW9yZSBpbmZvIG9uIHRoaXMuCj4gPgo+
ID4gSSdsbCBoYXZlIGl0IGNoZWNrZWQgYW5kIHRlc3RlZCBpbiBkZXRhaWwsIG9mIGNvdXJzZSwg
YnV0IEkgaGF2ZSB0bwo+ID4gcmVjb3ZlciBmcm9tIHRoaXMgbmFzdHkgZmx1IGZpcnN0LiAgVW5m
b3J0dW5hdGVseSwgaXQgaGFzIHJlbmRlZGVkIG1lCj4gPiB1bmFibGUgdG8gZXZlbiB0aGluayBz
dHJhaWdodC4KPiAKPiBIb3BlIHlvdSBmZWVsIGJldHRlciBzb29uLgo+IEl0IHdvdWxkIGJlIGF3
ZXNvbWUgaWYgd2UgY2FuIGdldCB0aGlzIGluIHdoaWxlIHRoZSBjdXJyZW50IG1lcmdlCj4gd2lu
ZG93IGlzIG9wZW4uCgpqdXN0IGEgc21hbGwgY29tbWVudCByZWdhcmRpbmcgdGltaW5nLiBBbGwg
cmVndWxhciBkZXZlbG9wbWVudCBjaGFuZ2VzCm5lZWQgdG8gYmUgZmluaXNoZWQgYW5kIGluIGxp
bnV4LW5leHQgX2JlZm9yZV8gdGhlIG1lcmdlLXdpbmRvdyBvcGVucy4KCkFzIHRoaXMgaXMgbm90
IGEgZml4IGl0IHdpbGwgZ28gdG8gNi45IGFueXdheSAtIGhlbmNlIG5vIG5lZWQgdG8gcnVzaC4K
CgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
