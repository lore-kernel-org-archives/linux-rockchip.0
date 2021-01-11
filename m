Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D7A9C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 12:25:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5D15222F9
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 12:25:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B5D15222F9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+Q8N3Zcosluy0EGD+hm3yA4CX11KSq4aOeSToQPpTmc=; b=Sbi7K4Y2F+SrMH7DPe0MovyJg
	gNKXuKU4z6XTxE5yvPndaut5J0sDBGjAe/kmxrcvRgunyh7cda6l2apIkl5tPjR2rGE6qpFGNB8so
	DEPYzKUSt/UaD6dzpZDHOOxasxvwqhtfUJt9lQ6fLyVY8PhuhOOPJvZuauGxB2uKZy+nXmnkgFJuc
	0MzlJF/9mNsODLpZGjuJRuB+nwqCxBzn9XyQ6sylN3A7L3dBaPdu737MuG1h1U9e7p5d2zzIiuTIR
	lCCouZcxpRZcT2/+cqsKkK6VJDNQjpFeMHswUJAnKJdcVdscpZatiuE1LRVKkLVZ/Xcx1epLBWlN2
	7RvF6R7zg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kywFw-0001KQ-Bj; Mon, 11 Jan 2021 12:25:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kywFt-0001JP-OT
 for linux-rockchip@lists.infradead.org; Mon, 11 Jan 2021 12:25:07 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 888DA1F44A81
Message-ID: <5b6d07096cbc19da68bbbfd29acb6c9ad584935b.camel@collabora.com>
Subject: Re: [PATCH] hantro: Format IOCTLs compliance fixes
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 11 Jan 2021 09:24:55 -0300
In-Reply-To: <CANiDSCuy9MPK8qpwEz4CTta54i6S=k3DsempGLYssU2NtFGM3Q@mail.gmail.com>
References: <20210111113529.45488-1-ribalda@chromium.org>
 <ef218bf2bd948961079237686b58a00ca1b125bf.camel@collabora.com>
 <CANiDSCsX3k7xeC7Sr2T2SxHqspay+i054rAuv-NYCQpFRNuGeg@mail.gmail.com>
 <CANiDSCuy9MPK8qpwEz4CTta54i6S=k3DsempGLYssU2NtFGM3Q@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210111_072505_923441_A5807B4E 
