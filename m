Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFD07C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 14:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rrf8edZSegFeSZSVgb6wq/sVZ558t0adlo+Bu/SjtrY=; b=VE7q/MYlpSI7wU
	25eRP0xMB7eSgOQh+4uo4hQd+aoZ2RsuZJWgMwuw89chpCDFIDrUIGvpoO1RW0475XO5NW1DwTdGa
	vi4ZFPGnyd5DHI1L9O9h8O8FrarTV5roLPV1qc0/+oGtcVvP1Vi82M9xOlOwecI1T3izfPiTasEQt
	74kJEheDGsUsiyWg8SsvzhnTi1QXWiIckiT9K1x1vxFnfYS2TuGsKhyktgLQNVuazRYQ6O8hEVxoC
	W1mD6qwjPmzZL8sQY/M8kiRUpcFwph1T5aKJq+tPSjMNMyRNRa8ankK6UanEsHi7CW/dxAomihylp
	Z+Ovdzwyu5I20XkAiNqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOh4F-00CusC-31; Mon, 28 Feb 2022 14:32:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOgsA-00Cq4o-N1
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 14:19:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOgs0-0003QR-H8; Mon, 28 Feb 2022 15:19:24 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOgrx-0007op-S7; Mon, 28 Feb 2022 15:19:21 +0100
Date: Mon, 28 Feb 2022 15:19:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Dmitry Osipenko <digetx@gmail.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Message-ID: <20220228141921.GN19585@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
 <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
 <20220225104924.GC19585@pengutronix.de>
 <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
 <90c61299-f02c-607b-4734-7134852ef0a6@arm.com>
 <20220225131154.GE19585@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220225131154.GE19585@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:52:07 up 79 days, 22:37, 90 users,  load average: 0.15, 0.14, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_061934_800246_4BAECBD1 
