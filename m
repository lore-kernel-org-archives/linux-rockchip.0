Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A97FC83F2D
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 14:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7CpiNXDErO0WmnjuxlPf70x/QkLJDMuoPEimqpWc0I=; b=R9g2ZbbzJZOnjE
	NDGWgWG5vbxTjU7hY9VqQ0F3JHT15ZOX8flvtGjWPOvnst/X/5M1F4hsCE0rY5EuZMj9SFqbC7qyT
	4Lwlu377SZrBkWSvhWFFE732gQq5NnimTsbdztLyJez0gS3RnFXQ74ac/WLvvnq0i4wX5QyBEIn4J
	5O7WtjJGonHbhfO07Tc24XRd3r/ceb4AWYZY1bVe4sQc4fBMaMf6i30La3R6j0abxc6xbtNnHVIAo
	Wvjmva/pBxAW+ojVh4GBWiTIOFNWc8+T6bjGDJAf78MNaMAeegP1c6ThWZeZx+oU3VmK/C9r2Bo0E
	5YTzosLWVpMwfx1ctfeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjgD8-00000002QJi-17iM;
	Thu, 29 Aug 2024 14:33:18 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjgD4-00000002QIA-3l9u;
	Thu, 29 Aug 2024 14:33:16 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724941982; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=U4R+g1V33H2IEPO8IV8CQYJuZE1R4hj+pYK1gV82v14y9txfyhdnkfl3SqRvZq0te59uKXZV7zIspCNGrtS01Un3QHMtUnAJOrxjoDHyEpzZoU/J4tjnNbO+KM0I6Jz00Jxhrlj/EItGiPnrA2JzAjQgzfwMWbmM3dhjGLr2EIc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724941982; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=jQ1p6/xWG9wPSPmBp6CqV03Yn+MZ5TccQldtwHM5cGQ=; 
	b=XOIcr6p1KDF+uCwvgEs76GQ0HZNVWzNuJzfogOzw700Jqr1JoWawetj71k0SZKw8aJRmFwLQRzdZ2W4l7XnwtMRDjNIG+CAOsyE/TeDHChqtZCKwehrml+k9vQPBLUvmKjRKo7G7k5wcMpmaiTW5YpwOV2s10f1lvlm3a/N2o3U=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724941982;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=jQ1p6/xWG9wPSPmBp6CqV03Yn+MZ5TccQldtwHM5cGQ=;
	b=kbmEBoKkt8cOIiPVZG0YMrcRUgQfy/DpKs1BQ/9n/RLWWHOs4ExoKyAbBJ2hgmHo
	wGZ6Yoyqu6Y1CkR6VuBVe3caoO5JpJemd1lPC1qfv1AWcaxl370Frwixf0UlZ0kJ/yh
	eAC3nWD5yaR594qYuIuq41Yi194bhR61nQQPEod4=
Received: by mx.zohomail.com with SMTPS id 1724941980408747.3126115905559;
	Thu, 29 Aug 2024 07:33:00 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v7 1/3] dt-bindings: clock, reset: Add support for rk3576
Date: Thu, 29 Aug 2024 10:34:50 -0400
Message-ID: <5809907.DvuYhMxLoT@trenzalore>
In-Reply-To: <172492351370.1695089.7443506809997782331.b4-ty@sntech.de>
References: <20240828154243.57286-1-detlev.casanova@collabora.com>
 <0102019199a76766-f3a2b53f-d063-458b-b0d1-dfbc2ea1893c-000000@eu-west-1.amazonses.com>
 <172492351370.1695089.7443506809997782331.b4-ty@sntech.de>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_073315_186384_C0B5FFD3 
X-CRM114-Status: GOOD (  20.52  )
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

