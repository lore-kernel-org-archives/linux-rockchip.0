Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 267F2CD4F47
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 15:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaXgKQQNRR23009PnktgtQIYv43oZ9C11mF54JwhMko=; b=mNR7kPQrgzP5ZI
	5QE8pr0zoPFr5MY1hG2OmW2uCFQ3bIDaIJHJVmkLHXwBIrqWuND/DHo3EwexjedaHBorVVeSFxIBw
	Te+IfWdIjxX/EF+OUwJ2u9Q4bG4+yCeowbyUBknWBzN+Dc8Lg7uhXZvPD+zU6WtMFmwwP3NiRR/1b
	KVR8YCVfvxso/laUnm2EjxzxoqCuP1ziG8lWRasaCwJclut7i7E5W8+fPrLI3Cmbr84SOMmJcqBdZ
	bkfSIWDiHol64WHcvjFsoK8AQpeNuMxw8DIob8VPW08x19reAjVNXRHoMcEu24LKtwE72KCs8llyS
	1E40RFoCleEgKBQKhVbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXe-00000008irM-0s6D;
	Fri, 15 May 2026 15:33:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXT-00000008iZ5-3fKo
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 15:33:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wNuXK-0005OF-7C; Fri, 15 May 2026 17:33:14 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Fri, 15 May 2026 17:32:51 +0200
Subject: [PATCH v6 25/28] media: rockchip: rga: add feature flags
MIME-Version: 1.0
Message-Id: <20260515-spu-rga3-v6-25-e547152eb9c9@pengutronix.de>
References: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
In-Reply-To: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, m.tretter@pengutronix.de, 
 p.zabel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_083323_970416_2F196469 
