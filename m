Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8559C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 13:27:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B04161164
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 13:27:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8B04161164
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eu2O1K5ymf9PH3Jtq0G4JiuBft7MkvR0Hk7smr/GEbY=; b=LjxaykzI4vn1Np
	q6YGDw9sCWhmtaCfgIJ2c+D9MwIY6B0OdVRvFpA49YTe8h0KDsWV2+eO7zIVRbM2HWVu/AMmQKN2q
	dHTATXOnQ1Cd48pAhRKmEvakYUZGR6W0QhTjh64Mx4q7G9zns2Q5ZmM3niw1LTukoEP+3UBzdMqk3
	Jajw3Yl5LC8tNNBiYFDaOqhAcsAiLQv5WrEzye2+D5HJBm8pM8GyOdhnjJ2A5eCVO1J2mp5wbubhD
	aePXBWPzSS7vHZE6+AB0xsHVVIHIxSVDiTR5Z8l+SDf9rwQXNv7Cj3tYimM7PfBnBD6M6/UFAMNf0
	xcrZbddXBkOaj+4XVZOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvgQy-007Ikq-Ps; Tue, 22 Jun 2021 13:27:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvgQl-007Ii4-Vu; Tue, 22 Jun 2021 13:27:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5C6A71F42FC1
Message-ID: <3849b99e6d139b02c670c9e8d1ec306b24f6f821.camel@collabora.com>
Subject: Re: [PATCH v3 5/8] media: hantro: hevc: Allow to produce 10-bit frames
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, hverkuil@xs4all.nl,
 p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com, andrzej.p@collabora.com,
 jc@kynesim.co.uk, jernej.skrabec@gmail.com, nicolas@ndufresne.ca
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Tue, 22 Jun 2021 10:26:42 -0300
In-Reply-To: <20210618131526.566762-6-benjamin.gaignard@collabora.com>
References: <20210618131526.566762-1-benjamin.gaignard@collabora.com>
 <20210618131526.566762-6-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_062708_183238_FA858B72 
X-CRM114-Status: GOOD (  18.90  )
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

