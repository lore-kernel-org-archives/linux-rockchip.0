Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D3F2C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 11:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4N4cF/4NohKgQUc2o9f3acRq+r7VakrgoMnBqq58l4=; b=Kowl61zlyNLB38
	r6NOyarieJd7L5t/abhT3zT/a3J9E4WhBhnvAEz3rOaZ7uHNf92euygx+2+5qY0Rjz/Ww/b4MxvbG
	jQ+wCcXe0J9lpESy769/9VaLvTARx9ZwqT50xu4On9UpYmwSgSqWNTSNXbJr8XXWsRxHEY+Sd2asZ
	DozwYnBnKlKlGq3f8k0odMx/IybPRJcdBc/jyvjmVcw6TRS0FmQ2gVUBEkef/y+pbcUlaCAgZSRPu
	aMlHzzLjljYVuQt6EOb2mMqPQwIbn39o4OhLQKhQ7kSJejnssB7Jn6JeMs5jtKAucmCbSqJtcLsw2
	YnPggIKP5B76ybwnaAdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNYvF-004hwY-Ut; Fri, 25 Feb 2022 11:38:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNYv4-004hug-8v
 for linux-rockchip@lists.infradead.org; Fri, 25 Feb 2022 11:37:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNYuv-0007w3-I2; Fri, 25 Feb 2022 12:37:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNYur-0003KO-LI; Fri, 25 Feb 2022 12:37:41 +0100
Date: Fri, 25 Feb 2022 12:37:41 +0100
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
Message-ID: <20220225113741.GD19585@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
 <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
 <20220225104924.GC19585@pengutronix.de>
 <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:34:14 up 76 days, 20:19, 89 users,  load average: 0.27, 0.21, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_033754_325237_7B3713AF 
X-CRM114-Status: GOOD (  33.38  )
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

