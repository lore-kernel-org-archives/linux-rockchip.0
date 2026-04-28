Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 864ECFF885D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 09:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcqUJJGy+Lmgr5C/mRAcTuPV6mZVAx6KeAH4WOhKlaY=; b=fop0CcoDSLiHUt
	D8CjcFrciEXNeW4iPB+mzRFdDDia1yCvwvKZi5wKWJ6qHGfAdklfdQ+8j9NXUeHFyr6aypJ++i6jQ
	MNfnLanWJvGR1xHFIYv0EIeHrodLMuoLDcFhn3TOGMTXHqROE5fWpybCLqr/bR5NhHH610WzLxb5C
	6DHloUU5TG4HwL85CBJUkQJZgKIYvyVy6RvsriOOd7dM7nDUKNw9rZ///xj9eY+/A/h5MglYrllkS
	hCT9kh4wKqBLKBtVYdMK8Cm3RSHdZrj8UZyLmZV9kyU2Bcuy+UriktQGnxu7k8yzkZU5JocAohuOV
	h02mIXV6x4wShpTyCaHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeK9-00000000yA2-3cwL;
	Tue, 28 Apr 2026 09:01:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJm-00000000xaV-1U7P
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 09:01:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wHeJG-0004Lz-9x; Tue, 28 Apr 2026 11:00:50 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 28 Apr 2026 11:00:51 +0200
Subject: [PATCH v5 16/29] media: rockchip: rga: split flip and rotate into
 separate function
MIME-Version: 1.0
Message-Id: <20260428-spu-rga3-v5-16-eb7f5d019d86@pengutronix.de>
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
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_020122_403966_0B3D9628 
X-CRM114-Status: GOOD (  11.76  )
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

