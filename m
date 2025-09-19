Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6589CAC59A
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Sep 2025 10:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKcVbp36Fp+IDjgnoGZF4H9kuMwwDzjPWdegCiU60XU=; b=FGiE9+nubgR7WL
	FN6E9UQag6NL8yRtraaleWgOt5v/FnyOSR8hFASC4ENUj+1CJrcjFnG9osCJCMRgjVIjFHXpRqdmI
	NX1j/7N93Mxq2L2nB/ndqECZ+RWAhHobZwkWLmcfpivAdPkqcMgs1Kn92QE6Ev6/sRwwzLlooyJXt
	8qYB3nHCrhSWhLmf8aA0poGh1f7A8lWPwGaw/r84iwilSLkr38JMnR8/B3k7UWfqqEW+FYf9thH1G
	4Suc3/z6UFBz92bhossYFSbndCX4B55yim18Y2cF6qmtgZkr8uNljXSVSZbGFr+nYdpnS6NErCNzB
	koScmx9+3DNpcQhFdI4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzYBM-00000002WOY-1kVw;
	Fri, 19 Sep 2025 10:17:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzYBJ-00000002WNm-2ob5;
	Fri, 19 Sep 2025 10:17:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:Cc;
	bh=AaMJMX/umNULrcGEgKJlRZR7C4PD7YTrpkq40L4KBHc=; b=m97FghaklI6Mh+XLjeYg/ACj+Y
	59uf6lQkpa4JFaU5j+EH/ZzQjNRhgbdhVreCHInAydmdAgSlJJfW4kKoRNHVYOpbp5FcNigPqgTfA
	pCI/hl18DgxzPsWSlB3JUmD3PbKulXmf3dAMX/xHCUS+RryKRAhoSqjx+QH3ff/m9o8VwvuGUP+YH
	nJUNBn2H0lkhvtS74t31UFhEaC0yV4bX36LO9x9qGeyvZBPNpRXTXYA/9+p22GGdbcQJo6b8nIs+Y
	ADYHuy5ccq4UckYxaBuQCjxDGCm49OzOzGTU6NIqvxIcWEy4AuZYKrI6hjlVkQqsNWSb7hr3JRpd9
	ZeV8SDlw==;
