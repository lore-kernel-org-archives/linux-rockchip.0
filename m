Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B735CCD8C83
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 22:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ODB8XXXMVmqcmjkkRbRA8s5GCoGfj2UjJnZYSgC3Ks=; b=AvmGRIiAChOlzl
	ZqXY30Y1c2/KTUhuGDIZNKYBlHnvOflluPG7GSc94g0v4xycnGGOu6sIzGCruujzJ6X6m7pxcZM15
	8AX9+/TUGT+c+nLIqWSRe3xaf76tSzUHkxBuuxJf6so6Z1yOaPq4S2Jaq4P9VAtGnLy1gd1657l0i
	8dw9ekQh0sIvRi53ZNCexIRmXNHQ/VgesWC87vO8hvbJzIpI3t90Vt99Afqqc+MzDTj6TP3xf0gfn
	REbGz3V4qt6Ki3I/ewA1aqrI7nWJArDJmVWX6AhAd5oYk+jwHKG2MQhzXuKzzmzrQRItM1ICkCN07
	w5Z6z69ODnsyQsV/qvww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVcia-00000001F0m-1era;
	Fri, 05 Jun 2026 22:08:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciT-00000001EdY-0tYz
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 22:08:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wVciE-0000LW-Ht; Sat, 06 Jun 2026 00:08:22 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Sat, 06 Jun 2026 00:07:01 +0200
Subject: [PATCH 15/17] media: rockchip: rga: schedule jobs to multiple
 cores
MIME-Version: 1.0
Message-Id: <20260606-spu-rga3multicore-v1-15-3ec2b15675f7@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260605_150837_331438_064884E5 
X-CRM114-Status: GOOD (  15.08  )
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

