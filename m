Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F950CA0EF4
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Sep 2023 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nu8ZP6baqriXyLnUvF9Vqa8jjLciUlsS9ZMp6JzKy4Q=; b=LhLpLHkQyFJsDY
	q3zU1Z8FYyHLQdaqp+EkIbKqWF7kY3GXqIUilaN1GH9M3AIWkSv5TICMf4r58Qbu2p2yLK3Y7hMLY
	sLwJDb8nLckmRBU/9To/EDPDz7S3xHmB6R8pn20k57FAem6YkxqfqCZIyKJNIsskMOtEvTmmYM72p
	hWCmuiwmLgf/9zT44dSGHrTyo8uba+rBVbpBAa7QgaxnATNvF7O4xLJ+ZZg3cCXkg9UeJP0SGMJ0F
	suCdn9Bk5cvijmkCSXx+Vwtj5w3lW2bAeHILN6WTy+V6NiatKe5J/6E1dXXveVZ3fxuf++nAkAL6s
	fAktwLWnspFMxdv8AKLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg5IN-003iPK-2v;
	Tue, 12 Sep 2023 15:27:19 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg5IJ-003iNQ-2E;
	Tue, 12 Sep 2023 15:27:17 +0000
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:15:bae9::7a9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 24B3E660731E;
	Tue, 12 Sep 2023 16:27:07 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694532428;
	bh=Kiv47ua9LlleunOuYTbsf64o2QsgVZ5hZeZL4I6VnQc=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Vwd9Tg2kSYQbKfvPRPM9RG5wiNTxJyarMuQzLP5VL7rPQaMMkIWdy2FLMGYQUGOfa
	 7aw5itKMoR7lsAbGqjUzMuXmn1601+9TRD/sR9m6/3odZ1K4HHdFBAENNyxdwmyBHu
	 X98PfciRE2Zqpptw4kflXwOUaposKu1epf0F2RMcD/KzijCfPCo4eQxYrmaAZAG2gu
	 0KcWtfRKi5LoesmP46KbaErH5dafd0ii8TLf3P+ddlSwghBWUF4GeHa5SZ0UDF2iso
	 3CwvcQWZCFNPPILSuksZVAe77C/e/mpn5NFOC+a/EW/fu5qVzMhfquCDeK4utHlgrx
	 nIbOE41i1kM2g==
Message-ID: <ea5c4cb3e2dab449a2b13e0e3582dbdb2a6561ee.camel@collabora.com>
Subject: Re: [PATCH v6 14/18] media: verisilicon: vp9: Use destination
 buffer height to compute chroma offset
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Jernej
 =?UTF-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, mchehab@kernel.org,
 tfiga@chromium.org,  m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar,  p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-staging@lists.linux.dev, kernel@collabora.com
Date: Tue, 12 Sep 2023 11:26:57 -0400
In-Reply-To: <40329795-a57d-d0f3-adb4-0720dd20f6e2@collabora.com>
References: <20230901124414.48497-1-benjamin.gaignard@collabora.com>
	 <4856958.31r3eYUQgx@jernej-laptop>
	 <7da0a2ab-032a-9de9-e136-58f973238c5b@collabora.com>
	 <3248154.aeNJFYEL58@jernej-laptop>
	 <40329795-a57d-d0f3-adb4-0720dd20f6e2@collabora.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_082715_983084_8C563B66 
X-CRM114-Status: GOOD (  30.96  )
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

