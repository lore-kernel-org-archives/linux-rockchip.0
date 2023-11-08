Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25645C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 16:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SUm9GmxMXlta3j1KPw4LB6X0Lm6XCCxhcKjKH5GYl/U=; b=S4s5ethN27MFbL
	VnTTiZdYd9M7LrZf3mH2Qt5TuUEJncN751cTxfiPmVkn1V0wqRCETp21QBrDg83cC9DgSNPb9ruVz
	U5mmfyjpqWBszwfo3iHEnffTzMjFrMHN8yrxO0+5nbJgl2WJ0wzeuBHrxj9q94m1qjSps7i3Vbc5K
	cFVpagyHCI2yyAPcFLmBMKnSanaifYy8RnvIHzJYQ3lRHb1Na2tyzWJhZY8IJxuw15/t1y+2UTJ+B
	FjdmihU7SWZShj7bGpHh9g4CkMBDTr6ihkSYzQqn9Gxex6TUSnHbk/QWpRAeqEaaeneGMtKHQN1qc
	5OO8dyNKzaWnTlgI95pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0lr9-004Lh1-0U;
	Wed, 08 Nov 2023 16:56:43 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0lr5-004Lfc-0u;
	Wed, 08 Nov 2023 16:56:40 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 09C0E660746B;
	Wed,  8 Nov 2023 16:56:36 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699462598;
	bh=kYRbh6QCO0drKtDqhYzofnzH2F/9JXlenVRZfwbwu2o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=C5FqcnxL9jhiXGVI76sn04GNZJCgntZUTy/I9qgG1i8iEcQiFkVs/6DjWQOzlh+HE
	 9cu+5ZDTU646TGuUZuAtq8h4xKbC3+rJG7QV1jp+4Y6EnVkBHdrFB6pB90cZynwQ26
	 f5A6no6MtNRkpRKOZOiNRirD9W0bSy4bLwgx56dw1D7iHaxv9X33YNHgQnDxBt0bZI
	 fqB6esSSpr4Ru0nL1IAr6Y3UyREqd63VvWxZMZ3UJMs2T01xXlJ4xryCce7ZZhq3Rd
	 2g2GmCWBEJtsSf8YBjuRB41kTh7bkoETju0eoVIY/NM9aqy3jyZ8v/yS/JAtUZJSdk
	 DFYC328oA+TTQ==
Message-ID: <3b8a4886-3589-4bde-9a18-74cb6a6a7509@collabora.com>
Date: Wed, 8 Nov 2023 17:56:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 10/56] media: amphion: Stop direct calls to queue
 num_buffers field
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com,
 Zhou Peng <eagle.zhou@nxp.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-11-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-11-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_085639_453089_009DCE67 
