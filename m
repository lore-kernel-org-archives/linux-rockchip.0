Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 297B0C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 14:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7jJsFRHNtlGxdOd1AfoDmfZNCZTUwiiFzdmizsj45D4=; b=NHawY4gZw97JNj
	ZTA1gQ1VA38cEvpGQ9/HkHwXLSj4LUeVEW17IpFr0UFKVHkkYD97Y8CHfBderja3DUfX5Vgu0oMny
	HchuKlMERLWesn/I4O/Hxf+ma+bg+JYCVxO9fhU299+yKo+kcrC18KKVxjVPuWz6IcjB6jnIEVnrF
	CmTnrZwamoiS/q/MiQKB1dblJQmJaasOLnjrBu2l+M0F1Ci8+By1/8YoTAX8anyx7YEHMfm/Q/sqA
	skerq6C53sCGd4jLG5BXnNqqSRITNAs9knc6wu/Ge/Bj1GQZTXqOWirPCQwl0sSXhIH4YXKypOtcf
	g7k5SaXfdXCTq2CaaS5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r15lx-006T2Y-2a;
	Thu, 09 Nov 2023 14:12:41 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r15lt-006T0w-25;
	Thu, 09 Nov 2023 14:12:39 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A7236660739D;
	Thu,  9 Nov 2023 14:12:34 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699539156;
	bh=bHsPXcPq+RCxN5m6no2vYCXtGthGOFXffIvEuss0WaA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NLuvksTyGejXV9sdJMh5tC3X3EILGdZx7JOLHtkjqzvKQ3PL4BSf6mYdIJ7FKI30m
	 rMh4dIyDlhnunSIkJ8s6NjI4lfqp/zXcSG28zGAuDeaTLFZPzE40mcEAWUASYHATBa
	 QbRzO5gBq0o/kbUh0knpprCOQbTygboTYfIvHGmxhtXd6F6s3FhngHg7en/XzWeJTc
	 aQYUVjVNJLT4k7J25i+aaWNgjsKMtcBmEHtLCKaNdFFHxKPC97grku+QB19Tw0N1Yc
	 Dy7666VhwjTj4anJuDh1NtIg7zZvVjI5Xz8jN1tn4wDjBKwsEYJtoXGCdhLNQwKPTe
	 lcwYPysIvoRSQ==
Message-ID: <9f0edfe5-0bde-43ca-9238-2c84897c56a8@collabora.com>
Date: Thu, 9 Nov 2023 15:12:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 48/56] media: verisilicon: Store chroma and motion
 vectors offset
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
 <20231031163104.112469-49-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-49-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_061237_883616_5CD5F044 
