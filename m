Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25189FF886D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 09:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTqkxl+SqNuoVeagMz+YGXh7YH+gZH6KGacwIhDh+kE=; b=SyW3TNudzLYkAJ
	sLTLvs0/TJvLH5FyGRjs6LzoBZd5hIoh6AX3k7dn4BxjfpEC0XY9RVBBVPq1ve/5WDV6P7GTDFGVM
	fWjAsHg4kkyQR/Futky5CU0gaNAYvfMOQK8o2lM5a3OrLn/CxOnR9BBP/UCbKoTQ5Obj978ooBpSn
	40W3z8WUFOBg7NiGhDUDIojZtajchTaLgKyzTxik2L9GOJIqXq5oGqtdTV2yGKh5tUDjs1Tikrv0J
	T8nsenIYzROeGVavWSIgd9hVFa9wjqueja2pUmboi19QH3am1Ki0ErM+8H9YvDfdk9Z+e/HMcs98h
	kRwmE+9vwd9/ubHiHcEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJz-00000000xuV-2ZIa;
	Tue, 28 Apr 2026 09:01:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJk-00000000xYz-2uCL
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 09:01:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wHeJG-0004Lz-SP; Tue, 28 Apr 2026 11:00:50 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 28 Apr 2026 11:00:52 +0200
Subject: [PATCH v5 17/29] media: rockchip: rga: prepare cmdbuf on streamon
MIME-Version: 1.0
Message-Id: <20260428-spu-rga3-v5-17-eb7f5d019d86@pengutronix.de>
References: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
In-Reply-To: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_020120_734481_67327D2E 
X-CRM114-Status: GOOD (  15.45  )
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

