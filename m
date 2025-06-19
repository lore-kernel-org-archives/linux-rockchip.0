Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E89A7C7115A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 11:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvomESlpsSuO6XQEgZWBH14CsvGJ3w6t6cQnEWzc+go=; b=3/UDwejJc/J+jK
	zD/wR1YAiMvNSYl0JfaNFB4uhwSim2weFm9iaQdGts5DezOI5k00nyJ/L4hPTFUIxV4dmwK73evQ5
	EYZhChiI5+t779AP3BpzBlbBl0pmiRok9cuJRcT9V4Vghym/Rvinn5gFyAA+wCj3XuLeDOKD6/QEk
	bV5qARCojXO22O7pb7CcbF05JN+VQzJzRKM4YUNBNyRJ5X8QG9j5pRn0iclRKIE+VB10zRn03BUFe
	UTg2+VB7ANDqUMBVqatMEeGG8Bf4vDXAicL29hsu4TZ1EC6SQNG4k/Hz7R8xR8ACPL4uOaU559i7n
	fr9ZW+6dWb3iwuJslBZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSDTu-0000000CsqU-37sk;
	Thu, 19 Jun 2025 11:30:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSCYX-0000000Cl2P-43zT;
	Thu, 19 Jun 2025 10:31:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uHc7BspCc4VebX3+yVBmPaBO4Z3SMOpLQiryABMTzXg=; b=qhUUmauacre6f0NDbZEh0A209v
	PUSFAm69IOwcfWsONe8VRlmUFter+1RNbipSRBRx8Pkz1eqM7uPExZ/Jv9yT3+3VspkNVZzlc9SDk
	Abq3dkD7mVqK/P0ZUX4fivIyplQ/yR373A/gvQRZfAG28HjumuSX1eAd90imC2PqWw+ivvezsgZFq
	92/1onaEVis29tvgAVcXw2KIhbQ/HZ/kEjC+jIRjRxfMC01VaSuPxNS2zc/M80yqs5HL2xbA7Y22O
	GaeTm8Hek/Gm0+lj59FMeDzKmoSgOLyG/WU2Luea9XKiGkTRohtkk170iYUPznw/y6I/AVZwX13i2
	XMMlbEQw==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSCYS-0008Oq-0k; Thu, 19 Jun 2025 12:31:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Olivier Benjamin <olivier.benjamin@bootlin.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Diederik de Haas <didi.debian@cknow.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix the PinePhone Pro DTS' panel
 description
Date: Thu, 19 Jun 2025 12:31:35 +0200
Message-ID: <5461462.0VBMTVartN@phil>
In-Reply-To: <DAQEX04P5320.CQDU7SL7AV4A@cknow.org>
References: <20250619-dtb_fixes-v2-1-abd711d11b67@bootlin.com>
 <DAQEX04P5320.CQDU7SL7AV4A@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_033142_025645_0B3F361E 
X-CRM114-Status: GOOD (  20.28  )
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

