Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C99BAC3600C
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Mar 2025 05:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FLN/qnQ5Msc7OitPWUfuNH43+cZzvsQc4Ip0Yn2pZI=; b=jyJITJoVY6vgxX
	R2Jq9GlZwQ8eUvUYi8k99Lljw2QX4Ma38PueT574flKbcE/++MrSlUaUF2tAu+pUBCH/K4LKrQ5Jz
	tZInfIsbyucprNt3LBmdBNVoDTHmaRB56v3cTl1isVa8tMzt/Y4knmjoAvPD1w8K4mDBgyH0hCZBA
	hSG8NCiEQIa34N8a/3JJKLTnlQtwy+qeN16eYQ859vYClWpchdt+j6hxp5670uOAgO/sLIcnEppAe
	soghvlyaQLPXQCWlzBO7OLaNodCp1Vds0IdTqGJRDOiPFOTs9o2YCDQRwVA6szKZqPeQArcbR9O8H
	z3uk7o3n5hCs9jU261sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty2Fj-0000000CdVq-2xbC;
	Fri, 28 Mar 2025 05:27:35 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty2Fh-0000000CdVC-1uvO
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Mar 2025 05:27:34 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1743139628; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=SNkk3gtNPaXXwdrW6fxgFUV/5Bey7TsGy4tPCrEBB6ffAggQ3W2qc1RBP7BNbBjB2eIRKtT46QJJedOiwPrTMp3R7/QFTd+rhIJer7xpXyPI/Diu5QVxKkpoZ7h1eZ0c4tV+z49+vFzbt7x7w3VSnswzE9czqg2uGZCsKrHRWHU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1743139628; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=8fm2pR+vn3KKxWHjwpsQpoYtJSPoJCzGUQuWZmtgZF4=; 
	b=M6nKWV3en9cG17a7BT25zDUHyaiQrcbuzq05N6Hm3rsL08KyooohItgXD7toFOnD2TljvYM1ZLGlA8v1DXIls2/Q3r4WuUBqljR0TIVnfy3ZGn2c2TotR8GNNKsftbdv+HLns4AsM2gVGNeU2gwmp6+RJkMpinGuyWXnm60SWgk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1743139628;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=8fm2pR+vn3KKxWHjwpsQpoYtJSPoJCzGUQuWZmtgZF4=;
	b=XsTA9zfSLisYIt+9lTUsiXcJIOA/gC/jYCxQE5wi/9x8WyiT+abmCx9pUJhlraM6
	0gYnZbsqu1MFEO9Q2m+g3QxPi4oTn2yz1ZPA27L2g73KmlsqgSq2wJb9pkqREB55cKl
	O3FDQX75S2LXpaQmWu18VSsVKmncypAdeMVm9f8o=
Received: by mx.zohomail.com with SMTPS id 1743139625825613.9288733094755;
	Thu, 27 Mar 2025 22:27:05 -0700 (PDT)
Message-ID: <f9be4614-95ec-4b63-9cfd-0936a323b131@collabora.com>
Date: Fri, 28 Mar 2025 08:27:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: SPI transfers in atomic context [Was: Re: [PATCH v1 1/1] mfd:
 rk8xx: Fix shutdown handler]
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>,
 Lee Jones <lee@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Mark Brown <broonie@kernel.org>, Wolfram Sang <wsa@the-dreams.de>
Cc: Urja <urja@urja.dev>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com, stable@vger.kernel.org
References: <20240730180903.81688-1-sebastian.reichel@collabora.com>
 <20240801131823.GB1019230@google.com>
 <ih7hiojzuvqzpyipj66mgu5pmcderltabim7s5dnfzm6qpztbh@jqkst5tfw5ra>
 <sg5kgo5qjqyzfyk5nyjbkpgvbx6sfb7agc67ch6wsdq3etrsbf@h6xbtfs45k4w>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <sg5kgo5qjqyzfyk5nyjbkpgvbx6sfb7agc67ch6wsdq3etrsbf@h6xbtfs45k4w>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_222733_572113_3CAB6210 
X-CRM114-Status: GOOD (  25.33  )
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

