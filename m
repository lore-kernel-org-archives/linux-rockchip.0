Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53450CAC59A
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Sep 2025 16:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRAFgDiA6ICCRMIZ6lO1PKzVHaXz4SW4+bxMW9R6Xtg=; b=Fe1Sec8ztSGavU
	JjByo4SWroaDpkCqUwkX9MV6hE+ytpubNQCY9+lfJ8Kl6qlGJjM33nY0P1Fp5ckH4uZH6Om2r24dc
	j0NihCEpThGpr7O4l1lSlCw7DrDWMYaCTsUpcxjQkUwfTpYaPmZDLW9g6zQWNPC1mrqznQaGUVLkv
	aKvOfK/PxjaFJATZYtwd99HLtiPmWZLIZP85R5vXEe3DxRs4OrZyxXM/45Php14je6dRT54zGWUpv
	cmkC4GERETWzLLoNeJj5xyggWKrS960UiBQRx6sbPgevfgdSWpBvjXwq9gXpyqjGVSmV0TQsnMCH2
	MemsxVvjCawSKlS80e7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzHL6-00000000aYH-2Sgv;
	Thu, 18 Sep 2025 16:18:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzHL3-00000000aW5-1hAI;
	Thu, 18 Sep 2025 16:18:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:Cc;
	bh=ninNeWEmz3Wj53O9s8gF8RXSPwXAfvqBAcR4jaHa4D8=; b=IzQ3gB5kMzVaoDZubjbNyvLEeH
	Y8EdbjZaPEGufSFgqArSrQWsXjOqXDcS29gAZ0vIGFDLDkHN+tf/zsQhU0pD36a1MgA+ZpUDJE92u
	TMd9BLoua4CEivJdq133lp8O5VUx88Rm8pLgrCW+KaT2T4U0tv5AceP3RTE96YEw4AX/19Ut89mPq
	QxMBbt6IMKZAo30UAWTzK6I366Wcdo2yrHONbkGAv6g6foGiicswPvLocRMlPKepzB4l0xpe8PtKb
	MGjZV2tx4y3/53XQaQvvjmhvVTIX1EnNlHLeuXy/69Z99/kyJBdLOYuiuRQETLMdTMvvbQS0U55Au
	TKnxHl6Q==;