QW0gRG9ubmVyc3RhZywgMTkuIEp1bmkgMjAyNSwgMTE6NDY6MTUgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBEaWVkZXJpayBkZSBIYWFzOgo+IEhpLAo+IAo+IFRoYW5rcyBm
b3Igd29ya2luZyBvbiB1cHN0cmVhbWluZyBQUFAgdGhpbmdzIDotKQo+IAo+IE9uIFRodSBKdW4g
MTksIDIwMjUgYXQgNzoyMSBBTSBDRVNULCBPbGl2aWVyIEJlbmphbWluIHdyb3RlOgo+ID4gRml4
IGEgZmV3IGlzc3VlcyBpbiB0aGUgcGFuZWwgc2VjdGlvbiBvZiB0aGUgUGluZVBob25lIFBybyBE
VFM6Cj4gPiAgIC0gYWRkIHRoZSBzZWNvbmQgcGFydCBvZiB0aGUgSGltYXggSFg4Mzk0IExDRCBw
YW5lbCBjb250cm9sbGVyCj4gPiAgICAgY29tcGF0aWJsZQo+ID4gICAtIGFzIHByb3Bvc2VkIGJ5
IERpZWRlcmlrIGRlIEhhYXMsIHJldXNlIHRoZSBtaXBpX291dCBhbmQgcG9ydHMKPiA+ICAgICBk
ZWZpbml0aW9ucyBmcm9tIHJrMzM5OS1iYXNlLmR0c2kgaW5zdGVhZCBvZiByZWRlZmluaW5nIHRo
ZW0KPiA+ICAgLSBhZGQgYSBwaW5jdHJsIGZvciB0aGUgTENEX1JTVCBzaWduYWwgZm9yIExDRDEs
IGRlcml2ZWQgZnJvbQo+ID4gICAgIExDRDFfUlNULCB3aGljaCBpcyBvbiBHUElPNF9EMSwgYXMg
ZG9jdW1lbnRlZCBvbiBwYWdlcyAxMQo+ID4gICAgIGFuZCAxNiBvZiB0aGUgUGluZVBob25lIFBy
byBzY2hlbWF0aWMKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBPbGl2aWVyIEJlbmphbWluIDxvbGl2
aWVyLmJlbmphbWluQGJvb3RsaW4uY29tPgoKPiA+ICsJbGNkIHsKPiA+ICsJCWxjZF9yZXNldF9w
aW46IHJlc2V0LXBpbiB7Cj4gCj4gSSBkb24ndCBrbm93IGlmIHRoZXJlJ3MgYSAnaGFyZCBydWxl
JyBmb3IgaXQsIGJ1dCBJJ2QgcmVjb21tZW5kIHRvIHVzZQo+IGBgbGNkMV9yc3RfcGluOiBsY2Qx
LXJzdC1waW4ge2BgIGFzIHRoYXQgd291bGQgbWF0Y2ggdGhlIG5hbWluZyBmcm9tCj4gdGhlIHNj
aGVtYXRpY3MuIEkgcmVhbGl6ZSB0aGF0IHNvbWUgYnV0IG5vdCBhbGwgKG90aGVyKSBwaW5jdHJs
IG5vZGVzCj4gZm9sbG93IHRoYXQgJ3J1bGUnLCBidXQgaXQgaGVscHMgd2l0aCB0cmFjZWFiaWxp
dHkuCgpub3QgYSAiaGFyZCIgcnVsZSwgYnV0IGEgc3Ryb25nIHByZWZlcmVuY2UuCkkuZS4gd2Ug
d2FudCBwZW9wbGUgdG8gaWRlYWxseSBiZSBhYmxlIHRvIGp1c3QgaGl0IHNlYXJjaCBpbiB0aGUK
c2NoZW1hdGljcyBQREZzIGZvciB0aGUgbmFtZSB0aGV5IHNhdyBpbiB0aGUgZGV2aWNldHJlZS4K
ClNvbWV0aW1lcyB0aGF0IGlzIG5vdCBwb3NzaWJsZSwgYmVjYXVzZSBvZiBuYW1pbmcgY29udmVu
dGlvbnMgb3IKb3Zlcmx5IHN0cmFuZ2Ugc2NoZW1hdGljLW5hbWVzIC4uLiBhbmQgc29tZXRpbWVz
IHRoaW5ncyBzbGlwIHRocm91Z2gKYXMgd2VsbC4KCkJ1dCBmb2xsb3dpbmcgdGhlIHNjaGVtYXRp
YyBuYW1lcywgaXMgdGhlIGdlbmVyYWwgZ29hbC4KCgpJZiB0aGlzIHN0YXlzIHRoZSBvbmx5IHN1
Z2dlc3Rpb24gdGhvdWdoLCBJIGNhbiBmaXggdGhhdCB3aGVuCmFwcGx5aW5nLiBPciB5b3UgY2Fu
IHNlbmQgYSB2MyAtIHVwIHRvIHlvdSA6LSkKCgpIZWlrbwoKCj4gCj4gPiArCQkJcm9ja2NoaXAs
cGlucyA9IDw0IFJLX1BEMSBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiA+ICsJCX07
Cj4gPiArCX07Cj4gPiArCj4gPiAgCWxlZHMgewo+ID4gIAkJcmVkX2xlZF9waW46IHJlZC1sZWQt
cGluIHsKPiA+ICAJCQlyb2NrY2hpcCxwaW5zID0gPDQgUktfUEQyIFJLX0ZVTkNfR1BJTyAmcGNm
Z19wdWxsX25vbmU+Owo+IAo+IE90aGVyd2lzZSwKPiAKPiBSZXZpZXdlZC1ieTogRGllZGVyaWsg
ZGUgSGFhcyA8ZGlkaS5kZWJpYW5AY2tub3cub3JnPgo+IAo+IENoZWVycywKPiAgIERpZWRlcmlr
Cj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