X-CRM114-Status: GOOD (  13.55  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IFN0
b3JlIGNvbXB1dGVkIHZhbHVlcyBvZiBjaHJvbWEgYW5kIG1vdGlvbiB2ZWN0b3JzIG9mZnNldCBi
ZWNhdXNlCj4gdGhleSBkZXBlbmRzIG9uIHdpZHRoIGFuZCBoZWlnaHQgdmFsdWVzIHdoaWNoIGNo
YW5nZSBpZiB0aGUgcmVzb2x1dGlvbgo+IGNoYW5nZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5q
YW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KClJldmlld2Vk
LWJ5OiBBbmRyemVqIFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgoKPiBD
QzogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEB2YW5ndWFyZGlhc3VyLmNvbS5hcj4KPiBDQzog
UGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5kZT4KPiAtLS0KPiAgIGRyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvLmggICAgICAgICAgICB8IDIgKysKPiAg
IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cyX3ZwOV9kZWMuYyB8
IDYgKysrKy0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9oYW50cm8uaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvLmgK
PiBpbmRleCAwOTQ4YjA0YTlmOGQuLjZmNWViOTc1ZDBlMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyby5oCj4gKysrIGIvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8uaAo+IEBAIC0zMjgsNiArMzI4LDggQEAgc3Ry
dWN0IGhhbnRyb192cDlfZGVjb2RlZF9idWZmZXJfaW5mbyB7Cj4gICAJLyogSW5mbyBuZWVkZWQg
d2hlbiB0aGUgZGVjb2RlZCBmcmFtZSBzZXJ2ZXMgYXMgYSByZWZlcmVuY2UgZnJhbWUuICovCj4g
ICAJdW5zaWduZWQgc2hvcnQgd2lkdGg7Cj4gICAJdW5zaWduZWQgc2hvcnQgaGVpZ2h0Owo+ICsJ
c2l6ZV90IGNocm9tYV9vZmZzZXQ7Cj4gKwlzaXplX3QgbXZfb2Zmc2V0Owo+ICAgCXUzMiBiaXRf
ZGVwdGggOiA0Owo+ICAgfTsKPiAgIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMKPiBpbmRleCA2ZmM0YjU1NTUxN2Yu
LjZkYjFjMzJmY2U0ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMKPiBAQCAtMTU4LDkgKzE1OCwxMSBAQCBz
dGF0aWMgdm9pZCBjb25maWdfb3V0cHV0KHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gICAKPiAg
IAljaHJvbWFfYWRkciA9IGx1bWFfYWRkciArIGNocm9tYV9vZmZzZXQoY3R4LCBkZWNfcGFyYW1z
KTsKPiAgIAloYW50cm9fd3JpdGVfYWRkcihjdHgtPmRldiwgRzJfT1VUX0NIUk9NQV9BRERSLCBj
aHJvbWFfYWRkcik7Cj4gKwlkc3QtPnZwOS5jaHJvbWFfb2Zmc2V0ID0gY2hyb21hX29mZnNldChj
dHgsIGRlY19wYXJhbXMpOwo+ICAgCj4gICAJbXZfYWRkciA9IGx1bWFfYWRkciArIG12X29mZnNl
dChjdHgsIGRlY19wYXJhbXMpOwo+ICAgCWhhbnRyb193cml0ZV9hZGRyKGN0eC0+ZGV2LCBHMl9P
VVRfTVZfQUREUiwgbXZfYWRkcik7Cj4gKwlkc3QtPnZwOS5tdl9vZmZzZXQgPSBtdl9vZmZzZXQo
Y3R4LCBkZWNfcGFyYW1zKTsKPiAgIH0KPiAgIAo+ICAgc3RydWN0IGhhbnRyb192cDlfcmVmX3Jl
ZyB7Cj4gQEAgLTE5NSw3ICsxOTcsNyBAQCBzdGF0aWMgdm9pZCBjb25maWdfcmVmKHN0cnVjdCBo
YW50cm9fY3R4ICpjdHgsCj4gICAJbHVtYV9hZGRyID0gaGFudHJvX2dldF9kZWNfYnVmX2FkZHIo
Y3R4LCAmYnVmLT5iYXNlLnZiLnZiMl9idWYpOwo+ICAgCWhhbnRyb193cml0ZV9hZGRyKGN0eC0+
ZGV2LCByZWZfcmVnLT55X2Jhc2UsIGx1bWFfYWRkcik7Cj4gICAKPiAtCWNocm9tYV9hZGRyID0g
bHVtYV9hZGRyICsgY2hyb21hX29mZnNldChjdHgsIGRlY19wYXJhbXMpOwo+ICsJY2hyb21hX2Fk
ZHIgPSBsdW1hX2FkZHIgKyBidWYtPnZwOS5jaHJvbWFfb2Zmc2V0Owo+ICAgCWhhbnRyb193cml0
ZV9hZGRyKGN0eC0+ZGV2LCByZWZfcmVnLT5jX2Jhc2UsIGNocm9tYV9hZGRyKTsKPiAgIH0KPiAg
IAo+IEBAIC0yMzgsNyArMjQwLDcgQEAgc3RhdGljIHZvaWQgY29uZmlnX3JlZl9yZWdpc3RlcnMo
c3RydWN0IGhhbnRyb19jdHggKmN0eCwKPiAgIAljb25maWdfcmVmKGN0eCwgZHN0LCAmcmVmX3Jl
Z3NbMl0sIGRlY19wYXJhbXMsIGRlY19wYXJhbXMtPmFsdF9mcmFtZV90cyk7Cj4gICAKPiAgIAlt
dl9hZGRyID0gaGFudHJvX2dldF9kZWNfYnVmX2FkZHIoY3R4LCAmbXZfcmVmLT5iYXNlLnZiLnZi
Ml9idWYpICsKPiAtCQkgIG12X29mZnNldChjdHgsIGRlY19wYXJhbXMpOwo+ICsJCSAgbXZfcmVm
LT52cDkubXZfb2Zmc2V0Owo+ICAgCWhhbnRyb193cml0ZV9hZGRyKGN0eC0+ZGV2LCBHMl9SRUZf
TVZfQUREUigwKSwgbXZfYWRkcik7Cj4gICAKPiAgIAloYW50cm9fcmVnX3dyaXRlKGN0eC0+ZGV2
LCAmdnA5X2xhc3Rfc2lnbl9iaWFzLAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
