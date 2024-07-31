Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53AC7C3DA64
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 07:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bejwXAQNjk2ajYGQmVzPsl4iukoZRlwjcmb8KbdjeU=; b=TQdFn90NOG/SG+
	yQTqfNBb+8sSnRtvhUVerqDtkubf1ysq2hA4/0yCBBeK1EkEKZSAq0Bz7842HpzolpiheHcHl4JUe
	/oNAHK+Fdhw4DeAWWWRq0NpRn/zVOPL2/eJn6uLzIcxzppMDUslvk47biDHTLY4eJyk6zrCLXbS3n
	mkRcux3nllNtYJ76ppCRc9yzqxFLzevY3BwlbOW5cLR9AdFOMuDKA2b93wChLgTvNpeZcsUi693El
	4aj6ERcWwAioIS3d6VaY/7YP+73F2RM8V0/04wqWrrR63DzVJqXPGPYC8QEOSjX0w9jywk3G/LBhc
	eJHFrQU2UtVtbR5TgF/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3PO-000000003NM-2ROt;
	Wed, 31 Jul 2024 07:06:02 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3PL-000000003Ma-3JGE
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 07:06:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722409558;
	bh=GurD/Q0npPzHPTRJX8cDQoXtccXZwbnjZ9gjIPH/mms=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QZshJLrwme+plhI3Jf9Jyv6pV26GARlnGTptV1j+qt9dYm1/+bvLhpDuRZ2yydSwL
	 hFsAg3vtU8rk3G4q7CVapvn8i078PxWtmHpxHhaKKdJ0qDj6VC8EQRXs/XRfp2TIO+
	 D0bZwjfmBdtXJXhR6Zx0ghbkrriEcF1zZlb3mBuNBdiB+0PB6eye78YbUeIH86/UmY
	 powpJUWkoaXFV5yCZy56SckMQnerxRXlrqFoWzqIMMJsby6SN1Os0F056Ruiy8dlwz
	 auSSKHt6ijHz7Y6tx+gSRMO5LAhMi+105rg55y0AD9fnS1VBT6HXAczcwhhavq360+
	 fGZyqnqXhzynA==
Received: from [100.93.89.217] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DE8303780B79;
	Wed, 31 Jul 2024 07:05:57 +0000 (UTC)
Message-ID: <fb7f0071-503c-4f06-bae2-1c0e6d69a5e3@collabora.com>
Date: Wed, 31 Jul 2024 09:05:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] media: test-drivers: Use V4L2_FMT_FLAG_ENUM_ALL
 flag
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20240722150523.149667-1-benjamin.gaignard@collabora.com>
 <20240722150523.149667-3-benjamin.gaignard@collabora.com>
 <92c88d0f-219e-43b4-9dce-5ae99585b767@xs4all.nl>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <92c88d0f-219e-43b4-9dce-5ae99585b767@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_000559_986234_544806B8 
X-CRM114-Status: GOOD (  15.87  )
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