X-CRM114-Status: GOOD (  22.65  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCAyMDIxLTAxLTExIGF0IDEzOjIyICswMTAwLCBSaWNhcmRvIFJpYmFsZGEgd3JvdGU6
Cj4gSGkgRXplcXVpZWwKPiAKPiBPbiBNb24sIEphbiAxMSwgMjAyMSBhdCAxMjo1NSBQTSBSaWNh
cmRvIFJpYmFsZGEgPHJpYmFsZGFAY2hyb21pdW0ub3JnPiB3cm90ZToKPiA+IAo+ID4gSGkgRXpl
cXVpZWwKPiA+IAo+ID4gT24gTW9uLCBKYW4gMTEsIDIwMjEgYXQgMTI6NDggUE0gRXplcXVpZWwg
R2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiA+ID4gCj4gPiA+IEhpIFJp
Y2FyZG8sCj4gPiA+IAo+ID4gPiBPbiBNb24sIDIwMjEtMDEtMTEgYXQgMTI6MzUgKzAxMDAsIFJp
Y2FyZG8gUmliYWxkYSB3cm90ZToKPiA+ID4gPiBDbGVhciB0aGUgcmVzZXJ2ZWQgZmllbGRzLgo+
ID4gPiA+IAo+ID4gPiA+IEZpeGVzOgo+ID4gPiA+IMKgIGZhaWw6IHY0bDItdGVzdC1mb3JtYXRz
LmNwcCg0ODIpOiBwaXhfbXAucGxhbmVfZm10WzBdLnJlc2VydmVkIG5vdCB6ZXJvZWQKPiA+ID4g
PiB0ZXN0IFZJRElPQ19UUllfRk1UOiBGQUlMCj4gPiA+ID4gwqAgZmFpbDogdjRsMi10ZXN0LWZv
cm1hdHMuY3BwKDQ4Mik6IHBpeF9tcC5wbGFuZV9mbXRbMF0ucmVzZXJ2ZWQgbm90IHplcm9lZAo+
ID4gPiA+IHRlc3QgVklESU9DX1NfRk1UOiBGQUlMCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogUmljYXJkbyBSaWJhbGRhIDxyaWJhbGRhQGNocm9taXVtLm9yZz4KPiA+ID4gPiAtLS0K
PiA+ID4gPiDCoGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX3Y0bDIuYyB8IDUg
KysrKysKPiA+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiA+ID4gPiAK
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9f
djRsMi5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jCj4gPiA+
ID4gaW5kZXggYjY2OGE4MmQ0MGFkLi45YjM4NGZiZmZjOTMgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jCj4gPiA+ID4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jCj4gPiA+ID4gQEAgLTIz
OSw2ICsyMzksNyBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlfZm10KGNvbnN0IHN0cnVjdCBoYW50
cm9fY3R4ICpjdHgsCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGhhbnRyb19m
bXQgKmZtdCwgKnZwdV9mbXQ7Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgYm9vbCBjYXB0dXJlID0g
VjRMMl9UWVBFX0lTX0NBUFRVUkUodHlwZSk7Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgYm9vbCBj
b2RlZDsKPiA+ID4gPiArwqDCoMKgwqDCoMKgIGludCBpOwo+ID4gPiA+IAo+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgIGNvZGVkID0gY2FwdHVyZSA9PSBjdHgtPmlzX2VuY29kZXI7Cj4gPiA+ID4gCj4g
PiA+ID4gQEAgLTI5Myw2ICsyOTQsMTAgQEAgc3RhdGljIGludCBoYW50cm9fdHJ5X2ZtdChjb25z
dCBzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGl4X21wLT53aWR0aCAqIHBpeF9tcC0+aGVpZ2h0ICog
Zm10LT5tYXhfZGVwdGg7Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgfQo+ID4gPiA+IAo+ID4gPiA+
ICvCoMKgwqDCoMKgwqAgZm9yIChpID0gMDsgaSA8IHBpeF9tcC0+bnVtX3BsYW5lczsgaSsrKQo+
ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1lbXNldChwaXhfbXAtPnBsYW5l
X2ZtdFtpXS5yZXNlcnZlZCwgMCwKPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHNpemVvZihwaXhfbXAtPnBsYW5lX2ZtdFtpXS5yZXNlcnZlZCkpOwo+
ID4gPiA+ICsKPiA+ID4gCj4gPiA+IFRoaXMgbG9va3MgbGlrZSBzb21ldGhpbmcgdGhhdCBzaG91
bGQgYmUgaGFuZGxlZCBhdCB0aGUgY29yZSwKPiA+ID4gcHJvYmFibHkgaW4gZHJpdmVycy9tZWRp
YS92NGwyLWNvcmUvdjRsMi1pb2N0bC5jOjp2NGxfdHJ5X2ZtdCgpLgo+ID4gCj4gPiBUaGUgY29y
ZSBkb2VzIGNsZWFyIHRoZSByZXNlcnZlZCBmaWVsZCBmcm9tIHY0bDJfcGl4X2Zvcm1hdF9tcGxh
bmUsCj4gCj4gTXkgYmFkLCBJdCBpcyBhbHNvIGNsZWFyaW5nIHRoZSBwZXIgcGxhbmUgcmVzZXJ2
ZWQgZmllbGQuIEkgd2FzCj4gdGVzdGluZyBpbiBhbiBvbGQga2VybmVsLgo+IAoKT0ssIGNvb2wu
Cgo+IFRoZSBncmVwIGl0IGlzIHN0aWxsIHZhbGlkIHRob3VnaC4gV2UgY2FuIHJlbW92ZSBhbGwg
dGhlIG1lbXNldHMgaW4gdGhlIGRyaXZlcnMuCj4gCgpUaGF0IHdvdWxkIGJlIHZlcnkgbmljZSBp
bmRlZWQuCgpUaGFua3MsCkV6ZXF1aWVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
