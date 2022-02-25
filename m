Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 220E2C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 13:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzCnHPhJyXj8WxkVzY4uMyBfSEEbEUlkGC8BBCv7vgA=; b=RH7mTE/AxLdpqY
	jQ77fcl7EgV0MSn5sDANwuoHgMd/mozNZZLxAWyUszRlNhtxBaNRXFETXqoi/RcLcqxJnmEk8r9b8
	UNdvqRBWDkR2q/t4nazpNKDYGkR3kPP8uyv0Q31ekqErSLxPiQL2t95gfwmGR7jXyyR9nGsYbWRJB
	f4oLcdA/chmAELoAPIBL/NitRJPyEE/TkFL8U6Gbp5N4w2lzG8Jj+vjV3Xz/+K6fchtihFwB36jkB
	A5kv+ov5iUlqY9r40t9zaLJYsKmIOpwRyYVG3LEnJ2ErlMy5+/Nu8u7QDR+PZ5YhcO6P7ov94zBwr
	+boYrSYTQbFt+y7bS2QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNarY-005Bz8-6o; Fri, 25 Feb 2022 13:42:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNajB-0058ND-F0; Fri, 25 Feb 2022 13:33:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B3B7E106F;
 Fri, 25 Feb 2022 05:33:43 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B9C5B3F5A1;
 Fri, 25 Feb 2022 05:33:41 -0800 (PST)
Message-ID: <3cfe3826-a4c3-3936-9567-5977cf0a5a57@arm.com>
Date: Fri, 25 Feb 2022 13:33:37 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Dmitry Osipenko <digetx@gmail.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
 <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
 <20220225104924.GC19585@pengutronix.de>
 <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
 <90c61299-f02c-607b-4734-7134852ef0a6@arm.com>
 <20220225131154.GE19585@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220225131154.GE19585@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_053345_652037_993B58F6 
