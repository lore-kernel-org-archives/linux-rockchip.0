Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0ED8109C038
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 14:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FrHJZPC/7n1UreEypb6EXVnfv6SOY3oH09eBBtQsV3I=; b=IBiTar8x5xs99h
	pylMw45ugJIa+OmPGrHwr3EUIaRxT9vk56e+mpUoHsvi0S9e/Kww83/Az+szTEGx7bsN0UIXF8nsD
	fQE3msentobHeOeTc6WO5iUoljEA7NfDm6Fkx8IY7AmoSDBrMUlOYInvNsFi7P2vCfrJcc7Wruyhi
	LA0iEMuvjkKNZt/k57nFINsb7uFXhEvwftD8H8ntU/SX75NhOJafgUcaYHBI5m//iG2PAxKI4x+q2
	f9Ge893onIoTtvSyBLxRbl1pNN3ydJ7F1JGg7p74f4C02eeXwEGaw/EzXj8og+i4iw3Bz5c95N40u
	viKZxdc7D9PlnjG2SetA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PZm-00000003fnl-1Bqv;
	Wed, 25 Mar 2026 14:51:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PZa-00000003fQm-382a
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 14:51:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1w5PZW-00050C-Hh; Wed, 25 Mar 2026 15:51:02 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 25 Mar 2026 15:50:55 +0100
Subject: [PATCH v4 24/27] media: rockchip: rga: add feature flags
MIME-Version: 1.0
Message-Id: <20260325-spu-rga3-v4-24-e90ec1c61354@pengutronix.de>
References: <20260325-spu-rga3-v4-0-e90ec1c61354@pengutronix.de>
In-Reply-To: <20260325-spu-rga3-v4-0-e90ec1c61354@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.15.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_075106_841512_8D56E085 
X-CRM114-Status: GOOD (  14.73  )
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

