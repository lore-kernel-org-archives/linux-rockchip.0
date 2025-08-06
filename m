Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14B75C87FD3
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 19:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=leQuLhYxC22oPnDU/WenlWIXG7d2FjzJw3aims8sZNI=; b=KPyvnIl/qMysHm
	0o8RR/1EUpGjlxST2xzrk/eRiNixi50heWLZoJYJxCYPt0GDg+SwVWvMr3kQIslmKJTxPCdyLNOYI
	7xzlUim/ms/No7o/TFJULHQq2kNfYOr4VUIEB0MN//BoKpVUSeBsJ0qiBPe1dRHUl8DW9oC3GHrqF
	gPweuS+ZG1PzhCqdfoBIL17VWhkX0klsf4DYTqiuMro5XCVeC+VDyB5DAAgI9cSJxYgbxJHkTlU+/
	Wens1WKy9mA88VImhQ4i+PO+hAYVU375Zuib3JqfhIdU3MsSG8mtaWAgwBOO+OQ3cQY2ZhtGKUrRo
	AIdPcelE+3OGjp9IDANA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujjyZ-0000000GDx2-1ZfC;
	Wed, 06 Aug 2025 19:39:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujjw2-0000000GDdt-0Kf7;
	Wed, 06 Aug 2025 19:36:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=nXUIq0KBN45e4elJmxMkBPbWGLA75j5v+eWYJ6VU5Hg=; b=C+v1w9mq23BhAT46TsD4d0k8Bj
	SYUMJtNqh+gf51YtjcmQRljFVtHduyBsjvh7DFGU9CwzM3YrPQkMedjxjy5w4OEiTN3OPgO9rP1U5
	ZbUyYfhutAr2b1PT8HQNjdFhrsGSX16wSoDBW2pR/6/mLWbTuHtq+g8JKpsU47MmbRLRsc96bWF9S
	6VsTeYfaAqQQamk99wQz3cNvnWU6XRILV8Nve1lhtoJ7pKQJ+BxM8I7mj5SFbo2dcs/OE0D1bAtYL
	P2k+8g9nsBkB+WxxjBOI2qUj8MFlCNBNdg1CzeEbQ7lmpuSmVJOH80zJ0LN2ELkMAxAEB4K/P0/4q
	X5ygWAYA==;