U3BsaXQgdGhlIGZsaXAgYW5kIHJvdGF0ZSBjb21tYW5kIGNvbmZpZ3VyYXRpb24gaW50byBhIHNl
cGFyYXRlCmZ1bmN0aW9uIGluIHByZXBhcmF0aW9uIG9mIGZpbGxpbmcgdGhlIGNvbW1hbmQgc3Ry
ZWFtIGF0IHN0cmVhbW9uLgpBcyB0aGUgdXNlcnNwYWNlIGNhbiBjaGFuZ2UgdGhlIGZsaXBwaW5n
IGFuZCByb3RhdGlvbiBjb250cm9scyB3aGlsZQpzdHJlYW1pbmcsIHdlIGhhdmUgdG8gdXBkYXRl
IHRoZW0gd2l0aCBlYWNoIG5ldyBmcmFtZSB0byBwcmV2ZW50IHRoZQp1c2VyIGJlaW5nIHVuYWJs
ZSB0byBjaGFuZ2UgdGhlbSB3aGlsZSBzdHJlYW1pbmcuCgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDD
vHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jIHwgNTcgKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5j
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMKaW5kZXggZGFj
M2NiNmFhMTdkMy4uNmMxOTU2YjA0ZjZiYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLWh3LmMKQEAgLTE1Niw3ICsxNTYsMzggQEAgc3RhdGljIHZvaWQgcmdh
X2NtZF9zZXRfZHN0X2FkZHIoc3RydWN0IHJnYV9jdHggKmN0eCwgZG1hX2FkZHJfdCBkbWFfYWRk
cikKIAlkZXN0W3JlZyA+PiAyXSB8PSAweDcgPDwgODsKIH0KIAotc3RhdGljIHZvaWQgcmdhX2Nt
ZF9zZXRfdHJhbnNfaW5mbyhzdHJ1Y3QgcmdhX2N0eCAqY3R4KQorc3RhdGljIHZvaWQgcmdhX2Nt
ZF9zZXRfZmxpcF9yb3RhdGVfaW5mbyhzdHJ1Y3QgcmdhX2N0eCAqY3R4KQoreworCXUzMiAqZGVz
dCA9IGN0eC0+Y21kYnVmX3ZpcnQ7CisJdW5pb24gcmdhX3NyY19pbmZvIHNyY19pbmZvOworCisJ
c3JjX2luZm8udmFsID0gZGVzdFsoUkdBX1NSQ19JTkZPIC0gUkdBX01PREVfQkFTRV9SRUcpID4+
IDJdOworCisJaWYgKGN0eC0+dmZsaXApCisJCXNyY19pbmZvLmRhdGEubWlyX21vZGUgfD0gUkdB
X1NSQ19NSVJSX01PREVfWDsKKworCWlmIChjdHgtPmhmbGlwKQorCQlzcmNfaW5mby5kYXRhLm1p
cl9tb2RlIHw9IFJHQV9TUkNfTUlSUl9NT0RFX1k7CisKKwlzd2l0Y2ggKGN0eC0+cm90YXRlKSB7
CisJY2FzZSA5MDoKKwkJc3JjX2luZm8uZGF0YS5yb3RfbW9kZSA9IFJHQV9TUkNfUk9UX01PREVf
OTBfREVHUkVFOworCQlicmVhazsKKwljYXNlIDE4MDoKKwkJc3JjX2luZm8uZGF0YS5yb3RfbW9k
ZSA9IFJHQV9TUkNfUk9UX01PREVfMTgwX0RFR1JFRTsKKwkJYnJlYWs7CisJY2FzZSAyNzA6CisJ
CXNyY19pbmZvLmRhdGEucm90X21vZGUgPSBSR0FfU1JDX1JPVF9NT0RFXzI3MF9ERUdSRUU7CisJ
CWJyZWFrOworCWRlZmF1bHQ6CisJCXNyY19pbmZvLmRhdGEucm90X21vZGUgPSBSR0FfU1JDX1JP
VF9NT0RFXzBfREVHUkVFOworCQlicmVhazsKKwl9CisKKwlkZXN0WyhSR0FfU1JDX0lORk8gLSBS
R0FfTU9ERV9CQVNFX1JFRykgPj4gMl0gPSBzcmNfaW5mby52YWw7Cit9CisKK3N0YXRpYyB2b2lk
IHJnYV9jbWRfc2V0X2Zvcm1hdF9zY2FsZV9pbmZvKHN0cnVjdCByZ2FfY3R4ICpjdHgpCiB7CiAJ
c3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5yZ2E7CiAJdTMyICpkZXN0ID0gY3R4LT5j
bWRidWZfdmlydDsKQEAgLTIxOSwyNyArMjUwLDYgQEAgc3RhdGljIHZvaWQgcmdhX2NtZF9zZXRf
dHJhbnNfaW5mbyhzdHJ1Y3QgcmdhX2N0eCAqY3R4KQogCQl9CiAJfQogCi0JaWYgKGN0eC0+dmZs
aXApCi0JCXNyY19pbmZvLmRhdGEubWlyX21vZGUgfD0gUkdBX1NSQ19NSVJSX01PREVfWDsKLQot
CWlmIChjdHgtPmhmbGlwKQotCQlzcmNfaW5mby5kYXRhLm1pcl9tb2RlIHw9IFJHQV9TUkNfTUlS
Ul9NT0RFX1k7Ci0KLQlzd2l0Y2ggKGN0eC0+cm90YXRlKSB7Ci0JY2FzZSA5MDoKLQkJc3JjX2lu
Zm8uZGF0YS5yb3RfbW9kZSA9IFJHQV9TUkNfUk9UX01PREVfOTBfREVHUkVFOwotCQlicmVhazsK
LQljYXNlIDE4MDoKLQkJc3JjX2luZm8uZGF0YS5yb3RfbW9kZSA9IFJHQV9TUkNfUk9UX01PREVf
MTgwX0RFR1JFRTsKLQkJYnJlYWs7Ci0JY2FzZSAyNzA6Ci0JCXNyY19pbmZvLmRhdGEucm90X21v
ZGUgPSBSR0FfU1JDX1JPVF9NT0RFXzI3MF9ERUdSRUU7Ci0JCWJyZWFrOwotCWRlZmF1bHQ6Ci0J
CXNyY19pbmZvLmRhdGEucm90X21vZGUgPSBSR0FfU1JDX1JPVF9NT0RFXzBfREVHUkVFOwotCQli
cmVhazsKLQl9Ci0KIAkvKgogCSAqIENhbGN1bGF0ZSB0aGUgdXAvZG93biBzY2FsaW5nIG1vZGUv
ZmFjdG9yLgogCSAqCkBAIC00MzEsNyArNDQxLDggQEAgc3RhdGljIHZvaWQgcmdhX2NtZF9zZXQo
c3RydWN0IHJnYV9jdHggKmN0eCwKIAogCXJnYV9jbWRfc2V0X3NyY19pbmZvKGN0eCwgJnNyYy0+
b2Zmc2V0KTsKIAlyZ2FfY21kX3NldF9kc3RfaW5mbyhjdHgsICZkc3QtPm9mZnNldCk7Ci0Jcmdh
X2NtZF9zZXRfdHJhbnNfaW5mbyhjdHgpOworCXJnYV9jbWRfc2V0X2Zvcm1hdF9zY2FsZV9pbmZv
KGN0eCk7CisJcmdhX2NtZF9zZXRfZmxpcF9yb3RhdGVfaW5mbyhjdHgpOwogCiAJcmdhX3dyaXRl
KHJnYSwgUkdBX0NNRF9CQVNFLCBjdHgtPmNtZGJ1Zl9waHkpOwogCgotLSAKMi41NC4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
