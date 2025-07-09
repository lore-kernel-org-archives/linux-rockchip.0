Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64B13C83F18
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 22:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3WpA3JVeAZ25A4Ocvdd9PZmbPAeUVxGagy9BtB9aGM=; b=c+urKWbwEHRUar
	RBRmrLLkwe90xGSUTgxcq7i5iRQwzsaouUssD7Qp3O2vyRDn5S05I+216DeFuBYdATTNgG65cUsgn
	+doHCfCcRhYtmDoDwGtPyNdfZvYUUXRbX+7Sii43wWC9NQZsfAq/mKAFWzT6Kgcs8NFVF8y/EnctP
	giIx8caUUk0A++5znfvi7tQOwhtPgbW0+OtS8ro+UZrpAAO4l2ERxKUxdCJ7hglSvsSkLW4B2u9Hz
	5tapuAiBLep/2sFMLCfrDWu0dK7kr+RrXEvs32plKiSaiJyHyUuoz3emITQt5l1GYSMkSJmI7JyOw
	tWvMm8hSh6IHPM2ZuRlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZdiC-0000000A7uZ-1dka;
	Wed, 09 Jul 2025 22:56:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZanK-00000009ju5-18SS;
	Wed, 09 Jul 2025 19:49:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JIrfiZ2BvOoCvUQBun7pn9xaoeAsHVtLpdKutL1I700=; b=CYaOezZ2zf79ThbGUEfeCg/ZYK
	fyz1Q/S7whHftG34Ca7W6SmF0aaoMjP4uPegf8BVthOr/hy7RVIUy/m70HQJfxYWFv9XXIw/RkUAk
	YEw4yM0kldmAjkumF7qsOoir9y8WqDkJedWcUApj+A6caFajlTWsJNr50zBoPGrI3WTvmdKvYFy4q
	NLxnvmcC0eXCmz5ahWpQL1a9Rj+chKfU/DLRmhv4GNcdZrXHjHF6BSvfL5Gak9539f2BF69lpzTcK
	gwupUSokTidAC8Gd+AaqFl+ZGoq6TazEJSPspX2fd/TBLsrIkstZtjbUL1Xa6lJir+qDMiI+B6TQV
	NNpTO15Q==;