X-CRM114-Status: GOOD (  25.54  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMi0wMi0yNSAxMzoxMSwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IE9uIEZyaSwgRmViIDI1
LCAyMDIyIGF0IDEyOjQxOjIzUE0gKzAwMDAsIFJvYmluIE11cnBoeSB3cm90ZToKPj4gT24gMjAy
Mi0wMi0yNSAxMToxMCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+Pj4gMjUuMDIuMjAyMiAxMzo0
OSwgU2FzY2hhIEhhdWVyINC/0LjRiNC10YI6Cj4+Pj4gT24gRnJpLCBGZWIgMjUsIDIwMjIgYXQg
MDE6MjY6MTRQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+Pj4+PiAyNS4wMi4yMDIy
IDEwOjUxLCBTYXNjaGEgSGF1ZXIg0L/QuNGI0LXRgjoKPj4+Pj4+IFRoZSByazM1NjggSERNSSBo
YXMgYW4gYWRkaXRpb25hbCBjbG9jayB0aGF0IG5lZWRzIHRvIGJlIGVuYWJsZWQgZm9yIHRoZQo+
Pj4+Pj4gSERNSSBjb250cm9sbGVyIHRvIHdvcmsuIFRoZSBwdXJwb3NlIG9mIHRoYXQgY2xvY2sg
aXMgbm90IGNsZWFyLiBJdCBpcwo+Pj4+Pj4gbmFtZWQgImhjbGsiIGluIHRoZSBkb3duc3RyZWFt
IGRyaXZlciwgc28gdXNlIHRoZSBzYW1lIG5hbWUuCj4+Pj4+Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1i
eTogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+Pj4+Pj4gLS0tCj4+Pj4+
Pgo+Pj4+Pj4gTm90ZXM6Cj4+Pj4+PiAgICAgICBDaGFuZ2VzIHNpbmNlIHY1Ogo+Pj4+Pj4gICAg
ICAgLSBVc2UgZGV2bV9jbGtfZ2V0X29wdGlvbmFsIHJhdGhlciB0aGFuIGRldm1fY2xrX2dldAo+
Pj4+Pj4KPj4+Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlw
LmMgfCAxNiArKysrKysrKysrKysrKysrCj4+Pj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5z
ZXJ0aW9ucygrKQo+Pj4+Pj4KPj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hk
bWktcm9ja2NoaXAuYwo+Pj4+Pj4gaW5kZXggZmU0Zjk1NTYyMzlhYy4uYzZjMDBlODc3OWFiNSAx
MDA2NDQKPj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tj
aGlwLmMKPj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tj
aGlwLmMKPj4+Pj4+IEBAIC03Niw2ICs3Niw3IEBAIHN0cnVjdCByb2NrY2hpcF9oZG1pIHsKPj4+
Pj4+ICAgIAljb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfaGRtaV9jaGlwX2RhdGEgKmNoaXBfZGF0YTsK
Pj4+Pj4+ICAgIAlzdHJ1Y3QgY2xrICpyZWZfY2xrOwo+Pj4+Pj4gICAgCXN0cnVjdCBjbGsgKmdy
Zl9jbGs7Cj4+Pj4+PiArCXN0cnVjdCBjbGsgKmhjbGtfY2xrOwo+Pj4+Pj4gICAgCXN0cnVjdCBk
d19oZG1pICpoZG1pOwo+Pj4+Pj4gICAgCXN0cnVjdCByZWd1bGF0b3IgKmF2ZGRfMHY5Owo+Pj4+
Pj4gICAgCXN0cnVjdCByZWd1bGF0b3IgKmF2ZGRfMXY4Owo+Pj4+Pj4gQEAgLTIyOSw2ICsyMzAs
MTQgQEAgc3RhdGljIGludCByb2NrY2hpcF9oZG1pX3BhcnNlX2R0KHN0cnVjdCByb2NrY2hpcF9o
ZG1pICpoZG1pKQo+Pj4+Pj4gICAgCQlyZXR1cm4gUFRSX0VSUihoZG1pLT5ncmZfY2xrKTsKPj4+
Pj4+ICAgIAl9Cj4+Pj4+PiArCWhkbWktPmhjbGtfY2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFs
KGhkbWktPmRldiwgImhjbGsiKTsKPj4+Pj4+ICsJaWYgKFBUUl9FUlIoaGRtaS0+aGNsa19jbGsp
ID09IC1FUFJPQkVfREVGRVIpIHsKPj4+Pj4KPj4+Pj4gSGF2ZSB5b3UgdHJpZWQgdG8gaW52ZXN0
aWdhdGUgdGhlIGhjbGs/IEknbSBzdGlsbCB0aGlua2luZyB0aGF0J3Mgbm90Cj4+Pj4+IG9ubHkg
SERNSSB0aGF0IG5lZWRzIHRoaXMgY2xvY2sgYW5kIHRoZW4gdGhlIGhhcmR3YXJlIGRlc2NyaXB0
aW9uCj4+Pj4+IGRvZXNuJ3QgbG9vayBjb3JyZWN0Lgo+Pj4+Cj4+Pj4gSSBhbSBzdGlsbCBub3Qg
c3VyZSB3aGF0IHlvdSBtZWFuLiBZZXMsIGl0J3Mgbm90IG9ubHkgdGhlIEhETUkgdGhhdAo+Pj4+
IG5lZWRzIHRoaXMgY2xvY2suIFRoZSBWT1AyIG5lZWRzIGl0IGFzIHdlbGwgYW5kIHRoZSBkcml2
ZXIgaGFuZGxlcyB0aGF0Lgo+Pj4KPj4+IEknbSBjdXJpb3VzIHdoZXRoZXIgRFNJL0RQIGFsc28g
bmVlZCB0aGF0IGNsb2NrIHRvIGJlIGVuYWJsZWQuIElmIHRoZXkKPj4+IGRvLCB0aGVuIHlvdSBh
cmVuJ3QgbW9kZWxpbmcgaC93IHByb3Blcmx5IEFGQUlDUy4KPj4KPj4gQXNzdW1pbmcgbm9ib2R5
IGF0IFJvY2tjaGlwIGRlY2lkZWQgdG8gbWFrZSB0aGluZ3MgbmVlZGxlc3NseSBpbmNvbnNpc3Rl
bnQKPj4gd2l0aCBwcmV2aW91cyBTb0NzLCBIQ0xLX1ZPUCBzaG91bGQgYmUgdGhlIGNsb2NrIGZv
ciB0aGUgVk9QJ3MgQUhCIHNsYXZlCj4+IGludGVyZmFjZS4gVXN1YWxseSwgaWYgdGhhdCBhZmZl
Y3RlZCBhbnl0aGluZyBvdGhlciB0aGFuIGFjY2Vzc2luZyBWT1AKPj4gcmVnaXN0ZXJzLCBpbmRl
ZWQgaXQgd291bGQgc21lbGwgb2Ygc29tZXRoaW5nIGJlaW5nIHdyb25nIGluIHRoZSBjbG9jayB0
cmVlLAo+PiBidXQgaW4gdGhpcyBjYXNlIEknZCBhbHNvIGJlIHN1c3BpY2lvdXMgb2Ygd2hldGhl
ciBpdCBtaWdodCBoYXZlIGVuZGVkIHVwCj4+IGNsb2NraW5nIHJlbGF0ZWQgR1JGIHJlZ2lzdGVy
cyBhcyB3ZWxsIChlaXRoZXIgZGlyZWN0bHksIG9yIGluZGlyZWN0bHkgdmlhCj4+IHNvbWUgZ2F0
ZSB0aGF0IHRoZSBjbG9jayBkcml2ZXIgaGFzbid0IG1vZGVsbGVkIHlldCkuCj4gCj4gT2ssIEkg
YW0gYmVnaW5uaW5nIHRvIHVuZGVyc3RhbmQuIEkgdmVyaWZpZWQgdGhhdCBoZG1pLCBtaXBpIGFu
ZCBkcCBhcmUKPiBoYW5naW5nIHdoZW4gSENMS19WT1AgaXMgZGlzYWJsZWQgYnkgZGlzYWJsaW5n
IHRoYXQgY2xvY2sgdmlhIHN5c2ZzCj4gdXNpbmcgQ0xPQ0tfQUxMT1dfV1JJVEVfREVCVUdGUy4g
V2hlbiBpdCdzIGRpc2FibGVkIHRoZW4gdGhlIHJlZ2lzdGVycwo+IG9mIHRoYXQgdW5pdHMgY2Fu
J3QgYmUgYWNjZXNzZWQuIEhvd2V2ZXIsIHdoZW4gSSBkaXNhYmxlIEhDTEtfVk9QIGJ5Cj4gZGly
ZWN0bHkgd3JpdGluZyB0byB0aGUgZ2F0ZSBiaXQgUkszNTY4X0NMS0dBVEVfQ09OKDIwKSB0aGVu
IG9ubHkKPiBhY2Nlc3NpbmcgVk9QIHJlZ2lzdGVycyBoYW5ncywgdGhlIG90aGVyIHVuaXRzIHN0
YXkgZnVuY3Rpb25hbC4KPiBTbyBpdCBzZWVtcyBpdCBtdXN0IGJlIHRoZSBwYXJlbnQgY2xvY2sg
d2hpY2ggbXVzdCBiZSBlbmFibGVkLiBUaGUKPiBwYXJlbnQgY2xvY2sgaXMgaGNsa192by4gVGhp
cyBjbG9jayBzaG91bGQgYmUgaGFuZGxlZCBhcyBwYXJ0IG9mIHRoZQo+IFJLMzU2OF9QRF9WTyBw
b3dlciBkb21haW46Cj4gCj4gCXBvd2VyLWRvbWFpbkBSSzM1NjhfUERfVk8gewo+ICAgICAgICAg
ICAgICAgICAgcmVnID0gPFJLMzU2OF9QRF9WTz47Cj4gICAgICAgICAgICAgICAgICBjbG9ja3Mg
PSA8JmNydSBIQ0xLX1ZPPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY3J1IFBDTEtf
Vk8+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjcnUgQUNMS19WT1BfUFJFPjsKPiAg
ICAgICAgICAgICAgICAgICBwbV9xb3MgPSA8JnFvc19oZGNwPiwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA8JnFvc192b3BfbTA+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwm
cW9zX3ZvcF9tMT47Cj4gICAgICAgICAgICAgICAgICAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDww
PjsKPiAgICAgICAgICB9Owo+IAo+IFRoZSBIRE1JIGNvbnRyb2xsZXIgaXMgcGFydCBvZiB0aGF0
IGRvbWFpbiwgc28gSSB0aGluayB0aGlzIHNob3VsZCB3b3JrLAo+IGJ1dCBpdCBkb2Vzbid0LiBU
aGF0J3Mgd2hlcmUgSSBhbSBub3csIEknbGwgaGF2ZSBhIGNsb3NlciBsb29rLgoKQWgsIGludGVy
ZXN0aW5nLiBMb29raW5nIGF0IHRoZSBjbG9jayBkcml2ZXIsIEknZCBhbHNvIGJlIHN1c3BpY2lv
dXMgCndoZXRoZXIgcGNsa192byBpcyBzb21laG93IG1lc3NlZCB1cCBzdWNoIHRoYXQgd2UncmUg
Y3VycmVudGx5IHJlbHlpbmcgCm9uIGhjbGtfdm8gdG8ga2VlcCB0aGUgY29tbW9uIGdyYW5kcGFy
ZW50IGVuYWJsZWQuIFNlZW1zIGxpa2UgdGhlIERTSSAKYW5kIGVEUCAoYW5kIEhEQ1AgaWYgYW55
b25lIGV2ZXIgdXNlZCBpdCkgcmVnaXN0ZXJzIHdvdWxkIGJlIHNpbWlsYXJseSAKYWZmZWN0ZWQg
aWYgc28sIGFuZCBzdXJlIGVub3VnaCB0aGV5IGJvdGggaGF2ZSBhIHNpbWlsYXJseSBzdXNwZWN0
IGV4dHJhIAoiaGNsayIgaW4gdGhlIGRvd25zdHJlYW0gRFQgdG9vLgoKUm9iaW4uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
