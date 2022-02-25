Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DB40C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 10:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMcvfnVLN46DMWcc+SIPCqIzMlxxrJzSUkZArL+Gd4k=; b=IN1iFImoo9ZIZS
	RepHKVsfuxnA+wLu6gWV2dW0soja4VPvveIdrbJlgseA/ZqYIs8urVNPhe9HCUqEHnS2UC9NgX1tJ
	Q7qfZ380Pjf3g/xEUA5jZIanYjZJwreLF/GiimUEg/UW3T+rRtTQPLmwkDFhtbcmecJYbOf2dtTVD
	cibEH64qRJNgJeQpCUHnXpal279qN8+mWAoE7ACo3ZbfW6d3wOlWTGUo/hQiPByEj11UzpgNa4zot
	l4k+a7RxIwP2tJklXanFOV0mP/e7pJDWuEcPByndiTRntzWfEt829yVwaXJQYSXp6mYU2lrbdlJLO
	4RzNRGtjhq2o4w4Xdhqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNYAm-004WcQ-MX; Fri, 25 Feb 2022 10:50:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNYAJ-004WQM-U6
 for linux-rockchip@lists.infradead.org; Fri, 25 Feb 2022 10:49:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNYAA-0001c6-I2; Fri, 25 Feb 2022 11:49:26 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNYA8-00082k-B5; Fri, 25 Feb 2022 11:49:24 +0100
Date: Fri, 25 Feb 2022 11:49:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Dmitry Osipenko <digetx@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Message-ID: <20220225104924.GC19585@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
 <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:47:47 up 76 days, 19:33, 91 users,  load average: 0.18, 0.18, 0.23
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_024936_000650_55A4DB6A 
X-CRM114-Status: GOOD (  30.66  )
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

T24gRnJpLCBGZWIgMjUsIDIwMjIgYXQgMDE6MjY6MTRQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+IDI1LjAyLjIwMjIgMTA6NTEsIFNhc2NoYSBIYXVlciDQv9C40YjQtdGCOgo+ID4g
VGhlIHJrMzU2OCBIRE1JIGhhcyBhbiBhZGRpdGlvbmFsIGNsb2NrIHRoYXQgbmVlZHMgdG8gYmUg
ZW5hYmxlZCBmb3IgdGhlCj4gPiBIRE1JIGNvbnRyb2xsZXIgdG8gd29yay4gVGhlIHB1cnBvc2Ug
b2YgdGhhdCBjbG9jayBpcyBub3QgY2xlYXIuIEl0IGlzCj4gPiBuYW1lZCAiaGNsayIgaW4gdGhl
IGRvd25zdHJlYW0gZHJpdmVyLCBzbyB1c2UgdGhlIHNhbWUgbmFtZS4KPiA+IAo+ID4gU2lnbmVk
LW9mZi1ieTogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+ID4gLS0tCj4g
PiAKPiA+IE5vdGVzOgo+ID4gICAgIENoYW5nZXMgc2luY2UgdjU6Cj4gPiAgICAgLSBVc2UgZGV2
bV9jbGtfZ2V0X29wdGlvbmFsIHJhdGhlciB0aGFuIGRldm1fY2xrX2dldAo+ID4gCj4gPiAgZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYyB8IDE2ICsrKysrKysrKysr
KysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMKPiA+IGluZGV4IGZlNGY5
NTU2MjM5YWMuLmM2YzAwZTg3NzlhYjUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jCj4gPiBAQCAtNzYsNiArNzYsNyBAQCBzdHJ1Y3Qgcm9j
a2NoaXBfaGRtaSB7Cj4gPiAgCWNvbnN0IHN0cnVjdCByb2NrY2hpcF9oZG1pX2NoaXBfZGF0YSAq
Y2hpcF9kYXRhOwo+ID4gIAlzdHJ1Y3QgY2xrICpyZWZfY2xrOwo+ID4gIAlzdHJ1Y3QgY2xrICpn
cmZfY2xrOwo+ID4gKwlzdHJ1Y3QgY2xrICpoY2xrX2NsazsKPiA+ICAJc3RydWN0IGR3X2hkbWkg
KmhkbWk7Cj4gPiAgCXN0cnVjdCByZWd1bGF0b3IgKmF2ZGRfMHY5Owo+ID4gIAlzdHJ1Y3QgcmVn
dWxhdG9yICphdmRkXzF2ODsKPiA+IEBAIC0yMjksNiArMjMwLDE0IEBAIHN0YXRpYyBpbnQgcm9j
a2NoaXBfaGRtaV9wYXJzZV9kdChzdHJ1Y3Qgcm9ja2NoaXBfaGRtaSAqaGRtaSkKPiA+ICAJCXJl
dHVybiBQVFJfRVJSKGhkbWktPmdyZl9jbGspOwo+ID4gIAl9Cj4gPiAgCj4gPiArCWhkbWktPmhj
bGtfY2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKGhkbWktPmRldiwgImhjbGsiKTsKPiA+ICsJ
aWYgKFBUUl9FUlIoaGRtaS0+aGNsa19jbGspID09IC1FUFJPQkVfREVGRVIpIHsKPiAKPiBIYXZl
IHlvdSB0cmllZCB0byBpbnZlc3RpZ2F0ZSB0aGUgaGNsaz8gSSdtIHN0aWxsIHRoaW5raW5nIHRo
YXQncyBub3QKPiBvbmx5IEhETUkgdGhhdCBuZWVkcyB0aGlzIGNsb2NrIGFuZCB0aGVuIHRoZSBo
YXJkd2FyZSBkZXNjcmlwdGlvbgo+IGRvZXNuJ3QgbG9vayBjb3JyZWN0LgoKSSBhbSBzdGlsbCBu
b3Qgc3VyZSB3aGF0IHlvdSBtZWFuLiBZZXMsIGl0J3Mgbm90IG9ubHkgdGhlIEhETUkgdGhhdApu
ZWVkcyB0aGlzIGNsb2NrLiBUaGUgVk9QMiBuZWVkcyBpdCBhcyB3ZWxsIGFuZCB0aGUgZHJpdmVy
IGhhbmRsZXMgdGhhdC4KClNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRl
ciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXgu
ZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25l
OiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2
ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