Received: from i53875a79.versanet.de ([83.135.90.121] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZan1-0006Vl-RU; Wed, 09 Jul 2025 21:49:11 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add reset button to NanoPi R5S
Date: Wed, 09 Jul 2025 21:49:11 +0200
Message-ID: <11937120.2WqB4rESCP@diego>
In-Reply-To: <DB7OENOUTHGM.2JPD73SZQ9P0P@cknow.org>
References: <20250709105715.119771-1-didi.debian@cknow.org>
 <ea6f2815-5882-4fab-8372-1c252a87e09a@kernel.org>
 <DB7OENOUTHGM.2JPD73SZQ9P0P@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_124930_308962_319A93FE 
X-CRM114-Status: GOOD (  28.38  )
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

QW0gTWl0dHdvY2gsIDkuIEp1bGkgMjAyNSwgMTg6NDc6NDcgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBEaWVkZXJpayBkZSBIYWFzOgo+IE9uIFdlZCBKdWwgOSwgMjAyNSBh
dCA0OjE4IFBNIENFU1QsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPiBPbiAwOS8wNy8y
MDI1IDEzOjE3LCBEaWVkZXJpayBkZSBIYWFzIHdyb3RlOgo+ID4+Pj4gIAkJY29tcGF0aWJsZSA9
ICJncGlvLWxlZHMiOwo+ID4+Pj4gIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+Pj4+
IEBAIC0xMjcsNiArMTQwLDEyIEBAIGV0aF9waHkwX3Jlc2V0X3BpbjogZXRoLXBoeTAtcmVzZXQt
cGluIHsKPiA+Pj4+ICAJCX07Cj4gPj4+PiAgCX07Cj4gPj4+PiAgCj4gPj4+PiArCWdwaW8ta2V5
cyB7Cj4gPj4+PiArCQlncGlvNF9hMF9rMTogZ3BpbzQtYTAtazEgewo+ID4+Pgo+ID4+PiBBcmUg
eW91IHN1cmUgdGhhdCB0aGlzIHBhc3NlcyBjaGVja3M/Cj4gPj4gCj4gPj4gSWYgaXQncyBhYm91
dCB0aGUgJ3dlaXJkJyBuYW1lL2xhYmVsLCBpdCBpcyB3aGF0IGlzIHVzZWQgaW4gdGhlCj4gPj4g
c2NoZW1hdGljIGRvY3VtZW50IEkgaGF2ZSBhbmQgSSBhc2tlZCBIZWlrbyAob24gSVJDKSBpZiB1
c2luZwo+ID4+IGBgcmVzZXRfYnV0dG9uX3BpbjogZ3BpbzQtYTAtazFgYCB3b3VsZCBub3QgYmUg
YmV0dGVyLiBUaGF0IHdvdWxkIG1ha2UKPiA+PiBpdCBtb3JlIGRlc2NyaXB0aXZlIHdoaWxlIGFs
c28gaGF2aW5nIHRoZSBzY2hlbWF0aWMgdHJhY2VhYmlsaXR5IGluIGl0Lgo+ID4+IFRoZSBhbnN3
ZXIgd2FzIG5vLCB1c2UgdGhlIGZvcm0gSSB1c2VkIGluIHRoaXMgcGF0Y2guCj4gPj4gCj4gPj4g
QW0gSSBtaXNzaW5nIGNoZWNrcyBJIHNob3VsZCd2ZSBkb25lIGFzIHdlbGw/Cj4gPiBJIG1lYW50
IHRoYXQgdXN1YWxseSBub2RlcywgaW5jbHVkaW5nIHBpbiBjb250cm9sbGVyIG11eC9jb25maWcg
bm9kZXMsCj4gPiBoYXZlIHNwZWNpZmljIHByZWZpeGVzIG9yIHN1ZmZpeGVzLiBPdGhlciBjYXNl
cyBoYXZlIGhlcmUgYXMgd2VsbC4gWW91cgo+ID4gZG9lcyBub3QuCj4gCj4gSSBhZ3JlZSBJJ3Zl
IGRvbmUgaXQgaW5jb25zaXN0ZW50IHdpdGggaG93IEkgZGlkIHRoZSBvdGhlciBwaW5jdHJsCj4g
bm9kZXMsIHNvIEkgc2hvdWxkJ3ZlIGFkZGVkIHRoZSAnLXBpbicgc3VmZml4LiBGb3IgY29uc2lz
dGVuY3kuCgpBbHNvIGZpbmUgYnkgbWUgOi0pIC4KCgo+IEkndmUgYmVlbiB3b25kZXJpbmcgd2hl
dGhlciB0aGVyZSBhcmUgcnVsZXMgZm9yIG5hbWluZyBbMV0sIGJvdGggZm9yIHRoZQo+IGdyb3Vw
aW5nIGFuZCB0aGUgbm9kZSBuYW1lcy4gU29tZSBEVFMgZmlsZXMgdXNlIGEgJy1waW4nIHN1ZmZp
eCwgb3RoZXJzCj4gZG9uJ3QuIEFuZCBpdCdzIG5vdCB1bmNvbW1vbiB0byBzZWUgYm90aCB2YXJp
YW50cyBpbiB0aGUgc2FtZSBkdHMgZmlsZS4KPiAKPiBPbmUgb2YgdGhlIGV4YW1wbGVzIEkgbG9v
a2VkIGF0IHdhcyBgYHJrMzU2OC1xbmFwLXRzNDMzLmR0c2BgLiBXaGlsZSBpdAo+IHVzZXMgJ2tl
eXMnIGFzIGdyb3VwaW5nIG5vZGUsIEkgd2VudCB3aXRoICdncGlvLWtleXMnIGFzIHRoYXQgd2Fz
IHVzZWQKPiBtb3JlIG9mdGVuIChpbiBvdGhlciBmaWxlcykuIFdoaWxlIHRoZSBnbWFjMC9rZXlz
L2xlZHMgc3Vibm9kZXMgdW5kZXIKPiBgYCZwaW5jdHJsYGAgdXNlIHRoZSAnLXBpbicgc3VmZml4
LCB0aGUgcG1pYy91c2Igc3Vibm9kZXMgZG8gbm90Lgo+IChhbmQgSSBqdXN0IG5vdGljZWQgJ2hk
ZDRfbGVkLXBpbicgc2hvdWxkIGJlICdoZGQ0LWxlZC1waW4nKQoKVGhlIFRTNDMzIHN1ZmZlcnMg
ZnJvbSB0aGF0ICJubyBzY2hlbWF0aWNzIiB0aGluZyBJIG1lbnRpb25lZCBpbiB0aGUKb3RoZXIg
bWFpbCwgc28gdGhlIGRldmljZS1zcGVjaWZpYyBwaW5zIGFyZSBuYW1lZCBhZnRlciB0aGVpciBm
dW5jdG9uLgpBcyBJIHdhcyBhc3N1bWluZyB0aGUgVFM0MzMgd2lsbCBmb2xsb3cgdGhlIHJlZmVy
ZW5jZSBkZXNpZ24sIHRob3NlCnBpbnMgYXJlIG5hbWVkIGFmdGVyIGhvdyBvdGhlciBib2FyZHMg
ZG8gaXQKCkJ1dCBJIHRoaW5rIEknbSBqdXN0IG1ha2luZyBzZW5zZSBvZiBteSBzdWJjb25zY2lv
dXMgY2hvaWNlcwpyZXRyb2NhY3RpdmVseSByaWdodCBub3cgYW5kIGFsbCB0aGUgYWJvdmUgc29y
dCBvZiBoYXBwZW5lZCB3aXRob3V0Cm1lIHRoaW5raW5nIHRvIG11Y2ggYWJvdXQgdGhhdC4KCgo+
IEknZCBsb3ZlIHRvIGtub3cvbGVhcm4gaWYgdGhlcmUgYXJlIGFjdHVhbCBydWxlcyBmb3IgdGhl
c2UgdGhpbmdzLCBidXQKPiBJIGRvbid0IGtub3cgdGhlbS4KCkZyb20gbG9va2luZyBhdCBwaW5j
dHJsIGJpbmRpbmdzLCBpdCBzZWVtcyBwYXR0ZXJucyBhcmUgc2V0IHBlciBjb250cm9sbGVyCndp
dGggbm8gZ2xvYmFsIHJ1bGVzLiBXaGljaCBtYWtlcyBzZW5zZSBpbiBhIHdheSwgYmVjYXVzZSB0
aGV5IGRvCnJlcHJlc2VudCBwaW4oLWdyb3VwcykgZGlmZmVyZW50bHkgZWFjaC4KCgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
