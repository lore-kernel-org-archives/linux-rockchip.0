Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28A08109C030
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 14:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jh/znbiTs4QfaDhd5ydLQgUGl5CkaMnGxEKG0dFRyoI=; b=oprNB8l5i4/ROo
	Pc75GUMUn9iaJU3j5bkM/MYwjQwurwY5WmMEqC39sCAbFIGmBZG+1O6tdgPthazmyLqXbOcrVoHz3
	lM4g+9TEyu3VVRhPFd6j+4aEeNp9UErieASsTqk/xFaUU7lCmGG6ylgqX5jFJtRbVrP5dEfDBfs6N
	mK2BUkLgXa5pdU38jb2muY2Ge4s9Ghb2XGYxZP3dSFFO5Ri2glzJtXc99YRM61c7+rcRrH0BqQ+w9
	Dj5zIP88xQQHn2e9cTlx6FdFhnrWPLz9n8cWSjC2jfZbXWoEIZUFW8eUESzZSYn+SjNjD1ulKLvQl
	8Ngx8Uiyrvy0JSReGtZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PZp-00000003fvD-3e3h;
	Wed, 25 Mar 2026 14:51:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PZd-00000003fWo-3ZJi
	for linux-rockchip@bombadil.infradead.org;
	Wed, 25 Mar 2026 14:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=KiaNVFcKBUOG+7y65a8Ef/4/6TN28uo08L6KOj85jrA=; b=edfMFlAfX33sQn/4zNTB/J5dat
	zwIrQy5wZHvW40Ip6mTSEDtU0caTHJnbLkxEmh9tYdtasxreZbus8KSxWq6k0TEG/zmlof19pHlFe
	Hq0tI07njQVZ8tXlWNCuH8WrIO5nECZMioKbO8Pc9TMj7Zv5nFWYfVqLva7dDvakzLCdEKzILPcLi
	16OhdSO3A15WTjDkiQ+OshQRLBhKjnPqRUXMZ/qUSFhm+I9MfTg3+v0p2NyknLE0YE5A/CMgG9CDI
	PmA4/aky1wQLW4+QqNB2ZnWIRtLHuHEewSnigIb5lMraq2R/jr6a1ZstKMfSq31J1KM2vcrgezO/e
	cew4L4Bw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PZZ-00000006OUO-1VJE
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 14:51:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1w5PZV-00050C-Up; Wed, 25 Mar 2026 15:51:01 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 25 Mar 2026 15:50:52 +0100
Subject: [PATCH v4 21/27] media: rockchip: rga: remove size from rga_frame
MIME-Version: 1.0
Message-Id: <20260325-spu-rga3-v4-21-e90ec1c61354@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260325_145105_666929_6A9AAAF5 
X-CRM114-Status: GOOD (  14.41  )
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

