Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DD16CA5FFC
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 00:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TwAzokdubqQmNRiEXiZbkVMgb0FmLhDurUAvFRIF7xc=; b=gE1Sn4/f/DiMzf
	SXe3mJ0UlTYcqMssNVFSaoY8GV36LzuYxgWZouSR3O0PRf9o6iA+uJbWvEZqlWNxinfdYSDupBIr0
	e5rvob/K4wm+yTzicetWQ6LZdDwuj+IdqVdrAZNwNTOLBA13nO6h2NkL301XUeYwEPM9/EvkwroK4
	l4whsUNttFxn39ieR5P5ENddFvbd0WaLq7wUK7YgMhKqBBBcJtJMblVCkG2SjhRGulN8H3PCLz1Ld
	Q/vUJwkBUJaAsVURHxRQSTaSDxUJyfJLK+ynXWVOiEmqRGD7riTskgdadSGJf3K0ipRg3seP8Pe2b
	zuVgzAewypcaPMrRLSAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWja-0000000FWTs-15Hq;
	Mon, 05 Oct 2026 00:39:14 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjH-0000000FVy9-2Jfg;
	Mon, 05 Oct 2026 00:38:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1791160732;
	bh=piFUhSsVM6dznBeqHDG8mXOwHyyVgOt/aNawLBe88SU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=eaZhnhthgS6/VNZck0EfG7GtyNIfAGW05btR4TsbW9TBaXcX8BDeYEc8BJIjyBCKs
	 bxGCok9u1tYjY/QIKCV5p+1XVpEbN18NejhkG+QgSjrZyYRM/OkOCfCEZLnCEcRIXS
	 I8Rtb/ATqQGFutT8mt5KanrASK0nOAmpJTop4FisGmIi2Q3IghPXvb/Aq3TEyT//nt
	 Nbl2zO3XYvqYBo7oB2OVYRRaSN3Sss1XcXAbzHW629XHbFng8wAFgaHtRck/4ReLPz
	 vmqupu3Y9iN8vehsFIC6lUdO1a0UQv8r4xAOd8ioQdp0/sAEeCMejMY++M98vaY1T8
	 VS38dqAyCKCvg==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8268F17E1274;
	Mon, 05 Oct 2026 02:38:52 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 05 Oct 2026 03:38:11 +0300
Subject: [PATCH v12 10/16] drm/rockchip: dw_hdmi_qp: Avoid spurious HPD IRQ
 thread wakeups
MIME-Version: 1.0
Message-Id: <20261005-dw-hdmi-qp-scramb-v12-10-195157ba0b40@collabora.com>
References: <20261005-dw-hdmi-qp-scramb-v12-0-195157ba0b40@collabora.com>
In-Reply-To: <20261005-dw-hdmi-qp-scramb-v12-0-195157ba0b40@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Algea Cao <algea.cao@rock-chips.com>, Daniel Stone <daniels@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Sashiko <sashiko-bot@kernel.org>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 =?utf-8?q?Robin_R=C3=A4ber?= <robin.raebi@gmail.com>, 
 Igor Paunovic <royalnet026@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_173855_772995_0DB374B5 
X-CRM114-Status: GOOD (  11.68  )
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

