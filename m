Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE089D15DAB
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 15:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgzV0L5VdtjUBYXOzxEmRyhUXALN0haS2gcK3mJjmJg=; b=HfDNZhwtqL5xs4
	zzZXMYT5cuUGIlss3GM7iy88lHKInWkZL6aB/pdxws7OqIfLzvt1TipsIoKyWoHv42KhOsx4TajYT
	GBGexajYQuuLP+MKX/8kELWEJa37sBcusXT1ounR4FbYqYl85MIcGMaDqM9w8eEgH/2lMsKzDXKNz
	WJu7NsZ6Hs7BX/HuzM7jdw/XDTBOVHEpC0mLrbnDBMfKMJHsT/ni0o6rOpwjYUSCQyxzyHwx2TyLR
	la+2dL1Jb0VToEppvq9ahc0hKVzRLjBlwxo0GVCx600GuEOPpuG69lyyWH1goom4/DwwqWtPXtheN
	UK0Y35VgoIl+2beUYhVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBu-00000006ksY-0dmc;
	Wed, 03 Dec 2025 15:54:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBQ-00000006k6f-1rOF
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 15:54:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vQpAd-0007dW-Gg; Wed, 03 Dec 2025 16:53:35 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 03 Dec 2025 16:52:32 +0100
Subject: [PATCH v2 10/22] media: rockchip: rga: prepare cmdbuf on streamon
MIME-Version: 1.0
Message-Id: <20251203-spu-rga3-v2-10-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
In-Reply-To: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
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
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_075424_637088_B5A7D139 
X-CRM114-Status: GOOD (  14.49  )
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
eQpvcGVyYXRpb25zIGRvbmUgaW4gZWFjaCBmcmFtZS4KClNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8
c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgfCAxMyArKysrKysrKystLS0tCiBkcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyAgICB8IDEzICsrKysrKysrKysrKy0KIGRy
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oICAgIHwgIDEgKwogMyBmaWxl
cyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMKaW5kZXggNTZhMjU1ODUzOWJmYi4u
OGNkZmUwODlmZDYzNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9yZ2EvcmdhLWh3LmMKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Ev
cmdhLWh3LmMKQEAgLTQwOCw4ICs0MDgsNiBAQCBzdGF0aWMgdm9pZCByZ2FfY21kX3NldChzdHJ1
Y3QgcmdhX2N0eCAqY3R4LAogewogCXN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSA9IGN0eC0+cmdh
OwogCi0JbWVtc2V0KGN0eC0+Y21kYnVmX3ZpcnQsIDAsIFJHQV9DTURCVUZfU0laRSAqIDQpOwot
CiAJcmdhX2NtZF9zZXRfc3JjX2FkZHIoY3R4LCBzcmMtPmRtYV9kZXNjX3BhKTsKIAkvKgogCSAq
IER1ZSB0byBoYXJkd2FyZSBidWcsCkBAIC00MTgsMTEgKzQxNiw5IEBAIHN0YXRpYyB2b2lkIHJn
YV9jbWRfc2V0KHN0cnVjdCByZ2FfY3R4ICpjdHgsCiAJcmdhX2NtZF9zZXRfc3JjMV9hZGRyKGN0
eCwgZHN0LT5kbWFfZGVzY19wYSk7CiAKIAlyZ2FfY21kX3NldF9kc3RfYWRkcihjdHgsIGRzdC0+
ZG1hX2Rlc2NfcGEpOwotCXJnYV9jbWRfc2V0X21vZGUoY3R4KTsKIAogCXJnYV9jbWRfc2V0X3Ny
Y19pbmZvKGN0eCwgJnNyYy0+b2Zmc2V0KTsKIAlyZ2FfY21kX3NldF9kc3RfaW5mbyhjdHgsICZk
c3QtPm9mZnNldCk7Ci0JcmdhX2NtZF9zZXRfdHJhbnNfaW5mbyhjdHgpOwogCiAJcmdhX3dyaXRl
KHJnYSwgUkdBX0NNRF9CQVNFLCBjdHgtPmNtZGJ1Zl9waHkpOwogCkBAIC00MzEsNiArNDI3LDE0
IEBAIHN0YXRpYyB2b2lkIHJnYV9jbWRfc2V0KHN0cnVjdCByZ2FfY3R4ICpjdHgsCiAJCQkJICAg
UEFHRV9TSVpFLCBETUFfQklESVJFQ1RJT05BTCk7CiB9CiAKK3N0YXRpYyB2b2lkIHJnYV9od19z
ZXR1cF9jbWRidWYoc3RydWN0IHJnYV9jdHggKmN0eCkKK3sKKwltZW1zZXQoY3R4LT5jbWRidWZf
dmlydCwgMCwgUkdBX0NNREJVRl9TSVpFICogNCk7CisKKwlyZ2FfY21kX3NldF9tb2RlKGN0eCk7
CisJcmdhX2NtZF9zZXRfdHJhbnNfaW5mbyhjdHgpOworfQorCiBzdGF0aWMgdm9pZCByZ2FfaHdf
c3RhcnQoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhLAogCQkJIHN0cnVjdCByZ2FfdmJfYnVmZmVy
ICpzcmMsICBzdHJ1Y3QgcmdhX3ZiX2J1ZmZlciAqZHN0KQogewpAQCAtNjIyLDYgKzYyNiw3IEBA
IGNvbnN0IHN0cnVjdCByZ2FfaHcgcmdhMl9odyA9IHsKIAkubWF4X2hlaWdodCA9IE1BWF9IRUlH
SFQsCiAJLnN0cmlkZV9hbGlnbm1lbnQgPSA0LAogCisJLnNldHVwX2NtZGJ1ZiA9IHJnYV9od19z
ZXR1cF9jbWRidWYsCiAJLnN0YXJ0ID0gcmdhX2h3X3N0YXJ0LAogCS5oYW5kbGVfaXJxID0gcmdh
X2hhbmRsZV9pcnEsCiAJLmdldF92ZXJzaW9uID0gcmdhX2dldF92ZXJzaW9uLApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwppbmRleCA1OTJjOTc3YTA3Y2YzLi5mMDJh
ZTAyZGUyNmNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3Jn
YS9yZ2EuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwpA
QCAtNTIzLDYgKzUyMywxNyBAQCBzdGF0aWMgaW50IHZpZGlvY19zX3NlbGVjdGlvbihzdHJ1Y3Qg
ZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwKIAlyZXR1cm4gcmV0OwogfQogCitzdGF0aWMgaW50IHZp
ZGlvY19zdHJlYW1vbihzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwKKwkJCSAgIGVudW0g
djRsMl9idWZfdHlwZSB0eXBlKQoreworCXN0cnVjdCByZ2FfY3R4ICpjdHggPSBmaWxlX3RvX3Jn
YV9jdHgoZmlsZSk7CisJY29uc3Qgc3RydWN0IHJnYV9odyAqaHcgPSBjdHgtPnJnYS0+aHc7CisK
Kwlody0+c2V0dXBfY21kYnVmKGN0eCk7CisKKwlyZXR1cm4gdjRsMl9tMm1fc3RyZWFtb24oZmls
ZSwgY3R4LT5maC5tMm1fY3R4LCB0eXBlKTsKK30KKwogc3RhdGljIGNvbnN0IHN0cnVjdCB2NGwy
X2lvY3RsX29wcyByZ2FfaW9jdGxfb3BzID0gewogCS52aWRpb2NfcXVlcnljYXAgPSB2aWRpb2Nf
cXVlcnljYXAsCiAKQEAgLTU0Nyw3ICs1NTgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHY0bDJf
aW9jdGxfb3BzIHJnYV9pb2N0bF9vcHMgPSB7CiAJLnZpZGlvY19zdWJzY3JpYmVfZXZlbnQgPSB2
NGwyX2N0cmxfc3Vic2NyaWJlX2V2ZW50LAogCS52aWRpb2NfdW5zdWJzY3JpYmVfZXZlbnQgPSB2
NGwyX2V2ZW50X3Vuc3Vic2NyaWJlLAogCi0JLnZpZGlvY19zdHJlYW1vbiA9IHY0bDJfbTJtX2lv
Y3RsX3N0cmVhbW9uLAorCS52aWRpb2Nfc3RyZWFtb24gPSB2aWRpb2Nfc3RyZWFtb24sCiAJLnZp
ZGlvY19zdHJlYW1vZmYgPSB2NGwyX20ybV9pb2N0bF9zdHJlYW1vZmYsCiAKIAkudmlkaW9jX2df
c2VsZWN0aW9uID0gdmlkaW9jX2dfc2VsZWN0aW9uLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Jv
Y2tjaGlwL3JnYS9yZ2EuaAppbmRleCAwYWVmMzQ4ZGRkYjk1Li45MzE2MmIxMThkMDY5IDEwMDY0
NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAorKysgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaApAQCAtMTU0LDYgKzE1NCw3
IEBAIHN0cnVjdCByZ2FfaHcgewogCXUzMiBtYXhfd2lkdGgsIG1heF9oZWlnaHQ7CiAJdTggc3Ry
aWRlX2FsaWdubWVudDsKIAorCXZvaWQgKCpzZXR1cF9jbWRidWYpKHN0cnVjdCByZ2FfY3R4ICpj
dHgpOwogCXZvaWQgKCpzdGFydCkoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhLAogCQkgICAgICBz
dHJ1Y3QgcmdhX3ZiX2J1ZmZlciAqc3JjLCBzdHJ1Y3QgcmdhX3ZiX2J1ZmZlciAqZHN0KTsKIAli
b29sICgqaGFuZGxlX2lycSkoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhKTsKCi0tIAoyLjUyLjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