VGhlIHNpemUgbWVtYmVyIGlzIG9ubHkgdXNlZCBmb3IgdGhlIG1tdSBwYWdlIHRhYmxlIG1hcHBp
bmcuClRoZXJlZm9yZSBhdm9pZCBzdG9yaW5nIHRoZSB2YWx1ZSBhbmQgaW5zdGVhZCBvbmx5IGNh
bGN1bGF0ZSBpdAppbiBwbGFjZS4gVGhpcyBhbHNvIGF2b2lkcyB0aGUgY2FsY3VsYXRpb24gZW50
aXJlbHkgd2hlbiBhbiBleHRlcm5hbAppb21tdSBpcyB1c2VkLgoKUmV2aWV3ZWQtYnk6IE5pY29s
YXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KU2lnbmVkLW9mZi1i
eTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVzY2hlbEBwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMgfCA2ICsrKysrLQogZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgICAgIHwgOCArKy0tLS0tLQogZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggICAgIHwgMSAtCiAzIGZpbGVz
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMKaW5kZXggNGU4MmNhMWE1ZThkOS4u
YzBjYzg4NWJhNThhOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9yZ2EvcmdhLWJ1Zi5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS1idWYuYwpAQCAtNzksNiArNzksOCBAQCBzdGF0aWMgaW50IHJnYV9idWZfaW5pdChzdHJ1
Y3QgdmIyX2J1ZmZlciAqdmIpCiAJc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5yZ2E7
CiAJc3RydWN0IHJnYV9mcmFtZSAqZiA9IHJnYV9nZXRfZnJhbWUoY3R4LCB2Yi0+dmIyX3F1ZXVl
LT50eXBlKTsKIAlzaXplX3Qgbl9kZXNjID0gMDsKKwl1MzIgc2l6ZSA9IDA7CisJdTggaTsKIAog
CWlmIChJU19FUlIoZikpCiAJCXJldHVybiBQVFJfRVJSKGYpOwpAQCAtODYsNyArODgsOSBAQCBz
dGF0aWMgaW50IHJnYV9idWZfaW5pdChzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCiAJaWYgKCFyZ2Ff
aGFzX2ludGVybmFsX2lvbW11KHJnYSkpCiAJCXJldHVybiAwOwogCi0Jbl9kZXNjID0gRElWX1JP
VU5EX1VQKGYtPnNpemUsIFBBR0VfU0laRSk7CisJZm9yIChpID0gMDsgaSA8IGYtPnBpeC5udW1f
cGxhbmVzOyBpKyspCisJCXNpemUgKz0gZi0+cGl4LnBsYW5lX2ZtdFtpXS5zaXplaW1hZ2U7CisJ
bl9kZXNjID0gRElWX1JPVU5EX1VQKHNpemUsIFBBR0VfU0laRSk7CiAKIAlyYnVmLT5uX2Rlc2Mg
PSBuX2Rlc2M7CiAJcmJ1Zi0+ZG1hX2Rlc2MgPSBkbWFfYWxsb2NfY29oZXJlbnQocmdhLT5kZXYs
CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4IGViN2IyMTFh
OTllNjYuLjI2OTViYzUwNzdhMDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS5jCkBAIC0yMjEsNyArMjIxLDYgQEAgc3RhdGljIGludCByZ2Ffb3BlbihzdHJ1Y3Qg
ZmlsZSAqZmlsZSkKIAl9OwogCiAJZGVmX2ZyYW1lLnN0cmlkZSA9IChkZWZfd2lkdGggKiBkZWZf
ZnJhbWUuZm10LT5kZXB0aCkgPj4gMzsKLQlkZWZfZnJhbWUuc2l6ZSA9IGRlZl9mcmFtZS5zdHJp
ZGUgKiBkZWZfaGVpZ2h0OwogCiAJY3R4ID0ga3phbGxvY19vYmooKmN0eCk7CiAJaWYgKCFjdHgp
CkBAIC00NTksOSArNDU4LDYgQEAgc3RhdGljIGludCB2aWRpb2Nfc19mbXQoc3RydWN0IGZpbGUg
KmZpbGUsIHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2Zvcm1hdCAqZikKIAlmcm0gPSByZ2FfZ2V0
X2ZyYW1lKGN0eCwgZi0+dHlwZSk7CiAJaWYgKElTX0VSUihmcm0pKQogCQlyZXR1cm4gUFRSX0VS
Uihmcm0pOwotCWZybS0+c2l6ZSA9IDA7Ci0JZm9yIChpID0gMDsgaSA8IHBpeF9mbXQtPm51bV9w
bGFuZXM7IGkrKykKLQkJZnJtLT5zaXplICs9IHBpeF9mbXQtPnBsYW5lX2ZtdFtpXS5zaXplaW1h
Z2U7CiAJZnJtLT5mbXQgPSByZ2FfZm10X2ZpbmQocmdhLCBwaXhfZm10LT5waXhlbGZvcm1hdCk7
CiAJZnJtLT5zdHJpZGUgPSBwaXhfZm10LT5wbGFuZV9mbXRbMF0uYnl0ZXNwZXJsaW5lOwogCkBA
IC00ODUsMTAgKzQ4MSwxMCBAQCBzdGF0aWMgaW50IHZpZGlvY19zX2ZtdChzdHJ1Y3QgZmlsZSAq
ZmlsZSwgdm9pZCAqcHJpdiwgc3RydWN0IHY0bDJfZm9ybWF0ICpmKQogCWZybS0+cGl4ID0gKnBp
eF9mbXQ7CiAKIAl2NGwyX2RiZyhkZWJ1ZywgMSwgJnJnYS0+djRsMl9kZXYsCi0JCSAiWyVzXSBm
bXQgLSAlcDRjYyAlZHglZCAoc3RyaWRlICVkLCBzaXplaW1hZ2UgJWQpXG4iLAorCQkgIlslc10g
Zm10IC0gJXA0Y2MgJWR4JWQgKHN0cmlkZSAlZClcbiIsCiAJCSAgVjRMMl9UWVBFX0lTX09VVFBV
VChmLT50eXBlKSA/ICJPVVRQVVQiIDogIkNBUFRVUkUiLAogCQkgICZmcm0tPmZtdC0+Zm91cmNj
LCBwaXhfZm10LT53aWR0aCwgcGl4X2ZtdC0+aGVpZ2h0LAotCQkgIGZybS0+c3RyaWRlLCBmcm0t
PnNpemUpOworCQkgIGZybS0+c3RyaWRlKTsKIAogCWZvciAoaSA9IDA7IGkgPCBwaXhfZm10LT5u
dW1fcGxhbmVzOyBpKyspIHsKIAkJdjRsMl9kYmcoZGVidWcsIDEsICZyZ2EtPnY0bDJfZGV2LApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAppbmRleCA5NWZhN2ZkMWM1
MDlhLi4yODM4ZmM3Nzg1ZjcyIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Jv
Y2tjaGlwL3JnYS9yZ2EuaAorKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3Jn
YS9yZ2EuaApAQCAtMzQsNyArMzQsNiBAQCBzdHJ1Y3QgcmdhX2ZyYW1lIHsKIAogCS8qIFZhcmlh
YmxlcyB0aGF0IGNhbiBjYWxjdWxhdGVkIG9uY2UgYW5kIHJldXNlZCAqLwogCXUzMiBzdHJpZGU7
Ci0JdTMyIHNpemU7CiB9OwogCiBzdHJ1Y3QgcmdhX2RtYV9kZXNjIHsKCi0tIAoyLjUzLjAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