UHJlcGFyZSB0aGUgY29tbWFuZCBidWZmZXIgb24gc3RyZWFtb24gdG8gcmV1c2UgaXQncyBjb250
ZW50cyBpbnN0ZWFkIG9mCmNvbXBsZXRlbHkgd3JpdGluZyBpdCBmb3IgZXZlcnkgZnJhbWUuIER1
ZSB0byB0aGUgc3RyZWFtIHNldHRpbmdzIGJlaW5nCmZpeGVkIGFmdGVyIGEgc3RyZWFtb24gd2Ug
b25seSBuZWVkIHRvIHJlcGxhY2UgdGhlIHNvdXJjZSBhbmQgZGVzdGluYXRpb24KYWRkcmVzc2Vz
IGZvciBlYWNoIGZyYW1lLiBUaGlzIHJlZHVjZXMgdGhlIGFtb3VudCBvZiBDUFUgYW5kIG1lbW9y
eQpvcGVyYXRpb25zIGRvbmUgaW4gZWFjaCBmcmFtZS4KClJldmlld2VkLWJ5OiBOaWNvbGFzIER1
ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+ClNpZ25lZC1vZmYtYnk6IFN2
ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+CgotLS0KCkNoYW5nZXMgaW4g
djU6Ci0gRG9uJ3Qgc2V0IHRoZSBmbGlwcGluZyBhbmQgcm90YXRpb24gdmFsdWVzIGF0IHN0cmVh
bW9uIGFuZCBwcmV2ZW50aW5nCiAgdGhlIHVzZXJzcGFjZSBmcm9tIGNoYWluZ2luZyB0aGVtIGF0
IHJ1bnRpbWUKLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcu
YyB8IDEzICsrKysrKysrKy0tLS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5jICAgIHwgMTMgKysrKysrKysrKysrLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9yZ2EvcmdhLmggICAgfCAgMSArCiAzIGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLWh3LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3Jn
YS9yZ2EtaHcuYwppbmRleCA2YzE5NTZiMDRmNmJhLi4xMTA3OTQ3N2EzMDA4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYworKysgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYwpAQCAtNDI3LDggKzQyNyw2
IEBAIHN0YXRpYyB2b2lkIHJnYV9jbWRfc2V0KHN0cnVjdCByZ2FfY3R4ICpjdHgsCiB7CiAJc3Ry
dWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5yZ2E7CiAKLQltZW1zZXQoY3R4LT5jbWRidWZf
dmlydCwgMCwgUkdBX0NNREJVRl9TSVpFKTsKLQogCXJnYV9jbWRfc2V0X3NyY19hZGRyKGN0eCwg
c3JjLT5kbWFfZGVzY19wYSk7CiAJLyoKIAkgKiBEdWUgdG8gaGFyZHdhcmUgYnVnLApAQCAtNDM3
LDExICs0MzUsOSBAQCBzdGF0aWMgdm9pZCByZ2FfY21kX3NldChzdHJ1Y3QgcmdhX2N0eCAqY3R4
LAogCXJnYV9jbWRfc2V0X3NyYzFfYWRkcihjdHgsIGRzdC0+ZG1hX2Rlc2NfcGEpOwogCiAJcmdh
X2NtZF9zZXRfZHN0X2FkZHIoY3R4LCBkc3QtPmRtYV9kZXNjX3BhKTsKLQlyZ2FfY21kX3NldF9t
b2RlKGN0eCk7CiAKIAlyZ2FfY21kX3NldF9zcmNfaW5mbyhjdHgsICZzcmMtPm9mZnNldCk7CiAJ
cmdhX2NtZF9zZXRfZHN0X2luZm8oY3R4LCAmZHN0LT5vZmZzZXQpOwotCXJnYV9jbWRfc2V0X2Zv
cm1hdF9zY2FsZV9pbmZvKGN0eCk7CiAJcmdhX2NtZF9zZXRfZmxpcF9yb3RhdGVfaW5mbyhjdHgp
OwogCiAJcmdhX3dyaXRlKHJnYSwgUkdBX0NNRF9CQVNFLCBjdHgtPmNtZGJ1Zl9waHkpOwpAQCAt
NDUxLDYgKzQ0NywxNCBAQCBzdGF0aWMgdm9pZCByZ2FfY21kX3NldChzdHJ1Y3QgcmdhX2N0eCAq
Y3R4LAogCQkJCSAgIFBBR0VfU0laRSwgRE1BX0JJRElSRUNUSU9OQUwpOwogfQogCitzdGF0aWMg
dm9pZCByZ2FfaHdfc2V0dXBfY21kYnVmKHN0cnVjdCByZ2FfY3R4ICpjdHgpCit7CisJbWVtc2V0
KGN0eC0+Y21kYnVmX3ZpcnQsIDAsIFJHQV9DTURCVUZfU0laRSk7CisKKwlyZ2FfY21kX3NldF9t
b2RlKGN0eCk7CisJcmdhX2NtZF9zZXRfZm9ybWF0X3NjYWxlX2luZm8oY3R4KTsKK30KKwogc3Rh
dGljIHZvaWQgcmdhX2h3X3N0YXJ0KHN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSwKIAkJCSBzdHJ1
Y3QgcmdhX3ZiX2J1ZmZlciAqc3JjLCAgc3RydWN0IHJnYV92Yl9idWZmZXIgKmRzdCkKIHsKQEAg
LTU5Myw2ICs1OTcsNyBAQCBjb25zdCBzdHJ1Y3QgcmdhX2h3IHJnYTJfaHcgPSB7CiAJLm1heF9o
ZWlnaHQgPSBNQVhfSEVJR0hULAogCS5zdHJpZGVfYWxpZ25tZW50ID0gNCwKIAorCS5zZXR1cF9j
bWRidWYgPSByZ2FfaHdfc2V0dXBfY21kYnVmLAogCS5zdGFydCA9IHJnYV9od19zdGFydCwKIAku
aGFuZGxlX2lycSA9IHJnYV9oYW5kbGVfaXJxLAogCS5nZXRfdmVyc2lvbiA9IHJnYV9nZXRfdmVy
c2lvbiwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggMTZh
NjYzYWVlZjhjOS4uZDExMWIzNDgyNTVlMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9yZ2EvcmdhLmMKQEAgLTU2OCw2ICs1NjgsMTcgQEAgc3RhdGljIGludCB2aWRpb2Nfc19z
ZWxlY3Rpb24oc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsCiAJcmV0dXJuIHJldDsKIH0K
IAorc3RhdGljIGludCB2aWRpb2Nfc3RyZWFtb24oc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnBy
aXYsCisJCQkgICBlbnVtIHY0bDJfYnVmX3R5cGUgdHlwZSkKK3sKKwlzdHJ1Y3QgcmdhX2N0eCAq
Y3R4ID0gZmlsZV90b19yZ2FfY3R4KGZpbGUpOworCWNvbnN0IHN0cnVjdCByZ2FfaHcgKmh3ID0g
Y3R4LT5yZ2EtPmh3OworCisJaHctPnNldHVwX2NtZGJ1ZihjdHgpOworCisJcmV0dXJuIHY0bDJf
bTJtX3N0cmVhbW9uKGZpbGUsIGN0eC0+ZmgubTJtX2N0eCwgdHlwZSk7Cit9CisKIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgdjRsMl9pb2N0bF9vcHMgcmdhX2lvY3RsX29wcyA9IHsKIAkudmlkaW9jX3F1
ZXJ5Y2FwID0gdmlkaW9jX3F1ZXJ5Y2FwLAogCkBAIC01OTIsNyArNjAzLDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCB2NGwyX2lvY3RsX29wcyByZ2FfaW9jdGxfb3BzID0gewogCS52aWRpb2Nfc3Vi
c2NyaWJlX2V2ZW50ID0gdjRsMl9jdHJsX3N1YnNjcmliZV9ldmVudCwKIAkudmlkaW9jX3Vuc3Vi
c2NyaWJlX2V2ZW50ID0gdjRsMl9ldmVudF91bnN1YnNjcmliZSwKIAotCS52aWRpb2Nfc3RyZWFt
b24gPSB2NGwyX20ybV9pb2N0bF9zdHJlYW1vbiwKKwkudmlkaW9jX3N0cmVhbW9uID0gdmlkaW9j
X3N0cmVhbW9uLAogCS52aWRpb2Nfc3RyZWFtb2ZmID0gdjRsMl9tMm1faW9jdGxfc3RyZWFtb2Zm
LAogCiAJLnZpZGlvY19nX3NlbGVjdGlvbiA9IHZpZGlvY19nX3NlbGVjdGlvbiwKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKaW5kZXggMzg1MTgxNDY5MTBhNi4uYzc0
MTIxMzcxMGIzMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
Z2EvcmdhLmgKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgK
QEAgLTE1Miw2ICsxNTIsNyBAQCBzdHJ1Y3QgcmdhX2h3IHsKIAl1MzIgbWF4X3dpZHRoLCBtYXhf
aGVpZ2h0OwogCXU4IHN0cmlkZV9hbGlnbm1lbnQ7CiAKKwl2b2lkICgqc2V0dXBfY21kYnVmKShz
dHJ1Y3QgcmdhX2N0eCAqY3R4KTsKIAl2b2lkICgqc3RhcnQpKHN0cnVjdCByb2NrY2hpcF9yZ2Eg
KnJnYSwKIAkJICAgICAgc3RydWN0IHJnYV92Yl9idWZmZXIgKnNyYywgc3RydWN0IHJnYV92Yl9i
dWZmZXIgKmRzdCk7CiAJYm9vbCAoKmhhbmRsZV9pcnEpKHN0cnVjdCByb2NrY2hpcF9yZ2EgKnJn
YSk7CgotLSAKMi41NC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
