Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49278C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Oct 2022 16:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9EpAPoemSIP0RdgxuYjLpuERk7Fvy1oukpjLjH3guM=; b=XwkPGLQEBFgxAO
	GJj39PqDSRY0seshJQpjFE6ZlWvgxjNH+loiy2q5Ehcf+AqpqZec6XN2xXQncPQg7tqM6kYFUgQNi
	wdc3XqpP1EWOXocm/B20eflbIcB3KOiWFc70L98xkyea8RUgrTeBvSKhsJMrUD2xft9O1xCd6lA3I
	K4g/Raf9OfqgN6cth4XWKh2ZljMU4ubKyo+Nr3SAbGbUy0taGcmMWBauigwtKnhmtDmzX1blPjADf
	fD1rmkvCwbXyEp1dxGpKQo5aHOVmAtEGuNauTLNZzrSVsVsNPVAI6ELkIL0thlvGvrWzbkdfLegmO
	qLR/yQzVHyybz8QuFwqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojjkC-00HDbl-Is; Sat, 15 Oct 2022 16:10:36 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojjk1-00HDZG-4B; Sat, 15 Oct 2022 16:10:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id DA342CE0AB5;
	Sat, 15 Oct 2022 16:10:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A251C433D6;
	Sat, 15 Oct 2022 16:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665850215;
	bh=D//XcxJog8utf5JWgKGHosmjgzzQXF1s66dbBI6h7ZA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=q9fdUh3ghfGtWiHVvDuCCm6pG2pSew6EF7QtCtc+ucggEVDzvnP6A54POu938HPbb
	 gBde7DyBpDuEu+LbedpUXBHbBE4S+1L8Q5fVGH+pDVMV6faNltKGtfnOSacLeD7eVU
	 48uLdKnR94cWekBfvZPmBMRv1J5lVxDnGOb4OV32Wu6iI/nCYkIm5HWmMwH1ZxLSvF
	 OtRtmGZjrE24jriajRjriKAFeyv+h9Ljx3X0uIE6q5ixrOMvYnjZupzMItHv1r1rWk
	 INT/eU8PcE274UYCnq5WzERqGxJC854ftui86ut194DAOEbLoZU0vy/fZW/quhG6JO
	 YU8wvgSHT3d4g==
Date: Sat, 15 Oct 2022 17:10:33 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 linux-arm-kernel@lists.infradead.org, linux-iio@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, Chen-Yu Tsai <wens@csie.org>, Andriy Tryshnivskyy
 <andriy.tryshnivskyy@opensynergy.com>, Ciprian Regus
 <ciprian.regus@analog.com>, Vladimir Zapolskiy <vz@mleia.com>, Cixi Geng
 <cixi.geng1@unisoc.com>, Neil Armstrong <narmstrong@baylibre.com>, Miquel
 Raynal <miquel.raynal@bootlin.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Heiko Stuebner <heiko@sntech.de>, Fabio Estevam <festevam@gmail.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Baolin Wang <baolin.wang@linux.alibaba.com>, Hans
 de Goede <hdegoede@redhat.com>, Alexandru Ardelean <aardelean@deviqon.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Haibo Chen
 <haibo.chen@nxp.com>, Lars-Peter Clausen <lars@metafoo.de>, Jyoti Bhayana
 <jbhayana@google.com>, Florian Boor <florian.boor@kernelconcepts.de>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Orson Zhai <orsonzhai@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v3 0/4] Make 'mlock' really private
Message-ID: <20221015171033.54ccfa09@jic23-huawei>
In-Reply-To: <CAHp75VcUaSaAQ5Gs32bmpUyROqRLjMuDykdKp34p+2DYsovSPw@mail.gmail.com>
References: <20221012151620.1725215-1-nuno.sa@analog.com>
	<CAHp75VcUaSaAQ5Gs32bmpUyROqRLjMuDykdKp34p+2DYsovSPw@mail.gmail.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221015_091025_565948_1F69DE44 
X-CRM114-Status: GOOD (  39.96  )
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

