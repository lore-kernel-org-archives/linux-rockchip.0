Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 909BFC021A9
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Sep 2024 18:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RoB5mQYPPdPCEMhiATqqW/qNk58fr33g6OHpSSdqz2E=; b=twVwOfIYQYdx4p
	ZkezjPUNfJzq4AGj2YhFOtMoeyQaLH/NeOYDFPT5nloqZ0w8BjxHUe1inynkmH/9nMonDEsY0UW+9
	72abzqGk3Ej1Mwr4BjwwnBqvK4FaM5mDPX+Qy8eUVy4N2gvfLe95T0+a/6eMPCbV8qNXOE5sSjtPd
	JojZjic1rfVDRWnW7lKeUOXUbOrUbcP47j2f48Qgsm6H6iw56vMBGQ43SUFkcEmLm3qFEectDoyPg
	NlhCnspncVwjC4DMDFv13e1WvO5/4I3cBLtpay4vEMUr5xiqcGfYA7Y/d1/FAYjhUMJFcnREg135G
	CaWq1LaXmH4J6TIY2t+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spXXA-000000016U2-3ZT1;
	Sat, 14 Sep 2024 18:30:12 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spXW3-000000016O6-3Z03;
	Sat, 14 Sep 2024 18:29:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1726338541;
	bh=2yDJGLRu2gAeWgfvO6TGgF4YVt64dhBuu/OY77p7t8A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eh1sKraz7x9kS3czQy+9/fxF6N5XeQ2mG7h7DIfI7MMRO6tTWxgv44vLDlA+n1bh+
	 jSnYtFGAzkeFL3gvy2XX5PhQ48FW7Od8+q1a/w6/w24Bi88Z4k8YKJ4YenNRROaVFd
	 LdrDqbRzdDz8z3hP1pqzcVPqWVDyzMtEdc4F8zzruM2k5sXsjqxw/lJA1vmspSz9aB
	 zmVW9wsE1p4W+ZGO+rHnHKC7oKXrfPpGuLZW9O4YFa8EtEiYpwNeV3lVcqwPaCyOVe
	 wDl3AuaAwFipLxjpYHtml4e5MpY5mMw6mBIUDjovM5Vye9DGWYZcn4APWVFdF/dhKH
	 9q4wvwp3UZMtw==