T24gRnJpLCBGZWIgMjUsIDIwMjIgYXQgMDI6MTA6NTVQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+IDI1LjAyLjIwMjIgMTM6NDksIFNhc2NoYSBIYXVlciDQv9C40YjQtdGCOgo+ID4g
T24gRnJpLCBGZWIgMjUsIDIwMjIgYXQgMDE6MjY6MTRQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+ID4+IDI1LjAyLjIwMjIgMTA6NTEsIFNhc2NoYSBIYXVlciDQv9C40YjQtdGCOgo+
ID4+PiBUaGUgcmszNTY4IEhETUkgaGFzIGFuIGFkZGl0aW9uYWwgY2xvY2sgdGhhdCBuZWVkcyB0
byBiZSBlbmFibGVkIGZvciB0aGUKPiA+Pj4gSERNSSBjb250cm9sbGVyIHRvIHdvcmsuIFRoZSBw
dXJwb3NlIG9mIHRoYXQgY2xvY2sgaXMgbm90IGNsZWFyLiBJdCBpcwo+ID4+PiBuYW1lZCAiaGNs
ayIgaW4gdGhlIGRvd25zdHJlYW0gZHJpdmVyLCBzbyB1c2UgdGhlIHNhbWUgbmFtZS4KPiA+Pj4K
PiA+Pj4gU2lnbmVkLW9mZi1ieTogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRl
Pgo+ID4+PiAtLS0KPiA+Pj4KPiA+Pj4gTm90ZXM6Cj4gPj4+ICAgICBDaGFuZ2VzIHNpbmNlIHY1
Ogo+ID4+PiAgICAgLSBVc2UgZGV2bV9jbGtfZ2V0X29wdGlvbmFsIHJhdGhlciB0aGFuIGRldm1f
Y2xrX2dldAo+ID4+Pgo+ID4+PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9j
a2NoaXAuYyB8IDE2ICsrKysrKysrKysrKysrKysKPiA+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBp
bnNlcnRpb25zKCspCj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hk
bWktcm9ja2NoaXAuYwo+ID4+PiBpbmRleCBmZTRmOTU1NjIzOWFjLi5jNmMwMGU4Nzc5YWI1IDEw
MDY0NAo+ID4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hp
cC5jCj4gPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlw
LmMKPiA+Pj4gQEAgLTc2LDYgKzc2LDcgQEAgc3RydWN0IHJvY2tjaGlwX2hkbWkgewo+ID4+PiAg
CWNvbnN0IHN0cnVjdCByb2NrY2hpcF9oZG1pX2NoaXBfZGF0YSAqY2hpcF9kYXRhOwo+ID4+PiAg
CXN0cnVjdCBjbGsgKnJlZl9jbGs7Cj4gPj4+ICAJc3RydWN0IGNsayAqZ3JmX2NsazsKPiA+Pj4g
KwlzdHJ1Y3QgY2xrICpoY2xrX2NsazsKPiA+Pj4gIAlzdHJ1Y3QgZHdfaGRtaSAqaGRtaTsKPiA+
Pj4gIAlzdHJ1Y3QgcmVndWxhdG9yICphdmRkXzB2OTsKPiA+Pj4gIAlzdHJ1Y3QgcmVndWxhdG9y
ICphdmRkXzF2ODsKPiA+Pj4gQEAgLTIyOSw2ICsyMzAsMTQgQEAgc3RhdGljIGludCByb2NrY2hp
cF9oZG1pX3BhcnNlX2R0KHN0cnVjdCByb2NrY2hpcF9oZG1pICpoZG1pKQo+ID4+PiAgCQlyZXR1
cm4gUFRSX0VSUihoZG1pLT5ncmZfY2xrKTsKPiA+Pj4gIAl9Cj4gPj4+ICAKPiA+Pj4gKwloZG1p
LT5oY2xrX2NsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbChoZG1pLT5kZXYsICJoY2xrIik7Cj4g
Pj4+ICsJaWYgKFBUUl9FUlIoaGRtaS0+aGNsa19jbGspID09IC1FUFJPQkVfREVGRVIpIHsKPiA+
Pgo+ID4+IEhhdmUgeW91IHRyaWVkIHRvIGludmVzdGlnYXRlIHRoZSBoY2xrPyBJJ20gc3RpbGwg
dGhpbmtpbmcgdGhhdCdzIG5vdAo+ID4+IG9ubHkgSERNSSB0aGF0IG5lZWRzIHRoaXMgY2xvY2sg
YW5kIHRoZW4gdGhlIGhhcmR3YXJlIGRlc2NyaXB0aW9uCj4gPj4gZG9lc24ndCBsb29rIGNvcnJl
Y3QuCj4gPiAKPiA+IEkgYW0gc3RpbGwgbm90IHN1cmUgd2hhdCB5b3UgbWVhbi4gWWVzLCBpdCdz
IG5vdCBvbmx5IHRoZSBIRE1JIHRoYXQKPiA+IG5lZWRzIHRoaXMgY2xvY2suIFRoZSBWT1AyIG5l
ZWRzIGl0IGFzIHdlbGwgYW5kIHRoZSBkcml2ZXIgaGFuZGxlcyB0aGF0Lgo+IAo+IEknbSBjdXJp
b3VzIHdoZXRoZXIgRFNJL0RQIGFsc28gbmVlZCB0aGF0IGNsb2NrIHRvIGJlIGVuYWJsZWQuIElm
IHRoZXkKPiBkbywgdGhlbiB5b3UgYXJlbid0IG1vZGVsaW5nIGgvdyBwcm9wZXJseSBBRkFJQ1Mu
CgpJbmRlZWQgSSBjYW4gY29uZmlybSB0aGF0IERTSSBhbmQgRFAgbmVlZCB0aGF0IGNsb2NrIGVu
YWJsZWQgZm9yCnJlZ2lzdGVyIGFjY2VzcyBhcyB3ZWxsLiBEbyB5b3UgdGhpbmsgdGhlc2UgZGV2
aWNlcyBzaG91bGQgYmUgdW5kZXIgYW4KYWRkaXRpb25hbCBidXMgbGF5ZXIgaW4gdGhlIGRldmlj
ZSB0cmVlIHdoaWNoIGRyaXZlcyB0aGUgY2xvY2s/IE9yCnNob3VsZCBIQ0xLX1ZPUCBiZSBlbmFi
bGVkIGFzIHBhcnQgb2YgdGhlIFJLMzU2OF9QRF9WTyBwb3dlciBkb21haW4/CgpTYXNjaGEKCi0t
IApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAg
ICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBH
ZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApB
bXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUx
MjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