T24gMy8yMC8yNSAxMzoxMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gSGksCj4gCj4gT24g
VGh1LCBBdWcgMDEsIDIwMjQgYXQgMDU6MjI6MjRQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNoZWwg
d3JvdGU6Cj4+IE9uIFRodSwgQXVnIDAxLCAyMDI0IGF0IDAyOjE4OjIzUE0gR01ULCBMZWUgSm9u
ZXMgd3JvdGU6Cj4+Pj4gKwkvKgo+Pj4+ICsJICogQ3VycmVudGx5IHRoZSBSb2NrY2hpcCBTUEkg
ZHJpdmVyIGFsd2F5cyBzbGVlcHMgd2hlbiBkb2luZyBTUEkKPj4+PiArCSAqIHRyYW5zZmVycy4g
VGhpcyBpcyBub3QgYWxsb3dlZCBpbiB0aGUgU1lTX09GRl9NT0RFX1BPV0VSX09GRgo+Pj4+ICsJ
ICogaGFuZGxlciwgc28gd2UgYXJlIHVzaW5nIHRoZSBwcmVwYXJlIGhhbmRsZXIgYXMgYSB3b3Jr
YXJvdW5kLgo+Pj4+ICsJICogVGhpcyBzaG91bGQgYmUgcmVtb3ZlZCBvbmNlIHRoZSBSb2NrY2hp
cCBTUEkgZHJpdmVyIGhhcyBiZWVuCj4+Pj4gKwkgKiBhZGFwdGVkLgo+Pj4+ICsJICovCj4+Pgo+
Pj4gU28gd2h5IG5vdCBqdXN0IGFkYXB0IHRoZSBTUEkgZHJpdmVyIG5vdz8KPj4KPj4gVGhpcyBw
YXRjaCBpcyBzaW1wbGUgYW5kIHRodXMgY2FuIGVhc2lseSBiZSBiYWNrcG9ydGVkLCBzbyB0aGF0
IHRoZQo+PiBBY2VyIENocm9tZWJvb2sgc2h1dGRvd24gaXMgZml4ZWQgaW4gdGhlIHN0YWJsZSBr
ZXJuZWxzLiBTUEkgYmFzZWQKPj4gcmt4eCBoYXMgYmVlbiB1c2luZyBTWVNfT0ZGX01PREVfUE9X
RVJfT0ZGX1BSRVBBUkUgZnJvbSB0aGUgc3RhcnQsCj4+IHNvIGl0J3Mgbm90IGEgcmVncmVzc2lv
bi4KPj4KPj4gQXMgZmFyIGFzIEkgY291bGQgc2VlIHRoZSBTUEkgZnJhbWV3b3JrIGRvZXMgbm90
IGhhdmUgc29tZXRoaW5nCj4+IGNvbXBhcmFibGUgdG8gdGhlIEkyQyAueGZlcl9hdG9taWMgaGFu
ZGxlci4gU28gZml4aW5nIHVwIHRoZQo+PiBSb2NrY2hpcCBTUEkgZHJpdmVyIHByb2JhYmx5IGlu
dm9sdmVzIGNyZWF0aW5nIHNvbWUgU1BJIGNvcmUKPj4gaGVscGVycy4gSSdtIG5vdCB5ZXQgc3Vy
ZSBhYm91dCB0aGUgYmVzdCB3YXkgdG8gZGVhbCB3aXRoIHRoaXMuCj4+IEJ1dCBJIGd1ZXNzIGl0
IHdpbGwgYmUgYmV0dGVyIG5vdCBoYXZpbmcgdG8gYmFja3BvcnQgYWxsIG9mIHRoZQo+PiByZXF1
aXJlcyBjaGFuZ2VzIHRvIHN0YWJsZS4KPj4KPj4gSW4gYW55IGNhc2UgSSB0aGluayB0aGUgbmV4
dCBzdGVwIGluIHRoaXMgZGlyZWN0aW9uIGlzIGRpc2N1c3NpbmcKPj4gaG93IHRvIGhhbmRsZSB0
aGlzIGluIGdlbmVyYWwgZm9yIFNQSS4KPj4KPj4+IFdoYXQncyB0aGUgYmV0IHRoYXQgaWYgYWNj
ZXB0ZWQsIHRoaXMgaGFjayBpcyBzdGlsbCBoZXJlIGluIDUgeWVhcnMgdGltZT8KPj4KPj4gRXZl
biBpZiBJIGRvbid0IHdvcmsgb24gdGhpcyBub3csIEkgd291bGQgZXhwZWN0IHNvbWVib2R5IHRv
IGhhdmUKPj4gaXNzdWVzIHdpdGggYnJva2VuIHNodXRkb3duIG9uIFJLMzU4OCBib2FyZHMgYmVm
b3JlIDUgeWVhcnMgYXJlCj4+IG92ZXIgOikKPiAKPiBJJ2QgbGlrZSB0byBoYXZlIHBvd2VyLW9m
ZiB3b3JraW5nIG9uIFFuYXAgVFMtNDMzIGluIHRoZSBuZXh0IERlYmlhbgo+IHN0YWJsZS4gV2l0
aCBteSBEZWJpYW4gS2VybmVsIGhhdCBvbiBJJ2Qgc2F5IGNoZXJyeS1waWNraW5nIHN1Y2ggYQo+
IGNvbW1pdCAoaWYgaXQncyBpbiBtYWlubGluZSkgaXMgYWNjZXB0YWJsZS4gQmFja3BvcnRpbmcg
YSBtYWpvcgo+IGV4dGVuc2lvbiB0byB0aGUgc3BpIGZyYW1ld29yayBpc24ndC4KPiAKPiBTbzog
RXhwZWN0YXRpb24gY29uZmlybWVkISBBbmQgd2hpbGUgSSBhZ3JlZSB0aGF0IGhhY2tzIGFyZSBu
b3QgbmljZSwKPiBJIHByZWZlciBhIGhhY2sgbm93IG92ZXIgYSBtYWNoaW5lIHRoYXQgZG9lc24n
dCBzaHV0IGRvd24gcHJvcGVybHkgb3Zlcgo+IHRoZSBuZXh0IGZpdmUgeWVhcnMgKGlmIExlZSdz
IGV4cGVjdGF0aW9uIGlzIGFsc28gY29ycmVjdCkuCj4gCj4gQ2FuIHdlIG1heWJlIGdvIGZvcndh
cmQgYW5kIGRvIGJvdGg/IEFjY2VwdCB0aGlzIGhhY2sgcGF0Y2ggbm93IGFuZCB3b3JrCj4gb24g
c3BpIHRvIG1ha2UgYXRvbWljIHhmZXJzIHBvc3NpYmxlPwo+IAo+IE1hcmssIGFyZSB0aGVyZSBj
b25jZXJucyBmcm9tIHlvdXIgc2lkZT8gCj4gV29sZnJhbSwgYXJlIHRoZXJlIHRoaW5ncyB5b3Ug
d291bGQgcmVjb21tZW5kIHRvIGRvIGRpZmZlcmVudGx5IGluIHNwaQo+IHRoYW4gd2hhdCB5b3Ug
aGF2ZSBpbiBpMmM/CgpIaSwgd2FudCBsZXQgeW91IGtub3cgdGhhdCBJJ3ZlIHN0YXJ0ZWQgdG8g
d29yayByZWNlbnRseSBvbiBhdG9taWMgU1BJCnRyYW5zZmVyIHN1cHBvcnQgdG8gaGF2ZSBTUEkg
c2h1dGRvd24gd29ya2luZyBwcm9wZXJseSB3aXRoIHRoaXMgZHJpdmVyLgpJdCdzIGluIHByb2dy
ZXNzLgoKTWVhbndoaWxlIHRoaXMgcGF0Y2ggc2hvdWxkJ3ZlIGJlZW4gbWVyZ2VkIGEgeWVhciBh
Z28gYmVjYXVzZSBpdCBmaXhlcwp0aGUgcmVncmVzc2lvbi4KCkxlZSwgcGxlYXNlIGFwcGx5IGl0
IGZvciAtc3RhYmxlLgoKLS0gCkJlc3QgcmVnYXJkcywKRG1pdHJ5CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