T24gV2VkLCAxMiBPY3QgMjAyMiAyMDo0OToxMyArMDMwMApBbmR5IFNoZXZjaGVua28gPGFuZHku
c2hldmNoZW5rb0BnbWFpbC5jb20+IHdyb3RlOgoKPiBPbiBXZWQsIE9jdCAxMiwgMjAyMiBhdCA2
OjE1IFBNIE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5jb20+IHdyb3RlOgo+ID4KPiA+IFRoaXMg
cGF0Y2hzZXQgY2xlYW5zIGFsbCB0aGUgZHJpdmVycyBkaXJlY3RseSB1c2luZyB0aGUgaWlvX2Rl
dmljZSAnbWxvY2snLgo+ID4gVGhpcyBsb2NrIGlzIHByaXZhdGUgYW5kIHNob3VsZCBub3QgYmUg
dXNlZCBvdXRzaWRlIHRoZSBjb3JlIChvciBieSB1c2luZwo+ID4gcHJvcGVyIGhlbHBlcnMpLgo+
ID4KPiA+IE1vc3Qgb2YgdGhlIGNvbnZlcnNpb25zIHdoZXJlIHN0cmFpZ2h0LCBidXQgdGhlcmUg
YXJlIHNvbWUgdGhhdCByZWFsbHkgbmVlZAo+ID4gZXh0cmEgbG9va2luZy4gTWFpbmx5IHBhdGNo
ZXMgWzEzLzE1XSBhbmQgWzE0LzE1XSB3ZXJlIGEgYml0IGhhY2t5IHNpbmNlCj4gPiBpaW9fZGV2
aWNlX2NsYWltX2RpcmVjdF9tb2RlKCkgZG9lcyBub3QgZml0IDEwMCUuIFRoZSByZWFzb24gaXMg
dGhhdCB3ZQo+ID4gd2FudCB0byBjaGVjayBpZiB0aGUgZGV2aWNlIGlzIGJ1ZmZlcmluZyBhbmQg
ZG8gc29tZXRoaW5nIGlmIGl0IGlzIChpbgo+ID4gd2hpY2ggY2FzZSB0aGUgQVBJIHJldHVybiAt
RUJVU1kgYW5kIHJlbGVhc2VkIHRoZSBsb2NrLiBJIGp1c3QgdXNlZCBhCj4gPiBjb21iaW5hdGlv
bnMgb2YgbG9ja3MgdG8gZ2V0IGFyb3VuZCB0aGlzIChob3BlZnVsbHkgSSBkaWQgbm90IG1lc3Nl
ZCB1cCkuCj4gPgo+ID4gTm90ZSB0aGF0IHRoaXMgc2VyaWVzIHdhcyBvbmx5IGNvbXBpbGVkIHRl
c3RlZCB1c2luZyBhbGx5ZXNjb25maWcgZm9yCj4gPiBBUk0uIEkgcmFuICdnaXQgZ3JlcCcgdG8g
bWFrZSBzdXJlIHRoZXJlIHdlcmUgbm8gbW9yZSB1c2VycyBvZiAnbWxvY2snLgo+ID4gSG9wZWZ1
bGx5IEkgY292ZXJlZCB0aGVtIGFsbC4uLiAgCj4gCj4gUmV2aWV3ZWQtYnk6IEFuZHkgU2hldmNo
ZW5rbyA8YW5keS5zaGV2Y2hlbmtvQGdtYWlsLmNvbT4KPiAKPiBJIGhhdmVuJ3Qgc2VlbiBhbnkg
c2VyaW91cyBpc3N1ZXMsIHNvbWUgc21hbGwgb25lcyByZWdhcmRpbmcgc3BlbGxpbmcsCj4gaW5k
ZW50YXRpb24gYW5kIGNvbW1lbnQgYXJlIHBlciBpbmRpdmlkdWFsIHBhdGNoZXMuCgpUd2Vha2Vk
IGlubGluZSB3aXRoIEFuZHkncyBzdWdnZXN0aW9ucyB3aGlsc3QgYXBwbHlpbmcuCgpBcHBsaWVk
IHRvIHRoZSB0b2dyZWcgYnJhbmNoIG9mIGlpby5naXQgYW5kIHB1c2hlZCBvdXQgYXMgdGVzdGlu
ZyBmb3Igbm93CmFzIEknbGwgYmUgcmViYXNpbmcgb24gcmMxIG9uY2UgYXZhaWxhYmxlLgoKVGhh
bmtzLAoKSm9uYXRoYW4KCj4gCj4gPiB2MjoKPiA+Cj4gPiBbUEFUQ0ggMS04LCAxMC0xMi8xNl0K
PiA+ICAqIE1lbnRpb24gdGhlIGluY2x1c2lvbiBvZiBtdXRleC5oIGluIHRoZSBjb21taXQgbWVz
c2FnZS4KPiA+Cj4gPiBbUEFUQ0ggMS04LCAxMCwgMTIvMTZdCj4gPiAgKiBJbml0aWFsaXplIG11
dGV4IGFzIGxhdGUgYXMgcG9zc2libGUuCj4gPiBOb3RlIHRoYXQgW1BBVENIIDExLzE2XSB3YXMg
bm90IGluY2x1ZGVkIHNpbmNlIHRoZSBjb2RlIHRvIGRvIHNvIHdhcyBub3QKPiA+IGRpcmVjdCBl
bm91Z2guIFdvdWxkIG5lZWQgdG8gZ2V0IGEgcG9pbnRlciB0byB0aGUgcHJpdmF0ZSBzdHJ1dHVy
ZQo+ID4gb3V0c2lkZSBvZiBzY21pX2FsbG9jX2lpb2RldigpIHRvIGRvIGl0LiBXaGlsZSBub3Qg
aGFyZCwgdGhlIGFkZGVkIGNoYW5nZXMKPiA+IGluIHRoZSBjb2RlIGlzIG5vdCByZWFsbHkgd29y
dGggaXQgKElNTyBvZiBjb3Vyc2UpLgo+ID4KPiA+IFtQQVRDSCAxLzE2XQo+ID4gICogUmVmYWN0
b3JlZCB0aGUgY29tbWl0IG1lc3NhZ2UgYSBiaXQuIEkgZ3Vlc3MgdGhpcyBvbmUgd2lsbCBzdGls
bCBuZWVkcwo+ID4gbW9yZSBkaXNjdXNzaW9uLi4uCj4gPgo+ID4gW1BBVENIIDkvMTZdCj4gPiAg
KiBOZXcgcGF0Y2ggdG8gYWRkIGFuIGhlbHBlciBmdW5jdGlvbiB0byByZWFkIHRoZSBzYW1wbGVz
Lgo+ID4KPiA+IFtQQVRDSCAxMy8xNl0KPiA+ICAqIE5ldyBwYXRjaCB0byBpbnRyb2R1Y2UgaWlv
X2RldmljZV97Y2xhaW18cmVsZWFzZX1fYnVmZmVyX21vZGUoKSBBUElzLgo+ID4KPiA+IFtQQVRD
SCAxNC8xNl0KPiA+ICAqIE1ha2UgdXNlIG9mIHRoZSBuZXcgaWlvX2RldmljZV97Y2xhaW18cmVs
ZWFzZX1fYnVmZmVyX21vZGUoKSBoZWxwZXJzCj4gPgo+ID4gW1BBVENIIDE1LzE2XQo+ID4gICog
TWFrZSB1c2Ugb2YgdGhlIG5ldyBpaW9fZGV2aWNlX3tjbGFpbXxyZWxlYXNlfV9idWZmZXJfbW9k
ZSgpIGhlbHBlcnMKPiA+IGluIGNvbWJpbmF0aW9uIHdpdGggY2xhaW1fZGlyZWN0X21vZGUoKS4g
VGhpcyBpcyBuZWVkZWQgc28gdGhhdCB3ZSBtYWtlIHN1cmUKPiA+IHdlIGFsd2F5cyBnZXQgb25l
IG9mIHRoZSBtb2RlcyAoYW5kIGhlbmNlIHRoZSBpaW9fZGV2IGxvY2spIHRvIHNhZmVseSBjYWxs
Cj4gPiBtYXgzMDEwMl9nZXRfdGVtcCgpLiBOb3RlIHRoYXQgSSdtIG5vdCBwYXJ0aWN1bGFyICJo
YXBweSIgd2l0aCB0aGUgY29kZSBidXQKPiA+IE9UT0gsIGl0IGRvZXMgbm90IGxvb2sgYXMgYmFk
IGFzIEkgdGhvdWdodCA6KS4gQW55d2F5cywgaWYgdGhlcmUgYXJlIG5vCj4gPiBjb21wbGFpbnMg
d2l0aCBpdCwgSSdtIG9rIHRvIGxlYXZlIGl0IGFzLWlzLiBPdGhlcndpc2UsIEkgdGhpbmsgd2Ug
Y2FuIHRoaW5rCj4gPiBvbiB0aGUgZmxhZyBhcHByb2FjaCAoYnJpZWZseSBkaXNjdXNzZWQgaW4g
dGhlIGZpcnN0IHNlcmllcykuCj4gPgo+ID4gdjM6Cj4gPgo+ID4gW1BBVENIIDEvNF0KPiA+ICAq
IGZpeCAnbWFrZSBXPTEnIHdhcm5pbmcgYWJvdXQgcHJvdG90eXBlcyBtaXNtYXRjaC4KPiA+Cj4g
PiBbUEFUQ0ggMi80XQo+ID4gICogaW1wcm92ZWQgY29tbWl0IG1lc3NhZ2UgdG8gZXhwbGFpbiB3
aHkgd2UgYXJlIHNoYWRvd2luZyBlcnJvciBjb2Rlcy4KPiA+Cj4gPiBbUEFUQ0ggNC80XQo+ID4g
ICogbWlub3IgRW5nbGlzaCBmaXggb24gdGhlIGNvbW1pdCBtZXNzYWdlIChhcyBzdWdnZXN0ZWQg
YnkgQW5keSkuCj4gPgo+ID4gTnVubyBTw6EgKDQpOgo+ID4gICBpaW86IGNvcmU6IGludHJvZHVj
ZSBpaW9fZGV2aWNlX3tjbGFpbXxyZWxlYXNlfV9idWZmZXJfbW9kZSgpIEFQSXMKPiA+ICAgaWlv
OiBoZWFsdGg6IG1heDMwMTAwOiBkbyBub3QgdXNlIGludGVybmFsIGlpb19kZXYgbG9jawo+ID4g
ICBpaW86IGhlYWx0aDogbWF4MzAxMDI6IGRvIG5vdCB1c2UgaW50ZXJuYWwgaWlvX2RldiBsb2Nr
Cj4gPiAgIGlpbzogY29yZTogbW92ZSAnbWxvY2snIHRvICdzdHJ1Y3QgaWlvX2Rldl9vcGFxdWUn
Cj4gPgo+ID4gIGRyaXZlcnMvaWlvL1RPRE8gICAgICAgICAgICAgICAgICAgfCAgMyAtLQo+ID4g
IGRyaXZlcnMvaWlvL2hlYWx0aC9tYXgzMDEwMC5jICAgICAgfCAgOSArKy0tLQo+ID4gIGRyaXZl
cnMvaWlvL2hlYWx0aC9tYXgzMDEwMi5jICAgICAgfCAxOSArKysrKysrLS0tCj4gPiAgZHJpdmVy
cy9paW8vaW5kdXN0cmlhbGlvLWJ1ZmZlci5jICB8IDI5ICsrKysrKysrLS0tLS0tLQo+ID4gIGRy
aXZlcnMvaWlvL2luZHVzdHJpYWxpby1jb3JlLmMgICAgfCA1OCArKysrKysrKysrKysrKysrKysr
KysrKysrLS0tLS0KPiA+ICBkcml2ZXJzL2lpby9pbmR1c3RyaWFsaW8tZXZlbnQuYyAgIHwgIDQg
Ky0tCj4gPiAgZHJpdmVycy9paW8vaW5kdXN0cmlhbGlvLXRyaWdnZXIuYyB8IDEyICsrKy0tLS0K
PiA+ICBpbmNsdWRlL2xpbnV4L2lpby9paW8tb3BhcXVlLmggICAgIHwgIDIgKysKPiA+ICBpbmNs
dWRlL2xpbnV4L2lpby9paW8uaCAgICAgICAgICAgIHwgIDUgKystCj4gPiAgOSBmaWxlcyBjaGFu
Z2VkLCA5NyBpbnNlcnRpb25zKCspLCA0NCBkZWxldGlvbnMoLSkKPiA+Cj4gPiAtLQo+ID4gMi4z
OC4wCj4gPiAgCj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