CkxlIDMwLzA3LzIwMjQgw6AgMDk6MTMsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDIy
LzA3LzIwMjQgMTc6MDUsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBTaW5jZSBWNEwyX0ZN
VF9GTEFHX0VOVU1fQUxMIGZsYWcgbW9zdGx5IHRhcmdldGluZyBzdGF0ZWxlc3MKPj4gZGVjb2Rl
ciBwaXhlbCBmb3JtYXRzIGVudW1lcmF0aW9uLCB1cGRhdGUgdmljb2RlYyB2aXNsIHRlc3QKPj4g
ZHJpdmVycyB0byB1c2UgaXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJk
IDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL21l
ZGlhL3Rlc3QtZHJpdmVycy92aWNvZGVjL3ZpY29kZWMtY29yZS5jIHwgIDcgKysrKy0tLQo+PiAg
IGRyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJzL3Zpc2wvdmlzbC12aWRlby5jICAgICAgfCAxMSAr
KysrKysrLS0tLQo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJzL3Zp
Y29kZWMvdmljb2RlYy1jb3JlLmMgYi9kcml2ZXJzL21lZGlhL3Rlc3QtZHJpdmVycy92aWNvZGVj
L3ZpY29kZWMtY29yZS5jCj4+IGluZGV4IDNlMDExZmU2MmFlMS4uMWI0Y2Q4ZGRkN2MyIDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3Rlc3QtZHJpdmVycy92aWNvZGVjL3ZpY29kZWMtY29y
ZS5jCj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJzL3ZpY29kZWMvdmljb2RlYy1j
b3JlLmMKPj4gQEAgLTcwNiw2ICs3MDYsNyBAQCBzdGF0aWMgaW50IGVudW1fZm10KHN0cnVjdCB2
NGwyX2ZtdGRlc2MgKmYsIHN0cnVjdCB2aWNvZGVjX2N0eCAqY3R4LAo+PiAgIAkJICAgIGJvb2wg
aXNfb3V0KQo+PiAgIHsKPj4gICAJYm9vbCBpc191bmNvbXAgPSAoY3R4LT5pc19lbmMgJiYgaXNf
b3V0KSB8fCAoIWN0eC0+aXNfZW5jICYmICFpc19vdXQpOwo+PiArCXUzMiBpbmRleCA9IGYtPmlu
ZGV4ICYgflY0TDJfRk1UX0ZMQUdfRU5VTV9BTEw7Cj4gVGhpcyBpcyBub3Qgd2hhdCBJIGFtIGxv
b2tpbmcgZm9yOiB0byBwcm9wZXJseSB0ZXN0IHRoaXMgaW4gdjRsMi1jb21wbGlhbmNlIHRoaXMK
PiBmbGFnIGFjdHVhbGx5IGhhcyB0byBtYWtlIGEgZGlmZmVyZW5jZSBpbiB0aGUgcmVzdWx0LiBJ
LmUuIHlvdSBhY3R1YWxseSBoYXZlIHRvCj4gYWRkIHNvbWUgbGltaXRhdGlvbi4gVGhpcyBtaWdo
dCBiZSBlYXNpZXIgdG8gZG8gaW4gdmlzbCB0aGFuIHZpY29kZWMuIEFzIGxvbmcgYXMKPiBhdCBs
ZWFzdCBvbmUgdGVzdC1kcml2ZXIgc3VwcG9ydCB0aGlzLCB0aGVuIHRoYXQncyBnb29kIGVub3Vn
aCBmb3IgbWUuCgpPayBJIHdpbGwgZm9jdXMgb24gdmlzbCBhbmQgbWFkZSBpdCByZXR1cm4gYW5v
dGhlciBsaXN0IG9mIGZvcm1hdHMgd2hlbiB0aGUKZmxhZyBpcyBzZXQuCgpSZWdhcmRzLApCZW5q
YW1pbgoKPiBSZWdhcmRzLAo+Cj4gCUhhbnMKPgo+PiAgIAo+PiAgIAlpZiAoVjRMMl9UWVBFX0lT
X01VTFRJUExBTkFSKGYtPnR5cGUpICYmICFtdWx0aXBsYW5hcikKPj4gICAJCXJldHVybiAtRUlO
VkFMOwo+PiBAQCAtNzE4LDE4ICs3MTksMTggQEAgc3RhdGljIGludCBlbnVtX2ZtdChzdHJ1Y3Qg
djRsMl9mbXRkZXNjICpmLCBzdHJ1Y3Qgdmljb2RlY19jdHggKmN0eCwKPj4gICAKPj4gICAJCWlm
IChjdHgtPmlzX2VuYyB8fAo+PiAgIAkJICAgICF2YjJfaXNfc3RyZWFtaW5nKCZjdHgtPmZoLm0y
bV9jdHgtPmNhcF9xX2N0eC5xKSkKPj4gLQkJCWluZm8gPSB2NGwyX2Z3aHRfZ2V0X3BpeGZtdChm
LT5pbmRleCk7Cj4+ICsJCQlpbmZvID0gdjRsMl9md2h0X2dldF9waXhmbXQoaW5kZXgpOwo+PiAg
IAkJZWxzZQo+PiAgIAkJCWluZm8gPSB2NGwyX2Z3aHRfZmluZF9udGhfZm10KGluZm8tPndpZHRo
X2RpdiwKPj4gICAJCQkJCQkgICAgIGluZm8tPmhlaWdodF9kaXYsCj4+ICAgCQkJCQkJICAgICBp
bmZvLT5jb21wb25lbnRzX251bSwKPj4gICAJCQkJCQkgICAgIGluZm8tPnBpeGVuYywKPj4gLQkJ
CQkJCSAgICAgZi0+aW5kZXgpOwo+PiArCQkJCQkJICAgICBpbmRleCk7Cj4+ICAgCQlpZiAoIWlu
Zm8pCj4+ICAgCQkJcmV0dXJuIC1FSU5WQUw7Cj4+ICAgCQlmLT5waXhlbGZvcm1hdCA9IGluZm8t
PmlkOwo+PiAgIAl9IGVsc2Ugewo+PiAtCQlpZiAoZi0+aW5kZXgpCj4+ICsJCWlmIChpbmRleCkK
Pj4gICAJCQlyZXR1cm4gLUVJTlZBTDsKPj4gICAJCWYtPnBpeGVsZm9ybWF0ID0gY3R4LT5pc19z
dGF0ZWxlc3MgPwo+PiAgIAkJCVY0TDJfUElYX0ZNVF9GV0hUX1NUQVRFTEVTUyA6IFY0TDJfUElY
X0ZNVF9GV0hUOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS90ZXN0LWRyaXZlcnMvdmlz
bC92aXNsLXZpZGVvLmMgYi9kcml2ZXJzL21lZGlhL3Rlc3QtZHJpdmVycy92aXNsL3Zpc2wtdmlk
ZW8uYwo+PiBpbmRleCBmOGQ5NzAzMTk3NjQuLmM1ZjNlMTNiNDE5OCAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9tZWRpYS90ZXN0LWRyaXZlcnMvdmlzbC92aXNsLXZpZGVvLmMKPj4gKysrIGIvZHJp
dmVycy9tZWRpYS90ZXN0LWRyaXZlcnMvdmlzbC92aXNsLXZpZGVvLmMKPj4gQEAgLTM0MSwyMSAr
MzQxLDI0IEBAIHN0YXRpYyBpbnQgdmlzbF9lbnVtX2ZtdF92aWRfY2FwKHN0cnVjdCBmaWxlICpm
aWxlLCB2b2lkICpwcml2LAo+PiAgIAkJCQkgc3RydWN0IHY0bDJfZm10ZGVzYyAqZikKPj4gICB7
Cj4+ICAgCXN0cnVjdCB2aXNsX2N0eCAqY3R4ID0gdmlzbF9maWxlX3RvX2N0eChmaWxlKTsKPj4g
Kwl1MzIgaW5kZXggPSBmLT5pbmRleCAmIH5WNEwyX0ZNVF9GTEFHX0VOVU1fQUxMOwo+PiAgIAo+
PiAtCWlmIChmLT5pbmRleCA+PSBjdHgtPmNvZGVkX2Zvcm1hdF9kZXNjLT5udW1fZGVjb2RlZF9m
bXRzKQo+PiArCWlmIChpbmRleCA+PSBjdHgtPmNvZGVkX2Zvcm1hdF9kZXNjLT5udW1fZGVjb2Rl
ZF9mbXRzKQo+PiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4+ICAgCj4+IC0JZi0+cGl4ZWxmb3JtYXQg
PSBjdHgtPmNvZGVkX2Zvcm1hdF9kZXNjLT5kZWNvZGVkX2ZtdHNbZi0+aW5kZXhdOwo+PiArCWYt
PnBpeGVsZm9ybWF0ID0gY3R4LT5jb2RlZF9mb3JtYXRfZGVzYy0+ZGVjb2RlZF9mbXRzW2luZGV4
XTsKPj4gICAJcmV0dXJuIDA7Cj4+ICAgfQo+PiAgIAo+PiAgIHN0YXRpYyBpbnQgdmlzbF9lbnVt
X2ZtdF92aWRfb3V0KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LAo+PiAgIAkJCQkgc3Ry
dWN0IHY0bDJfZm10ZGVzYyAqZikKPj4gICB7Cj4+IC0JaWYgKGYtPmluZGV4ID49IEFSUkFZX1NJ
WkUodmlzbF9jb2RlZF9mbXRzKSkKPj4gKwl1MzIgaW5kZXggPSBmLT5pbmRleCAmIH5WNEwyX0ZN
VF9GTEFHX0VOVU1fQUxMOwo+PiArCj4+ICsJaWYgKGluZGV4ID49IEFSUkFZX1NJWkUodmlzbF9j
b2RlZF9mbXRzKSkKPj4gICAJCXJldHVybiAtRUlOVkFMOwo+PiAgIAo+PiAtCWYtPnBpeGVsZm9y
bWF0ID0gdmlzbF9jb2RlZF9mbXRzW2YtPmluZGV4XS5waXhlbGZvcm1hdDsKPj4gKwlmLT5waXhl
bGZvcm1hdCA9IHZpc2xfY29kZWRfZm10c1tpbmRleF0ucGl4ZWxmb3JtYXQ7Cj4+ICAgCXJldHVy
biAwOwo+PiAgIH0KPj4gICAKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
