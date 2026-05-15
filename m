Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48046CD343F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 15:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wolHfzwb1/5pHPYN3PpFRbu7T0oOGqVwGvCFMSrI8qY=; b=ibBzplhZ9d7F5E
	TKNjJQyTxcBmwRD0HlbssO3pz2bMS6WOUbwVdbZek7sBxoF3byqx28v0RrbpVlwOczim2UIe15Eyv
	uQShlK51oN7VgLRZ7NNJmlDTR8tdJ3/VV1xvH4kE9IofXOTlicTKSasdlyX6OHdGXHRwPPNWvwBOL
	fy2xHj/sQUCcUHholA/52m8qQy3H6e71fLGMbcGDplJxv1nRWlqFxSNiZ0+YustNh6fGFl7qjF74Y
	2c6YX/65ueOKLnKoyllpc/h3gwhWt2iM9X8byRX51Gpd4fWp6zFsIJZ98Pcy8xacUcR0PmfJMGRfu
	eit0IcXojfRgNRXJ2Hdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuX6-00000008hwS-1VCW;
	Fri, 15 May 2026 15:33:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuX1-00000008hsn-3BtO
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 15:32:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wNuWt-0005OF-9T; Fri, 15 May 2026 17:32:47 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Fri, 15 May 2026 17:32:32 +0200
Subject: [PATCH v6 06/28] media: rockchip: rga: fix too small buffer size
MIME-Version: 1.0
Message-Id: <20260515-spu-rga3-v6-6-e547152eb9c9@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260515_083255_799900_D8FFB7E2 
X-CRM114-Status: GOOD (  13.33  )
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

Rml4IHRoZSBjb21tYW5kIGJ1ZmZlciBzaXplIGJlaW5nIG9ubHkgYSBxdWFydGVyIG9mIHRoZSBh
Y3R1YWwgc2l6ZS4KVGhlIFJHQV9DTURCVUZfU0laRSBtYWNybyB3YXMgcG90ZW50aWFsbHkgaW50
ZW5kZWQgdG8gc3BlY2lmeSB0aGUgbGVuZ3RoCm9mIHRoZSBjbWRidWYgdTMyIGFycmF5IHBvaW50
ZXIuIEJ1dCBhcyBpdCdzIHVzZWQgdG8gc3BlY2lmeSB0aGUgc2l6ZSBvZgp0aGUgYWxsb2NhdGlv
biwgd2hpY2ggaXMgY291bnRlZCBpbiBieXRlcy4gVGhlcmVmb3JlIGFkanVzdCB0aGUgbWFjcm8K
c2l6ZSB0byBieXRlcyBhcyBpdCBiZXR0ZXIgbWF0Y2hlcyB0aGUgdmFyaWFibGUgbmFtZSBhbmQg
YWRqdXN0IGl0J3MKdXNlcnMgYWNjb3JkaW5nbHkuCgpBcyB0aGUgY29tbWFuZCBidWZmZXIgaXMg
cmVsYXRpdmVseSBzbWFsbCwgaXQgcHJvYmFibHkgZGlkbid0IGNhdXNlZAphbiBpc3N1ZSBkdWUg
dG8gYmVpbmcgc21hbGxlciB0aGFuIGEgc2luZ2xlIHBhZ2UuCgpGaXhlczogZjdlN2I0OGU2ZDc5
ICgiW21lZGlhXSByb2NrY2hpcC9yZ2E6IHY0bDIgbTJtIHN1cHBvcnQiKQpSZXZpZXdlZC1ieTog
Tmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgpTaWduZWQt
b2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgoKLS0tCgpG
bGFnZ2VkIGJ5IFNhc2hpa286Cmh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDMy
NS1zcHUtcmdhMy12NC0wLWU5MGVjMWM2MTM1NCU0MHBlbmd1dHJvbml4LmRlP3BhcnQ9MTAKLS0t
CiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYyB8IDIgKy0KIGRy
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5oIHwgMiArLQogMiBmaWxl
cyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYwppbmRleCA0M2VkNzQyYTE2NDkyLi5k
MTYxOGJiMjQ3NTAxIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JnYS9yZ2EtaHcuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9y
Z2EtaHcuYwpAQCAtNDE0LDcgKzQxNCw3IEBAIHN0YXRpYyB2b2lkIHJnYV9jbWRfc2V0KHN0cnVj
dCByZ2FfY3R4ICpjdHgsCiB7CiAJc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5yZ2E7
CiAKLQltZW1zZXQocmdhLT5jbWRidWZfdmlydCwgMCwgUkdBX0NNREJVRl9TSVpFICogNCk7CisJ
bWVtc2V0KHJnYS0+Y21kYnVmX3ZpcnQsIDAsIFJHQV9DTURCVUZfU0laRSk7CiAKIAlyZ2FfY21k
X3NldF9zcmNfYWRkcihjdHgsIHNyYy0+ZG1hX2Rlc2NfcGEpOwogCS8qCmRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuaCBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5oCmluZGV4IGNjNmJkN2Y1YjAzMDAuLjJi
ODUzN2E1ZmQwZDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS1ody5oCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS1ody5oCkBAIC02LDcgKzYsNyBAQAogI2lmbmRlZiBfX1JHQV9IV19IX18KICNkZWZpbmUgX19S
R0FfSFdfSF9fCiAKLSNkZWZpbmUgUkdBX0NNREJVRl9TSVpFIDB4MjAKKyNkZWZpbmUgUkdBX0NN
REJVRl9TSVpFIDB4ODAKIAogLyogSGFyZHdhcmUgbGltaXRzICovCiAjZGVmaW5lIE1BWF9XSURU
SCA4MTkyCgotLSAKMi41NC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