X-CRM114-Status: GOOD (  46.68  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBGZWIgMjUsIDIwMjIgYXQgMDI6MTE6NTRQTSArMDEwMCwgU2FzY2hhIEhhdWVyIHdy
b3RlOgo+IE9uIEZyaSwgRmViIDI1LCAyMDIyIGF0IDEyOjQxOjIzUE0gKzAwMDAsIFJvYmluIE11
cnBoeSB3cm90ZToKPiA+IE9uIDIwMjItMDItMjUgMTE6MTAsIERtaXRyeSBPc2lwZW5rbyB3cm90
ZToKPiA+ID4gMjUuMDIuMjAyMiAxMzo0OSwgU2FzY2hhIEhhdWVyINC/0LjRiNC10YI6Cj4gPiA+
ID4gT24gRnJpLCBGZWIgMjUsIDIwMjIgYXQgMDE6MjY6MTRQTSArMDMwMCwgRG1pdHJ5IE9zaXBl
bmtvIHdyb3RlOgo+ID4gPiA+ID4gMjUuMDIuMjAyMiAxMDo1MSwgU2FzY2hhIEhhdWVyINC/0LjR
iNC10YI6Cj4gPiA+ID4gPiA+IFRoZSByazM1NjggSERNSSBoYXMgYW4gYWRkaXRpb25hbCBjbG9j
ayB0aGF0IG5lZWRzIHRvIGJlIGVuYWJsZWQgZm9yIHRoZQo+ID4gPiA+ID4gPiBIRE1JIGNvbnRy
b2xsZXIgdG8gd29yay4gVGhlIHB1cnBvc2Ugb2YgdGhhdCBjbG9jayBpcyBub3QgY2xlYXIuIEl0
IGlzCj4gPiA+ID4gPiA+IG5hbWVkICJoY2xrIiBpbiB0aGUgZG93bnN0cmVhbSBkcml2ZXIsIHNv
IHVzZSB0aGUgc2FtZSBuYW1lLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1i
eTogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+ID4gPiA+ID4gPiAtLS0K
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IE5vdGVzOgo+ID4gPiA+ID4gPiAgICAgIENoYW5nZXMg
c2luY2UgdjU6Cj4gPiA+ID4gPiA+ICAgICAgLSBVc2UgZGV2bV9jbGtfZ2V0X29wdGlvbmFsIHJh
dGhlciB0aGFuIGRldm1fY2xrX2dldAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gICBkcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jIHwgMTYgKysrKysrKysrKysrKysr
Kwo+ID4gPiA+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCj4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
X2hkbWktcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tj
aGlwLmMKPiA+ID4gPiA+ID4gaW5kZXggZmU0Zjk1NTYyMzlhYy4uYzZjMDBlODc3OWFiNSAxMDA2
NDQKPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9j
a2NoaXAuYwo+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRt
aS1yb2NrY2hpcC5jCj4gPiA+ID4gPiA+IEBAIC03Niw2ICs3Niw3IEBAIHN0cnVjdCByb2NrY2hp
cF9oZG1pIHsKPiA+ID4gPiA+ID4gICAJY29uc3Qgc3RydWN0IHJvY2tjaGlwX2hkbWlfY2hpcF9k
YXRhICpjaGlwX2RhdGE7Cj4gPiA+ID4gPiA+ICAgCXN0cnVjdCBjbGsgKnJlZl9jbGs7Cj4gPiA+
ID4gPiA+ICAgCXN0cnVjdCBjbGsgKmdyZl9jbGs7Cj4gPiA+ID4gPiA+ICsJc3RydWN0IGNsayAq
aGNsa19jbGs7Cj4gPiA+ID4gPiA+ICAgCXN0cnVjdCBkd19oZG1pICpoZG1pOwo+ID4gPiA+ID4g
PiAgIAlzdHJ1Y3QgcmVndWxhdG9yICphdmRkXzB2OTsKPiA+ID4gPiA+ID4gICAJc3RydWN0IHJl
Z3VsYXRvciAqYXZkZF8xdjg7Cj4gPiA+ID4gPiA+IEBAIC0yMjksNiArMjMwLDE0IEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfaGRtaV9wYXJzZV9kdChzdHJ1Y3Qgcm9ja2NoaXBfaGRtaSAqaGRtaSkK
PiA+ID4gPiA+ID4gICAJCXJldHVybiBQVFJfRVJSKGhkbWktPmdyZl9jbGspOwo+ID4gPiA+ID4g
PiAgIAl9Cj4gPiA+ID4gPiA+ICsJaGRtaS0+aGNsa19jbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9u
YWwoaGRtaS0+ZGV2LCAiaGNsayIpOwo+ID4gPiA+ID4gPiArCWlmIChQVFJfRVJSKGhkbWktPmhj
bGtfY2xrKSA9PSAtRVBST0JFX0RFRkVSKSB7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IEhhdmUgeW91
IHRyaWVkIHRvIGludmVzdGlnYXRlIHRoZSBoY2xrPyBJJ20gc3RpbGwgdGhpbmtpbmcgdGhhdCdz
IG5vdAo+ID4gPiA+ID4gb25seSBIRE1JIHRoYXQgbmVlZHMgdGhpcyBjbG9jayBhbmQgdGhlbiB0
aGUgaGFyZHdhcmUgZGVzY3JpcHRpb24KPiA+ID4gPiA+IGRvZXNuJ3QgbG9vayBjb3JyZWN0Lgo+
ID4gPiA+IAo+ID4gPiA+IEkgYW0gc3RpbGwgbm90IHN1cmUgd2hhdCB5b3UgbWVhbi4gWWVzLCBp
dCdzIG5vdCBvbmx5IHRoZSBIRE1JIHRoYXQKPiA+ID4gPiBuZWVkcyB0aGlzIGNsb2NrLiBUaGUg
Vk9QMiBuZWVkcyBpdCBhcyB3ZWxsIGFuZCB0aGUgZHJpdmVyIGhhbmRsZXMgdGhhdC4KPiA+ID4g
Cj4gPiA+IEknbSBjdXJpb3VzIHdoZXRoZXIgRFNJL0RQIGFsc28gbmVlZCB0aGF0IGNsb2NrIHRv
IGJlIGVuYWJsZWQuIElmIHRoZXkKPiA+ID4gZG8sIHRoZW4geW91IGFyZW4ndCBtb2RlbGluZyBo
L3cgcHJvcGVybHkgQUZBSUNTLgo+ID4gCj4gPiBBc3N1bWluZyBub2JvZHkgYXQgUm9ja2NoaXAg
ZGVjaWRlZCB0byBtYWtlIHRoaW5ncyBuZWVkbGVzc2x5IGluY29uc2lzdGVudAo+ID4gd2l0aCBw
cmV2aW91cyBTb0NzLCBIQ0xLX1ZPUCBzaG91bGQgYmUgdGhlIGNsb2NrIGZvciB0aGUgVk9QJ3Mg
QUhCIHNsYXZlCj4gPiBpbnRlcmZhY2UuIFVzdWFsbHksIGlmIHRoYXQgYWZmZWN0ZWQgYW55dGhp
bmcgb3RoZXIgdGhhbiBhY2Nlc3NpbmcgVk9QCj4gPiByZWdpc3RlcnMsIGluZGVlZCBpdCB3b3Vs
ZCBzbWVsbCBvZiBzb21ldGhpbmcgYmVpbmcgd3JvbmcgaW4gdGhlIGNsb2NrIHRyZWUsCj4gPiBi
dXQgaW4gdGhpcyBjYXNlIEknZCBhbHNvIGJlIHN1c3BpY2lvdXMgb2Ygd2hldGhlciBpdCBtaWdo
dCBoYXZlIGVuZGVkIHVwCj4gPiBjbG9ja2luZyByZWxhdGVkIEdSRiByZWdpc3RlcnMgYXMgd2Vs
bCAoZWl0aGVyIGRpcmVjdGx5LCBvciBpbmRpcmVjdGx5IHZpYQo+ID4gc29tZSBnYXRlIHRoYXQg
dGhlIGNsb2NrIGRyaXZlciBoYXNuJ3QgbW9kZWxsZWQgeWV0KS4KPiAKPiBPaywgSSBhbSBiZWdp
bm5pbmcgdG8gdW5kZXJzdGFuZC4gSSB2ZXJpZmllZCB0aGF0IGhkbWksIG1pcGkgYW5kIGRwIGFy
ZQo+IGhhbmdpbmcgd2hlbiBIQ0xLX1ZPUCBpcyBkaXNhYmxlZCBieSBkaXNhYmxpbmcgdGhhdCBj
bG9jayB2aWEgc3lzZnMKPiB1c2luZyBDTE9DS19BTExPV19XUklURV9ERUJVR0ZTLiBXaGVuIGl0
J3MgZGlzYWJsZWQgdGhlbiB0aGUgcmVnaXN0ZXJzCj4gb2YgdGhhdCB1bml0cyBjYW4ndCBiZSBh
Y2Nlc3NlZC4gSG93ZXZlciwgd2hlbiBJIGRpc2FibGUgSENMS19WT1AgYnkKPiBkaXJlY3RseSB3
cml0aW5nIHRvIHRoZSBnYXRlIGJpdCBSSzM1NjhfQ0xLR0FURV9DT04oMjApIHRoZW4gb25seQo+
IGFjY2Vzc2luZyBWT1AgcmVnaXN0ZXJzIGhhbmdzLCB0aGUgb3RoZXIgdW5pdHMgc3RheSBmdW5j
dGlvbmFsLgo+IFNvIGl0IHNlZW1zIGl0IG11c3QgYmUgdGhlIHBhcmVudCBjbG9jayB3aGljaCBt
dXN0IGJlIGVuYWJsZWQuIFRoZQo+IHBhcmVudCBjbG9jayBpcyBoY2xrX3ZvLiBUaGlzIGNsb2Nr
IHNob3VsZCBiZSBoYW5kbGVkIGFzIHBhcnQgb2YgdGhlCj4gUkszNTY4X1BEX1ZPIHBvd2VyIGRv
bWFpbjoKPiAKPiAJcG93ZXItZG9tYWluQFJLMzU2OF9QRF9WTyB7Cj4gICAgICAgICAgICAgICAg
IHJlZyA9IDxSSzM1NjhfUERfVk8+Owo+ICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBI
Q0xLX1ZPPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjcnUgUENMS19WTz4sCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgIDwmY3J1IEFDTEtfVk9QX1BSRT47Cj4gICAgICAgICAgICAg
ICAgICBwbV9xb3MgPSA8JnFvc19oZGNwPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgIDwm
cW9zX3ZvcF9tMD4sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICA8JnFvc192b3BfbTE+Owo+
ICAgICAgICAgICAgICAgICAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDwwPjsKPiAgICAgICAgIH07
CgpGb3JnZXQgdGhpcy4gVGhlIGNsb2NrcyBpbiB0aGlzIG5vZGUgYXJlIG9ubHkgZW5hYmxlZCBk
dXJpbmcgZW5hYmxpbmcgb3IKZGlzYWJsaW5nIHRoZSBwb3dlciBkb21haW4sIHRoZXkgYXJlIGRp
c2FibGVkIGFnYWluIGltbWVkaWF0ZWx5IGFmdGVyd2FyZHMuCgpPSywgSSBuZWVkIEhDTEtfVk8g
dG8gYWNjZXNzIHRoZSBIRE1JIHJlZ2lzdGVycy4gSSB2ZXJpZmllZCB0aGF0IGJ5CmRpc2FibGlu
ZyBIQ0xLX1ZPIGF0IHJlZ2lzdGVyIGxldmVsIChDUlVfR0FURV9DT04oMjApIEJJVCgxKSkuIFRo
ZQpIRE1JIHJlZ2lzdGVycyBiZWNvbWUgaW5hY2Nlc3NpYmxlIHRoZW4uIFRoaXMgbWVhbnMgSSds
bCByZXBsYWNlCkhDTEtfVk9QIGluIHRoZSBIRE1JIG5vZGUgd2l0aCBIQ0xLX1ZPLiBEb2VzIHRo
aXMgc291bmQgc2FuZT8KClNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRl
ciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXgu
ZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25l
OiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2
ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