TGUgbWFyZGkgMTIgc2VwdGVtYnJlIDIwMjMgw6AgMTA6NDEgKzAyMDAsIEJlbmphbWluIEdhaWdu
YXJkIGEgw6ljcml0wqA6Cj4gTGUgMTEvMDkvMjAyMyDDoCAxODozNiwgSmVybmVqIMWga3JhYmVj
IGEgw6ljcml0wqA6Cj4gPiBEbmUgcG9uZWRlbGplaywgMTEuIHNlcHRlbWJlciAyMDIzIG9iIDEw
OjU1OjAyIENFU1QgamUgQmVuamFtaW4gR2FpZ25hcmQKPiA+IG5hcGlzYWwoYSk6Cj4gPiA+IExl
IDEwLzA5LzIwMjMgw6AgMTU6MjEsIEplcm5laiDFoGtyYWJlYyBhIMOpY3JpdCA6Cj4gPiA+ID4g
SGkgQmVuamFtaW4hCj4gPiA+ID4gCj4gPiA+ID4gRG5lIHBldGVrLCAwMS4gc2VwdGVtYmVyIDIw
MjMgb2IgMTQ6NDQ6MTAgQ0VTVCBqZSBCZW5qYW1pbiBHYWlnbmFyZAo+ID4gPiA+IAo+ID4gPiA+
IG5hcGlzYWwoYSk6Cj4gPiA+ID4gPiBTb3VyY2UgYW5kIGRlc3RpbmF0aW9uIGJ1ZmZlciBoZWln
aHQgbWF5IG5vdCBiZSB0aGUgc2FtZSBiZWNhdXNlCj4gPiA+ID4gPiBhbGlnbm1lbnQgY29uc3Ry
YWludCBhcmUgZGlmZmVyZW50Lgo+ID4gPiA+ID4gVXNlIGRlc3RpbmF0aW9uIGhlaWdodCB0byBj
b21wdXRlIGNocm9tYSBvZmZzZXQgYmVjYXVzZSB3ZSB0YXJnZXQKPiA+ID4gPiA+IHRoaXMgYnVm
ZmVyIGFzIGhhcmR3YXJlIG91dHB1dC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gU2lnbmVkLW9mZi1i
eTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4g
PiA+ID4gPiBGaXhlczogZTJkYTQ2NTQ1NWNlICgibWVkaWE6IGhhbnRybzogU3VwcG9ydCBWUDkg
b24gdGhlIEcyIGNvcmUiKQo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiAKPiA+ID4gPiA+ICAgIGRy
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cyX3ZwOV9kZWMuYyB8IDQg
Ky0tLQo+ID4gPiA+ID4gICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0
aW9ucygtKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJfdnA5X2RlYy5jCj4gPiA+ID4gPiBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cyX3ZwOV9kZWMuYyBpbmRleAo+
ID4gPiA+ID4gNmRiMWMzMmZjZTRkLi4xZjNmNWU3Y2U5NzggMTAwNjQ0Cj4gPiA+ID4gPiAtLS0g
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMK
PiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X2cyX3ZwOV9kZWMuYwo+ID4gPiA+ID4gQEAgLTkzLDkgKzkzLDcgQEAgc3RhdGljIGludCBzdGFy
dF9wcmVwYXJlX3J1bihzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+ID4gPiA+ID4gY29uc3Qgc3Ry
dWN0IHY0bDJfY3RybF92cDlfIHN0YXRpYyBzaXplX3QgY2hyb21hX29mZnNldChjb25zdCBzdHJ1
Y3QKPiA+ID4gPiA+IGhhbnRyb19jdHggKmN0eCwKPiA+ID4gPiA+IAo+ID4gPiA+ID4gICAgCQkJ
ICAgIGNvbnN0IHN0cnVjdCB2NGwyX2N0cmxfdnA5X2ZyYW1lCj4gPiA+ID4gKmRlY19wYXJhbXMp
Cj4gPiA+ID4gCj4gPiA+ID4gPiAgICB7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IC0JaW50IGJ5dGVz
X3Blcl9waXhlbCA9IGRlY19wYXJhbXMtPmJpdF9kZXB0aCA9PSA4ID8gMSA6IDI7Cj4gPiA+ID4g
PiAtCj4gPiA+ID4gPiAtCXJldHVybiBjdHgtPnNyY19mbXQud2lkdGggKiBjdHgtPnNyY19mbXQu
aGVpZ2h0ICogYnl0ZXNfcGVyX3BpeGVsOwo+ID4gPiA+ID4gKwlyZXR1cm4gY3R4LT5kc3RfZm10
LndpZHRoICogY3R4LT5kc3RfZm10LmhlaWdodCAqIGN0eC0+Yml0X2RlcHRoIC8KPiA+ID4gPiA4
Owo+ID4gPiA+IAo+ID4gPiA+IENvbW1pdCBtZXNzYWdlIGRvZXNuJ3QgbWVudGlvbiBiaXRfZGVw
dGggY2hhbmdlIGF0IGFsbC4gV2hpbGUgSSB0aGluawo+ID4gPiA+IHRoZXJlIGlzIG5vIGRpZmZl
cmVuY2UgYmV0d2VlbiBkZWNfcGFyYW1zLT5iaXRfZGVwdGggYW5kIGN0eC0+Yml0X2RlcHRoLAo+
ID4gPiA+IHlvdSBzaG91bGRuJ3QganVzdCB1c2Ugb3JkaW5hcnkgZGl2aXNpb24uIElmIGJpdF9k
ZXB0aCBpcyAxMCwgaXQgd2lsbCBiZQo+ID4gPiA+IHJvdW5kZWQgZG93bi4gQW5kIGlmIHlvdSBk
ZWNpZGUgdG8gdXNlIGJpdF9kZXB0aCBmcm9tIGNvbnRleHQsIHBsZWFzZQo+ID4gPiA+IHJlbW92
ZSBkZWNfcGFyYW1zIGFyZ3VtZW50Lgo+ID4gPiBJIHdpbGwgY2hhbmdlIHRoaXMgcGF0Y2ggYW5k
IGNyZWF0ZSBhIGhlbHBlcnMgZnVuY3Rpb24gZm9yIGNocm9tYSBhbmQgbW90aW9uCj4gPiA+IHZl
Y3RvcnMgb2Zmc2V0cyB0aGF0IFZQOSBhbmQgSEVWQyBjb2RlIHdpbGwgdXNlIHNpbmNlIHRoZXkg
YXJlIGlkZW50aWNhbC4KPiA+ID4gSSBkb24ndCBzZWUgaXNzdWUgd2l0aCB0aGUgZGl2aXNpb24u
IElmIHlvdSBoYXZlIGluIG1pbmQgYSBzb2x1dGlvbiBwbGVhc2UKPiA+ID4gd3JpdGUgaXQgc28g
SSBjb3VsZCB0ZXN0IGl0Lgo+ID4gU29sdXRpb24gaXMgc2FtZSBhcyB0aGUgY29kZSB0aGF0IHlv
dSByZW1vdmVkOgo+ID4gaW50IGJ5dGVzX3Blcl9waXhlbCA9IGRlY19wYXJhbXMtPmJpdF9kZXB0
aCA9PSA4ID8gMSA6IDI7Cj4gPiAKPiA+IE9yIGFsdGVybmF0aXZlbHk6Cj4gPiBpbnQgYnl0ZXNf
cGVyX3BpeGVsID0gRElWX1JPVU5EX1VQKGRlY19wYXJhbXMtPmJpdF9kZXB0aCwgOCk7Cj4gPiAK
PiA+IENvbnNpZGVyIGJpdF9kZXB0aCBiZWluZyAxMC4gV2l0aCBvbGQgY29kZSB5b3UgZ2V0IDIs
IHdpdGggeW91cnMgeW91IGdldCAxLgo+IAo+IFRoZSBvbGQgY29kZSBpcyB3cm9uZyA7LSkKPiBJ
ZiB0aGUgZm9ybWF0IGRlcHRoIGlzIDEwIGJpdHMgcGVyIHBpeGVsIHRoZW4gY2hyb21hIG9mZnNl
dCAoaW4gYnl0ZXMpIGZvcm11bGEgaXMKPiB3aWR0aCAqIGhlaWdodCAqIDEwIC8gOCBub3Qgd2lk
dGggKiBoZWlnaHQgKiAxNiAvIDguCj4gCj4gSSBoYXZlIGFscmVhZHkgY29uZmlybSB0aGF0IHdp
dGggSEVWQyBvbiB0aGUgc2FtZSBoYXJkd2FyZS4KCkp1c3QgZm9yIGdlbmVyYWwgaW50ZXJlc3Qs
IHRoaXMgaXMgcmVsYXRlZCB0byB0aGUgZmFjdCB0aGF0IHRoZSByZWZlcmVuY2UgZnJhbWUKYXJl
IG5vdCBQMDEwIHRpbGVkICh1cHN0cmVhbWVkIGJ1dCB1bnRlc3RlZCBjb2RlKSwgYnV0IE5WMTUg
KHBhY2tlZCkgdGlsZWQuIEknbQplZmZlY3RpdmVseSBtaXNzaW5nIGEgbG9nIG9mIGNvbnRleHQg
YXJvdW5kIHRoaXMgcGF0Y2ggdGhvdWdoIHRvIGNvbW1lbnQsIGJ1dApJJ2QgbGlrZSB0byB1bmRl
cmxpbmUgdGhhdCB2NGwyLWNvbW1vbiBoYXZlIGFsbCB0aGUgaW5mb3JtYXRpb24gbm93IHRvIGRl
YWwgd2l0aApmcmFjdGlvbmFsIHBpeGVsIHNpemVzLCB3aGljaCBnaXZlcyBtZSB0aGUgaW1wcmVz
c2lvbiB0aGlzIGNvZGUgaXMgZHVwbGljYXRpbmcuCgpOaWNvbGFzCgo+IAo+IFJlZ2FyZHMsCj4g
QmVuamFtaW4KPiAKPiA+IAo+ID4gQmVzdCByZWdhcmRzLAo+ID4gSmVybmVqCj4gPiAKPiA+ID4g
UmVnYXJkcywKPiA+ID4gQmVuamFtaW4KPiA+ID4gCj4gPiA+ID4gQmVzdCByZWdhcmRzLAo+ID4g
PiA+IEplcm5lago+ID4gPiA+IAo+ID4gPiA+ID4gICAgfQo+ID4gPiA+ID4gICAgCj4gPiA+ID4g
PiAgICBzdGF0aWMgc2l6ZV90IG12X29mZnNldChjb25zdCBzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4
LAo+ID4gCj4gPiAKPiA+IAo+ID4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
