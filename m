Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56CC3D2F03E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 14:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=offVjbO2OSQ59806tY1JGHePViApz4+ZQRvispKjh+Q=; b=SmA4pVNwm4Gskz
	m/AiJsB3OKog4pK+8munubN1HXPxAYlLXzIpV5jVnIb4ZLuzGTjjSzr4dqqWQCi3IN2XedN830rzX
	XxYYJWWmMifsf0GJ9uGAblzrasOb8NOlTZwpcWq1FBnaw5tsc5OvEKO0Lo8tsCerXeSecayQ4DiW4
	6qEWbNBCya192BM0Spsx4F8s/lt3S4n3qklbE8pB7xy4R/myvhwlMWn19DZge3L/nxK86u8C+Z5yp
	dUpCT5EErzuZfxI7/v4ipxBnXZbC5GXNN+8wSXw8cGyi8bxL5PKWufv5A7BQNuDBH+boNi3Jwd269
	EL3Ml627yS2TcszoeWug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkGE-0000000EQxE-3e1y;
	Tue, 27 Jan 2026 14:41:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkFA-0000000EQDY-1bCD
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 14:40:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vkkF0-0007YT-38; Tue, 27 Jan 2026 15:40:26 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 27 Jan 2026 15:39:24 +0100
Subject: [PATCH v3 15/27] media: rockchip: rga: prepare cmdbuf on streamon
MIME-Version: 1.0
Message-Id: <20260127-spu-rga3-v3-15-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
In-Reply-To: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_064044_113834_31148E4D 
X-CRM114-Status: GOOD (  14.85  )
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
ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgfCAxMyArKysrKysrKystLS0tCiBkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyAgICB8IDEzICsrKysrKysrKysr
Ky0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oICAgIHwgIDEgKwog
MyBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMKaW5kZXggMTYzODBiZTU5
OGU0YS4uZGNkNTQwZWQzZmQ1YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLWh3LmMKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9yZ2EvcmdhLWh3LmMKQEAgLTQxNyw4ICs0MTcsNiBAQCBzdGF0aWMgdm9pZCByZ2FfY21kX3Nl
dChzdHJ1Y3QgcmdhX2N0eCAqY3R4LAogewogCXN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSA9IGN0
eC0+cmdhOwogCi0JbWVtc2V0KGN0eC0+Y21kYnVmX3ZpcnQsIDAsIFJHQV9DTURCVUZfU0laRSAq
IDQpOwotCiAJcmdhX2NtZF9zZXRfc3JjX2FkZHIoY3R4LCBzcmMtPmRtYV9kZXNjX3BhKTsKIAkv
KgogCSAqIER1ZSB0byBoYXJkd2FyZSBidWcsCkBAIC00MjcsMTEgKzQyNSw5IEBAIHN0YXRpYyB2
b2lkIHJnYV9jbWRfc2V0KHN0cnVjdCByZ2FfY3R4ICpjdHgsCiAJcmdhX2NtZF9zZXRfc3JjMV9h
ZGRyKGN0eCwgZHN0LT5kbWFfZGVzY19wYSk7CiAKIAlyZ2FfY21kX3NldF9kc3RfYWRkcihjdHgs
IGRzdC0+ZG1hX2Rlc2NfcGEpOwotCXJnYV9jbWRfc2V0X21vZGUoY3R4KTsKIAogCXJnYV9jbWRf
c2V0X3NyY19pbmZvKGN0eCwgJnNyYy0+b2Zmc2V0KTsKIAlyZ2FfY21kX3NldF9kc3RfaW5mbyhj
dHgsICZkc3QtPm9mZnNldCk7Ci0JcmdhX2NtZF9zZXRfdHJhbnNfaW5mbyhjdHgpOwogCiAJcmdh
X3dyaXRlKHJnYSwgUkdBX0NNRF9CQVNFLCBjdHgtPmNtZGJ1Zl9waHkpOwogCkBAIC00NDAsNiAr
NDM2LDE0IEBAIHN0YXRpYyB2b2lkIHJnYV9jbWRfc2V0KHN0cnVjdCByZ2FfY3R4ICpjdHgsCiAJ
CQkJICAgUEFHRV9TSVpFLCBETUFfQklESVJFQ1RJT05BTCk7CiB9CiAKK3N0YXRpYyB2b2lkIHJn
YV9od19zZXR1cF9jbWRidWYoc3RydWN0IHJnYV9jdHggKmN0eCkKK3sKKwltZW1zZXQoY3R4LT5j
bWRidWZfdmlydCwgMCwgUkdBX0NNREJVRl9TSVpFICogNCk7CisKKwlyZ2FfY21kX3NldF9tb2Rl
KGN0eCk7CisJcmdhX2NtZF9zZXRfdHJhbnNfaW5mbyhjdHgpOworfQorCiBzdGF0aWMgdm9pZCBy
Z2FfaHdfc3RhcnQoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhLAogCQkJIHN0cnVjdCByZ2FfdmJf
YnVmZmVyICpzcmMsICBzdHJ1Y3QgcmdhX3ZiX2J1ZmZlciAqZHN0KQogewpAQCAtNTgyLDYgKzU4
Niw3IEBAIGNvbnN0IHN0cnVjdCByZ2FfaHcgcmdhMl9odyA9IHsKIAkubWF4X2hlaWdodCA9IE1B
WF9IRUlHSFQsCiAJLnN0cmlkZV9hbGlnbm1lbnQgPSA0LAogCisJLnNldHVwX2NtZGJ1ZiA9IHJn
YV9od19zZXR1cF9jbWRidWYsCiAJLnN0YXJ0ID0gcmdhX2h3X3N0YXJ0LAogCS5oYW5kbGVfaXJx
ID0gcmdhX2hhbmRsZV9pcnEsCiAJLmdldF92ZXJzaW9uID0gcmdhX2dldF92ZXJzaW9uLApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwppbmRleCAyOTIwZWZlNjUwODJh
Li42OTQ3YzQ3MmE4YjAxIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JnYS9yZ2EuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9y
Z2EuYwpAQCAtNTY4LDYgKzU2OCwxNyBAQCBzdGF0aWMgaW50IHZpZGlvY19zX3NlbGVjdGlvbihz
dHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwKIAlyZXR1cm4gcmV0OwogfQogCitzdGF0aWMg
aW50IHZpZGlvY19zdHJlYW1vbihzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwKKwkJCSAg
IGVudW0gdjRsMl9idWZfdHlwZSB0eXBlKQoreworCXN0cnVjdCByZ2FfY3R4ICpjdHggPSBmaWxl
X3RvX3JnYV9jdHgoZmlsZSk7CisJY29uc3Qgc3RydWN0IHJnYV9odyAqaHcgPSBjdHgtPnJnYS0+
aHc7CisKKwlody0+c2V0dXBfY21kYnVmKGN0eCk7CisKKwlyZXR1cm4gdjRsMl9tMm1fc3RyZWFt
b24oZmlsZSwgY3R4LT5maC5tMm1fY3R4LCB0eXBlKTsKK30KKwogc3RhdGljIGNvbnN0IHN0cnVj
dCB2NGwyX2lvY3RsX29wcyByZ2FfaW9jdGxfb3BzID0gewogCS52aWRpb2NfcXVlcnljYXAgPSB2
aWRpb2NfcXVlcnljYXAsCiAKQEAgLTU5Miw3ICs2MDMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IHY0bDJfaW9jdGxfb3BzIHJnYV9pb2N0bF9vcHMgPSB7CiAJLnZpZGlvY19zdWJzY3JpYmVfZXZl
bnQgPSB2NGwyX2N0cmxfc3Vic2NyaWJlX2V2ZW50LAogCS52aWRpb2NfdW5zdWJzY3JpYmVfZXZl
bnQgPSB2NGwyX2V2ZW50X3Vuc3Vic2NyaWJlLAogCi0JLnZpZGlvY19zdHJlYW1vbiA9IHY0bDJf
bTJtX2lvY3RsX3N0cmVhbW9uLAorCS52aWRpb2Nfc3RyZWFtb24gPSB2aWRpb2Nfc3RyZWFtb24s
CiAJLnZpZGlvY19zdHJlYW1vZmYgPSB2NGwyX20ybV9pb2N0bF9zdHJlYW1vZmYsCiAKIAkudmlk
aW9jX2dfc2VsZWN0aW9uID0gdmlkaW9jX2dfc2VsZWN0aW9uLApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAppbmRleCAzODUxODE0NjkxMGE2Li5jNzQxMjEzNzEwYjMy
IDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAor
KysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaApAQCAtMTUyLDYg
KzE1Miw3IEBAIHN0cnVjdCByZ2FfaHcgewogCXUzMiBtYXhfd2lkdGgsIG1heF9oZWlnaHQ7CiAJ
dTggc3RyaWRlX2FsaWdubWVudDsKIAorCXZvaWQgKCpzZXR1cF9jbWRidWYpKHN0cnVjdCByZ2Ff
Y3R4ICpjdHgpOwogCXZvaWQgKCpzdGFydCkoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhLAogCQkg
ICAgICBzdHJ1Y3QgcmdhX3ZiX2J1ZmZlciAqc3JjLCBzdHJ1Y3QgcmdhX3ZiX2J1ZmZlciAqZHN0
KTsKIAlib29sICgqaGFuZGxlX2lycSkoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhKTsKCi0tIAoy
LjUyLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
