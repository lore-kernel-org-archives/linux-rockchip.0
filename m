Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A416BCCD184
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 08:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37QLL3CIqFZ/bu9T3ZP1LP/N+DFNz7oh6gYUtCf3fSY=; b=gDpV9YBRrEFBht
	b1/Zpu4cvFUAU4JWNAqU/HLU9JZ1RLlpZ/6pSsHkRmvRQ9uNlYajnYXJYqEb5DJ6iq6LqmiETDr+w
	MFKqZFVFx9S/IjOyfQTLAOGv7y4tlthdCFq80kx6PXHW8Ge0Armfj4Yj3ib3mhMLKY5CRiCXAWGwT
	DMVi2L0DIX2WnEwDku1yQlgu7Bk6rjxLpo5OyGyF1UZ8KdppbYjFH/BVKg+nyb6mRLP42M1qsgwoG
	jJtDcVGtR2SG1hT2Ka8qisIWTS5GfARuZLgc1f22MTNo2MIVcW9gia7mBPDWqs4tWIIfDYXZRuqVb
	c9BgCcmtULKb2C1Xvs5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v638S-00000001Z7f-1DwK;
	Tue, 07 Oct 2025 08:33:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6382-00000001YXw-37Xe
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 08:33:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1v637r-0002Hb-Ur; Tue, 07 Oct 2025 10:32:52 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 07 Oct 2025 10:31:58 +0200
Subject: [PATCH 05/16] media: rockchip: rga: use card type to specify rga
 type
MIME-Version: 1.0
Message-Id: <20251007-spu-rga3-v1-5-36ad85570402@pengutronix.de>
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
In-Reply-To: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_013302_859095_1CEB9946 
X-CRM114-Status: GOOD (  13.48  )
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

SW4gcHJlcGFyYXRpb24gb2YgdGhlIFJHQTMgc3VwcG9ydCBhZGQgYSBmaWxlZCB0byB0aGUgcmdh
X2h3IHN0cnVjdAp0byBzcGVjaWZ5IHRoZSBkZXNpcmVkIGNhcmQgdHlwZSB2YWx1ZS4gVGhpcyBh
bGxvd3MgdGhlIHVzZXIgdG8KZGlmZmVyZW50aWF0ZSB0aGUgUkdBMiBhbmQgUkdBMyB2aWRlbyBk
ZXZpY2Ugbm9kZXMuCgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBl
bmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS1ody5jIHwgMSArCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyAg
ICB8IDQgKysrLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggICAg
fCAxICsKIDMgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMg
Yi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYwppbmRleCA4NzFm
ZThjNzg3YzhkOGRiZDU1YzExMWMzZmJhMzk1M2Q0ZGViZjAyLi5hNDRiZWZlNDA1NGQxOWUzYjky
MWMwODI3YWY0ZDM2Y2YwNzdlNjFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3JvY2tjaGlwL3JnYS9yZ2EtaHcuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JnYS9yZ2EtaHcuYwpAQCAtNjE5LDYgKzYxOSw3IEBAIHN0YXRpYyBzdHJ1Y3QgcmdhX2Zt
dCBmb3JtYXRzW10gPSB7CiB9OwogCiBjb25zdCBzdHJ1Y3QgcmdhX2h3IHJnYTJfaHcgPSB7CisJ
LmNhcmRfdHlwZSA9ICJyZ2EyIiwKIAkuZm9ybWF0cyA9IGZvcm1hdHMsCiAJLm51bV9mb3JtYXRz
ID0gQVJSQVlfU0laRShmb3JtYXRzKSwKIAkuY21kYnVmX3NpemUgPSBSR0FfQ01EQlVGX1NJWkUs
CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4IDMyZDI0Y2Rm
MTdlOWRiMzg1NDFkMmIxNjE1YzYzMzdkZWY5MzYyYzYuLmNlNTViNDhlZjlmYThmYmIyYjI2NTQ1
NWNjNTU5YTQyMTY2MDlkNGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9j
a2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5jCkBAIC0yODYsOCArMjg2LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgdjRsMl9maWxl
X29wZXJhdGlvbnMgcmdhX2ZvcHMgPSB7CiBzdGF0aWMgaW50CiB2aWRpb2NfcXVlcnljYXAoc3Ry
dWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2NhcGFiaWxpdHkgKmNhcCkK
IHsKKwlzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EgPSB2aWRlb19kcnZkYXRhKGZpbGUpOworCiAJ
c3Ryc2NweShjYXAtPmRyaXZlciwgUkdBX05BTUUsIHNpemVvZihjYXAtPmRyaXZlcikpOwotCXN0
cnNjcHkoY2FwLT5jYXJkLCAicm9ja2NoaXAtcmdhIiwgc2l6ZW9mKGNhcC0+Y2FyZCkpOworCXN0
cnNjcHkoY2FwLT5jYXJkLCByZ2EtPmh3LT5jYXJkX3R5cGUsIHNpemVvZihjYXAtPmNhcmQpKTsK
IAlzdHJzY3B5KGNhcC0+YnVzX2luZm8sICJwbGF0Zm9ybTpyZ2EiLCBzaXplb2YoY2FwLT5idXNf
aW5mbykpOwogCiAJcmV0dXJuIDA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3JvY2tjaGlwL3JnYS9yZ2EuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5oCmluZGV4IDYxYTAwZjU2Y2U5YjMxOTY4ODgxZTIyYmVmODczNjEyYjYyZTIxZDkuLjI1
NzI2NzczOGQ1ZDE3OWQ5ZWM0ZmNiNWM4NzI5NzgzYzliNzEzZGUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCisrKyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCkBAIC0xNTEsNiArMTUxLDcgQEAgc3RhdGljIGlu
bGluZSB2b2lkIHJnYV9tb2Qoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhLCB1MzIgcmVnLCB1MzIg
dmFsLCB1MzIgbWFzaykKIH07CiAKIHN0cnVjdCByZ2FfaHcgeworCWNvbnN0IGNoYXIgKmNhcmRf
dHlwZTsKIAlzdHJ1Y3QgcmdhX2ZtdCAqZm9ybWF0czsKIAl1MzIgbnVtX2Zvcm1hdHM7CiAJc2l6
ZV90IGNtZGJ1Zl9zaXplOwoKLS0gCjIuNTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
