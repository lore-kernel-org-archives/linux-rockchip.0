Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1EAEC4167D
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 09:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqciQCcy0jn5Y4T43FifY/fHZY+yuPc8x2Lo64DFH70=; b=QnGMivEpAh30W1
	nNMPp5VtgWcMJNhvzE9fmdFpabpBGkWGOYScdALrKaVrRfdY0wph7+JLpyUZ4khqG0mZ6iiiMJaF3
	nd223iH39vnbXzpbKFQ41dbORR6iomuUb0Q0eK2d649GCZ9tm+/0T6CgZehCbmMjdtKDdk5vbVhQD
	/rz69i1cx/5YEmzsilzvhaFn0B5GAl6vpXtRaGX0dnei9Bq23OmiZp5maG4VPs38qV12tsyXs7ST/
	w9aYFfDVtrjkLvaQhNkdAjVWsImIgq9UoYSydvWiPYGPqe5d5tBxi40DqJM9RV6H4AQimR+9fGvnn
	/EyKPgH9Clmn1T5PyGzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11cf-005ow4-2g;
	Thu, 09 Nov 2023 09:46:49 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11ca-005osA-12;
	Thu, 09 Nov 2023 09:46:47 +0000
Received: from [100.98.136.55] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 109996607410;
	Thu,  9 Nov 2023 09:46:41 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699523203;
	bh=IFUUFnswkX8ko/bLeA8AThrmjVyJk/S4hUBWjROwSrE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TWFbkLboy695UDQbgJ4kpkCDHNPparXWuzAPl3syDfNnA3rSEpOUW+0KLpE91giq8
	 l9u9xZt1uL9yz6+gfdLkeCRds6nEYOlKn4/ha7aSAeFF9WN7gTs7MdDYeJ7FmqpOTS
	 B+8pPl1uzwL8/6uPwmnstIkTogYG8rIS5oXXN0aeTymg9gmpmcMeX7aUF7yXQ7HLR7
	 l6/HXIgEaU/8Oi1lZZsd59o998YaM4Lm14KBeQ40vvf3NTRWdIoS2eXuIDTKwPm/eq
	 Ti8oKSwoZpIXVK2wQdsVuCHF4WrVL6ITjlbBwnEwFnxQq4UHE4RYsuYtUuu5qBttws
	 Lo0JnpTMmLg7Q==
Message-ID: <2f5ad14b-528d-4656-84d8-f85467c5b475@collabora.com>
Date: Thu, 9 Nov 2023 10:46:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 56/56] media: test-drivers: Use helper for DELETE_BUFS
 ioctl
To: Tomasz Figa <tfiga@chromium.org>
Cc: mchehab@kernel.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-57-benjamin.gaignard@collabora.com>
 <20231109094311.yzmmn4vvskmrk4tk@chromium.org>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20231109094311.yzmmn4vvskmrk4tk@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_014644_487927_7373EB59 
X-CRM114-Status: GOOD (  14.28  )
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

