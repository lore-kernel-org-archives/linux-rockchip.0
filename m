Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82235CD4F25
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 15:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guoDjOEqjPkYw5pne9LNDWhPiGU5cJ6rXETS1m9YQQM=; b=buFVCX1lLveLQY
	pIQReCQS6wpF7QbuSjyXyTkBhhPHlKZxKf7LELEZ8/qTgRt96Y9P/RdhNrUjhqIjgGXSj/KDHIcsD
	e1gqyN75LqARXjufd9xLZLhtkuvpOgI6RHkQoCWZsP6eUQi1hWBtw6O24qMvMMxGsn1HYX6gF61YH
	xYLO9Gwwl3YBZTx3ZJXjaZUWgSWLmBBB8oizIE6JllF/j2JSVDg+SRYGyhdUnHmmB7pf/rvnzPo1K
	qQ90e3yWtaXeM9GTVk+FSgrrCGDcnyEVCoHeBT93HdTDl6TIR8gLHAn3FS1sANqUB+CPooc2+K5tt
	J7F/JzApT4DRlTp4oeZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXP-00000008iU5-1ZLC;
	Fri, 15 May 2026 15:33:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXN-00000008iPt-3sBT
	for linux-rockchip@bombadil.infradead.org;
	Fri, 15 May 2026 15:33:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=qDa9+ggLQAvZT4xWgXWuQySwoqdAIiLl3/Bj3sXhlwc=; b=CqYzpNWNJGspLsP8Qhs5I6HfNP
	uIABZmTVDQGhz8uXRrxN8eozFodzy9uxS5gJaXeoWZtUpBgOfK5/3/Q9GQfFV8x52facz2u2AKYMB
	d7l0LA3MlqfJmpR86E5IRqEZeEU+2CuFSlXkBl9e2g8/yVZhnSqAMcY0/01Xyry1sWIWGo6YNPbUy
	kqUvjlVfh6HKs/GYMTD3EuUAvmHwATYPM8ymanspDX0uwlFNl4jHLfSNf9va9LUKeAJOB4N+kr+Qt
	WrBJ/u4TtJ0HfSegT6zEmHQ436xsVcECqluQGIhk1LiWrG5o9m9J/3SBuKJYBKWCVjBRv53rlbC+p
	Q1g8H3ow==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXK-00000005ZqO-1YoF
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 15:33:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wNuXA-0005OF-KR; Fri, 15 May 2026 17:33:04 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Fri, 15 May 2026 17:32:44 +0200
Subject: [PATCH v6 18/28] media: rockchip: rga: use card type to specify
 rga type
MIME-Version: 1.0
Message-Id: <20260515-spu-rga3-v6-18-e547152eb9c9@pengutronix.de>
References: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
In-Reply-To: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, m.tretter@pengutronix.de, 
 p.zabel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_163314_790491_11347603 
X-CRM114-Status: GOOD (  13.32  )
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
ZXZpY2Ugbm9kZXMuCgpSZXZpZXdlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZy
ZXNuZUBjb2xsYWJvcmEuY29tPgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNj
aGVsQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS1ody5jIHwgMSArCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9y
Z2EuYyAgICB8IDQgKysrLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Evcmdh
LmggICAgfCAxICsKIDMgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Evcmdh
LWh3LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYwppbmRl
eCBmMjkwMDgxMmJhNzZmLi40M2ZkMDIzYjc1NzFjIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYwpAQCAtNTc3LDYgKzU3Nyw3IEBAIHN0YXRpYyBzdHJ1
Y3QgcmdhX2ZtdCBmb3JtYXRzW10gPSB7CiB9OwogCiBjb25zdCBzdHJ1Y3QgcmdhX2h3IHJnYTJf
aHcgPSB7CisJLmNhcmRfdHlwZSA9ICJyZ2EyIiwKIAkuZm9ybWF0cyA9IGZvcm1hdHMsCiAJLm51
bV9mb3JtYXRzID0gQVJSQVlfU0laRShmb3JtYXRzKSwKIAkuY21kYnVmX3NpemUgPSBSR0FfQ01E
QlVGX1NJWkUsCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3Jn
YS9yZ2EuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4
IDIyOTU0YmJhZTU1ZmMuLjkxNzc1YjQzZmY2MTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmdhL3JnYS5jCkBAIC0zNTQsOCArMzU0LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgdjRsMl9maWxlX29wZXJhdGlvbnMgcmdhX2ZvcHMgPSB7CiBzdGF0aWMgaW50CiB2aWRpb2Nf
cXVlcnljYXAoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2NhcGFi
aWxpdHkgKmNhcCkKIHsKKwlzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EgPSB2aWRlb19kcnZkYXRh
KGZpbGUpOworCiAJc3Ryc2NweShjYXAtPmRyaXZlciwgUkdBX05BTUUsIHNpemVvZihjYXAtPmRy
aXZlcikpOwotCXN0cnNjcHkoY2FwLT5jYXJkLCAicm9ja2NoaXAtcmdhIiwgc2l6ZW9mKGNhcC0+
Y2FyZCkpOworCXN0cnNjcHkoY2FwLT5jYXJkLCByZ2EtPmh3LT5jYXJkX3R5cGUsIHNpemVvZihj
YXAtPmNhcmQpKTsKIAlzdHJzY3B5KGNhcC0+YnVzX2luZm8sICJwbGF0Zm9ybTpyZ2EiLCBzaXpl
b2YoY2FwLT5idXNfaW5mbykpOwogCiAJcmV0dXJuIDA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmdhL3JnYS5oCmluZGV4IGRmNTI1YzZhZWE4YjYuLmNlZTJlNzVlYTg5ZjEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCisrKyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCkBAIC0xNDksNiArMTQ5
LDcgQEAgc3RhdGljIGlubGluZSB2b2lkIHJnYV9tb2Qoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdh
LCB1MzIgcmVnLCB1MzIgdmFsLCB1MzIgbWFzaykKIH07CiAKIHN0cnVjdCByZ2FfaHcgeworCWNv
bnN0IGNoYXIgKmNhcmRfdHlwZTsKIAlzdHJ1Y3QgcmdhX2ZtdCAqZm9ybWF0czsKIAl1MzIgbnVt
X2Zvcm1hdHM7CiAJc2l6ZV90IGNtZGJ1Zl9zaXplOwoKLS0gCjIuNTQuMAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
