Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044B7606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 09:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UbsitYON;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=28SzyvUr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pO0awYvJGaO5YJcDhC5JW1v/Wi7zwp+XO/+yp1q/A4E=; b=UbsitYONG9SS/79lvFllPeNu1J
	vBf4PIDJ84PAQZg9rJc1ju3xXpnXq71znfoLQi/kJNIiRCqMShuaL6OHF+TuB0GTTAIDCmYxLTKd9
	yOaw6VVCyHGSKSL6Jiff/yTCSQiE0JQKLRt4PkNbf6sfqUQtaIlnL0aqPtwicqkMFeKy4RN9+gMCw
	TWXaMwSBw5PHtskol1MUWb/3lLAz5iVYzLRG1KBS2K/pQ4gVkYxktBq2iZDtY4MumkLLyg58SJ6CU
	Msztzb0eD6BGps/OgdpUNRbFQwTgdsdfXbIjM9kjy6WpktXodww5q1486tGdroFFjVucuuTqhUqjO
	oX4Pn7NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR51X-00000006G7x-3yhs;
	Wed, 11 Nov 2026 09:53:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR51V-00000006G6d-0dES;
	Wed, 11 Nov 2026 09:53:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=rOYijy98RgI2qIIiyL+QLiDNYX9ODiA3qXMCnsWdXVU=; b=28SzyvUrJWEKkHHZXCa1oDz4JF
	PlSX5euAAMQyENwudCVR6cTty+VH1jG/mgo73RBjbiZivnZXrK+AHWj4VHdAF7otI7kK0Ynp2wXix
	WRr27PFPkEjrC5iXrkptO3jjbv/C5C4O6OsdamoQ/Zew2t5ZPng/9RL6GZtaX0pN5yybStTSI/Wni
	VkuKQaOUKYWbYnyU/Mdd2eaVbg0rSr+BKaCuckVeOyYGhiGO/sF2AJtcyfDT4SKsWXQf44zSah16c
	onKYsT1a7e5TG2rx/E6cxZ/NNmWFX9JRutQCBH8O6CmfwPXX/5a1UWBneR8+DnlP7+TH4FMCM/KdP
	3HqbLhtg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: aiyengar1990@gmail.com, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, "Joerg Roedel (AMD)" <joro@8bytes.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Simon Xue <xxm@rock-chips.com>, "finley.xiao" <finley.xiao@rock-chips.com>
Subject: Re: [PATCH 0/5] iommu/arm-smmu-v3: power domain and clock of the RK3588 PCIe
 SMMU
Date: Wed, 11 Nov 2026 10:53:28 +0100
Message-ID: <9_7qTfdNSViwtNUGq9D13w@sntech.de>
In-Reply-To: <ea8fa04c-4a8c-4c55-b4fa-f37d74267e93@rock-chips.com>
References: <20261110-smmu-v3-pcie-pd-v1-0-628819ca44b9@gmail.com>
 <10924894.NyiUUSuA9g@diego>
 <ea8fa04c-4a8c-4c55-b4fa-f37d74267e93@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_015345_405892_406CABC4 
