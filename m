Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC3C8CD6E7E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 22:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6ChF5aR7jVcpfmTeceeIFNnE2l0qJamUo8i9ELYSxA=; b=e9n2idw+88X/vw
	wZiGRKMN2E5nsmuLW8spFKhDabGhXUC0f0WXjikHEDG/deZ9YGhdnKOBRdV1aV67ltu9j+HBTtun/
	2n37dOkq3ekxvPuG/naQh5WJBf83sGxfdR8S3qfJ9fut5Iyc7oBoZQY6V5RF2pB6HZJbNhdRn7r8M
	ZoKN//IMvQC6GlS82D8IO3kYtG9Vhmk4y9lt06YKRi+p7reyDGcQNCwCXAQtG0x1jbciuu7bt47Ie
	AzNK9HMNR5cmNmSo2/L1p5oW9WIIuRqS2GXPmXXEEfrWXXmBziFOy2H7uzsivP2ttXDXXbFYmPoeg
	ejaG+vvC7PqEkGj/Iyvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciS-00000001Eeg-295w;
	Fri, 05 Jun 2026 22:08:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciN-00000001EPZ-02En
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 22:08:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wVchz-0000LW-W1; Sat, 06 Jun 2026 00:08:08 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Sat, 06 Jun 2026 00:06:47 +0200
Subject: [PATCH 01/17] media: rockchip: rga: zero cmdbuf in shared code
MIME-Version: 1.0
Message-Id: <20260606-spu-rga3multicore-v1-1-3ec2b15675f7@pengutronix.de>
References: <20260606-spu-rga3multicore-v1-0-3ec2b15675f7@pengutronix.de>
In-Reply-To: <20260606-spu-rga3multicore-v1-0-3ec2b15675f7@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_150831_042483_FD2A8FB4 
X-CRM114-Status: GOOD (  12.63  )
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

WmVybyB0aGUgY29tbWFuZCBidWZmZXIgKGNtZGJ1ZikgaW4gdGhlIHNoYXJlZCBjb2RlIGluc3Rl
YWQgb2YgdGhlCmluZGl2aWR1YWwgUkdBMi9SR0EzIGltcGxlbWVudGF0aW9ucy4gQmVzaWRlcyBj
ZW50cmFsaXppbmcgdGhlIG1lbXNldApvcGVyYXRpb24gdGhpcyBhbHNvIHVzZXMgdGhlIGNtZGJ1
Zl9zaXplIG1lbWJlciBmb3IgdGhlIG1lbXNldCBzaXplLAp3aGljaCBpcyBhbHNvIHVzZWQgYXMg
dGhlIHNpemUgZm9yIHRoZSBhY3R1YWwgYWxsb2NhdGlvbi4KClNpZ25lZC1vZmYtYnk6IFN2ZW4g
UMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgIHwgMiAtLQogZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgICAgIHwgMSArCiBkcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3JvY2tjaGlwL3JnYS9yZ2EuaCAgICAgfCAzICsrKwogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhMy1ody5jIHwgMiAtLQogNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JnYS9yZ2EtaHcuYwppbmRleCBiZTFiYzhkZGJkMDNiLi40ZDdiMGEwMzgyMGExIDEwMDY0NAot
LS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYworKysgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYwpAQCAtNDQzLDggKzQ0
Myw2IEBAIHN0YXRpYyB2b2lkIHJnYV9jbWRfc2V0KHN0cnVjdCByZ2FfY3R4ICpjdHgsCiAKIHN0
YXRpYyB2b2lkIHJnYV9od19zZXR1cF9jbWRidWYoc3RydWN0IHJnYV9jdHggKmN0eCkKIHsKLQlt
ZW1zZXQoY3R4LT5jbWRidWZfdmlydCwgMCwgUkdBX0NNREJVRl9TSVpFKTsKLQogCXJnYV9jbWRf
c2V0X21vZGUoY3R4KTsKIAlyZ2FfY21kX3NldF90cmFuc19pbmZvKGN0eCk7CiB9CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4IGIzY2I2YmY4ZWI4NjMuLmJk
MGFmZDMzYWZmZTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5j
CkBAIC00MSw2ICs0MSw3IEBAIHN0YXRpYyB2b2lkIGRldmljZV9ydW4odm9pZCAqcHJ2KQogCXNw
aW5fbG9ja19pcnFzYXZlKCZyZ2EtPmN0cmxfbG9jaywgZmxhZ3MpOwogCWlmIChjdHgtPmNtZGJ1
Zl9kaXJ0eSkgewogCQljdHgtPmNtZGJ1Zl9kaXJ0eSA9IGZhbHNlOworCQltZW1zZXQoY3R4LT5j
bWRidWZfdmlydCwgMCwgcmdhLT5ody0+Y21kYnVmX3NpemUpOwogCQlyZ2EtPmh3LT5zZXR1cF9j
bWRidWYoY3R4KTsKIAl9CiAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcmdhLT5jdHJsX2xvY2ss
IGZsYWdzKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKaW5kZXgg
YmQ0MzE1MzRkMGQzOS4uMmI0ZjU2OTQzNzVhNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmgKQEAgLTE1Miw2ICsxNTIsOSBAQCBzdHJ1Y3QgcmdhX2h3IHsKIAl1
OCBzdHJpZGVfYWxpZ25tZW50OwogCXU4IGZlYXR1cmVzOwogCisJLyoKKwkgKiBSZXF1aXJlcyB0
aGF0IHRoZSBjbWRidWYgaXMgYWxyZWFkeSB6ZXJvZWQuCisJICovCiAJdm9pZCAoKnNldHVwX2Nt
ZGJ1Zikoc3RydWN0IHJnYV9jdHggKmN0eCk7CiAJdm9pZCAoKnN0YXJ0KShzdHJ1Y3Qgcm9ja2No
aXBfcmdhICpyZ2EsCiAJCSAgICAgIHN0cnVjdCByZ2FfdmJfYnVmZmVyICpzcmMsIHN0cnVjdCBy
Z2FfdmJfYnVmZmVyICpkc3QpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhMy1ody5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
Z2EvcmdhMy1ody5jCmluZGV4IGNhMWMyNjgzMDNkZDQuLjcyNzQxZTFmYWNjZmYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYTMtaHcuYworKysgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EzLWh3LmMKQEAgLTI2MSw4ICsy
NjEsNiBAQCBzdGF0aWMgdm9pZCByZ2EzX2NtZF9zZXRfd3JfZm9ybWF0KHN0cnVjdCByZ2FfY3R4
ICpjdHgpCiAKIHN0YXRpYyB2b2lkIHJnYTNfaHdfc2V0dXBfY21kYnVmKHN0cnVjdCByZ2FfY3R4
ICpjdHgpCiB7Ci0JbWVtc2V0KGN0eC0+Y21kYnVmX3ZpcnQsIDAsIFJHQTNfQ01EQlVGX1NJWkUp
OwotCiAJcmdhM19jbWRfc2V0X3dpbjBfZm9ybWF0KGN0eCk7CiAJcmdhM19jbWRfc2V0X3RyYW5z
X2luZm8oY3R4KTsKIAlyZ2EzX2NtZF9zZXRfd3JfZm9ybWF0KGN0eCk7CgotLSAKMi41NC4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