T24gVGh1cnNkYXksIDI5IEF1Z3VzdCAyMDI0IDA1OjM2OjQ3IEVEVCBIZWlrbyBTdHVlYm5lciB3
cm90ZToKPiBPbiBXZWQsIDI4IEF1ZyAyMDI0IDE1OjQyOjUwICswMDAwLCBEZXRsZXYgQ2FzYW5v
dmEgd3JvdGU6Cj4gPiBBZGQgY2xvY2sgYW5kIHJlc2V0IElEIGRlZmluZXMgZm9yIHJrMzU3Ni4K
PiA+IAo+ID4gQ29tcGFyZWQgdG8gdGhlIGRvd25zdHJlYW0gYmluZGluZ3Mgd3JpdHRlbiBieSBF
bGFpbmUsIHRoaXMgdXNlcwo+ID4gY29udGlub3VzIGdhcGxlc3MgSURzIHN0YXJ0aW5nIGF0IDAu
IFRodXMgYWxsIG51bWJlcnMgYXJlCj4gPiBkaWZmZXJlbnQgYmV0d2VlbiBkb3duc3RyZWFtIGFu
ZCB1cHN0cmVhbSwgYnV0IG5hbWVzIGFyZSBrZXB0Cj4gPiBleGFjdGx5IHRoZSBzYW1lLgo+ID4g
Cj4gPiBbLi4uXQo+IAo+IEFwcGxpZWQsIHRoYW5rcyEKPiAKPiBbMS8zXSBkdC1iaW5kaW5nczog
Y2xvY2ssIHJlc2V0OiBBZGQgc3VwcG9ydCBmb3IgcmszNTc2Cj4gICAgICAgY29tbWl0OiA0OWMw
NDQ1M2RiODFmYzgwNjkwNmUyNmVmOWZjNTNiZGI2MzVmZjM5Cj4gWzIvM10gY2xrOiByb2NrY2hp
cDogQWRkIG5ldyBwbGwgdHlwZSBwbGxfcmszNTg4X2Rkcgo+ICAgICAgIGNvbW1pdDogZTc4MWJm
ZmMyOTY3NjZiNTVkYmQwNDg4OTBkNTU4NjU1MDMxZThkMQo+IFszLzNdIGNsazogcm9ja2NoaXA6
IEFkZCBjbG9jayBjb250cm9sbGVyIGZvciB0aGUgUkszNTc2Cj4gICAgICAgY29tbWl0OiBjYzQw
ZjViYWE5MWJiN2IwMzFmNTYyMmUxMWE0ZTQ0M2NiNzcxNTI3CgpBd2Vzb21lICEKCj4gZ2VuZXJh
bCByZW1hcmssIHBsZWFzZSB0YWtlIGEgbG9vayBhdCB5b3VyIG1haWwgc2V0dXAuCj4gQW1hem9u
IHNlZW1zIHRvIGJyZWFrIHRoZSBnZW5lcmF0ZWQgbWVzc2FnZS1pZHMuCj4gCj4gWW91ciBjb3Zl
ci1sZXR0ZXIgaXMKPiAgCj4gMDEwMjAxOTE5OWE3NWY5Yi1hYWI1N2RiNi04MDZhLTQ3NGItODI5
NS1lNWJlNWE5OWQ0MjQtMDAwMDAwQGV1LXdlc3QtMS5hbWF6Cj4gb25zZXMuY29tCj4gCj4gd2hp
bGUgdGhlIHBhdGNoICgxLTMpIG1haWxzIHNheQo+ICAgSW4tUmVwbHktVG86IDwyMDI0MDgyODE1
NDI0My41NzI4Ni0xLWRldGxldi5jYXNhbm92YUBjb2xsYWJvcmEuY29tPgo+IAo+IFNvIHRoYXQg
YW1hem9uIHRoaW5nIHNvbWVob3cgYnJva2UgdGhlIG1lc3NhZ2UtaWRzIGluIHlvdXIgbWFpbHMu
CgpZZXMsIHNvcnJ5LCB3ZSBhcmUgd29ya2luZyBvbiB0aGF0LiBSZWNlbnQgc3dpdGNoIGluIGVt
YWlsIHNldHVwIGFuZCBzdGlsbCAKZmlndXJpbmcgb3V0IGFsbCB0aGUgaXNzdWVzIDovCiAKPiBJ
J3ZlIGFsc28gZHJvcHBlZCB0aGUgd2hvbGUgbW9kdWxlIHBhcnQuCj4gCj4gQXMgYWx3YXlzIHRo
YXQgQW5kcm9pZCBHS0kgbWFkbmVzcyB3YXMgY2F1c2UgZm9yIGlzc3Vlcy4KPiBUaGUgZHJpdmVy
IGNsYWltcyB0byBiZSBidWlsZGFibGUgYXMgbW9kdWxlLCBidXQgaXQgbG9va3MgbGlrZSBub2Jv
ZHkKPiB0cmllZCB0aGF0Ogo+IAo+IEZpcnN0IGJ1aWxkLWZhaWx1cmU6Cj4gLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiAKPiAuLi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszNTc2LmM6MTgwMDoz
Njogd2FybmluZzog4oCYc3RydWN0Cj4gcGxhdGZvcm1fZGV2aWNl4oCZIGRlY2xhcmVkIGluc2lk
ZSBwYXJhbWV0ZXIgbGlzdCB3aWxsIG5vdCBiZSB2aXNpYmxlIG91dHNpZGUKPiBvZiB0aGlzIGRl
ZmluaXRpb24gb3IgZGVjbGFyYXRpb24gMTgwMCB8IHN0YXRpYyBpbnQgY2xrX3JrMzU3Nl9wcm9i
ZShzdHJ1Y3QKPiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gCj4gICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fgo+IAo+IC4uL2RyaXZlcnMv
Y2xrL3JvY2tjaGlwL2Nsay1yazM1NzYuYzogSW4gZnVuY3Rpb24g4oCYY2xrX3JrMzU3Nl9wcm9i
ZeKAmToKPiAuLi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszNTc2LmM6MTgwMjozODogZXJy
b3I6IGludmFsaWQgdXNlIG9mCj4gdW5kZWZpbmVkIHR5cGUg4oCYc3RydWN0IHBsYXRmb3JtX2Rl
dmljZeKAmSAxODAyIHwgICAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUKPiAqbnAgPSBwZGV2LT5k
ZXYub2Zfbm9kZTsKPiAKPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBefgo+IAo+IC4uLgo+IAo+IG1pc3NpbmcgcGxhdGZvcm1fZGV2aWNlIGhlYWRlcgo+IAo+
IFNlY29uZCBidWlsZC1mYWlsdXJlLCBhZnRlciBmaXhpbmcgdGhlIHdob2xlIG1vZHVsZSBtYWRu
ZXM6Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiAKPiAgIE1PRFBPU1QgTW9kdWxlLnN5bXZlcnMKPiBFUlJPUjogbW9kcG9zdDog
bWlzc2luZyBNT0RVTEVfTElDRU5TRSgpIGluCj4gZHJpdmVycy9jbGsvcm9ja2NoaXAvcnN0LXJr
MzU3Ni5vIEVSUk9SOiBtb2Rwb3N0OiAicmszNTc2X3JzdF9pbml0Igo+IFtkcml2ZXJzL2Nsay9y
b2NrY2hpcC9jbGstcmszNTc2LmtvXSB1bmRlZmluZWQhIG1ha2VbM106ICoqKgo+IFsuLi9zY3Jp
cHRzL01ha2VmaWxlLm1vZHBvc3Q6MTQ1OiBNb2R1bGUuc3ltdmVyc10gRmVobGVyIDEKPiAKPiAK
PiAKPiBTbyB3aGVuIGFwcGx5aW5nIHRoZSBzZXJpZXMsIEkgc2ltcGx5IHJlbW92ZWQgdGhlIHdo
b2xlIG1vZHVsZS1wYXJ0IGFuZCBtYWRlCj4gdGhlIGluaXQgbG9vayBsaWtlIHJrMzU4OCBmb3Ig
bm93Lgo+IAo+IAo+IFNvbWVob3cgSSBhbHdheXMgZ2V0IHRoZSBpbXByZXNzaW9uIHRoZSB3aG9s
ZSAiY2xvY2sgYXMgYSBtb2R1bGUiIHRoaW5nCj4gaXMganVzdCB0aGVyZSBzbyBSb2NrY2hpcCBj
YW4gc2hpcCBzb21ldGhpbmcgY29tcGxldGVseSBvdXQgb2YgdHJlZSBvbgo+IEFuZHJvaWQgZGV2
aWNlcy4KCk1taCwgSSdsbCBtb3JlIGNhcmVmdWwgd2l0aCB0aGF0LCBidXQgaW5kZWVkLCBJIGRp
ZCBub3QgdHJ5IGJ1aWxkaW5nIHRoZSBjbG9jayAKZHJpdmVyIGFzIGEgbW9kdWxlLgoKPiBCZXN0
IHJlZ2FyZHMsCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
