Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5208C982C4
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 15:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TeMpfd4DzF02RYe5zursQUiArC+Z9Ntv8R9EbfsWFvI=; b=Y5N4c8b+4+CMUG
	E5+VWj1T0X+e1uXwhFpMEYt4kCPahTbM8uuh335naqMe5k9yNIRu90mDj9Jgk7twtoYuQwgxR/uAO
	rNiwKAko7XDqhO82uhzqA46I3DgSKyMuVDmFkOGIHp+fzitCliVmbxhheWVzdQxaf0l7ktesLEMTE
	VAgCYK+knanc8JZMcyjld1KM0QQN1dXFT1mEXImeuTGdJLeCJdlLKkGmaYZOhv8CCKWQ/DHwuxXND
	nQihLf8Tgt6+Xf2dS+IktShMChAL2etSMZNoKZMiArYGkm+G9YNZHHxRb8RDcnLOhJK63WpbQPga8
	qrvAjEj+dmSDoRcsPZqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rH0-00000009VzK-0FxS;
	Wed, 16 Sep 2026 15:10:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rGj-00000009Vq8-3I1s;
	Wed, 16 Sep 2026 15:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=IsBPvKUje3f+2ExPKKzn4AsC/tBgf5IioHXNc8hORXo=; b=f5Hjv13Mx+vjOj5JeB3EquoUVv
	YrDZsJZ8JVhQZENkFRRi8bqI/7aWbXqsyQGdWY9b4nh1Pb3giM7s1S5gEiZIU4OXCK0lUhudpZwKc
	D+auCLj7Fl6L2GKab1i6+Jenzh9jN9MfYRs4StoEOHrNTtHyBD20jbmqQ07pCeCnR7GSj403HyIZ4
	AKmYC4aG8whYdJohHwVS6WAT3mhKtp0d7CQnSRfVqgzVvrXfMu6FT8S8h7T29dcs3NEkW2N1j5ECp
	BmLGHwfLznVUSx5uYlkXmkTE9+XOQqiZ2jZ1VUSQO0PTdSya1C9TroyNnfagufGZ1XtIDQKDGbvO9
	ZmgSm3UQ==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6rGg-000000081Ig-3Bhs;
	Wed, 16 Sep 2026 15:09:52 +0000
X-PTX-Original-Recipient: ezequiel@vanguardiasur.com.ar
X-PTX-Original-Recipient: jacob-chen@iotwrt.com
X-PTX-Original-Recipient: mchehab@kernel.org
X-PTX-Original-Recipient: detlev.casanova@collabora.com
X-PTX-Original-Recipient: heiko@sntech.de
X-PTX-Original-Recipient: linux-kernel@vger.kernel.org
X-PTX-Original-Recipient: linux-media@vger.kernel.org
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-PTX-Original-Recipient: lgs201920130244@gmail.com
X-PTX-Original-Recipient: p.zabel@pengutronix.de
X-PTX-Original-Recipient: kernel@pengutronix.de
X-PTX-Original-Recipient: s.pueschel@pengutronix.de
X-PTX-Original-Recipient: m.tretter@pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 174532020F4;
	Wed, 16 Sep 2026 17:09:47 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1x6rGc-001Fsx-37;
	Wed, 16 Sep 2026 17:09:47 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 16 Sep 2026 17:09:42 +0200
Subject: [PATCH v2 01/17] media: rockchip: rga: zero cmdbuf in shared code
MIME-Version: 1.0
Message-Id: <20260916-spu-rga3multicore-v2-1-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
In-Reply-To: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 Guangshuo Li <lgs201920130244@gmail.com>, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_160950_990015_EF0CE3B3 
X-CRM114-Status: GOOD (  13.54  )
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