Received: from i53875ab1.versanet.de ([83.135.90.177] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ujjvm-0001uY-RB; Wed, 06 Aug 2025 21:36:10 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Niklas Cassel <cassel@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Damien Le Moal <dlemoal@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Niklas Cassel <cassel@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588
 SoC
Date: Wed, 06 Aug 2025 21:36:10 +0200
Message-ID: <4400329.mogB4TqSGs@diego>
In-Reply-To: <20241107123732.1160063-2-cassel@kernel.org>
References: <20241107123732.1160063-2-cassel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_123626_149658_CF640285 
X-CRM114-Status: GOOD (  28.57  )
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

SGkgTmlrbGFzLAoKQW0gRG9ubmVyc3RhZywgNy4gTm92ZW1iZXIgMjAyNCwgMTM6Mzc6MzMgTWl0
dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBOaWtsYXMgQ2Fzc2VsOgo+IENvbW1p
dCBjZDgxZDNhMDY5NWMgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIHJrMzU4OCBwY2llIGFu
ZCBwaHAKPiBJT01NVXMiKSBhZGRlZCB0aGUgcmszNTg4IFNvQydzIHBjaWUgSU9NTVUgYW5kIHBo
cCBJT01NVSBhcyBkaXNhYmxlZC4KPiAKPiBUaGUgbW11NjAwX3BjaWUgaXMgY29ubmVjdGVkIHdp
dGggdGhlIGZpdmUgUENJZSBjb250cm9sbGVycy4KPiBTZWUgOC4yIEJsb2NrIERpYWdyYW0sIGlu
IHJrMzU4OCBUUk0gKFRlY2huaWNhbCBSZWZlcmVuY2UgTWFudWFsKS4KPiAKPiBUaGUgZml2ZSBQ
Q0llIGNvbnRyb2xsZXJzIGFyZToKPiBwY2llM3g0LCBwY2llM3gyLCBwY2llMngxbDAsIHBjaWUy
eDFsMSwgcGNpZTJ4MWwyLgo+IAo+IHBjaWUzeDQgY2FuIHJ1biBpbiBlaXRoZXIgUm9vdCBDb21w
bGV4IG1vZGUgb3IgRW5kcG9pbnQgbW9kZSwgdGhlIG90aGVyCj4gZm91ciBQQ0llIGNvbnRyb2xs
ZXJzIGNhbiBvbmx5IHJ1biBpbiBSb290IENvbXBsZXggbW9kZS4gVG8gZGVzY3JpYmUgdGhpcwo+
IHdlIHRodXMgaGF2ZSBzaXggZGlmZmVyZW50IGRldmljZSBub2RlcyBpbiB0aGUgZGV2aWNlIHRy
ZWUuCj4gCj4gQSBQQ0llIGNvbnRyb2xsZXIgaW4gUm9vdCBDb21wbGV4IG1vZGUgbmVlZHMgdG8g
c3BlY2lmeSBhbiBpb21tdS1tYXAsIHN1Y2gKPiB0aGF0IHRoZSBkZXZpY2Uga25vd3MgaG93IHRv
IGNvbnZlcnQgYSBSZXF1ZXN0ZXIgSUQgKFBDSSBCREYpIHRvIGFuIElPTU1VCj4gbWFzdGVyIElE
IChzdHJlYW0gSUQpLiAoQSBQQ0llIGNvbnRyb2xsZXIgaW4gRW5kcG9pbnQgbW9kZSBzaG91bGQg
dXNlIHRoZQo+IGlvbW11cyBwcm9wZXJ0eSwganVzdCBsaWtlIGEgcmVndWxhciBkZXZpY2UuKQo+
IAo+IElmIHlvdSBsb29rIGF0IHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5ncyBmb3IgbXNpLW1hcCBh
bmQgaW9tbXUtbWFwLCB5b3UgY2FuCj4gc2VlIHRoYXQgdGhlIGNvbnZlcnNpb24gZnJvbSBSZXF1
ZXN0ZXIgSUQgdG8gTVNJLXNwZWNpZmllciBkYXRhIGlzIHRoZSBzYW1lCj4gYXMgdGhlIGNvbnZl
cnNpb24gZnJvbSBSZXF1ZXN0ZXIgSUQgdG8gSU9NTVUgc3BlY2lmaWVyIGRhdGEuIFRodXMgaXQg
aXMKPiBzZW5zaWJsZSB0byBkZWZpbmUgdGhlIGlvbW11LW1hcCBwcm9wZXJ0eSB2YWx1ZSBzaW1p
bGFyIHRvIHRoZSBtc2ktbWFwLAo+IHN1Y2ggdGhhdCB0aGUgY29udmVyc2lvbiB3aWxsIGJlIGlk
ZW50aWNhbC4KPiAKPiBBZGQgdGhlIHByb3BlciBpb21tdSBkZXZpY2UgdHJlZSBwcm9wZXJ0aWVz
IGZvciB0aGVzZSBzaXggZGV2aWNlIG5vZGVzCj4gY29ubmVjdGVkIHRvIHRoZSBtbXU2MDBfcGNp
ZSwgc28gdGhhdCB3ZSBjYW4gZW5hYmxlIHRoZSBtbXU2MDBfcGNpZSBJT01NVS4KPiAoVGhlIG1t
dTYwMF9waHAgSU9NTVUgaXMgbm90IHRvdWNoZWQsIHNvIGl0IGlzIHN0aWxsIGRpc2FibGVkLikK
PiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWtsYXMgQ2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4KCkkn
dmUgcnVuIGludG8gYSBiaXQgb2YgYSBwcm9ibGVtIHdpdGggdGhpcyBwYXRjaCBhbmQgdjYuMTYg
dG9kYXkgOi0oIC4KCkl0IHNlZW1zIHRoZSBTTU1VIGN1cnJlbnRseSBkb2VzIG5vdCBwbGF5IHdl
bGwsIGlmIGhhcyBubyB1c2Vycy4gV2l0aAp0aGlzIHBhdGNoIHRoZSBwY2llIHNtbXUgaXMgYWx3
YXlzIHByb2JlZCwgZXZlbiBpZiBub3RoaW5nIGlzIHVzaW5nIGl0Lgoob3IgaW4gZmFjdCB0aGUg
UENJZSBjb250cm9sbGVyIGRyaXZlciBkZWZlcnMgcHJvYmluZyBmb3Igd2hhdGV2ZXIgcmVhc29u
KS4KCkJ1dCBpbiBhbGwgY2FzZXMgdGhlIFNNTVUncyBzaHV0ZG93biBjYWxsYmFjayB3aWxsIGJl
IGNhbGxlZCB3aGVuIG5lZWRlZC4KClNvIHRlc3QtY2FzZToKLSBwcm9iZSBwY2llLXNtbXUsIGJ1
dCBkbyBub3QgcHJvYmUgUENJZSAuLi4gaGl0IHJlYm9vdAogIFRoZSBzbW11IHNodXRkb3duIGZ1
bmN0aW9uIHdpbGwgaGFuZyBmb3IgYSBiaXQsIGFuZCBhdCBsZWFzdCBteSB0d28KICB0ZXN0IGJv
YXJkcyAgZGlkIHJlYm9vdCBhZnRlciBoYW5naW5nIGFib3V0IDMwIHNlY29uZHMKICAoSSBkaWQg
dHJhY2UgdGhhdCBkb3duIHRvIHRoZSBhcm1fc21tdV9zaHV0ZG93biBmdW5jdGlvbikKLSBwcm9i
ZSBwY2llLXNtbXUgYW5kIHByb2JlIFBDSWUgLSBjcmVhdGluZyBhIHVzZXIgZm9yIHRoZSBzbW11
CiAgUmVib290IGhhcHBlbnMgd2l0aG91dCBoYW5nL2RlbGF5CgpMaWtlbHkgdGhlIFNNTVUgaXMg
bWlzc2luZyBlaXRoZXIgYSBjbG9jayBvciBpdHMgcG93ZXItZG9tYWluLgoKSnVzdCBhZGRpbmcg
dGhlIHBvd2VyLWRvbWFpbiB0byB0aGUgbm9kZSwgZGlkIGtlZXAgdGhlIGRvbWFpbiBvbiwgYnV0
CmRpZCBub3Qgc29sdmUgdGhlIGhhbmcgZm9yIG1lLgoKU3RyYW5nZWx5IGVub3VnaCwgYWRkaXRp
b25hbGx5IGZvcmNpbmcgYWxsIGNsb2NrcyB0byBzdGF5IHBlcm1hbmVudGx5IG9uLAphbHNvIGRp
ZG4ndCBoZWxwIChvciBJIG1lc3NlZCB1cCBzb21ld2hlcmUpIC4KSSdtIG5vdCBzdXJlIGlmIHRo
ZSBQQ0llIGNvbnRyb2xsZXIgZG9lcyBjYXVzZSB0aGUgU01NVSB0byBkbyBzb21lIG1vcmUKaW5p
dGlhbGl6YXRpb24sIHRoYXQgd291bGQgYmUgbWlzc2luZyBvdGhlcndpc2UuCgoKUm9iaW4gZGlk
IHBvaW50IG91dCB0aGF0IHRoZXJlIGlzIG9uZ29pbmcgcnVudGltZS1wbSB3b3JrIGZvciB0aGUK
U01NVSBbMF0sIGJ1dCBqdXN0IGFkZGluZyB0aGUgcG93ZXItZG9tYWluIGRvZXMga2VlcCBpdCBv
biwgc28gdGhpcyBpcwpsaWtlbHkgbm90IHJlbGF0ZWQuCgoKQXMgeW91IGhhdmUgc3BlbnQgc28g
bXVjaCB0aW1lIG9uIFBDSWUgdG9waWNzLCBtYXliZSB5b3UgaGF2ZSBhIGJldHRlcgppZGVhIG9m
IHdoYXQgdG8gcG9rZSA6LSkKCgpIZWlrbwoKClswXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
aW51eC1pb21tdS8yMDI1MDYxNjIwMzE0OS4yNjQ5MTE4LTEtcHJhYW5AZ29vZ2xlLmNvbS8KCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