SW4gcHJlcGFyYXRpb24gdG8gdGhlIFJHQTMgYWRkaXRpb24gYWRkIGZlYXR1cmUgZmxhZ3MsIHdo
aWNoIGNhbiBsaW1pdAp0aGUgZXhwb3NlZCBmZWF0dXJlIHNldCBvZiB0aGUgdmlkZW8gZGV2aWNl
LCBsaWtlIHJvdGF0aW5nIG9yIHNlbGVjdGlvbgpzdXBwb3J0LiBUaGlzIGlzIG5lY2Vzc2FyeSBh
cyB0aGUgUkdBMyBkb2Vzbid0IGluaXRpYWxseSBpbXBsZW1lbnQgdGhlCmZ1bGwgZmVhdHVyZSBz
ZXQgY3VycmVudGx5IGV4cG9zZWQgYnkgdGhlIGRyaXZlci4KClJldmlld2VkLWJ5OiBOaWNvbGFz
IER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+ClNpZ25lZC1vZmYtYnk6
IFN2ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgfCAgNCArKysrCiBkcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyAgICB8IDIzICsrKysrKysrKysrKysrKy0t
LS0tLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCAgICB8ICA3
ICsrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2Et
aHcuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCmluZGV4
IGU3NmQxOTk0Yjg2ODQuLmM3YjY4YjI3Zjg5YjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCkBAIC02MDIsNiArNjAyLDEwIEBAIGNvbnN0IHN0cnVj
dCByZ2FfaHcgcmdhMl9odyA9IHsKIAkubWF4X2hlaWdodCA9IE1BWF9IRUlHSFQsCiAJLm1heF9z
Y2FsaW5nX2ZhY3RvciA9IE1BWF9TQ0FMSU5HX0ZBQ1RPUiwKIAkuc3RyaWRlX2FsaWdubWVudCA9
IDQsCisJLmZlYXR1cmVzID0gUkdBX0ZFQVRVUkVfRkxJUAorCQkgIHwgUkdBX0ZFQVRVUkVfUk9U
QVRFCisJCSAgfCBSR0FfRkVBVFVSRV9CR19DT0xPUgorCQkgIHwgUkdBX0ZFQVRVUkVfU0VMRUNU
SU9OLAogCiAJLnNldHVwX2NtZGJ1ZiA9IHJnYV9od19zZXR1cF9jbWRidWYsCiAJLnN0YXJ0ID0g
cmdhX2h3X3N0YXJ0LApkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9yZ2EvcmdhLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwpp
bmRleCAzNjRjMWRhYzNmODFjLi5iMGM4OGFkNjQ3ZTk2IDEwMDY0NAotLS0gYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwpAQCAtMTYyLDE3ICsxNjIsMjEgQEAgc3RhdGljIGludCBy
Z2Ffc2V0dXBfY3RybHMoc3RydWN0IHJnYV9jdHggKmN0eCkKIAogCXY0bDJfY3RybF9oYW5kbGVy
X2luaXQoJmN0eC0+Y3RybF9oYW5kbGVyLCA0KTsKIAotCXY0bDJfY3RybF9uZXdfc3RkKCZjdHgt
PmN0cmxfaGFuZGxlciwgJnJnYV9jdHJsX29wcywKLQkJCSAgVjRMMl9DSURfSEZMSVAsIDAsIDEs
IDEsIDApOworCWlmIChyZ2EtPmh3LT5mZWF0dXJlcyAmIFJHQV9GRUFUVVJFX0ZMSVApIHsKKwkJ
djRsMl9jdHJsX25ld19zdGQoJmN0eC0+Y3RybF9oYW5kbGVyLCAmcmdhX2N0cmxfb3BzLAorCQkJ
CSAgVjRMMl9DSURfSEZMSVAsIDAsIDEsIDEsIDApOwogCi0JdjRsMl9jdHJsX25ld19zdGQoJmN0
eC0+Y3RybF9oYW5kbGVyLCAmcmdhX2N0cmxfb3BzLAotCQkJICBWNEwyX0NJRF9WRkxJUCwgMCwg
MSwgMSwgMCk7CisJCXY0bDJfY3RybF9uZXdfc3RkKCZjdHgtPmN0cmxfaGFuZGxlciwgJnJnYV9j
dHJsX29wcywKKwkJCQkgIFY0TDJfQ0lEX1ZGTElQLCAwLCAxLCAxLCAwKTsKKwl9CiAKLQl2NGwy
X2N0cmxfbmV3X3N0ZCgmY3R4LT5jdHJsX2hhbmRsZXIsICZyZ2FfY3RybF9vcHMsCi0JCQkgIFY0
TDJfQ0lEX1JPVEFURSwgMCwgMjcwLCA5MCwgMCk7CisJaWYgKHJnYS0+aHctPmZlYXR1cmVzICYg
UkdBX0ZFQVRVUkVfUk9UQVRFKQorCQl2NGwyX2N0cmxfbmV3X3N0ZCgmY3R4LT5jdHJsX2hhbmRs
ZXIsICZyZ2FfY3RybF9vcHMsCisJCQkJICBWNEwyX0NJRF9ST1RBVEUsIDAsIDI3MCwgOTAsIDAp
OwogCi0JdjRsMl9jdHJsX25ld19zdGQoJmN0eC0+Y3RybF9oYW5kbGVyLCAmcmdhX2N0cmxfb3Bz
LAotCQkJICBWNEwyX0NJRF9CR19DT0xPUiwgMCwgMHhmZmZmZmZmZiwgMSwgMCk7CisJaWYgKHJn
YS0+aHctPmZlYXR1cmVzICYgUkdBX0ZFQVRVUkVfQkdfQ09MT1IpCisJCXY0bDJfY3RybF9uZXdf
c3RkKCZjdHgtPmN0cmxfaGFuZGxlciwgJnJnYV9jdHJsX29wcywKKwkJCQkgIFY0TDJfQ0lEX0JH
X0NPTE9SLCAwLCAweGZmZmZmZmZmLCAxLCAwKTsKIAogCWlmIChjdHgtPmN0cmxfaGFuZGxlci5l
cnJvcikgewogCQlpbnQgZXJyID0gY3R4LT5jdHJsX2hhbmRsZXIuZXJyb3I7CkBAIC01MzYsNiAr
NTQwLDkgQEAgc3RhdGljIGludCB2aWRpb2Nfc19zZWxlY3Rpb24oc3RydWN0IGZpbGUgKmZpbGUs
IHZvaWQgKnByaXYsCiAJc3RydWN0IHJnYV9mcmFtZSAqZjsKIAlpbnQgcmV0ID0gMDsKIAorCWlm
ICghKHJnYS0+aHctPmZlYXR1cmVzICYgUkdBX0ZFQVRVUkVfU0VMRUNUSU9OKSkKKwkJcmV0dXJu
IC1FSU5WQUw7CisKIAlmID0gcmdhX2dldF9mcmFtZShjdHgsIHMtPnR5cGUpOwogCWlmIChJU19F
UlIoZikpCiAJCXJldHVybiBQVFJfRVJSKGYpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JnYS9yZ2EuaAppbmRleCBkOThlNTdjNmQ3YjU3Li44NDliOTYzOTJiNzgwIDEwMDY0NAot
LS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAorKysgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaApAQCAtNiw2ICs2LDcgQEAKICNp
Zm5kZWYgX19SR0FfSF9fCiAjZGVmaW5lIF9fUkdBX0hfXwogCisjaW5jbHVkZSA8bGludXgvYml0
cy5oPgogI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rl
dmljZS5oPgogI2luY2x1ZGUgPG1lZGlhL3ZpZGVvYnVmMi12NGwyLmg+CkBAIC0xMzMsNiArMTM0
LDExIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCByZ2FfbW9kKHN0cnVjdCByb2NrY2hpcF9yZ2EgKnJn
YSwgdTMyIHJlZywgdTMyIHZhbCwgdTMyIG1hc2spCiAJcmdhX3dyaXRlKHJnYSwgcmVnLCB0ZW1w
KTsKIH07CiAKKyNkZWZpbmUgUkdBX0ZFQVRVUkVfRkxJUAlCSVQoMCkKKyNkZWZpbmUgUkdBX0ZF
QVRVUkVfUk9UQVRFCUJJVCgxKQorI2RlZmluZSBSR0FfRkVBVFVSRV9CR19DT0xPUglCSVQoMikK
KyNkZWZpbmUgUkdBX0ZFQVRVUkVfU0VMRUNUSU9OCUJJVCgzKQorCiBzdHJ1Y3QgcmdhX2h3IHsK
IAljb25zdCBjaGFyICpjYXJkX3R5cGU7CiAJYm9vbCBoYXNfaW50ZXJuYWxfaW9tbXU7CkBAIC0x
NDEsNiArMTQ3LDcgQEAgc3RydWN0IHJnYV9odyB7CiAJdTMyIG1heF93aWR0aCwgbWF4X2hlaWdo
dDsKIAl1OCBtYXhfc2NhbGluZ19mYWN0b3I7CiAJdTggc3RyaWRlX2FsaWdubWVudDsKKwl1OCBm
ZWF0dXJlczsKIAogCXZvaWQgKCpzZXR1cF9jbWRidWYpKHN0cnVjdCByZ2FfY3R4ICpjdHgpOwog
CXZvaWQgKCpzdGFydCkoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhLAoKLS0gCjIuNTMuMAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
