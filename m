Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 459DDC44512
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 18:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxWB/RrTU+ROJBEcC5OSGSU43Le92yOxD0gxfk84eJc=; b=AvCp3OrvP92Bap
	z93+3sQkIE0Dme88iedD37RmxtnL3vLbCgXdgL7Lj1mhi6aN0UTG1i1Tpj7ByMiiP5CNwsogKzHrW
	zOoPvtdpq09I77EXrw64TEzBvLb7Bf34kBFu4dkwxGtBtgF3BTB9b08jA9D2R2iPD7jyOlfLoOKGl
	tpVKfDgJizsu0YgvHXpdBX5LcHe8PSATGmwYRNpQEBWd2Lc6GALb8J9crXCGRO34P550cVCcszIor
	9ghFG1gFfQwcB7gMPUUsH/PUbnb/Eyu0vNxU/RwyuEhFGsTOfAIBzQtibVse62RBS4uSYmf2NbEMI
	BZ5f1eAjlDgz2ihQwG0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQZC-00000000Lpy-01Bl;
	Thu, 16 Jul 2026 18:12:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQZ9-00000000LoW-2qOu;
	Thu, 16 Jul 2026 18:12:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=T1Kjd75GrDknuJfskGJbtCjuUzudFkj+B+wHx6EHO08=; b=0Djob2ueamTLt489wqKmvosaF1
	Hj6Jaqc32ygFK5l+ehoF1u77JMiTTSAggjjpJC8ZNhl1DoQGC7D/nIk6IOBkN2QbUC3sngUo6D42f
	BcIDgGfDLop1wndv7451eyRNpPXC75ZWYKhAJfZceYcjPuPNUP6eJ8bMEcENsNJfX8F+T/31e6Pz4
	SDAVeLXD+u3cqeKVbx/tZ7gEEfy+0umjhVh0/U/MlTkUnzY7+Di1a7Jk/CUQ/WzOW3p8KskBjKfuy
	YB7F6a/FAchPtlub2JPic1Q8E64vqty7+wxm58iy0NnF9IdVraYV3LJ98RbBDJPruxaAdu2+nDrpW
	gZfbiDyw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 0/2] arm64: dts: rockchip: add Vicharak Axon board support
Date: Thu, 16 Jul 2026 20:12:04 +0200
Message-ID: <14508147.RDIVbhacDa@phil>
In-Reply-To: <kzl6ykopmcj7nl6jnf4uav75cdn2znd3jb4vjlrde364homti6@2y2zfyvwni4x>
References: <20260608060940.52549-1-hrushirajg23@gmail.com> <14045151.uLZWGnKmhe@phil>
 <kzl6ykopmcj7nl6jnf4uav75cdn2znd3jb4vjlrde364homti6@2y2zfyvwni4x>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_111211_740859_590E5B37 
X-CRM114-Status: GOOD (  22.35  )
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

