Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0994DCD8C83
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 22:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qce62Pjic5j5aVGQJGYsyIlNtWLpA7WYjQAVD6sz9pk=; b=0vA3qZNCnYwYhf
	GxdTaE5zc8G8Lvo2C8J69iX2MGOxgmTzII4p4mY1yjfx5DrfihV6H42el5Y9ozSPojpWRKkn/GXRe
	MmaPvR1MuAa/XvMDjp8c6RekPbEU/pSGqic7kjhBx5EX1EWWGElsQTWl7QvBJq4AgBZLPwJ9Ev8Gp
	4DEywXuaf81QbXqYQNddlh57d7Q76TJGILpy6tiUd1C5gO4Er3OpeRZ0alUpWydeUfnRwnuPF01aG
	y3fpF/8B+qL+US7ZukxJZmhg/NME3MwN22uNB95U0LEs7BcBqGDkq8hITc0swKnvuaulDEjGspV64
	jePCTRZB24bI91iQiaGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVcik-00000001FQi-2nnA;
	Fri, 05 Jun 2026 22:08:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVcic-00000001F4i-43Tj
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 22:08:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wVci5-0000LW-3d; Sat, 06 Jun 2026 00:08:13 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Sat, 06 Jun 2026 00:06:52 +0200
Subject: [PATCH 06/17] media: rockchip: rga: move power handling to
 device_run
MIME-Version: 1.0
Message-Id: <20260606-spu-rga3multicore-v1-6-3ec2b15675f7@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260605_150847_037614_22CE9BD8 
X-CRM114-Status: GOOD (  15.95  )
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