X-CRM114-Status: GOOD (  16.28  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IFVz
ZSB2YjJfZ2V0X251bV9idWZmZXJzKCkgdG8gYXZvaWQgdXNpbmcgcXVldWUgbnVtX2J1ZmZlcnMg
ZmllbGQgZGlyZWN0bHkuCj4gVGhpcyBhbGxvd3MgdXMgdG8gY2hhbmdlIGhvdyB0aGUgbnVtYmVy
IG9mIGJ1ZmZlcnMgaXMgY29tcHV0ZWQgaW4gdGhlCj4gZnV0dXJlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoK
UmV2aWV3ZWQtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5j
b20+Cgo+IENDOiBNaW5nIFFpYW4gPG1pbmcucWlhbkBueHAuY29tPgo+IENDOiBaaG91IFBlbmcg
PGVhZ2xlLnpob3VAbnhwLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vYW1w
aGlvbi92cHVfZGJnLmMgIHwgOCArKysrLS0tLQo+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9h
bXBoaW9uL3ZwdV92NGwyLmMgfCA0ICsrLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL2FtcGhpb24vdnB1X2RiZy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9hbXBoaW9u
L3ZwdV9kYmcuYwo+IGluZGV4IGE0NjJkNmZlNGVhOS4uOTQwZTViZGE1ZmEzIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vYW1waGlvbi92cHVfZGJnLmMKPiArKysgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL2FtcGhpb24vdnB1X2RiZy5jCj4gQEAgLTg3LDcgKzg3LDcgQEAg
c3RhdGljIGludCB2cHVfZGJnX2luc3RhbmNlKHN0cnVjdCBzZXFfZmlsZSAqcywgdm9pZCAqZGF0
YSkKPiAgIAludW0gPSBzY25wcmludGYoc3RyLCBzaXplb2Yoc3RyKSwKPiAgIAkJCSJvdXRwdXQg
KCUyZCwgJTJkKTogZm10ID0gJWMlYyVjJWMgJWQgeCAlZCwgJWQ7IiwKPiAgIAkJCXZiMl9pc19z
dHJlYW1pbmcodnEpLAo+IC0JCQl2cS0+bnVtX2J1ZmZlcnMsCj4gKwkJCXZiMl9nZXRfbnVtX2J1
ZmZlcnModnEpLAo+ICAgCQkJaW5zdC0+b3V0X2Zvcm1hdC5waXhmbXQsCj4gICAJCQlpbnN0LT5v
dXRfZm9ybWF0LnBpeGZtdCA+PiA4LAo+ICAgCQkJaW5zdC0+b3V0X2Zvcm1hdC5waXhmbXQgPj4g
MTYsCj4gQEAgLTExMSw3ICsxMTEsNyBAQCBzdGF0aWMgaW50IHZwdV9kYmdfaW5zdGFuY2Uoc3Ry
dWN0IHNlcV9maWxlICpzLCB2b2lkICpkYXRhKQo+ICAgCW51bSA9IHNjbnByaW50ZihzdHIsIHNp
emVvZihzdHIpLAo+ICAgCQkJImNhcHR1cmUoJTJkLCAlMmQpOiBmbXQgPSAlYyVjJWMlYyAlZCB4
ICVkLCAlZDsiLAo+ICAgCQkJdmIyX2lzX3N0cmVhbWluZyh2cSksCj4gLQkJCXZxLT5udW1fYnVm
ZmVycywKPiArCQkJdmIyX2dldF9udW1fYnVmZmVycyh2cSksCj4gICAJCQlpbnN0LT5jYXBfZm9y
bWF0LnBpeGZtdCwKPiAgIAkJCWluc3QtPmNhcF9mb3JtYXQucGl4Zm10ID4+IDgsCj4gICAJCQlp
bnN0LT5jYXBfZm9ybWF0LnBpeGZtdCA+PiAxNiwKPiBAQCAtMTM5LDcgKzEzOSw3IEBAIHN0YXRp
YyBpbnQgdnB1X2RiZ19pbnN0YW5jZShzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKmRhdGEpCj4g
ICAJCXJldHVybiAwOwo+ICAgCj4gICAJdnEgPSB2NGwyX20ybV9nZXRfc3JjX3ZxKGluc3QtPmZo
Lm0ybV9jdHgpOwo+IC0JZm9yIChpID0gMDsgaSA8IHZxLT5udW1fYnVmZmVyczsgaSsrKSB7Cj4g
Kwlmb3IgKGkgPSAwOyBpIDwgdmIyX2dldF9udW1fYnVmZmVycyh2cSk7IGkrKykgewo+ICAgCQlz
dHJ1Y3QgdmIyX2J1ZmZlciAqdmI7Cj4gICAJCXN0cnVjdCB2YjJfdjRsMl9idWZmZXIgKnZidWY7
Cj4gICAKPiBAQCAtMTYxLDcgKzE2MSw3IEBAIHN0YXRpYyBpbnQgdnB1X2RiZ19pbnN0YW5jZShz
dHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKmRhdGEpCj4gICAJfQo+ICAgCj4gICAJdnEgPSB2NGwy
X20ybV9nZXRfZHN0X3ZxKGluc3QtPmZoLm0ybV9jdHgpOwo+IC0JZm9yIChpID0gMDsgaSA8IHZx
LT5udW1fYnVmZmVyczsgaSsrKSB7Cj4gKwlmb3IgKGkgPSAwOyBpIDwgdmIyX2dldF9udW1fYnVm
ZmVycyh2cSk7IGkrKykgewo+ICAgCQlzdHJ1Y3QgdmIyX2J1ZmZlciAqdmI7Cj4gICAJCXN0cnVj
dCB2YjJfdjRsMl9idWZmZXIgKnZidWY7Cj4gICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9hbXBoaW9uL3ZwdV92NGwyLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL2Ft
cGhpb24vdnB1X3Y0bDIuYwo+IGluZGV4IDBmNmU0YzY2NjQ0MC4uODdhZmI0YTE4ZDVkIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vYW1waGlvbi92cHVfdjRsMi5jCj4gKysr
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9hbXBoaW9uL3ZwdV92NGwyLmMKPiBAQCAtNDM5LDcg
KzQzOSw3IEBAIGludCB2cHVfZ2V0X251bV9idWZmZXJzKHN0cnVjdCB2cHVfaW5zdCAqaW5zdCwg
dTMyIHR5cGUpCj4gICAJZWxzZQo+ICAgCQlxID0gdjRsMl9tMm1fZ2V0X2RzdF92cShpbnN0LT5m
aC5tMm1fY3R4KTsKPiAgIAo+IC0JcmV0dXJuIHEtPm51bV9idWZmZXJzOwo+ICsJcmV0dXJuIHZi
Ml9nZXRfbnVtX2J1ZmZlcnMocSk7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkIHZwdV9tMm1f
ZGV2aWNlX3J1bih2b2lkICpwcml2KQo+IEBAIC01ODcsNyArNTg3LDcgQEAgc3RhdGljIGludCB2
cHVfdmIyX3N0YXJ0X3N0cmVhbWluZyhzdHJ1Y3QgdmIyX3F1ZXVlICpxLCB1bnNpZ25lZCBpbnQg
Y291bnQpCj4gICAJCSAgZm10LT5zaXplaW1hZ2VbMF0sIGZtdC0+Ynl0ZXNwZXJsaW5lWzBdLAo+
ICAgCQkgIGZtdC0+c2l6ZWltYWdlWzFdLCBmbXQtPmJ5dGVzcGVybGluZVsxXSwKPiAgIAkJICBm
bXQtPnNpemVpbWFnZVsyXSwgZm10LT5ieXRlc3BlcmxpbmVbMl0sCj4gLQkJICBxLT5udW1fYnVm
ZmVycyk7Cj4gKwkJICB2YjJfZ2V0X251bV9idWZmZXJzKHEpKTsKPiAgIAl2YjJfY2xlYXJfbGFz
dF9idWZmZXJfZGVxdWV1ZWQocSk7Cj4gICAJcmV0ID0gY2FsbF92b3AoaW5zdCwgc3RhcnQsIHEt
PnR5cGUpOwo+ICAgCWlmIChyZXQpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