Received: from [192.168.1.90] (unknown [188.27.55.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5F8BF17E3608;
	Sat, 14 Sep 2024 20:29:00 +0200 (CEST)
Message-ID: <4766d230-c9c3-414d-a954-3b0c890e7e08@collabora.com>
Date: Sat, 14 Sep 2024 21:28:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] drm/rockchip: Add basic RK3588 HDMI output support
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240906-b4-rk3588-bridge-upstream-v6-0-a3128fb103eb@collabora.com>
 <20240906-b4-rk3588-bridge-upstream-v6-3-a3128fb103eb@collabora.com>
 <2376712.1SvkZsmPdQ@diego>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2376712.1SvkZsmPdQ@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_112904_083351_6B761C5F 
X-CRM114-Status: GOOD (  22.77  )
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

T24gOS8xMC8yNCAxMDowOCBQTSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRnJlaXRhZywg
Ni4gU2VwdGVtYmVyIDIwMjQsIDAzOjE3OjQyIENFU1Qgc2NocmllYiBDcmlzdGlhbiBDaW9jYWx0
ZWE6Cj4+IFRoZSBSSzM1ODggU29DIGZhbWlseSBpbnRlZ3JhdGVzIHRoZSBuZXdlciBTeW5vcHN5
cyBEZXNpZ25XYXJlIEhETUkgMi4xCj4+IFF1YWQtUGl4ZWwgKFFQKSBUWCBjb250cm9sbGVyIElQ
IGFuZCBhIEhETUkvZURQIFRYIENvbWJvIFBIWSBiYXNlZCBvbiBhCj4+IFNhbXN1bmcgSVAgYmxv
Y2suCj4+Cj4+IEFkZCBqdXN0IHRoZSBiYXNpYyBzdXBwb3J0IGZvciBub3csIGkuZS4gUkdCIG91
dHB1dCB1cCB0byA0S0A2MEh6LAo+PiB3aXRob3V0IGF1ZGlvLCBDRUMgb3IgYW55IG9mIHRoZSBI
RE1JIDIuMSBzcGVjaWZpYyBmZWF0dXJlcy4KPj4KPj4gQ28tZGV2ZWxvcGVkLWJ5OiBBbGdlYSBD
YW8gPGFsZ2VhLmNhb0Byb2NrLWNoaXBzLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQWxnZWEgQ2Fv
IDxhbGdlYS5jYW9Acm9jay1jaGlwcy5jb20+Cj4+IFRlc3RlZC1ieTogSGVpa28gU3R1ZWJuZXIg
PGhlaWtvQHNudGVjaC5kZT4KPj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxj
cmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPiAKPiBbLi4uXQo+IAo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL01ha2VmaWxlCj4+IGluZGV4IDNmZjdiMjFjMDQxNC4uM2VhYjY2MmE1YTFkIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvTWFrZWZpbGUKPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL01ha2VmaWxlCj4+IEBAIC0xMSw2ICsxMSw3IEBAIHJv
Y2tjaGlwZHJtLSQoQ09ORklHX1JPQ0tDSElQX1ZPUCkgKz0gcm9ja2NoaXBfZHJtX3ZvcC5vIHJv
Y2tjaGlwX3ZvcF9yZWcubwo+IAo+PiArc3RhdGljIGludCBkd19oZG1pX3FwX3JvY2tjaGlwX2Jp
bmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsCj4+ICsJCQkJICAg
IHZvaWQgKmRhdGEpCj4+ICt7Cj4+ICsJc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBjbGtfbmFt
ZXNbXSA9IHsKPj4gKwkJInBjbGsiLCAiZWFyYyIsICJhdWQiLCAiaGRwIiwgImhjbGtfdm8xIiwK
Pj4gKwkJInJlZiIgLyoga2VlcCAicmVmIiBsYXN0ICovCj4+ICsJfTsKPiAKPiBbLi4uXQo+IAo+
PiArCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGNsa19uYW1lcyk7IGkrKykgewo+PiArCQlj
bGsgPSBkZXZtX2Nsa19nZXRfZW5hYmxlZChoZG1pLT5kZXYsIGNsa19uYW1lc1tpXSk7Cj4+ICsK
Pj4gKwkJaWYgKElTX0VSUihjbGspKSB7Cj4+ICsJCQlyZXQgPSBQVFJfRVJSKGNsayk7Cj4+ICsJ
CQlpZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCj4+ICsJCQkJZHJtX2VycihoZG1pLCAiRmFpbGVk
IHRvIGdldCAlcyBjbG9jazogJWRcbiIsCj4+ICsJCQkJCWNsa19uYW1lc1tpXSwgcmV0KTsKPj4g
KwkJCXJldHVybiByZXQ7Cj4+ICsJCX0KPj4gKwl9Cj4+ICsJaGRtaS0+cmVmX2NsayA9IGNsazsK
PiAKPiBIb3cgYWJvdXQgdXNpbmcgZGV2bV9jbGtfYnVsa19nZXRfYWxsX2VuYWJsZSgpIGZvciBl
dmVyeXRoaW5nIGV4Y2VwdCB0aGUKPiByZWZjbGsgYW5kIGEgc2VwYXJhdGUgY2FsbCB0byBkZXZt
X2Nsa19nZXRfZW5hYmxlZCgpIGZvciB0aGF0IHJlZmNsayAuCgpUaGlzIGhlbHBlciBzZWVtcyB0
byBiZSBwYXJ0aWFsbHkgYnJva2VuIGFzIGl0IGRvZXNuJ3QgcmV0dXJuIHRoZSBudW1iZXIgb2YK
Y2xvY2tzIHN0b3JlZCBpbiB0aGUgY2xrX2J1bGtfZGF0YSB0YWJsZSByZWZlcmVuY2VkIGJ5IHRo
ZSBjbGtzIGFyZ3VtZW50LAptZWFuaW5nIGl0J3Mgbm90IHBvc3NpYmxlIHRvIGl0ZXJhdGUgdGhl
c2UgY2xvY2tzLiAgSSBwcm92aWRlZCBhIG5ldyBoZWxwZXIKWzFdIGFzIGEgcG9zc2libGUgZml4
LgoKSWYgdGhhdCBnZXRzIGFjY2VwdGVkLCB3ZSBjb3VsZCByZXdyaXRlIHRoaXMgYXM6CgoJcmV0
ID0gZGV2bV9jbGtfYnVsa19nZXRfYWxsX2VuYWJsZWQoaGRtaS0+ZGV2LCAmY2xrcyk7CglpZiAo
cmV0IDwgMCkgewoJCWRybV9lcnIoaGRtaSwgIkZhaWxlZCB0byBnZXQgY2xvY2tzOiAlZFxuIiwg
cmV0KTsKCQlyZXR1cm4gcmV0OwoJfQoKCWZvciAoaSA9IDA7IGkgPCByZXQ7IGkrKykgewoJCWlm
ICghc3RyY21wKGNsa3NbaV0uaWQsICJyZWYiKSkgewoJCQloZG1pLT5yZWZfY2xrID0gY2xrc1sx
XS5jbGs7CgkJCWJyZWFrOwoJCX0KCX0KCWlmICghaGRtaS0+cmVmX2NsaykgewoJCWRybV9lcnIo
aGRtaSwgIk1pc3NpbmcgcmVmIGNsb2NrXG4iKTsKCQlyZXR1cm4gLUVJTlZBTDsKCX0KCj4gVGhh
dCBoZG1pLT5yZWZfY2xrIGp1c3QgYWNjaWRlbnRpYWxseSBmYWxscyBvdXQgb2YgdGhhdCBsb29w
IGF0IHRoZSBlbmQKPiBsb29rcyBzb21ld2hhdCBzdHJhbmdlLCBzbyBnZXR0aW5nIGFuZCBrZWVw
aW5nIHRoYXQgcmVmY2xrCj4gc2VwYXJhdGVseSB3b3VsZCBtYWtlIHRoaXMgbG9vayBjbGVhbmVy
LgoKSSd2ZSBhZGRlZCAvKiBrZWVwICJyZWYiIGxhc3QgKi8gY29tbWVudCBhYm92ZSwgYnV0IEkg
YWdyZWUgaXQncyBub3QgcmVhbGx5CnRoZSBiZXN0IGFwcHJvYWNoLgoKSSdtIGdvaW5nIHRvIHN1
Ym1pdCB2NyBpbiB0aGUgbWVhbnRpbWUsIGFzIHRoaXMgd2FzIHRoZSBsYXN0IHJlbWFpbmluZyBv
cGVuCnRvcGljIG9uIG15IGxpc3QuICBJIGd1ZXNzIHdlIGNhbiBmaWd1cmUgdGhpcyBvdXQgYWZ0
ZXJ3YXJkcy4KClRoYW5rcywKQ3Jpc3RpYW4KClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
a21sLzIwMjQwOTE0LWNsa19idWxrX2VuYV9maXgtdjEtMC1jZTM1Mzc1ODVjMDZAY29sbGFib3Jh
LmNvbS8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