TW92ZSB0aGUgcG93ZXIgaGFuZGxpbmcgdG8gdGhlIGRldmljZV9ydW4gZnVuY3Rpb24gaW4gcHJl
cGFyYXRpb24gZm9yCmVuYWJsaW5nIG11bHRpcGxlIGNvcmVzLiBUaGlzIGFsbG93cyB0byBwb3dl
ciB0aGUgb25seSB0aGUgbmVjZXNzYXJ5IGNvcmVzCmluc3RlYWQgb2YgcG93ZXJpbmcgYWxsIGF2
YWlsYWJsZSBjb3Jlcy4KCkFzIHRoZSBkZWNpc2lvbiBvbiB3aGljaCBjb3JlIHRoZSBnaXZlbiBq
b2IgaXMgZXhlY3V0ZWQgd2lsbCBiZSBkb25lIGluCmRldmljZV9ydW4sIHdlIGNhbiBvbmx5IHBv
d2VyIHRvIGNvcnJlY3QgY29yZSB0aGVyZS4KClRvIGF2b2lkIHVucG93ZXJpbmcgdGhlIGNvcmUg
aW4gYSBzdHJlYW1pbmcgc3RhdGUgc3dpdGNoIHRvIGF1dG9zdXNwZW5kLgpUaGlzIGF2b2lkcyBw
b3dlcmluZyBkb3duIHRoZSBjb3JlIHdoZW4gdGhlIG5leHQgZnJhbWUgaXMgc2NoZWR1bGVkIGlu
CnRoZSBuZXh0IDUwbXMuIFRoZSB0aW1lb3V0IG1hcHMgdG8gYSBmcmFtZXJhdGUgb2YgMjBmcHMs
IHdoaWNoIHNob3VsZCBiZQpwcmV0dHkgdW5jb21tb24gaW4gYSBub3JtYWwgdmlkZW8gc3RyZWFt
LgoKU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVzY2hlbEBwZW5ndXRyb25peC5k
ZT4KLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMgfCAx
MiAtLS0tLS0tLS0tLS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5j
ICAgICB8IDExICsrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyks
IDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9j
a2NoaXAvcmdhL3JnYS1idWYuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS1idWYuYwppbmRleCBjMGVhNjAwMzMzNmJmLi4zZjdjM2M2OGUwY2I4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMKKysrIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWJ1Zi5jCkBAIC0yNDIsMTQgKzI0
Miw2IEBAIHN0YXRpYyBpbnQgcmdhX2J1Zl9wcmVwYXJlX3N0cmVhbWluZyhzdHJ1Y3QgdmIyX3F1
ZXVlICpxKQogc3RhdGljIGludCByZ2FfYnVmX3N0YXJ0X3N0cmVhbWluZyhzdHJ1Y3QgdmIyX3F1
ZXVlICpxLCB1bnNpZ25lZCBpbnQgY291bnQpCiB7CiAJc3RydWN0IHJnYV9jdHggKmN0eCA9IHZi
Ml9nZXRfZHJ2X3ByaXYocSk7Ci0Jc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5yZ2E7
Ci0JaW50IHJldDsKLQotCXJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQocmdhLT5kZXYp
OwotCWlmIChyZXQgPCAwKSB7Ci0JCXJnYV9idWZfcmV0dXJuX2J1ZmZlcnMocSwgVkIyX0JVRl9T
VEFURV9RVUVVRUQpOwotCQlyZXR1cm4gcmV0OwotCX0KIAogCWlmIChWNEwyX1RZUEVfSVNfT1VU
UFVUKHEtPnR5cGUpKQogCQljdHgtPm9zZXF1ZW5jZSA9IDA7CkBAIC0yNjEsMTEgKzI1Myw3IEBA
IHN0YXRpYyBpbnQgcmdhX2J1Zl9zdGFydF9zdHJlYW1pbmcoc3RydWN0IHZiMl9xdWV1ZSAqcSwg
dW5zaWduZWQgaW50IGNvdW50KQogCiBzdGF0aWMgdm9pZCByZ2FfYnVmX3N0b3Bfc3RyZWFtaW5n
KHN0cnVjdCB2YjJfcXVldWUgKnEpCiB7Ci0Jc3RydWN0IHJnYV9jdHggKmN0eCA9IHZiMl9nZXRf
ZHJ2X3ByaXYocSk7Ci0Jc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5yZ2E7Ci0KIAly
Z2FfYnVmX3JldHVybl9idWZmZXJzKHEsIFZCMl9CVUZfU1RBVEVfRVJST1IpOwotCXBtX3J1bnRp
bWVfcHV0KHJnYS0+ZGV2KTsKIH0KIAogY29uc3Qgc3RydWN0IHZiMl9vcHMgcmdhX3FvcHMgPSB7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4IDhjMDM0MjJk
NjY5Y2YuLjBlZmY1NThkN2YxMzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS5jCkBAIC0zNyw2ICszNywxNCBAQCBzdGF0aWMgdm9pZCBkZXZpY2VfcnVuKHZvaWQg
KnBydikKIAlzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EgPSBjdHgtPnJnYTsKIAlzdHJ1Y3QgdmIy
X3Y0bDJfYnVmZmVyICpzcmMsICpkc3Q7CiAJdW5zaWduZWQgbG9uZyBmbGFnczsKKwlpbnQgcmV0
OworCisJcmV0ID0gcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldChyZ2EtPmRldik7CisJaWYgKHJl
dCA8IDApIHsKKwkJdjRsMl9tMm1fYnVmX2RvbmVfYW5kX2pvYl9maW5pc2gocmdhLT5tMm1fZGV2
LCBjdHgtPmZoLm0ybV9jdHgsCisJCQkJCQkgVkIyX0JVRl9TVEFURV9FUlJPUik7CisJCXJldHVy
bjsKKwl9CiAKIAlzcGluX2xvY2tfaXJxc2F2ZSgmcmdhLT5jdHJsX2xvY2ssIGZsYWdzKTsKIAlp
ZiAoY3R4LT5jbWRidWZfZGlydHkpIHsKQEAgLTgxLDYgKzg5LDggQEAgc3RhdGljIGlycXJldHVy
bl90IHJnYV9pc3IoaW50IGlycSwgdm9pZCAqcHJ2KQogCQl2NGwyX20ybV9idWZfZG9uZShzcmMs
IFZCMl9CVUZfU1RBVEVfRE9ORSk7CiAJCXY0bDJfbTJtX2J1Zl9kb25lKGRzdCwgVkIyX0JVRl9T
VEFURV9ET05FKTsKIAkJdjRsMl9tMm1fam9iX2ZpbmlzaChyZ2EtPm0ybV9kZXYsIGN0eC0+Zmgu
bTJtX2N0eCk7CisKKwkJcG1fcnVudGltZV9wdXRfYXV0b3N1c3BlbmQocmdhLT5kZXYpOwogCX0K
IAogCXJldHVybiBJUlFfSEFORExFRDsKQEAgLTc5Nyw2ICs4MDcsNyBAQCBzdGF0aWMgaW50IHJn
YV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmIChyZXQpCiAJCXJldHVy
biBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIHJldCwgIlVuYWJsZSB0byBwYXJzZSBPRiBkYXRh
XG4iKTsKIAorCXBtX3J1bnRpbWVfc2V0X2F1dG9zdXNwZW5kX2RlbGF5KHJnYS0+ZGV2LCA1MCk7
CiAJcG1fcnVudGltZV9lbmFibGUocmdhLT5kZXYpOwogCiAJcmdhLT5yZWdzID0gZGV2bV9wbGF0
Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwoKLS0gCjIuNTQuMAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
