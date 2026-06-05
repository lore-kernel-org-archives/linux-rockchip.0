Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01B4BCD8C89
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 22:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwamAbG6uFGwv7oliU7wbEpOHuIXkYoiIfoYjwIE+H4=; b=Jh2fwuywTkCJqI
	t5+wzoHAoElHLF7XF3QrRxcK6jm/x+Jfv4aEPm5Z9t2QNBfkMO5eCvcbcfAQvVbBtFVnnBLRk/2Xq
	5q1HwIW9TNCrY2vy01qXoWjnrWOgWGm99l4PzcZcq4fiHw0CtJ9npjomWuRArVF4lHdoWhvIs5/zx
	8QoB1EtfZaCEQeqvJuRot+zFEEei6Oflg6DisVsASGpaTg6bDK7OaxmfY95gGyjyZxvjPrxtZAXXR
	yZujpZcFfUGK8/g9pM/NBsInewoXGiU16gtfMmxs/QICycuZEY8VDrsS7w3D7Brmcdux//OHWgj4t
	waFfOqPWKYOVqZ56o3hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciK-00000001ENQ-3Nze;
	Fri, 05 Jun 2026 22:08:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciH-00000001EE4-46d1
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 22:08:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wVciD-0000LW-Ii; Sat, 06 Jun 2026 00:08:21 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Sat, 06 Jun 2026 00:07:00 +0200
Subject: [PATCH 14/17] media: rockchip: rga: put all cores into first core
 iommu domain
MIME-Version: 1.0
Message-Id: <20260606-spu-rga3multicore-v1-14-3ec2b15675f7@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260605_150826_050722_7D96FBCB 
X-CRM114-Status: GOOD (  12.71  )
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

UHV0IGFsbCBjb3JlcyBpbnRvIHRoZSBpb21tdSBkb21haW4gb2YgdGhlIGZpcnN0IGNvcmUgdG8g
YWxsb3cgdGhlbSB0bwpiZSB1c2VkIGJ5IGFueSBjb3JlLiBBbGwgYnVmZmVycyBhY2Nlc3NlZCBi
eSB0aGUgaGFyZHdhcmUgYXJlIGFsbG9jYXRlZApvbiB0aGUgZmlyc3QgY29yZSwgYXMgdGhlIHNj
aGVkdWxpbmcgdG8gYSBzcGVjaWZpYyBjb3JlIGlzIGRvbmUgYWZ0ZXIKdGhlIGFsbG9jYXRpb24u
IFRoZXJlZm9yZSBwdXQgYWxsIGNvcmVzIGludG8gdGhlIHNhbWUgZG9tYWluIHRvIGhhdmUgdGhl
CnNhbWUgaW9tbXUgbWFwcGluZyBvbiBhbGwgY29yZXMuCgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDD
vHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIHwgMTQgKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAxNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9yZ2EvcmdhLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3Jn
YS9yZ2EuYwppbmRleCA2YWRkNmM1MTBjMTI3Li45Y2ViYjQ2MWIzZmQyIDEwMDY0NAotLS0gYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYworKysgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwpAQCAtMTAsNiArMTAsNyBAQAogI2luY2x1
ZGUgPGxpbnV4L2RlbGF5Lmg+CiAjaW5jbHVkZSA8bGludXgvZnMuaD4KICNpbmNsdWRlIDxsaW51
eC9pbnRlcnJ1cHQuaD4KKyNpbmNsdWRlIDxsaW51eC9pb21tdS5oPgogI2luY2x1ZGUgPGxpbnV4
L21vZHVsZS5oPgogI2luY2x1ZGUgPGxpbnV4L29mLmg+CiAjaW5jbHVkZSA8bGludXgvb2ZfcGxh
dGZvcm0uaD4KQEAgLTc1Nyw2ICs3NTgsMTkgQEAgc3RhdGljIGludCByZ2FfY29yZV9iaW5kKHN0
cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLCB2b2lkICpkYXRhKQogCQkg
IHZlcnNpb24ubWFqb3IsIHZlcnNpb24ubWlub3IpOwogCiAJaWYgKHJnYS0+bnVtX2NvcmVzKSB7
CisJCS8qIEF0dGFjaCB0byB0aGUgZmlyc3QgY29yZXMgaW9tbXUgKi8KKwkJc3RydWN0IGlvbW11
X2RvbWFpbiAqZG9tYWluID0gaW9tbXVfZ2V0X2RvbWFpbl9mb3JfZGV2KHJnYS0+Y29yZXNbMF0t
PmRldik7CisKKwkJaWYgKElTX0VSUihkb21haW4pKSB7CisJCQlkZXZfZXJyKGNvcmUtPmRldiwg
IkNvdWxkbid0IGdldCBkb21haW4gb2YgdGhlIGZpcnN0IGNvcmVcbiIpOworCQkJcmV0dXJuIFBU
Ul9FUlIoZG9tYWluKTsKKwkJfQorCQlyZXQgPSBpb21tdV9hdHRhY2hfZGV2aWNlKGRvbWFpbiwg
Y29yZS0+ZGV2KTsKKwkJaWYgKHJldCkgeworCQkJZGV2X2Vycihjb3JlLT5kZXYsICJDb3VsZG4n
dCBhdHRhY2ggdG8gdGhlIGRvbWFpbiBvZiB0aGUgZmlyc3QgY29yZVxuIik7CisJCQlyZXR1cm4g
cmV0OworCQl9CisKIAkJLyogd2UgYXJlIG5vdCB0aGUgZmlyc3QgY29yZSwgZXhwZWN0IHRoYXQg
d2UgaGF2ZSB0aGUgc2FtZSB2ZXJzaW9uICovCiAJCWlmIChyZ2EtPnZlcnNpb24ubWFqb3IgIT0g
dmVyc2lvbi5tYWpvciB8fCByZ2EtPnZlcnNpb24ubWlub3IgIT0gdmVyc2lvbi5taW5vcikKIAkJ
CXY0bDJfd2FybigmcmdhLT52NGwyX2RldiwgIkRldGVjdGVkIG11bHRpLWNvcmUgc2V0dXAgd2l0
aCBkaWZmZXJlbnQgY29yZSB2ZXJzaW9ucyFcbiIpOwoKLS0gCjIuNTQuMAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
