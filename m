Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C372CA5FF5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 00:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARglqr4TDDk1FYjf2e878p6Tsd/6/Hh+PBGQffLR5vk=; b=2uMNMDlUGY4CHJ
	AGAMwWf0EiYonhPHAtV+z8x3LbJi+WFe4ypA2tQTflUQC4sQALlr4FQsCl+2YhT+Ya5MonDUpKr2B
	Xb1Pyl47V1tX2vjbPyVoH2tgLTXThjlI8GtwvuNpLaciDzNlg50ERDssdYJSQ/xKkZtq2cq1UfLEr
	o5q0UGE4eJrNXhzzNYsBT8m5vbuUyr48lrOnDZY7Ss71SJYKJdO8ZzQyXDMW8zrcpjvGrZ7uOvHtb
	qgV1kgylXbdcS6YCcyXw6jrTSix61z3aTx8FhqCjujvsCOqV9FZfbUSe26EfS7No7ow34mWPc71W6
	sUYRPXphw7jx0P8SPdIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjR-0000000FWDb-2toP;
	Mon, 05 Oct 2026 00:39:05 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjH-0000000FVy8-1meL;
	Mon, 05 Oct 2026 00:38:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1791160730;
	bh=OmuC3SuwC8OOCUyGgtbOzOcsvB6iXRpDbe8vWXSZbw0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=bK9dkLlD6vnDr08D2C7MyaM5MFohWgnHlvv7ecS3HPZFtA67vEF/HZSS9JHsmO0v3
	 6QnjDgkr1VlpidRwrhC/qXyUT+WZwBiH2Rm47UXnizZ5S0shBJRZXKOgRe+oPwS3Z0
	 mA3bhm7rN3DVF71EGTOFhmlOBJY4T/s+od2ZcFnm2faBFgoqJzVkmoIFn8R5rh/+p9
	 q0nFC61IySnewrkhRJoVOsxCEMUjZPEl5LaHzUEBlnX/ICEJTxLtOJWPwFhAxhdf6r
	 c6MtZF4eE/PQDyaY+/M8qdW9CamPH/8d5zVWOFmnuI5SwYb1G8Lqu7MY4KXSHB5Skw
	 ruZwMTaBdrrAA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6AEAD17E0FE5;
	Mon, 05 Oct 2026 02:38:50 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 05 Oct 2026 03:38:08 +0300
Subject: [PATCH v12 07/16] drm/rockchip: dw_hdmi_qp: Cancel pending HPD
 work on suspend
MIME-Version: 1.0
Message-Id: <20261005-dw-hdmi-qp-scramb-v12-7-195157ba0b40@collabora.com>
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
 =?utf-8?q?Robin_R=C3=A4ber?= <robin.raebi@gmail.com>, 
 Igor Paunovic <royalnet026@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_173855_618733_04E16C76 
X-CRM114-Status: GOOD (  12.02  )
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

