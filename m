Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88CC5C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 09:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bV4hoSOChPIzgfV96nWpbPtyW9RcQlIkt+hu/Z4K7Aw=; b=ldoJovn02x+On4
	wt/iTYNyqYykfe0dYKu1QT/vytpVUNp9I2D0TTXB6fgcBPW8vVFG3cmh+gBIPKF/6XFPBsT9x7gMg
	mdbIKUPa/sVQaR3MR7S/Gl7A1vlUocQBNCM0S9lxANZMk2COcQd4KIOfzthawxH3Hpqd0Y0pxCewl
	w2lzJnLe9uK41dYH5CxB7qkNvCqAXFYXTGVPgasrhnDs7FeWzPGfB30JV6PsjQ9B3TiqOru8Ni7Ke
	aI8a2UD0u722XgysXO5DsTy3ejMGFdAomWqAvlbAgj2VFpstwvGs86ayBJ+gU/ZAUErmXnlwJK9Fz
	Mp9M02zN9CWPgwWhLF/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11cR-005ooX-2X;
	Thu, 09 Nov 2023 09:46:35 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11cN-005oly-0h;
	Thu, 09 Nov 2023 09:46:32 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5FBBE6607410;
	Thu,  9 Nov 2023 09:46:28 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699523189;
	bh=sB3FExc5Arb333OuyrWTsqs/CUyH8WZ1l+IRqCa/FcY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NGxFbYztGyKtV1GqtdXqqpUyxheCLuF/tpVRPDx0va8q8ceZifvW64j7zzbwg8eS2
	 pWhvhEB+WJyzrP93tjmVEg6WLkKeI3hh1x/Xj/GGb8Sc3LcdbNlohr9vwqEsx3Ciyo
	 YEF7YiYinZm3cK0sy6oxwJnGDDtR6718AfkHp9t7f3Gri4/hN8XZ+kW2IUQiTG5hom
	 Tz8oRtrS7w5KMN3yu2NU/IbR27AP8a5BsWFsRBifn9KJaor/iqbxQvwFtm9iIvpk2X
	 /0zoEJx8kFKq9f8Oaz8WtqBw8r+y93o5wPuRJYPJ0N3W9RBCsIRASXuqfsPXSK9evh
	 5iINPUoiaZ4Fw==