WmVybyB0aGUgY29tbWFuZCBidWZmZXIgKGNtZGJ1ZikgaW4gdGhlIHNoYXJlZCBjb2RlIGluc3Rl
YWQgb2YgdGhlCmluZGl2aWR1YWwgUkdBMi9SR0EzIGltcGxlbWVudGF0aW9ucy4gQmVzaWRlcyBj
ZW50cmFsaXppbmcgdGhlIG1lbXNldApvcGVyYXRpb24gdGhpcyBhbHNvIHVzZXMgdGhlIGNtZGJ1
Zl9zaXplIG1lbWJlciBmb3IgdGhlIG1lbXNldCBzaXplLAp3aGljaCBpcyBhbHNvIHVzZWQgYXMg
dGhlIHNpemUgZm9yIHRoZSBhY3R1YWwgYWxsb2NhdGlvbi4KClNpZ25lZC1vZmYtYnk6IFN2ZW4g
UMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgIHwgMiAtLQogZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgICAgIHwgMSArCiBkcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3JvY2tjaGlwL3JnYS9yZ2EuaCAgICAgfCAzICsrKwogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhMy1ody5jIHwgMiAtLQogNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9yZ2EvcmdhLWh3LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JnYS9yZ2EtaHcuYwppbmRleCBiZTFiYzhkZGJkMDNiLi40ZDdiMGEwMzgyMGExIDEwMDY0NAot
LS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYworKysgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYwpAQCAtNDQzLDggKzQ0
Myw2IEBAIHN0YXRpYyB2b2lkIHJnYV9jbWRfc2V0KHN0cnVjdCByZ2FfY3R4ICpjdHgsCiAKIHN0
YXRpYyB2b2lkIHJnYV9od19zZXR1cF9jbWRidWYoc3RydWN0IHJnYV9jdHggKmN0eCkKIHsKLQlt
ZW1zZXQoY3R4LT5jbWRidWZfdmlydCwgMCwgUkdBX0NNREJVRl9TSVpFKTsKLQogCXJnYV9jbWRf
c2V0X21vZGUoY3R4KTsKIAlyZ2FfY21kX3NldF90cmFuc19pbmZvKGN0eCk7CiB9CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4IGIzY2I2YmY4ZWI4NjMuLmJk
MGFmZDMzYWZmZTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5j
CkBAIC00MSw2ICs0MSw3IEBAIHN0YXRpYyB2b2lkIGRldmljZV9ydW4odm9pZCAqcHJ2KQogCXNw
aW5fbG9ja19pcnFzYXZlKCZyZ2EtPmN0cmxfbG9jaywgZmxhZ3MpOwogCWlmIChjdHgtPmNtZGJ1
Zl9kaXJ0eSkgewogCQljdHgtPmNtZGJ1Zl9kaXJ0eSA9IGZhbHNlOworCQltZW1zZXQoY3R4LT5j
bWRidWZfdmlydCwgMCwgcmdhLT5ody0+Y21kYnVmX3NpemUpOwogCQlyZ2EtPmh3LT5zZXR1cF9j
bWRidWYoY3R4KTsKIAl9CiAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcmdhLT5jdHJsX2xvY2ss
IGZsYWdzKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKaW5kZXgg
YmQ0MzE1MzRkMGQzOS4uMmI0ZjU2OTQzNzVhNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmgKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmgKQEAgLTE1Miw2ICsxNTIsOSBAQCBzdHJ1Y3QgcmdhX2h3IHsKIAl1
OCBzdHJpZGVfYWxpZ25tZW50OwogCXU4IGZlYXR1cmVzOwogCisJLyoKKwkgKiBSZXF1aXJlcyB0
aGF0IHRoZSBjbWRidWYgaXMgYWxyZWFkeSB6ZXJvZWQuCisJICovCiAJdm9pZCAoKnNldHVwX2Nt
ZGJ1Zikoc3RydWN0IHJnYV9jdHggKmN0eCk7CiAJdm9pZCAoKnN0YXJ0KShzdHJ1Y3Qgcm9ja2No
aXBfcmdhICpyZ2EsCiAJCSAgICAgIHN0cnVjdCByZ2FfdmJfYnVmZmVyICpzcmMsIHN0cnVjdCBy
Z2FfdmJfYnVmZmVyICpkc3QpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhMy1ody5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
Z2EvcmdhMy1ody5jCmluZGV4IGM0YTcxMzA2Mjc4YmEuLjQ2YmE2ZDI3MGYyMzIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYTMtaHcuYworKysgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EzLWh3LmMKQEAgLTI2MSw4ICsy
NjEsNiBAQCBzdGF0aWMgdm9pZCByZ2EzX2NtZF9zZXRfd3JfZm9ybWF0KHN0cnVjdCByZ2FfY3R4
ICpjdHgpCiAKIHN0YXRpYyB2b2lkIHJnYTNfaHdfc2V0dXBfY21kYnVmKHN0cnVjdCByZ2FfY3R4
ICpjdHgpCiB7Ci0JbWVtc2V0KGN0eC0+Y21kYnVmX3ZpcnQsIDAsIFJHQTNfQ01EQlVGX1NJWkUp
OwotCiAJcmdhM19jbWRfc2V0X3dpbjBfZm9ybWF0KGN0eCk7CiAJcmdhM19jbWRfc2V0X3RyYW5z
X2luZm8oY3R4KTsKIAlyZ2EzX2NtZF9zZXRfd3JfZm9ybWF0KGN0eCk7CgotLSAKMi41NS4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