CkxlIDA5LzExLzIwMjMgw6AgMTA6NDMsIFRvbWFzeiBGaWdhIGEgw6ljcml0wqA6Cj4gT24gVHVl
LCBPY3QgMzEsIDIwMjMgYXQgMDU6MzE6MDRQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+IEFsbG93IHRlc3QgZHJpdmVycyB0byB1c2UgREVMRVRFX0JVRlMgYnkgYWRkaW5nIHZi
Ml9pb2N0bF9kZWxldGVfYnVmcygpIGhlbHBlci4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFt
aW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiAg
IGRyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJzL3ZpY29kZWMvdmljb2RlYy1jb3JlLmMgfCAgMiAr
Kwo+PiAgIGRyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJzL3ZpbWMvdmltYy1jYXB0dXJlLmMgICAg
fCAgMiArKwo+PiAgIGRyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJzL3Zpc2wvdmlzbC12aWRlby5j
ICAgICAgfCAgMiArKwo+PiAgIGRyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJzL3ZpdmlkL3Zpdmlk
LWNvcmUuYyAgICAgfCAxMyArKysrKysrKysrLS0tCj4+ICAgNCBmaWxlcyBjaGFuZ2VkLCAxNiBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS90ZXN0LWRyaXZlcnMvdmljb2RlYy92aWNvZGVjLWNvcmUuYyBiL2RyaXZlcnMvbWVkaWEv
dGVzdC1kcml2ZXJzL3ZpY29kZWMvdmljb2RlYy1jb3JlLmMKPj4gaW5kZXggNjljYmUyYzA5NGUx
Li5mMTRhOGZkNTA2ZDAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJz
L3ZpY29kZWMvdmljb2RlYy1jb3JlLmMKPj4gKysrIGIvZHJpdmVycy9tZWRpYS90ZXN0LWRyaXZl
cnMvdmljb2RlYy92aWNvZGVjLWNvcmUuYwo+PiBAQCAtMTMzOSw2ICsxMzM5LDcgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCB2NGwyX2lvY3RsX29wcyB2aWNvZGVjX2lvY3RsX29wcyA9IHsKPj4gICAJ
LnZpZGlvY19wcmVwYXJlX2J1Zgk9IHY0bDJfbTJtX2lvY3RsX3ByZXBhcmVfYnVmLAo+PiAgIAku
dmlkaW9jX2NyZWF0ZV9idWZzCT0gdjRsMl9tMm1faW9jdGxfY3JlYXRlX2J1ZnMsCj4+ICAgCS52
aWRpb2NfZXhwYnVmCQk9IHY0bDJfbTJtX2lvY3RsX2V4cGJ1ZiwKPj4gKwkudmlkaW9jX2RlbGV0
ZV9idWZzCT0gdjRsMl9tMm1faW9jdGxfZGVsZXRlX2J1ZnMsCj4+ICAgCj4+ICAgCS52aWRpb2Nf
c3RyZWFtb24JPSB2NGwyX20ybV9pb2N0bF9zdHJlYW1vbiwKPj4gICAJLnZpZGlvY19zdHJlYW1v
ZmYJPSB2NGwyX20ybV9pb2N0bF9zdHJlYW1vZmYsCj4+IEBAIC0xNzI1LDYgKzE3MjYsNyBAQCBz
dGF0aWMgaW50IHF1ZXVlX2luaXQodm9pZCAqcHJpdiwgc3RydWN0IHZiMl9xdWV1ZSAqc3JjX3Zx
LAo+PiAgIAlkc3RfdnEtPm1lbV9vcHMgPSAmdmIyX3ZtYWxsb2NfbWVtb3BzOwo+PiAgIAlkc3Rf
dnEtPnRpbWVzdGFtcF9mbGFncyA9IFY0TDJfQlVGX0ZMQUdfVElNRVNUQU1QX0NPUFk7Cj4+ICAg
CWRzdF92cS0+bG9jayA9IHNyY192cS0+bG9jazsKPj4gKwlkc3RfdnEtPnN1cHBvcnRzX2RlbGV0
ZV9idWZzID0gdHJ1ZTsKPiBTaW5jZSB3ZSBoYXZlIHRvIGV4cGxpY2l0bHkgcHJvdmlkZSB0aGUg
dmlkaW9jX2RlbGV0ZV9idWZzIGNhbGxiYWNrIGFueXdheSwKPiBpcyB0aGVyZSBhbnkgdmFsdWUg
aW4gaGF2aW5nIGEgc2VwYXJhdGUgc3VwcG9ydHNfZGVsZXRlX2J1ZnMgZmxhZz8gT3Igd2UKPiBl
bnZpc2lvbiB0aGF0IHNvbWUgZHJpdmVycyB3b3VsZCBzdXBwb3J0IGRlbGV0aW5nIGJ1ZmZlcnMg
b25seSBmb3Igc29tZQo+IHF1ZXVlcz8KClRoYXQgZXhhY3RseSB0aGUgY2FzZSBmb3IgSGFudHJv
IGRyaXZlciwgaXQgY2FuIHN1cHBvcnQgZGVsZXRpbmcgYnVmZmVycyBvbgpjYXB0dXJlIHF1ZXVl
IGJ1dCBub3Qgb24gb3V0cHV0IHF1ZXVlLgoKPgo+IEJlc3QgcmVnYXJkcywKPiBUb21hc3oKPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
