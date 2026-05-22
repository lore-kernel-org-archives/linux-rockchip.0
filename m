Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71B85CD5BB1
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 08:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhP8KMnwl/6brOGGqzBiCOZYSGtxXntzy5iGis6Atc8=; b=nEmHU6eriXpXn0
	t1Vcn3njk8hqy36hOYrOlEr3Bo61dFVWAqtguQKgZxGZaWp/piHNqttHJ/rqCUP2NZawIzuav+k5o
	C4PUogSzIZFnf+C4c2QGfKSAOpYENd+MMpjZ/nVl0O3bp/+cIk/LjvVBGWhlYkNvskBaqM6fdM1YA
	UssJjfPIB8C36wk70Q0irbpIsFKi6ccQcGKEgyb5pSr+pLbYyOhHjOr2g7KE6cGr5xt0X4A15UxHc
	xMBDf4ERMneHrZjJV2Bqa6x1t9SQBaLyhOMRphob5PleEdhjnoGS25fPJigTlIs+72pljdZsomHRc
	No8TXdWOVE708a96G7MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQL75-0000000ABIm-3XVM;
	Fri, 22 May 2026 08:20:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQL73-0000000ABHY-2bLQ
	for linux-rockchip@lists.infradead.org;
	Fri, 22 May 2026 08:20:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wQL71-0002DV-9m; Fri, 22 May 2026 10:20:07 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wQL6z-001EoG-2l;
	Fri, 22 May 2026 10:20:06 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wQL70-000000006RI-1SZQ;
	Fri, 22 May 2026 10:20:06 +0200
Message-ID: <74844de05ed99d29424ba71e3c625020afdddf61.camel@pengutronix.de>
Subject: Re: [PATCH] ARM: rockchip: keep reset control around
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,  Steven Price <steven.price@arm.com>,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Fri, 22 May 2026 10:20:06 +0200
In-Reply-To: <7845032.1B3tZ46Xf9@phil>
References: <20260521210915.2331176-1-heiko@sntech.de>
	 <7845032.1B3tZ46Xf9@phil>
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_012009_659729_C1ECD898 
X-CRM114-Status: GOOD (  19.79  )
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

T24gRnIsIDIwMjYtMDUtMjIgYXQgMDk6MjAgKzAyMDAsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+
IEFtIERvbm5lcnN0YWcsIDIxLiBNYWkgMjAyNiwgMjM6MDk6MTUgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBIZWlrbyBTdHVlYm5lcjoKPiA+IERvIG5vdCBwdXQgdGhlIHJl
c2V0IGNvbnRyb2wsIHJldGFpbiBleGNsdXNpdmUgY29udHJvbCBvdmVyIGl0Lgo+ID4gQWZ0ZXIg
dHVybmluZyBvbiBhIENQVSwgdGhlIGNvcnJlc3BvbmRpbmcgcmVzZXQgbGluZSBtdXN0IHN0YXkK
PiA+IGRlYXNzZXJ0ZWQuCj4gPiAKPiA+IFRoaXMgYWxzbyBhdm9pZHMgY2FsbGluZyByZXNldF9j
b250cm9sX3B1dCgpIGJlZm9yZSB3b3JrcXVldWVzCj4gPiBhcmUgb3BlcmF0aW9uYWwuCj4gPiAK
PiA+IEZpeGVzOiA3OGViYmZmNmQxYTAgKCJyZXNldDogaGFuZGxlIHJlbW92aW5nIHN1cHBsaWVy
IGJlZm9yZSBjb25zdW1lcnMiKQo+ID4gU2lnbmVkLW9mZi1ieTogUGhpbGlwcCBaYWJlbCA8cC56
YWJlbEBwZW5ndXRyb25peC5kZT4KPiA+IFRlc3RlZC1ieTogU3RldmVuIFByaWNlIDxzdGV2ZW4u
cHJpY2VAYXJtLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL3BsYXRzbXAuYyB8
IDE2ICsrKysrKysrKystLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygr
KSwgNiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcm9j
a2NoaXAvcGxhdHNtcC5jIGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9wbGF0c21wLmMKPiA+IGlu
ZGV4IGY0MzJkMjJiZmVkOC4uZjY1OWQ4OTRiZmFlIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm0v
bWFjaC1yb2NrY2hpcC9wbGF0c21wLmMKPiA+ICsrKyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAv
cGxhdHNtcC5jCj4gPiBAQCAtMzQsNiArMzQsNyBAQCBzdGF0aWMgaW50IG5jb3JlczsKPiA+ICAK
PiA+ICBzdGF0aWMgc3RydWN0IHJlZ21hcCAqcG11Owo+ID4gIHN0YXRpYyBpbnQgaGFzX3BtdSA9
IHRydWU7Cj4gPiArc3RhdGljIHN0cnVjdCByZXNldF9jb250cm9sICpjcHVfcnN0Y1s0XTsKPiAK
PiBBZnRlciBzbGVlcGluZyBvbiB0aGF0LCB0aGlzIHNob3VsZCBiZSBjcHVfcnN0Y1s1XTsKPiAK
PiBDb3JldHgtQTkgU29DcyBuZWVkIHRvIGVuYWJsZSB0aGUgU0NVIHBvd2VyLWRvbWFpbiB3aGlj
aCB0aGFua2Z1bGx5Cj4gc2l0cyBhdCBpbmRleCA0IG9mIHRoZSBwb3dlci1kb21haW4gcmVnaXN0
ZXIuCj4gCj4gU28gd2hpbGUgd2UgKGFscmVhZHkpIGV4cGVjdCBubyByZXNldCBjb250cm9sIGZv
ciB0aGF0LCB3ZSBuZWVkIGF0IGxlYXN0Cj4gbWFrZSBzdXJlLCBpdCdzIG5vdCByZWFkaW5nIGlu
dG8gdW5kZWZpbmVkIG1lbW9yeQoKVGhlIGFjY2VzcyBpbiBwbXVfc2V0X3Bvd2VyX2RvbWFpbigp
IGlzIGdhdGVkIGJ5CihwZCA8IEFSUkFZX1NJWkUoY3B1X3JzdGMpKS4gQW5kIG5jb3JlcyBpbiBy
b2NrY2hpcF9zbXBfcHJlcGFyZV9jcHVzKCkKY2FuIG5vdCBiZSBsYXJnZXIgdGhhbiA0LgoKPiBh
bmQgdGh1cyBuZWVkIHRoYXQgZW1wdHkgZmllbGQgaW4gdGhlIGFycmF5LgoKV2UgY291bGQgZHJv
cCB0aGUgQVJSQVlfU0laRSBjaGVjayBhbmQgYWRkIGEgcGxhY2Vob2xkZXIgdG8gdGhlIGFycmF5
LApidXQgaXQgd291bGQgbmVlZCB0byBiZSBzZXQgdG8gRVJSX1BUUigtRUlOVkFMKS4gT3RoZXJ3
aXNlIHdlJ2QgaGF2ZSB0bwpyZXBsYWNlIGFsbCB0aGUgSVNfRVJSKHJzdGMpIGNoZWNrcyBhcyB3
ZWxsLiBJIHRoaW5rIHRoYXQgd291bGQgYmUgYQpnb29kIGZvbGxvdy11cCBjaGFuZ2UuCgpyZWdh
cmRzClBoaWxpcHAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
