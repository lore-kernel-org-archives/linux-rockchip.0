Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A43C6C76196
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Apr 2023 15:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ull2FnjFi+0RMhIdKjPWIsMo3Ox9saBGqh8boqRxhA=; b=BrErvhF4U13ZNW
	QLcKI8sZjNT/stDJkb+5ao87IUcKfpCIeI8rEF692v+HcBTT43JBELIKa1/0KC9I3MA8oxGWJChKc
	maTZOgY5k9Y8JgHrnPXq8wH0G36W1XcjNXNVCLGBxpoW+/YZcrwSSw4YFxMo83EUYUPnT/YcASHxY
	3raxUi8jQPhv1+P/1svY3K2SB5b/YfPjuiBnbSYH/S/xQIqXfNfAXd3foXco1hzdhpl37MUViOxqC
	8iDbNUBdFFUWBzhOpxhc5myIIB6bfRcjwL/IJjTsJygSSeVsPAdrcYKuh2LC9I2BLBW+Fj8vrg163
	xEEYXh2i0xy8SUETvyOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmFdH-000MLl-2x;
	Tue, 11 Apr 2023 15:10:07 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmFdE-000MK8-02;
	Tue, 11 Apr 2023 15:10:05 +0000
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:15:199e::580])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7251866031E9;
	Tue, 11 Apr 2023 16:10:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681225802;
	bh=9k0Jg8J3GXt++MWesXKsmmD95MWnsCWKoCRHApxXOqQ=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=DanWJQXoIwJYObxFPoA/64lTcHUulE/JUcch3sRCJSiz+oCKHFJ29H39zzl2NcrU3
	 Y6jcFkkBCUEoaW3//FTfSqnYpoOU0PxIJn6Ll+z03LVZdcNUhDzghC38kxxs3lITvD
	 VA3qHQEhvWLB5BVB+cwwxTxGQ3QTUD8R7PE0RgwPqWmjAocUCZecVa27TplEe/BWrM
	 6CMcRvBJj+wU29kLDlJVaQWwXkFMRKoK8URjmZmGuKWSLExO/XITGIFHMplKs3PXJv
	 KooLCcdgVy7WktSNadwKClb0T1s7n4XjnutzNHzxByGc3Wq3IMPsoYpTYu/S8ojvQs
	 MUKgCC9LHcBfw==
Message-ID: <3352700c4545e9c8cc35fd698f17e52259f31c3b.camel@collabora.com>
Subject: Re: [PATCH v5 06/13] media: verisilicon: Check AV1 bitstreams bit
 depth
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Tue, 11 Apr 2023 11:09:52 -0400
In-Reply-To: <20230330154043.1250736-7-benjamin.gaignard@collabora.com>
References: <20230330154043.1250736-1-benjamin.gaignard@collabora.com>
	 <20230330154043.1250736-7-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_081004_185007_159EE145 
X-CRM114-Status: GOOD (  19.03  )
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