VGhlIFJLMzU3NiBhbmQgUkszNTg4IEhQRCBoYXJkaXJxIGhhbmRsZXJzIHJlYWQgc2hhcmVkIHN0
YXR1cyByZWdpc3RlcnMKYW5kIGN1cnJlbnRseSB3YWtlIHRoZSB0aHJlYWRlZCBoYW5kbGVyIHdo
ZW5ldmVyIGFueSBiaXQgaW4gdGhvc2UKcmVnaXN0ZXJzIGlzIHNldC4gIFRoaXMgY2FuIHdha2Ug
dGhlIEhETUkgSVJRIHRocmVhZCBmb3IgdW5yZWxhdGVkCnN0YXR1cyBiaXRzLCBhbmQgb24gUksz
NTg4IGNhbiBhbHNvIHdha2UgdGhlIHRocmVhZCBmb3IgdGhlIG90aGVyIEhETUkKcG9ydC4KCk1h
c2sgdGhlIHN0YXR1cyB2YWx1ZSB3aXRoIHRoZSBTb0Mtc3BlY2lmaWMgSFBEIGludGVycnVwdCBi
aXQgYmVmb3JlCmRlY2lkaW5nIHdoZXRoZXIgdG8gd2FrZSB0aGUgdGhyZWFkZWQgaGFuZGxlci4g
IE9uIFJLMzU4OCwgc2VsZWN0IHRoZQpIRE1JMCBvciBIRE1JMSBIUEQgYml0IGFjY29yZGluZyB0
byB0aGUgaW5zdGFuY2UgcG9ydCBpZC4KCk5vIHN0YWJsZSBiYWNrcG9ydCBpcyBuZWVkZWQuICBU
aGUgaXNzdWUgbWF5IG9ubHkgY2F1c2Ugc3B1cmlvdXMgSVJRCnRocmVhZCB3YWtldXBzIGFuZCBk
b2VzIG5vdCBjYXVzZSBmdW5jdGlvbmFsIGJyZWFrYWdlLgoKUmVwb3J0ZWQtYnk6IFNhc2hpa28g
PHNhc2hpa28tYm90QGtlcm5lbC5vcmc+CkNsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMjYwNzAyMTUxMzQ2LjVBNEVDMUYwMDBFOUBzbXRwLmtlcm5lbC5vcmcvClRlc3RlZC1i
eTogRGllZGVyaWsgZGUgSGFhcyA8ZGllZGVyaWtAY2tub3ctdGVjaC5jb20+ICAjIE5hbm9QQy1U
NiBMVFMsIFJvY2sgNUIKVGVzdGVkLWJ5OiBSb2JpbiBSw6RiZXIgPHJvYmluLnJhZWJpQGdtYWls
LmNvbT4KVGVzdGVkLWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+ICMg
UkszNTg4IE9yYW5nZSBQaSA1IFBsdXMsIGR1YWwgSERNSQpTaWduZWQtb2ZmLWJ5OiBDcmlzdGlh
biBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pX3FwLXJvY2tjaGlwLmMgfCA3ICsrKysrKy0KIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYwppbmRleCA0NTZiZjJmMTk0
ZDcuLmRmZjQwMDIzMzE1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
X2hkbWlfcXAtcm9ja2NoaXAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRt
aV9xcC1yb2NrY2hpcC5jCkBAIC0zNCw2ICszNCw3IEBACiAKICNkZWZpbmUgUkszNTc2X0lPQ19I
RE1JX0hQRF9TVEFUVVMJMHhhNDQwCiAjZGVmaW5lIFJLMzU3Nl9IRE1JX0xFVkVMX0lOVAkJQklU
KDMpCisjZGVmaW5lIFJLMzU3Nl9IRE1JX09IUERfSU5UCQlCSVQoNCkKIAogI2RlZmluZSBSSzM1
NzZfVk8wX0dSRl9TT0NfQ09OMQkJMHgwMDA0CiAjZGVmaW5lIFJLMzU3Nl9IRE1JX0ZSTF9NT0QJ
CUJJVCgwKQpAQCAtNjQsNyArNjUsOSBAQAogI2RlZmluZSBSSzM1ODhfSFBEX0hETUkxX0lPX0VO
X01BU0sJQklUKDEzKQogI2RlZmluZSBSSzM1ODhfR1JGX1NPQ19TVEFUVVMxCQkweDAzODQKICNk
ZWZpbmUgUkszNTg4X0hETUkwX0xFVkVMX0lOVAkJQklUKDE2KQorI2RlZmluZSBSSzM1ODhfSERN
STBfT0hQRF9JTlQJCUJJVCgxNykKICNkZWZpbmUgUkszNTg4X0hETUkxX0xFVkVMX0lOVAkJQklU
KDI0KQorI2RlZmluZSBSSzM1ODhfSERNSTFfT0hQRF9JTlQJCUJJVCgyNSkKICNkZWZpbmUgUksz
NTg4X0dSRl9WTzFfQ09OMwkJMHgwMDBjCiAjZGVmaW5lIFJLMzU4OF9HUkZfVk8xX0NPTjYJCTB4
MDAxOAogI2RlZmluZSBSSzM1ODhfQ09MT1JfREVQVEhfTUFTSwkJR0VOTUFTSyg3LCA0KQpAQCAt
MzQ4LDcgKzM1MSw3IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBkd19oZG1pX3FwX3JrMzU3Nl9oYXJk
aXJxKGludCBpcnEsIHZvaWQgKmRldl9pZCkKIAl1MzIgaW50cl9zdGF0LCB2YWw7CiAKIAlyZWdt
YXBfcmVhZChoZG1pLT5yZWdtYXAsIFJLMzU3Nl9JT0NfSERNSV9IUERfU1RBVFVTLCAmaW50cl9z
dGF0KTsKLQlpZiAoaW50cl9zdGF0KSB7CisJaWYgKGludHJfc3RhdCAmIFJLMzU3Nl9IRE1JX09I
UERfSU5UKSB7CiAJCXZhbCA9IEZJRUxEX1BSRVBfV00xNihSSzM1NzZfSERNSV9IUERfSU5UX01T
SywgMSk7CiAKIAkJcmVnbWFwX3dyaXRlKGhkbWktPnJlZ21hcCwgUkszNTc2X0lPQ19NSVNDX0NP
TjAsIHZhbCk7CkBAIC0zODEsNiArMzg0LDggQEAgc3RhdGljIGlycXJldHVybl90IGR3X2hkbWlf
cXBfcmszNTg4X2hhcmRpcnEoaW50IGlycSwgdm9pZCAqZGV2X2lkKQogCiAJcmVnbWFwX3JlYWQo
aGRtaS0+cmVnbWFwLCBSSzM1ODhfR1JGX1NPQ19TVEFUVVMxLCAmaW50cl9zdGF0KTsKIAorCWlu
dHJfc3RhdCAmPSBoZG1pLT5wb3J0X2lkID8gUkszNTg4X0hETUkxX09IUERfSU5UIDogUkszNTg4
X0hETUkwX09IUERfSU5UOworCiAJaWYgKGludHJfc3RhdCkgewogCQlpZiAoaGRtaS0+cG9ydF9p
ZCkKIAkJCXZhbCA9IEZJRUxEX1BSRVBfV00xNihSSzM1ODhfSERNSTFfSFBEX0lOVF9NU0ssIDEp
OwoKLS0gCjIuNTUuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