Message-ID: <29197ec3-e341-4f93-86ef-899bda0d7060@collabora.com>
Date: Thu, 9 Nov 2023 10:46:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 18/56] media: dvb-core: Use vb2_get_buffer() instead
 of directly access to buffers array
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-19-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-19-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_014631_409608_1234D87F 
X-CRM114-Status: GOOD (  15.47  )
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
ZSB2YjJfZ2V0X2J1ZmZlcigpIGluc3RlYWQgb2YgZGlyZWN0IGFjY2VzcyB0byB0aGUgdmIyX3F1
ZXVlIGJ1ZnMgYXJyYXkuCj4gVGhpcyBhbGxvd3MgdXMgdG8gY2hhbmdlIHRoZSB0eXBlIG9mIHRo
ZSBidWZzIGluIHRoZSBmdXR1cmUuCj4gQWZ0ZXIgZWFjaCBjYWxsIHRvIHZiMl9nZXRfYnVmZmVy
KCkgd2UgbmVlZCB0byBiZSBzdXJlIHRoYXQgd2UgZ2V0Cj4gYSB2YWxpZCBwb2ludGVyIHNvIGNo
ZWNrIHRoZSByZXR1cm4gdmFsdWUgb2YgYWxsIG9mIHRoZW0uCj4gCj4gU2lnbmVkLW9mZi1ieTog
QmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+CgpSZXZp
ZXdlZC1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4K
Cj4gLS0tCj4gICBkcml2ZXJzL21lZGlhL2R2Yi1jb3JlL2R2Yl92YjIuYyB8IDE0ICsrKysrKysr
LS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2R2Yi1jb3JlL2R2Yl92YjIuYyBiL2Ry
aXZlcnMvbWVkaWEvZHZiLWNvcmUvZHZiX3ZiMi5jCj4gaW5kZXggYjMyMmVmMTc5ZjA1Li4zYTk2
NmZkZjgxNGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9kdmItY29yZS9kdmJfdmIyLmMK
PiArKysgYi9kcml2ZXJzL21lZGlhL2R2Yi1jb3JlL2R2Yl92YjIuYwo+IEBAIC0zNTUsMTIgKzM1
NSwxMyBAQCBpbnQgZHZiX3ZiMl9yZXFidWZzKHN0cnVjdCBkdmJfdmIyX2N0eCAqY3R4LCBzdHJ1
Y3QgZG14X3JlcXVlc3RidWZmZXJzICpyZXEpCj4gICBpbnQgZHZiX3ZiMl9xdWVyeWJ1ZihzdHJ1
Y3QgZHZiX3ZiMl9jdHggKmN0eCwgc3RydWN0IGRteF9idWZmZXIgKmIpCj4gICB7Cj4gICAJc3Ry
dWN0IHZiMl9xdWV1ZSAqcSA9ICZjdHgtPnZiX3E7Cj4gKwlzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIy
ID0gdmIyX2dldF9idWZmZXIocSwgYi0+aW5kZXgpOwo+ICAgCj4gLQlpZiAoYi0+aW5kZXggPj0g
cS0+bnVtX2J1ZmZlcnMpIHsKPiAtCQlkcHJpbnRrKDEsICJbJXNdIGJ1ZmZlciBpbmRleCBvdXQg
b2YgcmFuZ2VcbiIsIGN0eC0+bmFtZSk7Cj4gKwlpZiAoIXZiMikgewo+ICsJCWRwcmludGsoMSwg
Ilslc10gaW52YWxpZCBidWZmZXIgaW5kZXhcbiIsIGN0eC0+bmFtZSk7Cj4gICAJCXJldHVybiAt
RUlOVkFMOwo+ICAgCX0KPiAtCXZiMl9jb3JlX3F1ZXJ5YnVmKCZjdHgtPnZiX3EsIHEtPmJ1ZnNb
Yi0+aW5kZXhdLCBiKTsKPiArCXZiMl9jb3JlX3F1ZXJ5YnVmKCZjdHgtPnZiX3EsIHZiMiwgYik7
Cj4gICAJZHByaW50aygzLCAiWyVzXSBpbmRleD0lZFxuIiwgY3R4LT5uYW1lLCBiLT5pbmRleCk7
Cj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gQEAgLTM4NSwxMyArMzg2LDE0IEBAIGludCBkdmJfdmIy
X2V4cGJ1ZihzdHJ1Y3QgZHZiX3ZiMl9jdHggKmN0eCwgc3RydWN0IGRteF9leHBvcnRidWZmZXIg
KmV4cCkKPiAgIGludCBkdmJfdmIyX3FidWYoc3RydWN0IGR2Yl92YjJfY3R4ICpjdHgsIHN0cnVj
dCBkbXhfYnVmZmVyICpiKQo+ICAgewo+ICAgCXN0cnVjdCB2YjJfcXVldWUgKnEgPSAmY3R4LT52
Yl9xOwo+ICsJc3RydWN0IHZiMl9idWZmZXIgKnZiMiA9IHZiMl9nZXRfYnVmZmVyKHEsIGItPmlu
ZGV4KTsKPiAgIAlpbnQgcmV0Owo+ICAgCj4gLQlpZiAoYi0+aW5kZXggPj0gcS0+bnVtX2J1ZmZl
cnMpIHsKPiAtCQlkcHJpbnRrKDEsICJbJXNdIGJ1ZmZlciBpbmRleCBvdXQgb2YgcmFuZ2VcbiIs
IGN0eC0+bmFtZSk7Cj4gKwlpZiAoIXZiMikgewo+ICsJCWRwcmludGsoMSwgIlslc10gaW52YWxp
ZCBidWZmZXIgaW5kZXhcbiIsIGN0eC0+bmFtZSk7Cj4gICAJCXJldHVybiAtRUlOVkFMOwo+ICAg
CX0KPiAtCXJldCA9IHZiMl9jb3JlX3FidWYoJmN0eC0+dmJfcSwgcS0+YnVmc1tiLT5pbmRleF0s
IGIsIE5VTEwpOwo+ICsJcmV0ID0gdmIyX2NvcmVfcWJ1ZigmY3R4LT52Yl9xLCB2YjIsIGIsIE5V
TEwpOwo+ICAgCWlmIChyZXQpIHsKPiAgIAkJZHByaW50aygxLCAiWyVzXSBpbmRleD0lZCBlcnJu
bz0lZFxuIiwgY3R4LT5uYW1lLAo+ICAgCQkJYi0+aW5kZXgsIHJldCk7CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