Received: from i53875b0f.versanet.de ([83.135.91.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uzYBG-0007nN-9m; Fri, 19 Sep 2025 12:17:30 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ed W <lists@wildgooses.com>,
 FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: correct uart mux for Radxa ZERO3
Date: Fri, 19 Sep 2025 12:17:29 +0200
Message-ID: <1971910.g5d078U9FE@diego>
In-Reply-To: <0DB47BC84E90B0E6+694b1274-4826-4ec1-9aa2-ca8aa790f61a@radxa.com>
References: <20250917114932.25994-1-lists@wildgooses.com> <2325560.3ZeAukHxDK@diego>
 <0DB47BC84E90B0E6+694b1274-4826-4ec1-9aa2-ca8aa790f61a@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_031733_739782_4DA703D0 
X-CRM114-Status: GOOD (  32.07  )
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

QW0gRnJlaXRhZywgMTkuIFNlcHRlbWJlciAyMDI1LCAwMTo1Nzo1NyBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIEZVS0FVTUkgTmFva2k6Cj4gSGkgSGVpa28sIEVkLAo+IAo+
IE9uIDkvMTkvMjUgMDE6MTgsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+ID4gQW0gRG9ubmVyc3Rh
ZywgMTguIFNlcHRlbWJlciAyMDI1LCAxNzoyMzowNCBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVy
emVpdCBzY2hyaWViIEVkIFc6Cj4gPj4gT24gMTgvMDkvMjAyNSAwNTo1MywgRlVLQVVNSSBOYW9r
aSB3cm90ZToKPiA+Pj4gSGkgRWQsCj4gPj4+Cj4gPj4+IFRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9y
IHlvdXIgd29yay4KPiA+Pj4KPiA+Pj4gT24gOS8xNy8yNSAyMDo0OSwgRWQgV2lsZGdvb3NlIHdy
b3RlOgo+ID4+Pj4gVGhlIHJrMzU2NiBoYXMgbXVsdGlwbGV4ZWQgcGlucyBhbmQgdGhlIHVhcnRz
IGNhbiBiZSBtb3ZlZCB0byBhIGNob2ljZQo+ID4+Pj4gb2YgMiBwaW4gZ3JvdXBzLiBUaGUgZGVm
YXVsdCByazM1NngtYmFzZS5kdHNpIGFwcGVhcnMgdG8gZGVmYXVsdCB0byBtdXgwCj4gPj4+PiBm
b3IgYWxsIHVhcnRzLCBob3dldmVyLCBzcGVjaWZpYyBoYXJkd2FyZSBtaWdodCBjaG9vc2UgdG8g
aW1wbGVtZW50Cj4gPj4+PiBhbHRlcm5hdGl2ZXMKPiA+Pj4+Cj4gPj4+PiBUaGUgUmFkeGEgemVy
byAzIHNob3dzIHRoYXQgaXMgdXNlcyBNMSBmb3IgdWFydHM6Cj4gPj4+PiAtIHVhcnQ0Cj4gPj4+
PiAtIHVhcnQ1Cj4gPj4+PiAtIHVhcnQ5Cj4gPj4+Pgo+ID4+Pj4gVGhlc2UgYXJlbid0IG5vcm1h
bGx5IGVuYWJsZWQsIGJ1dCB3ZSBzaG91bGQgYXQgbGVhc3QgY29ycmVjdCB0aGUKPiA+Pj4+IGRl
ZmF1bHQgcGluY3RybCBkZWZpbml0aW9ucy4gV2l0aG91dCB0aGVzZSBjaGFuZ2VzIHRoZXJlIHdp
bGwgYmUKPiA+Pj4+IGNvbmZsaWN0cyB3aXRoIG1tYzAvbW1jMSwgbGVhZGluZyB0byB0aGUgU0Qg
b3IgZU1NQyBnb2luZyBtaXNzaW5nLgo+ID4+Pgo+ID4+PiBTb3JyeSwgYnV0IHdoeSBkbyB3ZSBu
ZWVkIHRoZXNlIGRlZmluaXRpb25zIGZvciBkaXNhYmxlZCBub2Rlcz8KPiA+Pj4KPiA+Pj4gT3Ig
d2h5IGRvbid0IHdlIGRvIHNpbWlsYXIgZGVmaW5pdGlvbnMgZm9yIG5vZGVzIG90aGVyIHRoYW4g
dWFydD8KPiA+Pj4gRm9yIGV4YW1wbGUsIFBXTTEyLCBJMlMzLCBhbmQgU1BJMyBhbHNvIHVzZSBN
MS4gQXJlIHRoZXkgbm90IHJlbGF0ZWQgdG8gU0QvZU1NQyBhbmQgdGhlcmVmb3JlCj4gPj4+IGRv
bid0IG5lZWQgdG8gYmUgZGVmaW5lZD8KPiA+Pj4KPiA+Pj4gSWYgdXNlcnMgd2FudCB0byB1c2Ug
VUFSVHMgb24gcGluIGhlYWRlcnMsIHRoZXkgd2lsbCByZWZlciB0byB0aGUgY29ycmVjdCBkb2N1
bWVudGF0aW9uWzFdIHRvCj4gPj4+IGRldGVybWluZSB3aGljaCBwaW5zIGFyZSBVQVJUcyBhbmQg
d2lsbCBvZiBjb3Vyc2Ugd3JpdGUgdGhlIGNvcnJlY3QgcGluY3RybCBkZWZpbml0aW9uLgo+ID4+
Pgo+ID4+PiBbMV0gaHR0cHM6Ly9kb2NzLnJhZHhhLmNvbS9lbi96ZXJvL3plcm8zL2hhcmR3YXJl
LWRlc2lnbi9oYXJkd2FyZS1pbnRlcmZhY2UjZ3Bpby1pbnRlcmZhY2UKPiA+Pj4KPiA+Pj4gQmVz
dCByZWdhcmRzLAo+ID4+Pgo+ID4+Cj4gPj4KPiA+PiBQZXJzb25hbGx5LCBhbmQgSSdtIHNheWlu
ZyB0aGlzIGFzIGEgdXNlciB3aG8gaXMgdGVjaG5pY2FsIGVub3VnaCB0byBmaXggdGhlIGRlZmlu
aXRpb25zLCBpdCB0b29rIG1lCj4gPj4gcXVpdGUgYSBmZXcgZGF5cyB0byBmaWd1cmUgb3V0IHdo
YXQgd2FzIHdyb25nIHdpdGggdGhlIGRlZmluaXRpb25zIGFuZCB1bmRlcnN0YW5kIHRoZSBpbnRy
aWNhdGUgdHJlZQo+ID4+IG9mIGR0c2kgaW5jbHVkZXMsIHRvIGZpbmFsbHkgZmlndXJlIG91dCB3
aHkgSSBjb3VsZG4ndCBqdXN0IGRvIGEgInN0YXR1cyA9ICJva2F5IjsiIHRvIGVuYWJsZSB0aGUK
PiA+PiBVQVJUcy4uLiAod2hpY2ggaXMgcm91Z2hseSB3aGF0IGlzIHNob3duIGluIHNldmVyYWwg
cmFkeGEgc3VwcGxpZWQgb3ZlcmxheXMgdG8gZW5hYmxlIHVhcnRzIG9uCj4gPj4gdmFyaW91cyBi
b2FyZHMpCj4gPj4KPiA+PiBTbyBteSB2b3RlIHdvdWxkIGJlIHRvIGNvcnJlY3RseSBkZWZpbmUg
YWxsIHRoZSBoYXJkd2FyZSBmb3IgYSBnaXZlbiBib2FyZC4gVGhlbiB1c2VycyBjYW4gc2ltcGx5
IGRvCj4gPj4gYSBzdGF0dXM9Im9rYXkiIHRvIGVuYWJsZSBhbmQgb2ZmIHRoZXkgZ28uCj4gPiAK
PiA+IEFuZCBJJ2QgYWdyZWUgd2l0aCB0aGF0IGFyZ3VtZW50LiBTZXR0aW5nIHVwIHRoZSBuZWVk
ZWQgcGluY3RybCBzZXR0aW5ncwo+ID4gZm9yIHRoZSBwZXJpcGhlcmFscyBkZXNjcmliZWQgaW4g
dGhlIGRldmljZSBkb2N1bWVudGF0aW9uCj4gPiAoIGh0dHBzOi8vZG9jcy5yYWR4YS5jb20vZW4v
emVyby96ZXJvMy9oYXJkd2FyZS1kZXNpZ24vaGFyZHdhcmUtaW50ZXJmYWNlI2dwaW8taW50ZXJm
YWNlICkKPiA+IAo+ID4gaXMgdGhlIHNlbnNpYmxlIHRoaW5nIHRvIGRvLiBXaGlsZSBrZWVwaW5n
IHRoZSBwZXJpcGhlcmFscyBpdHNlbGYgZGlzYWJsZWQKPiA+IGFuZCBmb3IgdGhlIHVzZXIgdG8g
ZGVjaWRlIHdoaWNoIHBlcmlwaGVyYWwgdG8gZW5hYmxlLgo+IAo+IEknbSBub3Qgc3Ryb25nbHkg
b3Bwb3NlZCB0byB0aGlzIHBvbGljeSwgYnV0IEkgdGhvdWdodCBpZiB5b3UncmUgZ29pbmcgCj4g
dG8gZG8gdGhpcywgeW91IHNob3VsZCBkbyBpdCBmb3IgZXZlcnl0aGluZywgbm90IGp1c3QgVUFS
VHMuCgp5ZXMsIGV4YWN0bHkKU28gcGF0Y2hlcyBmb3IgdGhlIG90aGVyIGhlYWRlciBwZXJpcGhl
cmFscyB3ZWxjb21lIDotKSAuCgpCdXQgc3RpbGwgaXQncyBuaWNlIHRvIGRvIGl0IGluIHN0ZXBz
IGxpa2UgdGhpcyBvbmUsIGFzIGl0IG1ha2VzIHJldmlld2luZyBlYXNpZXIuCgoKSGVpa28KCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