VGhlIEhQRCB0aHJlYWRlZCBoYW5kbGVyIGRlYm91bmNlcyBob3RwbHVnIGV2ZW50cyBieSBkZWxh
eWluZwpoZG1pLT5ocGRfd29yayBmb3IgMTUwIG1zLiAgTm90aGluZyBkaXNjYXJkcyB0aGF0IHdv
cmsgd2hlbiB0aGUgc3lzdGVtCmdvZXMgdG8gc2xlZXA6IGRybV9rbXNfaGVscGVyX3BvbGxfZGlz
YWJsZSgpIG9ubHkgZGlzYWJsZXMgdGhlIEhQRCBJUlEKbGluZSB2aWEgdGhlIGJyaWRnZSAuaHBk
X2Rpc2FibGUoKSBvcCwgYW5kIGRpc2FibGVfaXJxKCkgbWVyZWx5IHdhaXRzCmZvciB0aGUgdGhy
ZWFkZWQgaGFuZGxlciwgd2hpY2ggaGFzIGFscmVhZHkgcmV0dXJuZWQgYWZ0ZXIgYXJtaW5nIHRo
ZQp0aW1lci4KCklmIHRoZSBkZWJvdW5jZSBleHBpcmVzIGR1cmluZyBzdXNwZW5kLCBpdHMgbm9u
LWZyZWV6YWJsZSB3b3JrIG1heSBwcm9iZQp0aGUgY29ubmVjdG9yIGFuZCByZWFkIHRoZSBFRElE
IG92ZXIgRERDLiAgU2luY2UgZ2VucGQgcG93ZXJzIG9mZiB0aGUKSERNSSBjb250cm9sbGVyJ3Mg
cG93ZXIgZG9tYWluIGluIC0+c3VzcGVuZF9ub2lycSgpLCB0aGlzIGFjY2VzcyBtYXkKaGl0IHVu
cG93ZXJlZCBoYXJkd2FyZSBhbmQgaGFuZyB0aGUgc3lzdGVtLgoKQ2FuY2VsIHRoZSB3b3JrIGlu
IHRoZSBzdXNwZW5kIGNhbGxiYWNrLiAgVGhlIERSTSBkZXZpY2UgaXMgcmVnaXN0ZXJlZAphcyBh
IGNvbnN1bWVyIG9mIHRoZSBIRE1JIGRldmljZSwgc28gaXQgYWx3YXlzIHN1c3BlbmRzIGZpcnN0
IGFuZCB0aGUKSFBEIElSUSBpcyBhbHJlYWR5IGRpc2FibGVkIGJ5IHRoYXQgcG9pbnQsIG1lYW5p
bmcgbm90aGluZyBjYW4gcmUtYXJtCnRoZSB3b3JrIGJlaGluZCBvdXIgYmFjay4gIE5vIGNvdW50
ZXJwYXJ0IGlzIG5lZWRlZCBvbiByZXN1bWUsIGFzIHRoZQp3b3JrIGdldHMgc2NoZWR1bGVkIGFn
YWluIG9uIHRoZSBuZXh0IGhvdHBsdWcgaW50ZXJydXB0LgoKRml4ZXM6IDEyOGE5YmY4YWNlMiAo
ImRybS9yb2NrY2hpcDogQWRkIGJhc2ljIFJLMzU4OCBIRE1JIG91dHB1dCBzdXBwb3J0IikKUmVw
b3J0ZWQtYnk6IFNhc2hpa28gPHNhc2hpa28tYm90QGtlcm5lbC5vcmc+CkNsb3NlczogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNzIzMDE1OTA5LjdGNzlBMUYwMDBFOUBzbXRwLmtl
cm5lbC5vcmcvClRlc3RlZC1ieTogUm9iaW4gUsOkYmVyIDxyb2Jpbi5yYWViaUBnbWFpbC5jb20+
ClRlc3RlZC1ieTogSWdvciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21haWwuY29tPiAjIFJLMzU4
OCBPcmFuZ2UgUGkgNSBQbHVzLCBkdWFsIEhETUkKU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lv
Y2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jIHwgOCArKysrKystLQogMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jIGIvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYwppbmRleCA2NDZhNGNiOTY4MzAu
LjQyZjI2MjdlMWEwNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hk
bWlfcXAtcm9ja2NoaXAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9x
cC1yb2NrY2hpcC5jCkBAIC03MjgsOCArNzI4LDEyIEBAIHN0YXRpYyBpbnQgX19tYXliZV91bnVz
ZWQgZHdfaGRtaV9xcF9yb2NrY2hpcF9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKIHsKIAlz
dHJ1Y3Qgcm9ja2NoaXBfaGRtaV9xcCAqaGRtaSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwogCi0J
aWYgKGhkbWkpCi0JCWR3X2hkbWlfcXBfc3VzcGVuZChkZXYsIGhkbWktPmhkbWkpOworCWlmICgh
aGRtaSkKKwkJcmV0dXJuIDA7CisKKwljYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmhkbWktPmhw
ZF93b3JrKTsKKworCWR3X2hkbWlfcXBfc3VzcGVuZChkZXYsIGhkbWktPmhkbWkpOwogCiAJcmV0
dXJuIDA7CiB9CgotLSAKMi41NS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
