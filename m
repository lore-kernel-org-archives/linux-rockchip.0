Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B51C0C7EE29
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 14:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gg6oLbmpj4JJzF9cw1PaXUsYoqnH31kCSEWEbYBxDTA=; b=K/IPXJwSFZAPvQ
	5CIZwWwnTy8EaMTg6HENSKr1zT1C5p48bHSTnJ7swToIovqs5fU2iGTytOKTbt7dzCDC+hIi9s0cq
	kEtaI1NrAs89bI/v2//daTqedToAdVEfO+FZ+MZ4TcIThL0iSR6Ni4Decct4/Qqy9yoXwsp+iQQWI
	S94vh1IsEExr1f9gYiz+G4K7aS8HUUAleK8Fw4f6jJl31ZeLlmpWFqCO3BEWPIJbfcVD/tPHh0RKH
	H0mbj4yEITFjs+RbtDvttlHOCXMO+nfK2BnZkI3CbHVeQj+qTlenWs1Q4yYf270xynU8+QiP4VB6I
	iQ+mmau80CzXzN+SP6EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2CEv-00GrrK-0s;
	Thu, 25 May 2023 14:46:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2CEs-00Grq1-1k
	for linux-rockchip@lists.infradead.org;
	Thu, 25 May 2023 14:46:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 653D36465C;
	Thu, 25 May 2023 14:46:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E849C433A8;
	Thu, 25 May 2023 14:46:46 +0000 (UTC)
Message-ID: <e674cfcb-6b1b-8052-7f29-e0e97bdda3be@xs4all.nl>
Date: Thu, 25 May 2023 16:46:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] media: verisilicon: Fix null pointer dereference in
 try_fmt
Content-Language: en-US
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Michael Tretter <m.tretter@pengutronix.de>, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, mchehab@kernel.org, benjamin.gaignard@collabora.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@pengutronix.de
References: <20230516091209.3098262-1-m.tretter@pengutronix.de>
 <118d51d7734d6673ed1d90b09533fab50ece4b78.camel@ndufresne.ca>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <118d51d7734d6673ed1d90b09533fab50ece4b78.camel@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_074650_650932_7C5EFC4D 
X-CRM114-Status: GOOD (  19.58  )
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