X-CRM114-Status: GOOD (  27.84  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gTWl0dHdvY2gsIDExLiBOb3ZlbWJlciAyMDI2LCAwOTowMjozMCBNaXR0ZWxldXJvcMOkaXNj
aGUgTm9ybWFsemVpdCBzY2hyaWViIFNoYXduIExpbjoKPiBIaSBIZWlrbwo+IAo+IOWcqCAyMDI2
LzExLzEwIOaYn+acn+S6jCAxNjo0OSwgSGVpa28gU3TDvGJuZXIg5YaZ6YGTOgo+ID4gQW0gRGll
bnN0YWcsIDEwLiBOb3ZlbWJlciAyMDI2LCAwOTo0MDo0NCBNaXR0ZWxldXJvcMOkaXNjaGUgTm9y
bWFsemVpdCBzY2hyaWViIFNoYXduIExpbjoKPiA+PiBDYzogU2ltb24gYW5kIEZpbmxleQo+ID4+
Cj4gPj4g5ZyoIDIwMjYvMTEvMTAg5pif5pyf5LqMIDE1OjExLCBBcnVuIEl5ZW5nYXIgdmlhIEI0
IFJlbGF5IOWGmemBkzoKPiA+Pj4gVGhlIE1NVS02MDAgaW4gZnJvbnQgb2YgdGhlIFBDSWUgY29u
dHJvbGxlcnMgb2YgdGhlIFJvY2tjaGlwIFJLMzU4OAo+ID4+PiAobW11NjAwX3BjaWUpIGlzIGVu
YWJsZWQgZm9yIGV2ZXJ5IFJLMzU4OCBib2FyZCwgYnV0IGl0cyBub2RlIGRlc2NyaWJlcwo+ID4+
PiBuZWl0aGVyIHRoZSBwb3dlciBkb21haW4gaXQgbGl2ZXMgaW4gKFJLMzU4OF9QRF9QQ0lFKSBu
b3IgaXRzIGNsb2NrCj4gPj4+IChBQ0xLX01NVV9QQ0lFKS4gQm90aCBhcmUgaGVsZCBieSBhbnkg
ZW5hYmxlZCBQQ0llIGNvbnRyb2xsZXIsIHdoaWNoIGlzCj4gPj4+IHdoeSBub2JvZHkgbm90aWNl
ZDogb24gYSBib2FyZCB0aGF0IGVuYWJsZXMgbm8gUENJZSBjb250cm9sbGVyIGluIHRoYXQKPiA+
Pj4gZG9tYWluIChhbiBPcmFuZ2UgUGkgNSB3aXRoIGl0cyBNLjIgc2xvdCBpbiBTQVRBIG1vZGUs
IG9yIGFueSBSSzM1ODgKPiA+Pj4gYm9hcmQgd2l0aG91dCBQQ0llKSwgZ2VucGQgcG93ZXJzIHRo
ZSBkb21haW4gb2ZmIGFuZCB0aGUgY2xvY2sgZnJhbWV3b3JrCj4gPj4+IGdhdGVzIHRoZSBjbG9j
ayBhcyB1bnVzZWQgYWZ0ZXIgYm9vdCwgd2hpbGUgYXJtLXNtbXUtdjMgc3RheXMgYm91bmQuCj4g
Pj4+IEF0IHJlYm9vdCwgYXJtX3NtbXVfZGV2aWNlX3NodXRkb3duKCkgdGhlbiB3cml0ZXMgQ1Iw
IGFuZCBwb2xscyBDUjBBQ0sgb24KPiA+Pj4gdGhlIGRlYWQgYmxvY2ssIHRoZSBpbnRlcmNvbm5l
Y3Qgc3RhbGxzLCAicmVib290OiBSZXN0YXJ0aW5nIHN5c3RlbSIgaXMKPiA+Pj4gbmV2ZXIgcmVh
Y2hlZCBhbmQgdGhlIGJvYXJkIG9ubHkgY29tZXMgYmFjayB+OTAgcyBsYXRlciB3aGVuIHRoZQo+
ID4+PiB3YXRjaGRvZyBmaXJlcy4KPiA+IAo+ID4gV2UgaGF2ZSBhIHdvcmstYXJvdW5kIGZvciB0
aGF0IGluIHNvbWUgYm9hcmRzLCBtYW51YWxseSBkaXNhYmxpbmcgdGhlCj4gPiBzbW11IHVudGls
IG5vdy4gQXMgdGhlIFNNTVUgaXMgcGFydCBvZiB0aGUgU29DIGFuZCBhbHdheXMgcHJlc2VudAo+
ID4gdGhlIGdlbmVyYWwgRFQgcHJhY3RpY2UgaXMgdG8gaGF2ZSBpdCBhbHdheXMgZW5hYmxlZCwg
YXMgaXQgZG9lcyBub3QKPiA+IGRlcGVuZCBvbiB0aGUgYWN0dWFsIGJvYXJkIGRlc2lnbi4KPiA+
IAo+ID4gSGVuY2Ugd2UgZW5kIHVwIGluIHRoZSBzaXR1YXRpb24gZGVzY3JpYmVkIGFib3ZlLgo+
ID4gCj4gCj4gSSBub3RpY2UgdGhhdCBtbXU2MDBfcGhwIGlzIGRpc2FibGVkIGluIHJrMzU4OC1i
YXNlLmR0c2kuIElmIGRlc2NyaWJpbmcKPiB0aGUgU01NVSB0aGF0IHdheSBpcyBpbmNvcnJlY3Qs
IHNob3VsZCB3ZSBlbmFibGUgbW11NjAwX3BocCBhcyB3ZWxsPyBJJ20KPiBhc2tpbmcgYmVjYXVz
ZSBJIHNlZSBhIGRpZmZlcmVudCBwaWN0dXJlIGluIHRoZSBSSzM1ODggVFJNOiBib3RoCj4gbW11
NjAwX3BocCBhbmQgbW11NjAwX3BjaWUgcmVzaWRlIHVuZGVyIFBEX1BIUCwgbm90IFBEX1BDSUUu
IFRoZXJlZm9yZSwKPiBldmVuIHdpdGhvdXQgYW55IFBDSWUgY29udHJvbGxlciBlbmFibGVkLCBQ
RF9QSFAgc2hvdWxkIHJlbWFpbiBwb3dlcmVkCj4gb24gKGl0IGlzIG5ldmVyIGFkZGVkIGluIHJr
MzU4OC1iYXNlLmR0c2ksIHNvIGl0IHNob3VsZCBiZSBvdXRzaWRlIHRoZQo+IGtlcm5lbOKAmXMg
c2NvcGUpLiBIb3cgZG9lcyB0aGUgb3JpZ2luYWwgcHJvYmxlbSBvY2N1ciBpbiB0aGF0IGNhc2U/
CgpUaGUgb3JpZ2luYWwgcHJvYmxlbSBpcyB0aGUgc21tdSBwcm9iaW5nIChwcm9iYWJseSBkdXJp
bmcgYm9vdCB3aGVuCmV2ZXJ5dGhpbmcgaXMgc3RpbGwgcG93ZXJlZCksIG5vdCBkb2luZyBhbnl0
aGluZyB3aXRoIGl0IGFuZCBvbiBzaHV0ZG93bgp0aGUgc21tdSBkcml2ZXIgd2FudGluZyB0byBh
Y2Nlc3MgdGhlIHNtbXUgcmVnaXN0ZXJzIGFuZCB0aHVzIGVuZGluZwppbiBhIGhhbmcuCgpTbyB0
aGUgcHJvYmxlbSBpcyBub3QgbmVjZXNzYXJpbHkgdGhlIHBvd2VyLWRvbWFpbiwgYnV0IGNhbiBh
bHNvIGJlCnRoZSBjbG9ja3MgZ2V0dGluZyB0dXJuZWQgb2ZmIGR1cmluZyBjbGtfZGlzYWJsZV91
bnVzZWQuCgoKQXMgZm9yIG5vdCBkaXNhYmxpbmcgaXQsIHRoZSBjYXNlIGlzIGFsc28gdGhlIHNv
bWUgZm9yIHRoaW5ncyBsaWtlIHRoZQp2aWRlby1lbmNvZGVycyAtIHRoZXkgYXJlIGFsc28gcHJl
c2VudCBhbGwgdGhlIHRpbWUsIHNvIHdlIGRvbid0IGhhdmUKZGV2aWNldHJlZSB3aWdnbGluZyBm
b3IgdGhlbS4KClRoZSBmdWxseSBjb3JyZWN0IHRoaW5nIHdvdWxkIGJlLCBwb3dlci1kb21haW4g
KyBjbG9jayBoYW5kbGluZwphbmQgYWRkaW5nIHJ1bnRpbWUtcG0gdG8gdGhlIHNtbXUgZm9yIHdo
ZW4gaXQgaXMgbm90IGluIHVzZS4KU28gdGhpcyB3b3VsZCB0aGVuIG5vdCByZXF1aXJlIGFueSBz
cGVjaWFsIHRoaW5raW5nCgpBbmQgeWVzLCBJIHRoaW5rIHRoZSBvdGhlciBzbW11IHNob3VsZCBh
bHNvIHVzZSB0aGUgc2FtZSBoYW5kbGluZy4KCkBBcnVuIGNhcmUgdG8gYWxzbyBhZGQgYSBydW50
aW1lLXBtIHBhdGNoPyA6LSkKCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
