Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0298FD15D88
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 15:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vy7SomyGt0QC4p1teOI+yxmo0Ifq3bmyRqQsiPWTwkA=; b=ZCCd82muEH1wOJ
	PVqm9ZGIUVsM1EGeW7nh6ZCaTVJ8wOm6WON/zEPsBVKvJiICNBF8oBIzXdXIW40WxnMVgAh8AvPrp
	SnShThRLK8v5KfagLwKkQWgjeZ/LKlh62atZ92LMq58W9cc5HoBkNklQQBiRDEkdUCkbEP1wygjjg
	X+VeeIwctVMIv/TBd/NfiKQOMaPJhQ1H2XWT9wspacoawGaBW9E+Lrdoc4JzWJfzoXJoXcn6W4yd3
	PUvIbdKv5GIjz08twnpTybgydHLRX1g3LsR9PTBo8QfMjrqeoTd9Q40I836+dTQvXlnVgO63HzK25
	SV9CaOKq+ZMA38k1w7zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBd-00000006kSR-1T2m;
	Wed, 03 Dec 2025 15:54:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBN-00000006k3x-3NTE
	for linux-rockchip@bombadil.infradead.org;
	Wed, 03 Dec 2025 15:54:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=l1IA/+Qu41WxU9AWiOEOk7GTm3YRmFtC7HajfLWCgts=; b=WA45vs/cnwT/fN9RQ62KEVkkSn
	a0ZQAb0jQqyEolSe6CmFV9jIxS4IY9U7P7s0fyHoHODswo+34N7TDDHkSo1DnNwZ10Jsw3BIv26yf
	IuHr4fgVYOsy9cgbJXGxZUL0+JGgX1KCj9kY0Kv8l3uzJSurYqQqXFIoLqoSofmM5cOvkUYJkCPvD
	JjmYD8Tn59vLXkKRPavHEudxQAOKDbXPSmfxfrSh914RuCufNCf+ETmxhSnTQiJbSLtHEzRwVo+4w
	l4x4t1KKFzw2COIhuIlO37gTBqu5OErThA1ZFjLRH7fUZhyblt2BRKibF9PRFOJg2h8XXsw1KLwON
	NMJfIXhw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQoJl-00000002TKp-35D0
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 14:58:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vQpAe-0007dW-OX; Wed, 03 Dec 2025 16:53:36 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 03 Dec 2025 16:52:41 +0100
Subject: [PATCH v2 19/22] media: rockchip: rga: add feature flags
MIME-Version: 1.0
Message-Id: <20251203-spu-rga3-v2-19-989a67947f71@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251203_145857_816408_AE705951 
X-CRM114-Status: GOOD (  14.64  )
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
ZXQgY3VycmVudGx5IGV4cG9zZWQgYnkgdGhlIGRyaXZlci4KClNpZ25lZC1vZmYtYnk6IFN2ZW4g
UMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgfCAgNCArKysrCiBkcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyAgICB8IDIzICsrKysrKysrKysrKysrKy0tLS0tLS0t
CiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCAgICB8ICA3ICsrKysr
KysKIDMgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCmluZGV4IGE4Njhh
MzRhMTQ1MmUuLjBkMWNmOTExYWYwZDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9j
a2NoaXAvcmdhL3JnYS1ody5jCkBAIC02NTgsNiArNjU4LDEwIEBAIGNvbnN0IHN0cnVjdCByZ2Ff
aHcgcmdhMl9odyA9IHsKIAkubWF4X2hlaWdodCA9IE1BWF9IRUlHSFQsCiAJLm1heF9zY2FsaW5n
X2ZhY3RvciA9IE1BWF9TQ0FMSU5HX0ZBQ1RPUiwKIAkuc3RyaWRlX2FsaWdubWVudCA9IDQsCisJ
LmZlYXR1cmVzID0gUkdBX0ZFQVRVUkVfRkxJUAorCQkgIHwgUkdBX0ZFQVRVUkVfUk9UQVRFCisJ
CSAgfCBSR0FfRkVBVFVSRV9CR19DT0xPUgorCQkgIHwgUkdBX0ZFQVRVUkVfU0VMRUNUSU9OLAog
CiAJLnNldHVwX2NtZGJ1ZiA9IHJnYV9od19zZXR1cF9jbWRidWYsCiAJLnN0YXJ0ID0gcmdhX2h3
X3N0YXJ0LApkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Ev
cmdhLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwppbmRleCBj
OTkxY2M2NGI0YjdmLi4zOTU4ZTcxYjg5ODdkIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Jv
Y2tjaGlwL3JnYS9yZ2EuYwpAQCAtMTYyLDE3ICsxNjIsMjEgQEAgc3RhdGljIGludCByZ2Ffc2V0
dXBfY3RybHMoc3RydWN0IHJnYV9jdHggKmN0eCkKIAogCXY0bDJfY3RybF9oYW5kbGVyX2luaXQo
JmN0eC0+Y3RybF9oYW5kbGVyLCA0KTsKIAotCXY0bDJfY3RybF9uZXdfc3RkKCZjdHgtPmN0cmxf
aGFuZGxlciwgJnJnYV9jdHJsX29wcywKLQkJCSAgVjRMMl9DSURfSEZMSVAsIDAsIDEsIDEsIDAp
OworCWlmIChyZ2EtPmh3LT5mZWF0dXJlcyAmIFJHQV9GRUFUVVJFX0ZMSVApIHsKKwkJdjRsMl9j
dHJsX25ld19zdGQoJmN0eC0+Y3RybF9oYW5kbGVyLCAmcmdhX2N0cmxfb3BzLAorCQkJCSAgVjRM
Ml9DSURfSEZMSVAsIDAsIDEsIDEsIDApOwogCi0JdjRsMl9jdHJsX25ld19zdGQoJmN0eC0+Y3Ry
bF9oYW5kbGVyLCAmcmdhX2N0cmxfb3BzLAotCQkJICBWNEwyX0NJRF9WRkxJUCwgMCwgMSwgMSwg
MCk7CisJCXY0bDJfY3RybF9uZXdfc3RkKCZjdHgtPmN0cmxfaGFuZGxlciwgJnJnYV9jdHJsX29w
cywKKwkJCQkgIFY0TDJfQ0lEX1ZGTElQLCAwLCAxLCAxLCAwKTsKKwl9CiAKLQl2NGwyX2N0cmxf
bmV3X3N0ZCgmY3R4LT5jdHJsX2hhbmRsZXIsICZyZ2FfY3RybF9vcHMsCi0JCQkgIFY0TDJfQ0lE
X1JPVEFURSwgMCwgMjcwLCA5MCwgMCk7CisJaWYgKHJnYS0+aHctPmZlYXR1cmVzICYgUkdBX0ZF
QVRVUkVfUk9UQVRFKQorCQl2NGwyX2N0cmxfbmV3X3N0ZCgmY3R4LT5jdHJsX2hhbmRsZXIsICZy
Z2FfY3RybF9vcHMsCisJCQkJICBWNEwyX0NJRF9ST1RBVEUsIDAsIDI3MCwgOTAsIDApOwogCi0J
djRsMl9jdHJsX25ld19zdGQoJmN0eC0+Y3RybF9oYW5kbGVyLCAmcmdhX2N0cmxfb3BzLAotCQkJ
ICBWNEwyX0NJRF9CR19DT0xPUiwgMCwgMHhmZmZmZmZmZiwgMSwgMCk7CisJaWYgKHJnYS0+aHct
PmZlYXR1cmVzICYgUkdBX0ZFQVRVUkVfQkdfQ09MT1IpCisJCXY0bDJfY3RybF9uZXdfc3RkKCZj
dHgtPmN0cmxfaGFuZGxlciwgJnJnYV9jdHJsX29wcywKKwkJCQkgIFY0TDJfQ0lEX0JHX0NPTE9S
LCAwLCAweGZmZmZmZmZmLCAxLCAwKTsKIAogCWlmIChjdHgtPmN0cmxfaGFuZGxlci5lcnJvcikg
ewogCQlpbnQgZXJyID0gY3R4LT5jdHJsX2hhbmRsZXIuZXJyb3I7CkBAIC00ODksNiArNDkzLDkg
QEAgc3RhdGljIGludCB2aWRpb2Nfc19zZWxlY3Rpb24oc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQg
KnByaXYsCiAJc3RydWN0IHJnYV9mcmFtZSAqZjsKIAlpbnQgcmV0ID0gMDsKIAorCWlmICghKHJn
YS0+aHctPmZlYXR1cmVzICYgUkdBX0ZFQVRVUkVfU0VMRUNUSU9OKSkKKwkJcmV0dXJuIC1FSU5W
QUw7CisKIAlmID0gcmdhX2dldF9mcmFtZShjdHgsIHMtPnR5cGUpOwogCWlmIChJU19FUlIoZikp
CiAJCXJldHVybiBQVFJfRVJSKGYpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9yZ2EvcmdhLmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3Jn
YS9yZ2EuaAppbmRleCA5ODBmNzBmODQyMzE3Li5iOWM3NWI1ZmRhNGRjIDEwMDY0NAotLS0gYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAorKysgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaApAQCAtNiw2ICs2LDcgQEAKICNpZm5kZWYg
X19SR0FfSF9fCiAjZGVmaW5lIF9fUkdBX0hfXwogCisjaW5jbHVkZSA8bGludXgvYml0cy5oPgog
I2luY2x1ZGUgPGxpbnV4L2Nsay5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5o
PgogI2luY2x1ZGUgPG1lZGlhL3ZpZGVvYnVmMi12NGwyLmg+CkBAIC0xMzIsNiArMTMzLDExIEBA
IHN0YXRpYyBpbmxpbmUgdm9pZCByZ2FfbW9kKHN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSwgdTMy
IHJlZywgdTMyIHZhbCwgdTMyIG1hc2spCiAJcmdhX3dyaXRlKHJnYSwgcmVnLCB0ZW1wKTsKIH07
CiAKKyNkZWZpbmUgUkdBX0ZFQVRVUkVfRkxJUAlCSVQoMCkKKyNkZWZpbmUgUkdBX0ZFQVRVUkVf
Uk9UQVRFCUJJVCgxKQorI2RlZmluZSBSR0FfRkVBVFVSRV9CR19DT0xPUglCSVQoMikKKyNkZWZp
bmUgUkdBX0ZFQVRVUkVfU0VMRUNUSU9OCUJJVCgzKQorCiBzdHJ1Y3QgcmdhX2h3IHsKIAljb25z
dCBjaGFyICpjYXJkX3R5cGU7CiAJYm9vbCBoYXNfaW50ZXJuYWxfaW9tbXU7CkBAIC0xNDAsNiAr
MTQ2LDcgQEAgc3RydWN0IHJnYV9odyB7CiAJdTMyIG1heF93aWR0aCwgbWF4X2hlaWdodDsKIAl1
OCBtYXhfc2NhbGluZ19mYWN0b3I7CiAJdTggc3RyaWRlX2FsaWdubWVudDsKKwl1OCBmZWF0dXJl
czsKIAogCXZvaWQgKCpzZXR1cF9jbWRidWYpKHN0cnVjdCByZ2FfY3R4ICpjdHgpOwogCXZvaWQg
KCpzdGFydCkoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhLAoKLS0gCjIuNTIuMAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