T24gMjUvMDUvMjAyMyAxNjozOCwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiBMZSBtYXJkaSAx
NiBtYWkgMjAyMyDDoCAxMToxMiArMDIwMCwgTWljaGFlbCBUcmV0dGVyIGEgw6ljcml0wqA6Cj4+
IFNpbmNlIGNvbW1pdCBkYjZmNjhiNTFlNWMgKCJtZWRpYTogdmVyaXNpbGljb246IERvIG5vdCBz
ZXQgY29udGV4dAo+PiBzcmMvZHN0IGZvcm1hdHMgaW4gcmVzZXQgZnVuY3Rpb25zIiksIHZwdV9z
cmNfZm10IGlzIG5vdCBzZXQgaW4gdGhlCj4+IHJlc2V0IGZ1bmN0aW9uLCBidXQgb25seSBzZXQg
aW4gaGFudHJvX3NldF9mbXRfb3V0LCB3aGljaCBjYWxscwo+PiBoYW50cm9fdHJ5X2ZtdCBiZWZv
cmUgc2V0dGluZyB0aGUgZm9ybWF0LiBUaGVyZWZvcmUsIGhhbnRyb190cnlfZm10Cj4+IG1pZ2h0
IGJlIGNhbGxlZCB3aXRoIHZwdV9zcmNfZm10IHN0aWxsIGJlaW5nIG51bGwuCj4+Cj4+IEFkZCBh
IHRlc3QgaWYgdGhlIGZvcm1hdCBpcyBhY3R1YWxseSBzZXQgYmVmb3JlIGNoZWNraW5nIHRoZSBm
b3JtYXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgVHJldHRlciA8bS50cmV0dGVyQHBl
bmd1dHJvbml4LmRlPgo+PiBGaXhlczogZGI2ZjY4YjUxZTVjICgibWVkaWE6IHZlcmlzaWxpY29u
OiBEbyBub3Qgc2V0IGNvbnRleHQgc3JjL2RzdCBmb3JtYXRzIGluIHJlc2V0IGZ1bmN0aW9ucyIp
Cj4gCj4gVGhpcyBwYXRjaCBoaWdobGlnaHRzIHlldCBtb3JlIGlzc3VlcyBpbiB0aGUgZHJpdmVy
IGRlZmF1bHQgZm9ybWF0IGhhbmRsaW5nLCBidXQKPiB0aGUgcmVtYWluaW5nIGJ1ZyBpcyBleHRy
ZW1lbHkgbWlub3IgKHRvbyBzbWFsbCBzaXplaW1hZ2UgYmVmb3JlIFNfRk1UIGlzCj4gY2FsbGVk
LCByYXRoZXIgdGhlbiBrZXJuZWwgb29wcy4pLiBDb25zaWRlcmluZyBob3cgbG9uZyB0aGlzIGhh
cyBiZWVuIGdvaW5nLAo+IHBsZWFzZSBjb25zaWRlciBtZXJnaW5nIHRoaXMuCgpJIHdlbnQgd2l0
aCB0aGlzIGZpeDoKCmh0dHBzOi8vcGF0Y2h3b3JrLmxpbnV4dHYub3JnL3Byb2plY3QvbGludXgt
bWVkaWEvcGF0Y2gvMjAyMzA1MjMxNjI1MTUuOTkzODYyLTEtYmVuamFtaW4uZ2FpZ25hcmRAY29s
bGFib3JhLmNvbS8KClBhcnQgb2YgdGhpcyBwdWxsIHJlcXVlc3Q6CgpodHRwczovL3BhdGNod29y
ay5saW51eHR2Lm9yZy9wcm9qZWN0L2xpbnV4LW1lZGlhL3BhdGNoL2Q0YjA4NDIwLWY3YzAtNDk1
MC0yZDIwLTM4NWQ5OGYzY2FkOUB4czRhbGwubmwvCgpJZiB5b3UgZGlzYWdyZWUsIHRoZW4gcGxl
YXNlIGxldCBtZSBrbm93LgoKVGhpcyBwYXJ0aWN1bGFyIHBhdGNoIGhhcyBiZWVuIG1hcmtlZCBh
cyBTdXBlcnNlZGVkIGluIHBhdGNod29yay4KClJlZ2FyZHMsCgoJSGFucwoKPiAKPiBSZXZpZXdl
ZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+
IAo+PiAtLS0KPj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0
bDIuYyB8IDkgKysrKysrLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9oYW50cm9fdjRsMi5jCj4+IGluZGV4IDgzNTUxODUzNGUzYi4uZWMzN2QyNjQ2ZmRlIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192
NGwyLmMKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9f
djRsMi5jCj4+IEBAIC0zMTMsMTcgKzMxMywyMCBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlfZm10
KGNvbnN0IHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4+ICAJCS8qIEZpbGwgcmVtYWluaW5nIGZp
ZWxkcyAqLwo+PiAgCQl2NGwyX2ZpbGxfcGl4Zm10X21wKHBpeF9tcCwgZm10LT5mb3VyY2MsIHBp
eF9tcC0+d2lkdGgsCj4+ICAJCQkJICAgIHBpeF9tcC0+aGVpZ2h0KTsKPj4gLQkJaWYgKGN0eC0+
dnB1X3NyY19mbXQtPmZvdXJjYyA9PSBWNEwyX1BJWF9GTVRfSDI2NF9TTElDRSAmJgo+PiArCQlp
ZiAoY3R4LT52cHVfc3JjX2ZtdCAmJgo+PiArCQkgICAgY3R4LT52cHVfc3JjX2ZtdC0+Zm91cmNj
ID09IFY0TDJfUElYX0ZNVF9IMjY0X1NMSUNFICYmCj4+ICAJCSAgICAhaGFudHJvX25lZWRzX3Bv
c3Rwcm9jKGN0eCwgZm10KSkKPj4gIAkJCXBpeF9tcC0+cGxhbmVfZm10WzBdLnNpemVpbWFnZSAr
PQo+PiAgCQkJCWhhbnRyb19oMjY0X212X3NpemUocGl4X21wLT53aWR0aCwKPj4gIAkJCQkJCSAg
ICBwaXhfbXAtPmhlaWdodCk7Cj4+IC0JCWVsc2UgaWYgKGN0eC0+dnB1X3NyY19mbXQtPmZvdXJj
YyA9PSBWNEwyX1BJWF9GTVRfVlA5X0ZSQU1FICYmCj4+ICsJCWVsc2UgaWYgKGN0eC0+dnB1X3Ny
Y19mbXQgJiYKPj4gKwkJCSBjdHgtPnZwdV9zcmNfZm10LT5mb3VyY2MgPT0gVjRMMl9QSVhfRk1U
X1ZQOV9GUkFNRSAmJgo+PiAgCQkJICFoYW50cm9fbmVlZHNfcG9zdHByb2MoY3R4LCBmbXQpKQo+
PiAgCQkJcGl4X21wLT5wbGFuZV9mbXRbMF0uc2l6ZWltYWdlICs9Cj4+ICAJCQkJaGFudHJvX3Zw
OV9tdl9zaXplKHBpeF9tcC0+d2lkdGgsCj4+ICAJCQkJCQkgICBwaXhfbXAtPmhlaWdodCk7Cj4+
IC0JCWVsc2UgaWYgKGN0eC0+dnB1X3NyY19mbXQtPmZvdXJjYyA9PSBWNEwyX1BJWF9GTVRfSEVW
Q19TTElDRSAmJgo+PiArCQllbHNlIGlmIChjdHgtPnZwdV9zcmNfZm10ICYmCj4+ICsJCQkgY3R4
LT52cHVfc3JjX2ZtdC0+Zm91cmNjID09IFY0TDJfUElYX0ZNVF9IRVZDX1NMSUNFICYmCj4+ICAJ
CQkgIWhhbnRyb19uZWVkc19wb3N0cHJvYyhjdHgsIGZtdCkpCj4+ICAJCQlwaXhfbXAtPnBsYW5l
X2ZtdFswXS5zaXplaW1hZ2UgKz0KPj4gIAkJCQloYW50cm9faGV2Y19tdl9zaXplKHBpeF9tcC0+
d2lkdGgsCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