U2NoZWR1bGUgam9icyB0byBtdWx0aXBsZSBjb3JlcyB0byB1dGlsaXplIGFsbCBSR0EgY29yZXMu
IFRvIGF2b2lkIHJhY2UKY29uZGl0aW9ucyB3aGVuIHNlbGVjdGluZyB0aGUgbmV4dCBmcmVlIGNv
cmUgYSBkZWRpY2F0ZWQgc3BpbmxvY2sgaXMgYWRkZWQuCgpOb3RlIHRoYXQgdGhpcyBkb2Vzbid0
IGluY3JlYXNlIHRoZSBtYXggZnJhbWUgcmF0ZSBvZiBhIHNpbmdsZQpzdHJlYW0sIGFzIGEgY29u
dGV4dCB3aWxsIHdhaXQgZm9yIHRoZSBqb2IgdG8gZmluaXNoIGJlZm9yZSBzdGFydGluZwp0aGUg
bmV4dCBkZXZpY2VfcnVuIGNhbGwuCgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1
ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmdhL3JnYS5jIHwgMjIgKysrKysrKysrKysrKysrKysrKy0tLQogZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDIwIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JnYS9yZ2EuYwppbmRleCA5Y2ViYjQ2MWIzZmQyLi5mMDBiN2Y5OWYyNTIxIDEwMDY0NAot
LS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYworKysgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwpAQCAtMzgsMTUgKzM4LDMxIEBA
IHN0YXRpYyB2b2lkIGRldmljZV9ydW4odm9pZCAqcHJ2KQogewogCXN0cnVjdCByZ2FfY3R4ICpj
dHggPSBwcnY7CiAJc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5yZ2E7Ci0Jc3RydWN0
IHJnYV9jb3JlICpjb3JlID0gcmdhLT5jb3Jlc1swXTsKKwlzdHJ1Y3QgcmdhX2NvcmUgKmNvcmUg
PSBOVUxMOwogCXN0cnVjdCB2YjJfdjRsMl9idWZmZXIgKnNyYywgKmRzdDsKIAl1bnNpZ25lZCBs
b25nIGZsYWdzOwogCWludCByZXQ7CisJdW5zaWduZWQgaW50IGk7CisKKwlzcGluX2xvY2tfaXJx
c2F2ZSgmcmdhLT5jb3Jlc19sb2NrLCBmbGFncyk7CisJZm9yIChpID0gMDsgaSA8IHJnYS0+bnVt
X2NvcmVzOyBpKyspIHsKKwkJaWYgKCFyZ2EtPmNvcmVzW2ldLT5jdXJyKSB7CisJCQljb3JlID0g
cmdhLT5jb3Jlc1tpXTsKKwkJCWNvcmUtPmN1cnIgPSBjdHg7CisJCQlicmVhazsKKwkJfQorCX0K
KwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZyZ2EtPmNvcmVzX2xvY2ssIGZsYWdzKTsKKworCVdB
Uk5fT05DRSghY29yZSwgIk5vIGZyZWUgY29yZSBhbHRob3VnaCBtYXggcGFyYWxsZWwgam9icyBt
YXRjaGVzIHRoZSBjb3JlIGNvdW50IVxuIik7CisJaWYgKCFjb3JlKQorCQlyZXR1cm47CiAKIAly
ZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGNvcmUtPmRldik7CiAJaWYgKHJldCA8IDAp
IHsKIAkJdjRsMl9tMm1fYnVmX2RvbmVfYW5kX2pvYl9maW5pc2gocmdhLT5tMm1fZGV2LCBjdHgt
PmZoLm0ybV9jdHgsCiAJCQkJCQkgVkIyX0JVRl9TVEFURV9FUlJPUik7CisJCWNvcmUtPmN1cnIg
PSBOVUxMOwogCQlyZXR1cm47CiAJfQogCkBAIC01OCw4ICs3NCw2IEBAIHN0YXRpYyB2b2lkIGRl
dmljZV9ydW4odm9pZCAqcHJ2KQogCX0KIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZyZ2EtPmN0
cmxfbG9jaywgZmxhZ3MpOwogCi0JY29yZS0+Y3VyciA9IGN0eDsKLQogCXNyYyA9IHY0bDJfbTJt
X25leHRfc3JjX2J1ZihjdHgtPmZoLm0ybV9jdHgpOwogCXNyYy0+c2VxdWVuY2UgPSBjdHgtPm9z
ZXF1ZW5jZSsrOwogCkBAIC05NDYsNiArOTYwLDcgQEAgc3RhdGljIGludCByZ2FfYmluZChzdHJ1
Y3QgZGV2aWNlICpkZXYpCiAJCXJldCA9IFBUUl9FUlIocmdhLT5tMm1fZGV2KTsKIAkJZ290byBy
ZWxfdmRldjsKIAl9CisJdjRsMl9tMm1fc2V0X21heF9wYXJhbGxlbF9qb2JzKHJnYS0+bTJtX2Rl
diwgcmdhLT5udW1fY29yZXMpOwogCiAJcmV0ID0gdmlkZW9fcmVnaXN0ZXJfZGV2aWNlKHZmZCwg
VkZMX1RZUEVfVklERU8sIC0xKTsKIAlpZiAocmV0KSB7CkBAIC0xMDIxLDYgKzEwMzYsNyBAQCBz
dGF0aWMgaW50IHJnYV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlyZXR1
cm4gZGV2X2Vycl9wcm9iZShkZXYsIC1FTk9ERVYsICJmYWlsZWQgdG8gZ2V0IG1hdGNoIGRhdGFc
biIpOwogCiAJc3Bpbl9sb2NrX2luaXQoJnJnYS0+Y3RybF9sb2NrKTsKKwlzcGluX2xvY2tfaW5p
dCgmcmdhLT5jb3Jlc19sb2NrKTsKIAltdXRleF9pbml0KCZyZ2EtPm11dGV4KTsKIAogCWRldl9z
ZXRfZHJ2ZGF0YShkZXYsIHJnYSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3JvY2tjaGlwL3JnYS9yZ2EuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5oCmluZGV4IDYyMzc0MzZiOTg0ZWIuLmMwZGZhY2RiNmYyMTIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCisrKyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCkBAIC04NSw2ICs4NSw3IEBAIHN0cnVjdCBy
b2NrY2hpcF9yZ2EgewogCXN0cnVjdCBtdXRleCBtdXRleDsKIAkvKiBjdHJsIHBhcm0gbG9jayAq
LwogCXNwaW5sb2NrX3QgY3RybF9sb2NrOworCXNwaW5sb2NrX3QgY29yZXNfbG9jazsKIAogCWNv
bnN0IHN0cnVjdCByZ2FfaHcgKmh3OwogCgotLSAKMi41NC4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