Received: from i53875b0a.versanet.de ([83.135.91.10] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uzHKw-0001xW-Pd; Thu, 18 Sep 2025 18:18:22 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ed W <lists@wildgooses.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: correct uart mux for Radxa ZERO3
Date: Thu, 18 Sep 2025 18:18:22 +0200
Message-ID: <2325560.3ZeAukHxDK@diego>
In-Reply-To: <adbc2396-d5f0-4dd6-a65e-0dd78a58b9a4@wildgooses.com>
References: <20250917114932.25994-1-lists@wildgooses.com>
 <FBB5B30DE8FEABD7+59ee6f48-2ad1-45dd-8cf1-8b58a03513a9@radxa.com>
 <adbc2396-d5f0-4dd6-a65e-0dd78a58b9a4@wildgooses.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_091829_449965_E8920087 
X-CRM114-Status: GOOD (  29.92  )
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

QW0gRG9ubmVyc3RhZywgMTguIFNlcHRlbWJlciAyMDI1LCAxNzoyMzowNCBNaXR0ZWxldXJvcMOk
aXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEVkIFc6Cj4gT24gMTgvMDkvMjAyNSAwNTo1MywgRlVL
QVVNSSBOYW9raSB3cm90ZToKPiA+IEhpIEVkLAo+ID4KPiA+IFRoYW5rIHlvdSB2ZXJ5IG11Y2gg
Zm9yIHlvdXIgd29yay4KPiA+Cj4gPiBPbiA5LzE3LzI1IDIwOjQ5LCBFZCBXaWxkZ29vc2Ugd3Jv
dGU6Cj4gPj4gVGhlIHJrMzU2NiBoYXMgbXVsdGlwbGV4ZWQgcGlucyBhbmQgdGhlIHVhcnRzIGNh
biBiZSBtb3ZlZCB0byBhIGNob2ljZQo+ID4+IG9mIDIgcGluIGdyb3Vwcy4gVGhlIGRlZmF1bHQg
cmszNTZ4LWJhc2UuZHRzaSBhcHBlYXJzIHRvIGRlZmF1bHQgdG8gbXV4MAo+ID4+IGZvciBhbGwg
dWFydHMsIGhvd2V2ZXIsIHNwZWNpZmljIGhhcmR3YXJlIG1pZ2h0IGNob29zZSB0byBpbXBsZW1l
bnQKPiA+PiBhbHRlcm5hdGl2ZXMKPiA+Pgo+ID4+IFRoZSBSYWR4YSB6ZXJvIDMgc2hvd3MgdGhh
dCBpcyB1c2VzIE0xIGZvciB1YXJ0czoKPiA+PiAtIHVhcnQ0Cj4gPj4gLSB1YXJ0NQo+ID4+IC0g
dWFydDkKPiA+Pgo+ID4+IFRoZXNlIGFyZW4ndCBub3JtYWxseSBlbmFibGVkLCBidXQgd2Ugc2hv
dWxkIGF0IGxlYXN0IGNvcnJlY3QgdGhlCj4gPj4gZGVmYXVsdCBwaW5jdHJsIGRlZmluaXRpb25z
LiBXaXRob3V0IHRoZXNlIGNoYW5nZXMgdGhlcmUgd2lsbCBiZQo+ID4+IGNvbmZsaWN0cyB3aXRo
IG1tYzAvbW1jMSwgbGVhZGluZyB0byB0aGUgU0Qgb3IgZU1NQyBnb2luZyBtaXNzaW5nLgo+ID4K
PiA+IFNvcnJ5LCBidXQgd2h5IGRvIHdlIG5lZWQgdGhlc2UgZGVmaW5pdGlvbnMgZm9yIGRpc2Fi
bGVkIG5vZGVzPwo+ID4KPiA+IE9yIHdoeSBkb24ndCB3ZSBkbyBzaW1pbGFyIGRlZmluaXRpb25z
IGZvciBub2RlcyBvdGhlciB0aGFuIHVhcnQ/Cj4gPiBGb3IgZXhhbXBsZSwgUFdNMTIsIEkyUzMs
IGFuZCBTUEkzIGFsc28gdXNlIE0xLiBBcmUgdGhleSBub3QgcmVsYXRlZCB0byBTRC9lTU1DIGFu
ZCB0aGVyZWZvcmUKPiA+IGRvbid0IG5lZWQgdG8gYmUgZGVmaW5lZD8KPiA+Cj4gPiBJZiB1c2Vy
cyB3YW50IHRvIHVzZSBVQVJUcyBvbiBwaW4gaGVhZGVycywgdGhleSB3aWxsIHJlZmVyIHRvIHRo
ZSBjb3JyZWN0IGRvY3VtZW50YXRpb25bMV0gdG8KPiA+IGRldGVybWluZSB3aGljaCBwaW5zIGFy
ZSBVQVJUcyBhbmQgd2lsbCBvZiBjb3Vyc2Ugd3JpdGUgdGhlIGNvcnJlY3QgcGluY3RybCBkZWZp
bml0aW9uLgo+ID4KPiA+IFsxXSBodHRwczovL2RvY3MucmFkeGEuY29tL2VuL3plcm8vemVybzMv
aGFyZHdhcmUtZGVzaWduL2hhcmR3YXJlLWludGVyZmFjZSNncGlvLWludGVyZmFjZQo+ID4KPiA+
IEJlc3QgcmVnYXJkcywKPiA+Cj4gCj4gCj4gUGVyc29uYWxseSwgYW5kIEknbSBzYXlpbmcgdGhp
cyBhcyBhIHVzZXIgd2hvIGlzIHRlY2huaWNhbCBlbm91Z2ggdG8gZml4IHRoZSBkZWZpbml0aW9u
cywgaXQgdG9vayBtZQo+IHF1aXRlIGEgZmV3IGRheXMgdG8gZmlndXJlIG91dCB3aGF0IHdhcyB3
cm9uZyB3aXRoIHRoZSBkZWZpbml0aW9ucyBhbmQgdW5kZXJzdGFuZCB0aGUgaW50cmljYXRlIHRy
ZWUKPiBvZiBkdHNpIGluY2x1ZGVzLCB0byBmaW5hbGx5IGZpZ3VyZSBvdXQgd2h5IEkgY291bGRu
J3QganVzdCBkbyBhICJzdGF0dXMgPSAib2theSI7IiB0byBlbmFibGUgdGhlCj4gVUFSVHMuLi4g
KHdoaWNoIGlzIHJvdWdobHkgd2hhdCBpcyBzaG93biBpbiBzZXZlcmFsIHJhZHhhIHN1cHBsaWVk
IG92ZXJsYXlzIHRvIGVuYWJsZSB1YXJ0cyBvbgo+IHZhcmlvdXMgYm9hcmRzKQo+IAo+IFNvIG15
IHZvdGUgd291bGQgYmUgdG8gY29ycmVjdGx5IGRlZmluZSBhbGwgdGhlIGhhcmR3YXJlIGZvciBh
IGdpdmVuIGJvYXJkLiBUaGVuIHVzZXJzIGNhbiBzaW1wbHkgZG8KPiBhIHN0YXR1cz0ib2theSIg
dG8gZW5hYmxlIGFuZCBvZmYgdGhleSBnby4KCkFuZCBJJ2QgYWdyZWUgd2l0aCB0aGF0IGFyZ3Vt
ZW50LiBTZXR0aW5nIHVwIHRoZSBuZWVkZWQgcGluY3RybCBzZXR0aW5ncwpmb3IgdGhlIHBlcmlw
aGVyYWxzIGRlc2NyaWJlZCBpbiB0aGUgZGV2aWNlIGRvY3VtZW50YXRpb24KKCBodHRwczovL2Rv
Y3MucmFkeGEuY29tL2VuL3plcm8vemVybzMvaGFyZHdhcmUtZGVzaWduL2hhcmR3YXJlLWludGVy
ZmFjZSNncGlvLWludGVyZmFjZSApCgppcyB0aGUgc2Vuc2libGUgdGhpbmcgdG8gZG8uIFdoaWxl
IGtlZXBpbmcgdGhlIHBlcmlwaGVyYWxzIGl0c2VsZiBkaXNhYmxlZAphbmQgZm9yIHRoZSB1c2Vy
IHRvIGRlY2lkZSB3aGljaCBwZXJpcGhlcmFsIHRvIGVuYWJsZS4KCkhlaWtvCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