X-CRM114-Status: GOOD (  14.68  )
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
IFN2ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+CgotLS0KQ2hhbmdlcyBp
biB2NjoKLSBEcm9wcGVkIHNlbGVjdGlvbiBmZWF0dXJlLCBhcyB0aGUgUkdBMyBhbHNvIGhhcyBi
YXNpYyBzdXBwb3J0IGZvciB0aGUKICBzZWxlY2l0b24gQVBJLiBGbGFnZ2VkIGJ5IFNhc2hpa28K
ICBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA0Mjgtc3B1LXJnYTMtdjUtMC1l
YjdmNWQwMTlkODYlNDBwZW5ndXRyb25peC5kZT9wYXJ0PTI4Ci0tLQogZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgfCAgMyArKysKIGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jICAgIHwgMjAgKysrKysrKysrKysrLS0tLS0tLS0KIGRy
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oICAgIHwgIDYgKysrKysrCiAz
IGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYwppbmRleCA2MTZlYTFiYzEx
MzExLi5iZTFiYzhkZGJkMDNiIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Jv
Y2tjaGlwL3JnYS9yZ2EtaHcuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JnYS9yZ2EtaHcuYwpAQCAtNjAyLDYgKzYwMiw5IEBAIGNvbnN0IHN0cnVjdCByZ2FfaHcgcmdh
Ml9odyA9IHsKIAkubWF4X2hlaWdodCA9IE1BWF9IRUlHSFQsCiAJLm1heF9zY2FsaW5nX2ZhY3Rv
ciA9IE1BWF9TQ0FMSU5HX0ZBQ1RPUiwKIAkuc3RyaWRlX2FsaWdubWVudCA9IDQsCisJLmZlYXR1
cmVzID0gUkdBX0ZFQVRVUkVfRkxJUAorCQkgIHwgUkdBX0ZFQVRVUkVfUk9UQVRFCisJCSAgfCBS
R0FfRkVBVFVSRV9CR19DT0xPUiwKIAogCS5zZXR1cF9jbWRidWYgPSByZ2FfaHdfc2V0dXBfY21k
YnVmLAogCS5zdGFydCA9IHJnYV9od19zdGFydCwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9yZ2EvcmdhLmMKaW5kZXggMTg3OGI0ZTI2MzYwYi4uOGQ2MGU5NGRhMzJkOCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKKysrIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTE3NywxNyArMTc3LDIx
IEBAIHN0YXRpYyBpbnQgcmdhX3NldHVwX2N0cmxzKHN0cnVjdCByZ2FfY3R4ICpjdHgpCiAKIAl2
NGwyX2N0cmxfaGFuZGxlcl9pbml0KCZjdHgtPmN0cmxfaGFuZGxlciwgNCk7CiAKLQl2NGwyX2N0
cmxfbmV3X3N0ZCgmY3R4LT5jdHJsX2hhbmRsZXIsICZyZ2FfY3RybF9vcHMsCi0JCQkgIFY0TDJf
Q0lEX0hGTElQLCAwLCAxLCAxLCAwKTsKKwlpZiAocmdhLT5ody0+ZmVhdHVyZXMgJiBSR0FfRkVB
VFVSRV9GTElQKSB7CisJCXY0bDJfY3RybF9uZXdfc3RkKCZjdHgtPmN0cmxfaGFuZGxlciwgJnJn
YV9jdHJsX29wcywKKwkJCQkgIFY0TDJfQ0lEX0hGTElQLCAwLCAxLCAxLCAwKTsKIAotCXY0bDJf
Y3RybF9uZXdfc3RkKCZjdHgtPmN0cmxfaGFuZGxlciwgJnJnYV9jdHJsX29wcywKLQkJCSAgVjRM
Ml9DSURfVkZMSVAsIDAsIDEsIDEsIDApOworCQl2NGwyX2N0cmxfbmV3X3N0ZCgmY3R4LT5jdHJs
X2hhbmRsZXIsICZyZ2FfY3RybF9vcHMsCisJCQkJICBWNEwyX0NJRF9WRkxJUCwgMCwgMSwgMSwg
MCk7CisJfQogCi0JdjRsMl9jdHJsX25ld19zdGQoJmN0eC0+Y3RybF9oYW5kbGVyLCAmcmdhX2N0
cmxfb3BzLAotCQkJICBWNEwyX0NJRF9ST1RBVEUsIDAsIDI3MCwgOTAsIDApOworCWlmIChyZ2Et
Pmh3LT5mZWF0dXJlcyAmIFJHQV9GRUFUVVJFX1JPVEFURSkKKwkJdjRsMl9jdHJsX25ld19zdGQo
JmN0eC0+Y3RybF9oYW5kbGVyLCAmcmdhX2N0cmxfb3BzLAorCQkJCSAgVjRMMl9DSURfUk9UQVRF
LCAwLCAyNzAsIDkwLCAwKTsKIAotCXY0bDJfY3RybF9uZXdfc3RkKCZjdHgtPmN0cmxfaGFuZGxl
ciwgJnJnYV9jdHJsX29wcywKLQkJCSAgVjRMMl9DSURfQkdfQ09MT1IsIDAsIDB4ZmZmZmZmZmYs
IDEsIDApOworCWlmIChyZ2EtPmh3LT5mZWF0dXJlcyAmIFJHQV9GRUFUVVJFX0JHX0NPTE9SKQor
CQl2NGwyX2N0cmxfbmV3X3N0ZCgmY3R4LT5jdHJsX2hhbmRsZXIsICZyZ2FfY3RybF9vcHMsCisJ
CQkJICBWNEwyX0NJRF9CR19DT0xPUiwgMCwgMHhmZmZmZmZmZiwgMSwgMCk7CiAKIAlpZiAoY3R4
LT5jdHJsX2hhbmRsZXIuZXJyb3IpIHsKIAkJaW50IGVyciA9IGN0eC0+Y3RybF9oYW5kbGVyLmVy
cm9yOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Evcmdh
LmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAppbmRleCBlZmZl
MzY0YTg2YjAyLi5mZWFmNDBhY2Q0ZWU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAorKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JnYS9yZ2EuaApAQCAtNiw2ICs2LDcgQEAKICNpZm5kZWYgX19SR0FfSF9fCiAjZGVmaW5l
IF9fUkdBX0hfXwogCisjaW5jbHVkZSA8bGludXgvYml0cy5oPgogI2luY2x1ZGUgPGxpbnV4L2Ns
ay5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgogI2luY2x1ZGUgPG1lZGlh
L3ZpZGVvYnVmMi12NGwyLmg+CkBAIC0xMzcsNiArMTM4LDEwIEBAIHN0YXRpYyBpbmxpbmUgdm9p
ZCByZ2FfbW9kKHN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSwgdTMyIHJlZywgdTMyIHZhbCwgdTMy
IG1hc2spCiAJcmdhX3dyaXRlKHJnYSwgcmVnLCB0ZW1wKTsKIH07CiAKKyNkZWZpbmUgUkdBX0ZF
QVRVUkVfRkxJUAlCSVQoMCkKKyNkZWZpbmUgUkdBX0ZFQVRVUkVfUk9UQVRFCUJJVCgxKQorI2Rl
ZmluZSBSR0FfRkVBVFVSRV9CR19DT0xPUglCSVQoMikKKwogc3RydWN0IHJnYV9odyB7CiAJY29u
c3QgY2hhciAqY2FyZF90eXBlOwogCWJvb2wgaGFzX2ludGVybmFsX2lvbW11OwpAQCAtMTQ1LDYg
KzE1MCw3IEBAIHN0cnVjdCByZ2FfaHcgewogCXUzMiBtYXhfd2lkdGgsIG1heF9oZWlnaHQ7CiAJ
dTggbWF4X3NjYWxpbmdfZmFjdG9yOwogCXU4IHN0cmlkZV9hbGlnbm1lbnQ7CisJdTggZmVhdHVy
ZXM7CiAKIAl2b2lkICgqc2V0dXBfY21kYnVmKShzdHJ1Y3QgcmdhX2N0eCAqY3R4KTsKIAl2b2lk
ICgqc3RhcnQpKHN0cnVjdCByb2NrY2hpcF9yZ2EgKnJnYSwKCi0tIAoyLjU0LjAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