SGkgQmVuamFtaW4sCgpPbiBGcmksIDIwMjEtMDYtMTggYXQgMTU6MTUgKzAyMDAsIEJlbmphbWlu
IEdhaWduYXJkIHdyb3RlOgo+IElmIEhhbnRybyBkcml2ZXIgcmVjZWl2ZSBhbiAxMC1iaXQgZW5j
b2RlZCBiaXRzdHJlYW0gYWxsb3cgaXQKPiB0byBwcm9kdWNlIDEwLWJpdCBmcmFtZXMuCj4gQ2hl
Y2sgdGhhdCB3ZSBhcmUgbm90IHRyeSB0byBwcm9kdWNlIDEwLWJpdCBmcmFtZXMgZnJvbSBhIDgt
Yml0Cj4gZW5jb2RlZCBiaXRzdHJlYW0uCj4gCj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2Fp
Z25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gwqBkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuY8KgwqDCoMKgwqAgfCAxOCArKysrKysr
KysrKysrKysrKysKPiDCoC4uLi9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzJfaGV2Y19k
ZWMuY8KgIHwgMTggKysrKysrKysrKysrKystLS0tCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb19oZXZjLmPCoMKgwqDCoCB8wqAgMiArLQo+IMKgZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9pbXg4bV92cHVfaHcuY8KgwqDCoCB8wqAgNCArKysrCj4gwqA0IGZpbGVz
IGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jIGIvZHJpdmVycy9z
dGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiBpbmRleCBmNjYzNWNlYjUxMTEuLmI2
MzczOTM0NzM0ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hh
bnRyb19kcnYuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Ry
di5jCj4gQEAgLTI0Myw2ICsyNDMsMTYgQEAgcXVldWVfaW5pdCh2b2lkICpwcml2LCBzdHJ1Y3Qg
dmIyX3F1ZXVlICpzcmNfdnEsIHN0cnVjdCB2YjJfcXVldWUgKmRzdF92cSkKPiDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIHZiMl9xdWV1ZV9pbml0KGRzdF92cSk7Cj4gwqB9Cj4gwqAKPiArc3RhdGlj
IGJvb2wgaGFudHJvX2lzXzEwYml0X2RzdF9mb3JtYXQoc3RydWN0IGhhbnRyb19jdHggKmN0eCkK
PiArewo+ICvCoMKgwqDCoMKgwqDCoHN3aXRjaCAoY3R4LT52cHVfZHN0X2ZtdC0+Zm91cmNjKSB7
Cj4gK8KgwqDCoMKgwqDCoMKgY2FzZSBWNEwyX1BJWF9GTVRfUDAxMDoKPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7Cj4gK8KgwqDCoMKgwqDCoMKgZGVmYXVsdDoK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+ICvCoMKgwqDC
oMKgwqDCoH0KPiArfQo+ICsKPiDCoHN0YXRpYyBpbnQgaGFudHJvX3RyeV9jdHJsKHN0cnVjdCB2
NGwyX2N0cmwgKmN0cmwpCj4gwqB7Cj4gwqDCoMKgwqDCoMKgwqDCoGlmIChjdHJsLT5pZCA9PSBW
NEwyX0NJRF9TVEFURUxFU1NfSDI2NF9TUFMpIHsKPiBAQCAtMjU5LDYgKzI2OSwxMCBAQCBzdGF0
aWMgaW50IGhhbnRyb190cnlfY3RybChzdHJ1Y3QgdjRsMl9jdHJsICpjdHJsKQo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRUlOVkFMOwo+
IMKgwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKGN0cmwtPmlkID09IFY0TDJfQ0lEX01QRUdfVklE
RU9fSEVWQ19TUFMpIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbnN0IHN0
cnVjdCB2NGwyX2N0cmxfaGV2Y19zcHMgKnNwcyA9IGN0cmwtPnBfbmV3LnBfaGV2Y19zcHM7Cj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBoYW50cm9fY3R4ICpjdHg7Cj4g
Kwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjdHggPSBjb250YWluZXJfb2YoY3Ry
bC0+aGFuZGxlciwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBoYW50cm9fY3R4LCBjdHJsX2hhbmRsZXIp
Owo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoc3BzLT5iaXRfZGVw
dGhfbHVtYV9taW51czggIT0gc3BzLT5iaXRfZGVwdGhfY2hyb21hX21pbnVzOCkKPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBMdW1hIGFuZCBjaHJv
bWEgYml0IGRlcHRoIG1pc21hdGNoICovCj4gQEAgLTI3MCw2ICsyODQsMTAgQEAgc3RhdGljIGlu
dCBoYW50cm9fdHJ5X2N0cmwoc3RydWN0IHY0bDJfY3RybCAqY3RybCkKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGlmIChzcHMtPmZsYWdzICYgVjRMMl9IRVZDX1NQU19GTEFHX1ND
QUxJTkdfTElTVF9FTkFCTEVEKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoC8qIE5vIHNjYWxpbmcgc3VwcG9ydCAqLwo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRUlOVkFMOwo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoc3BzLT5iaXRfZGVwdGhfbHVtYV9taW51czggPT0g
MCAmJgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaGFudHJvX2lzXzEw
Yml0X2RzdF9mb3JtYXQoY3R4KSkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FSU5WQUw7CgpJIGhhZCBzb21lIG1vcmUgdGltZSB0byB0
aGluayBhYm91dCB0aGlzLAphbmQgSSByZWNhbGxlZCB0aGF0IHRoaXMgdG9waWMgd2FzIGFscmVh
ZHkgZGlzY3Vzc2VkCnNvbWUgdGltZSBhZ28gWzFdLgoKVGhpcyBhcHByb2FjaCB3b24ndCB3b3Jr
LiBZb3UgbmVlZCB0byByZXN0cmljdCB0aGUgcGl4ZWwKZm9ybWF0cyByZXR1cm5lZCBieSBUUlkv
R19GTVQgYWZ0ZXIgdGhlIFNQUyBpcyBzZXQgd2l0aCBTX0VYVF9DVFJMLAphcyBwZXIgdGhlIHNw
ZWNpZmljYXRpb24uCgpodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9rZXJuZWwvbXNnMzU3
Njc3OS5odG1sCgpUaGFua3MsCkV6ZXF1aWVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