QW0gTWl0dHdvY2gsIDguIEp1bGkgMjAyNiwgMTI6MjE6MzAgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBIcnVzaGlyYWogR2FuZGhpOgo+IE9uIFR1ZSwgSnVsIDA3LCAyMDI2
IGF0IDA4OjIzOjQ3UE0gKzAyMDAsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gQW0gRGllbnN0
YWcsIDcuIEp1bGkgMjAyNiwgMTg6MDM6NTQgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQg
c2NocmllYiBSb2IgSGVycmluZzoKPiA+ID4gT24gVGh1LCBKdWwgMDIsIDIwMjYgYXQgMDk6MDQ6
NTVQTSArMDIwMCwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiA+ID4gCj4gPiA+ID4gT24gTW9u
LCAwOCBKdW4gMjAyNiAxMTozOTozOCArMDUzMCwgSHJ1c2hpcmFqIEdhbmRoaSB3cm90ZToKPiA+
ID4gPiA+IFRoaXMgc2VyaWVzIGFkZHMgaW5pdGlhbCBkZXZpY2UgdHJlZSBzdXBwb3J0IGZvciB0
aGUgVmljaGFyYWsgQXhvbgo+ID4gPiA+ID4gc2luZ2xlLWJvYXJkIGNvbXB1dGVyLCB3aGljaCBp
cyBiYXNlZCBvbiB0aGUgUm9ja2NoaXAgUkszNTg4IFNvQy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4g
VGhlIFZpY2hhcmFrIEF4b24gaXMgYSBmZWF0dXJlLXJpY2ggU0JDIHRhcmdldGluZyBkZXZlbG9w
ZXIgYW5kIGVtYmVkZGVkCj4gPiA+ID4gPiB1c2UgY2FzZXMuIEl0IHNoaXBzIHdpdGg6Cj4gPiA+
ID4gPiAKPiA+ID4gPiA+ICAgLSBSb2NrY2hpcCBSSzM1ODggKDR4IENvcnRleC1BNzYgKyA0eCBD
b3J0ZXgtQTU1KQo+ID4gPiA+ID4gICAtIFJLODA2IFBNSUMgcHJvdmlkaW5nIGFsbCBTb0MgcG93
ZXIgZG9tYWlucwo+ID4gPiA+ID4gICAtIGVNTUMgNS4xIChvbi1ib2FyZCkgYW5kIG1pY3JvU0Qg
c2xvdAo+ID4gPiA+ID4gICAtIEdpZ2FiaXQgRXRoZXJuZXQgdmlhIFJHTUlJIChSVEw4MjExRikK
PiA+ID4gPiA+ICAgLSBEdWFsIEhETUkgMi4xIG91dHB1dCBhbmQgb25lIEhETUkgMi4wIGlucHV0
IChyZWNlaXZlcikKPiA+ID4gPiA+ICAgLSBQQ0llIDMuMCB4NCBhbmQgdHdvIFBDSWUgMi4wIHNs
b3RzCj4gPiA+ID4gPiAgIC0gU0FUQSAzLjAKPiA+ID4gPiA+ICAgLSBVU0IgMi4wIGhvc3QgcG9y
dHMgKEVIQ0kvT0hDSSkKPiA+ID4gPiA+ICAgLSBOWFAgUENBOTU1NCBJL08gZXhwYW5kZXIgZm9y
IHN0YXR1cyBMRURzCj4gPiA+ID4gPiAgIC0gSGFveXUgSFlNODU2MyBSVEMKPiA+ID4gPiA+IAo+
ID4gPiA+ID4gWy4uLl0KPiA+ID4gPiAKPiA+ID4gPiBBcHBsaWVkLCB0aGFua3MhCj4gPiA+ID4g
Cj4gPiA+ID4gWzEvMl0gZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IGFkZCBWaWNoYXJhayBB
eG9uIGJvYXJkCj4gPiA+ID4gICAgICAgY29tbWl0OiBlMDAwOGIxMDhhYWY4YzVhYTIyOTMwYjJj
ZWFkZjhmODk0NTYyYWNiCj4gPiA+ID4gWzIvMl0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBW
aWNoYXJhayBBeG9uIGJvYXJkCj4gPiA+ID4gICAgICAgY29tbWl0OiBlMDhjMzM4OWM3OGRiZWZk
MzFhNTdkZjg4MDdjZjU3ZWY2ZjNjOWIxCj4gPiA+IAo+ID4gPiBCb3RoIGhhdmUgaXNzdWVzIGFu
ZCBzaG91bGQgYmUgZHJvcHBlZC4KPiA+IAo+ID4gSSd2ZSBkcm9wcGVkIGJvdGggdGhlIEF4b24g
YXMgd2VsbCBhcyB0aGUgVmFhbWFuMiBib2FyZCBmcm9tIHRoZQo+ID4gc2FtZSB2ZW5kb3Igbm93
Lgo+ID4gCj4gPiBUaGUgd2hvbGUgdGhpbmcgaXMgY29uZnVzaW5nLgo+ID4gCj4gPiBJIHNob3Vs
ZCd2ZSBjYXVnaHQgdGhlIHBpbmN0cmwgaXNzdWUsIGFuZCBkbyByZW1lbWJlciBydW5uaW5nIGEg
ZHRic2NoZWNrCj4gPiBvbiBhdCBsZWFzdCBvbmUgVmNoYXJhayBib2FyZCAtIGJ1dCB0aGF0IG11
c3QgaGF2ZSBiZWVuIHRoZSBWYWFtYW4yIGJvYXJkCj4gPiBiZWNhdXNlIHRoZXJlIHRoZSBwbWlj
IGZ1bGxmaWxscyB0aGUgYmluZGluZyAoYW5kIGdlbmVyYWwgc2V0dXAgb2Ygb3RoZXIKPiA+IHJr
MzU4OCBib2FyZHMpLgo+ID4gCj4gPiBUaGUgdmVuZG9yLXByZWZpeCBpcyBtaXNzaW5nIGluZGVl
ZC4gSSBmb3VuZCBlYXJsaWVyIHZlcnNpb25zIG9mIHRoZQo+ID4gdmVyc2lvbi1hdmFsYW5jaGUg
aGFkIGl0LCB1cCB1bnRpbCB2NiBbMF0gLiBUaG91Z2ggSSBoYXZlbid0IGZpZ3VyZWQgb3V0Cj4g
PiB5ZXQgd2h5IGl0IHdhcyBsb3N0Lgo+IAo+IFJlZ2FyZGluZyB0aGUgbWlzc2luZyB2ZW5kb3Ig
cHJlZml4ICd2aWNoYXJhaycgdGhhdCB3YXMgbm90ZWQ6IHRoZSBwcmVmaXggCj4gd2FzIGFscmVh
ZHkgc3VibWl0dGVkIHNlcGFyYXRlbHkgdXBzdHJlYW0gYnkgbXkgdGVhbSBpbiBhIGRpZmZlcmVu
dCBwYXRjaCBbMV0uIAo+IEJlY2F1c2UgaXQgd2FzIGFscmVhZHkgc3VibWl0dGVkLCBLcnp5c3p0
b2YgYXNrZWQgdXMgdG8gZHJvcCBpdCBmcm9tIG91ciAKPiBvd24gc2VyaWVzIHRvIGF2b2lkIGR1
cGxpY2F0ZXMgWzJdLiAKCkxvb2tzIGxpa2UgdGhhdCBzZXJpZXMgd2l0aCB0aGUgdmVuZG9yLXBy
ZWZpeCB3YXMgYXBwbGllZCBsYXN0CnNhdHVyZGF5IFszXSwgc28gSSdsbCBjb250aW51ZSB3aXRo
IHlvdXIgbmV3bHkgc2VudCBib2FyZCB2ZXJzaW9ucyA6LSkKCgpIZWlrbwoKCj4gWzFdIGh0dHBz
Oi8vbGttbC5vcmcvbGttbC8yMDI2LzYvMjQvOTI5Cj4gWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LXJvY2tjaGlwLzk2YzliMWViLTlmOGUtNDMwZC05YzM4LWViNGQ0ODlkN2QyNEBr
ZXJuZWwub3JnLwpbM10gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzE3ODM3ODgwMDQ0My4x
MzgwNjguODc2MzcxMzU2MzIzMDAwODU2Ny5iNC10eUBrZXJuZWwub3JnLwoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
