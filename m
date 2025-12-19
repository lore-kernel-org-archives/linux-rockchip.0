Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12C3CD78787
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 14:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UbMs1RPeyCbXLYyAevuaGlwpO1AXheuHAz0oIBMeFC8=; b=iQ9usOC/A5n0wh
	tzo/laz/ro5ScA4/QlDPGyWsKcM91Y+gG95UlUuur9gykH1wXF2ASNAxdqxBVO4SHswCSHPXsDKtB
	p4vVg0qWsAOjkCdpDYF24JZ6PisqKturyyWXJqSOTycNOvAd4uAcqtdR3iI+hgEPTRN4o8RJnWvrY
	9AJMNp7thbIHcfcnt8qtda2QjoGH51O1JHjUALO+emL7LaE1N9lfLrT24t1L7Tc94P4Q7kacv1GAJ
	Tsbrv4Ze/RD+MqXBJYZ/Lq11iqTridUBhm8PAzAa2CC6frBi7DmKegOw2zbUpmuVoFp+dmw6URN+s
	tR+mGLQc5PxnuzLH/Hcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbpv-0000000ASZB-3neJ;
	Fri, 19 Dec 2025 14:52:07 +0000
Received: from mail-m15566.qiye.163.com ([101.71.155.66])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWbpr-0000000ASW2-2ckn;
	Fri, 19 Dec 2025 14:52:06 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2de8ecb5a;
	Fri, 19 Dec 2025 22:51:48 +0800 (GMT+08:00)
Message-ID: <1ca8f181-7784-469a-b498-622a39737e1e@rock-chips.com>
Date: Fri, 19 Dec 2025 22:51:47 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 4/5] iio: adc: rockchip: Simplify with dev_err_probe
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>, Heiko Stuebner <heiko@sntech.de>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>
References: <20251219-iio-dev-err-probe-v1-0-bd0fbc83c8a0@oss.qualcomm.com>
 <20251219-iio-dev-err-probe-v1-4-bd0fbc83c8a0@oss.qualcomm.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251219-iio-dev-err-probe-v1-4-bd0fbc83c8a0@oss.qualcomm.com>
X-HM-Tid: 0a9b371876c109cckunm523b6161c55b6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkpLQlZISkxISh9MSUxPTUxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=L3Mqft++QW1keeakifFX4r26Bo0K6b98n4bO3SkNmgCq8A7i7LaIGFWE33BuWDvjygTygfaTOhEhZeN8KwRErxShB2KrucqxNKw+Kd0nc3xTFXibEhJOhbcD08iJuqEY8SBejR1zFuRW/6LxVsItsK6il0sxsFTK4A2FeCidGBw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=+dpxgpVjronVSwUPCPFj5OzYc6xfTN7Fz/RJWrifxaw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_065204_192420_FBCFAA9C 
X-CRM114-Status: GOOD (  15.20  )
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

5ZyoIDIwMjUvMTIvMTkg5pif5pyf5LqUIDIyOjMxLCBLcnp5c3p0b2YgS296bG93c2tpIOWGmemB
kzoKPiBVc2UgZGV2X2Vycl9wcm9iZSgpIHRvIG1ha2UgZXJyb3IgY29kZSBoYW5kbGluZyBzaW1w
bGVyIGFuZCBoYW5kbGUKPiBkZWZlcnJlZCBwcm9iZSBuaWNlbHkgKGF2b2lkIHNwYW1taW5nIGxv
Z3MpLgo+IAoKUmV2aWV3ZWQtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29t
PgoKPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93
c2tpQG9zcy5xdWFsY29tbS5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2lpby9hZGMvcm9ja2NoaXBf
c2FyYWRjLmMgfCAxMyArKysrKy0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMv
cm9ja2NoaXBfc2FyYWRjLmMgYi9kcml2ZXJzL2lpby9hZGMvcm9ja2NoaXBfc2FyYWRjLmMKPiBp
bmRleCA2NzIxZGEwZWQ3YmIuLjI2M2Q4MGM1ZmM1MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lp
by9hZGMvcm9ja2NoaXBfc2FyYWRjLmMKPiArKysgYi9kcml2ZXJzL2lpby9hZGMvcm9ja2NoaXBf
c2FyYWRjLmMKPiBAQCAtNDkyLDEwICs0OTIsOSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3NhcmFk
Y19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCSAqLwo+ICAgCWluZm8t
PnJlc2V0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25hbF9leGNsdXNpdmUoJnBkZXYt
PmRldiwKPiAgIAkJCQkJCQkJInNhcmFkYy1hcGIiKTsKPiAtCWlmIChJU19FUlIoaW5mby0+cmVz
ZXQpKSB7Cj4gLQkJcmV0ID0gUFRSX0VSUihpbmZvLT5yZXNldCk7Cj4gLQkJcmV0dXJuIGRldl9l
cnJfcHJvYmUoJnBkZXYtPmRldiwgcmV0LCAiZmFpbGVkIHRvIGdldCBzYXJhZGMtYXBiXG4iKTsK
PiAtCX0KPiArCWlmIChJU19FUlIoaW5mby0+cmVzZXQpKQo+ICsJCXJldHVybiBkZXZfZXJyX3By
b2JlKCZwZGV2LT5kZXYsIFBUUl9FUlIoaW5mby0+cmVzZXQpLAo+ICsJCQkJICAgICAiZmFpbGVk
IHRvIGdldCBzYXJhZGMtYXBiXG4iKTsKPiAgIAo+ICAgCWluaXRfY29tcGxldGlvbigmaW5mby0+
Y29tcGxldGlvbik7Cj4gICAKPiBAQCAtNTA1LDEwICs1MDQsOCBAQCBzdGF0aWMgaW50IHJvY2tj
aGlwX3NhcmFkY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCj4gICAJ
cmV0ID0gZGV2bV9yZXF1ZXN0X2lycSgmcGRldi0+ZGV2LCBpcnEsIHJvY2tjaGlwX3NhcmFkY19p
c3IsCj4gICAJCQkgICAgICAgMCwgZGV2X25hbWUoJnBkZXYtPmRldiksIGluZm8pOwo+IC0JaWYg
KHJldCA8IDApIHsKPiAtCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJmYWlsZWQgcmVxdWVzdGluZyBp
cnEgJWRcbiIsIGlycSk7Cj4gLQkJcmV0dXJuIHJldDsKPiAtCX0KPiArCWlmIChyZXQgPCAwKQo+
ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIHJldCwgImZhaWxlZCByZXF1ZXN0
aW5nIGlycSAlZFxuIiwgaXJxKTsKPiAgIAo+ICAgCWluZm8tPnZyZWYgPSBkZXZtX3JlZ3VsYXRv
cl9nZXQoJnBkZXYtPmRldiwgInZyZWYiKTsKPiAgIAlpZiAoSVNfRVJSKGluZm8tPnZyZWYpKQo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