TGUgamV1ZGkgMzAgbWFycyAyMDIzIMOgIDE3OjQwICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCBh
IMOpY3JpdMKgOgo+IFRoZSBkcml2ZXIgc3VwcG9ydHMgOCBhbmQgMTAgYml0cyBiaXRzdHJlYW1z
LCBtYWtlIHN1cmUgdG8gZGlzY2FyZAo+IG90aGVyIGNhc2VzLgo+IEl0IGNvdWxkIGhhcHBlbnMg
dGhhdCB1c2VybGFuZCB0ZXN0IGlmIFY0TDJfQ0lEX1NUQVRFTEVTU19BVjFfU0VRVUVOQ0UKPiBl
eGlzdHMgd2l0aG91dCBzZXR0aW5nIGJpdF9kZXB0aCBmaWVsZCBpbiB0aGlzIGNhc2UgdXNlCj4g
SEFOVFJPX0RFRkFVTFRfQklUX0RFUFRIIHZhbHVlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmph
bWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQt
Ynk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KCj4g
LS0tCj4gIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgICB8IDM2
ICsrKysrKysrKysrKysrKysrKysKPiAgLi4uL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hh
bnRyb192NGwyLmMgIHwgIDQgKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hh
bnRyb19kcnYuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Ry
di5jCj4gaW5kZXggNzQ2NDFjOTcyZjFlLi43MWJkNjhlNjM4NTkgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiArKysgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+IEBAIC0yNzUsNyAr
Mjc1LDEzIEBAIHN0YXRpYyBpbnQgaGFudHJvX3RyeV9jdHJsKHN0cnVjdCB2NGwyX2N0cmwgKmN0
cmwpCj4gIAkJLyogV2Ugb25seSBzdXBwb3J0IHByb2ZpbGUgMCAqLwo+ICAJCWlmIChkZWNfcGFy
YW1zLT5wcm9maWxlICE9IDApCj4gIAkJCXJldHVybiAtRUlOVkFMOwo+ICsJfSBlbHNlIGlmIChj
dHJsLT5pZCA9PSBWNEwyX0NJRF9TVEFURUxFU1NfQVYxX1NFUVVFTkNFKSB7Cj4gKwkJY29uc3Qg
c3RydWN0IHY0bDJfY3RybF9hdjFfc2VxdWVuY2UgKnNlcXVlbmNlID0gY3RybC0+cF9uZXcucF9h
djFfc2VxdWVuY2U7Cj4gKwo+ICsJCWlmIChzZXF1ZW5jZS0+Yml0X2RlcHRoICE9IDggJiYgc2Vx
dWVuY2UtPmJpdF9kZXB0aCAhPSAxMCkKPiArCQkJcmV0dXJuIC1FSU5WQUw7Cj4gIAl9Cj4gKwo+
ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gQEAgLTM0Niw2ICszNTIsMzAgQEAgc3RhdGljIGludCBo
YW50cm9faGV2Y19zX2N0cmwoc3RydWN0IHY0bDJfY3RybCAqY3RybCkKPiAgCXJldHVybiAwOwo+
ICB9Cj4gIAo+ICtzdGF0aWMgaW50IGhhbnRyb19hdjFfc19jdHJsKHN0cnVjdCB2NGwyX2N0cmwg
KmN0cmwpCj4gK3sKPiArCXN0cnVjdCBoYW50cm9fY3R4ICpjdHg7Cj4gKwo+ICsJY3R4ID0gY29u
dGFpbmVyX29mKGN0cmwtPmhhbmRsZXIsCj4gKwkJCSAgIHN0cnVjdCBoYW50cm9fY3R4LCBjdHJs
X2hhbmRsZXIpOwo+ICsKPiArCXN3aXRjaCAoY3RybC0+aWQpIHsKPiArCWNhc2UgVjRMMl9DSURf
U1RBVEVMRVNTX0FWMV9TRVFVRU5DRToKPiArCXsKPiArCQlpbnQgYml0X2RlcHRoID0gY3RybC0+
cF9uZXcucF9hdjFfc2VxdWVuY2UtPmJpdF9kZXB0aDsKPiArCj4gKwkJaWYgKGN0eC0+Yml0X2Rl
cHRoID09IGJpdF9kZXB0aCkKPiArCQkJcmV0dXJuIDA7Cj4gKwo+ICsJCXJldHVybiBoYW50cm9f
cmVzZXRfcmF3X2ZtdChjdHgsIGJpdF9kZXB0aCk7Cj4gKwl9Cj4gKwlkZWZhdWx0Ogo+ICsJCXJl
dHVybiAtRUlOVkFMOwo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICBzdGF0aWMg
Y29uc3Qgc3RydWN0IHY0bDJfY3RybF9vcHMgaGFudHJvX2N0cmxfb3BzID0gewo+ICAJLnRyeV9j
dHJsID0gaGFudHJvX3RyeV9jdHJsLAo+ICB9Owo+IEBAIC0zNjMsNiArMzkzLDExIEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgdjRsMl9jdHJsX29wcyBoYW50cm9faGV2Y19jdHJsX29wcyA9IHsKPiAg
CS5zX2N0cmwgPSBoYW50cm9faGV2Y19zX2N0cmwsCj4gIH07Cj4gIAo+ICtzdGF0aWMgY29uc3Qg
c3RydWN0IHY0bDJfY3RybF9vcHMgaGFudHJvX2F2MV9jdHJsX29wcyA9IHsKPiArCS50cnlfY3Ry
bCA9IGhhbnRyb190cnlfY3RybCwKPiArCS5zX2N0cmwgPSBoYW50cm9fYXYxX3NfY3RybCwKPiAr
fTsKPiArCj4gICNkZWZpbmUgSEFOVFJPX0pQRUdfQUNUSVZFX01BUktFUlMJKFY0TDJfSlBFR19B
Q1RJVkVfTUFSS0VSX0FQUDAgfCBcCj4gIAkJCQkJIFY0TDJfSlBFR19BQ1RJVkVfTUFSS0VSX0NP
TSB8IFwKPiAgCQkJCQkgVjRMMl9KUEVHX0FDVElWRV9NQVJLRVJfRFFUIHwgXAo+IEBAIC01NDAs
NiArNTc1LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBoYW50cm9fY3RybCBjb250cm9sc1tdID0g
ewo+ICAJCS5jb2RlYyA9IEhBTlRST19BVjFfREVDT0RFUiwKPiAgCQkuY2ZnID0gewo+ICAJCQku
aWQgPSBWNEwyX0NJRF9TVEFURUxFU1NfQVYxX1NFUVVFTkNFLAo+ICsJCQkub3BzID0gJmhhbnRy
b19hdjFfY3RybF9vcHMsCj4gIAkJfSwKPiAgCX0sIHsKPiAgCQkuY29kZWMgPSBIQU5UUk9fQVYx
X0RFQ09ERVIsCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGlj
b24vaGFudHJvX3Y0bDIuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFu
dHJvX3Y0bDIuYwo+IGluZGV4IDdlZDJkZmQ0YWVmYS4uZTJhODgzOGY3NWYwIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+ICsr
KyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+IEBA
IC04Niw2ICs4NiwxMCBAQCBoYW50cm9fY2hlY2tfZGVwdGhfbWF0Y2goY29uc3Qgc3RydWN0IGhh
bnRyb19mbXQgKmZtdCwgaW50IGJpdF9kZXB0aCkKPiAgCWlmICghZm10LT5tYXRjaF9kZXB0aCAm
JiAhZm10LT5wb3N0cHJvY2Vzc2VkKQo+ICAJCXJldHVybiB0cnVlOwo+ICAKPiArCS8qIDAgbWVh
bnMgZGVmYXVsdCBkZXB0aCwgd2hpY2ggaXMgOCAqLwo+ICsJaWYgKCFiaXRfZGVwdGgpCj4gKwkJ
Yml0X2RlcHRoID0gSEFOVFJPX0RFRkFVTFRfQklUX0RFUFRIOwo+ICsKPiAgCWZtdF9kZXB0aCA9
IGhhbnRyb19nZXRfZm9ybWF0X2RlcHRoKGZtdC0+Zm91cmNjKTsKPiAgCj4gIAkvKgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
