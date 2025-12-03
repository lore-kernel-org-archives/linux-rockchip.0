Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 516F0D15DAC
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/nwl4+3HqBjRKLcuda5AoIkqPj0BQbm1EFRS8eEcdY=; b=r+JnyEcJ8R7qrj
	IorS4chk7eEjczeskM+Vhg4gYKSIrwIqvnTc5V62B0/TrsT5Aa+8eKQeSx9lQmFT80FSU85/XOCZd
	C2AmtTttc/NRYYVv3YoX1rkmnzKBel2PKxRXRydsPbaPjyBHNtm1IvjaVSbd6d7J+jAKMHATm/peO
	ALX4NnNIZWhk5TWRvFTmx2EQQcR1VVCffdI3ymyOfe2n2a6SK2z/jIpE42GCBivC/NKjusvzQ7Elo
	dm7XbqhsJwScgsu8GNBXqAOBHBG5leDkXtT9AYteWuNJrMRy6KWpF+Mc86Ka1OuOl0V+Hv8pEqH70
	K3+WbrPOTMnhp+VmWh7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBi-00000006kaP-3i09;
	Wed, 03 Dec 2025 15:54:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBO-00000006k4H-1Gtg
	for linux-rockchip@bombadil.infradead.org;
	Wed, 03 Dec 2025 15:54:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=c5cAULtapXU8wFHSI8PxJ27mpdYyO2BJPXSJ8dWFHzw=; b=N7Zt80W1va3xsCVGs71UYyO4gk
	PObeljJxFXVb5EzLyiFbBahw0BGFfkawcLkI1TtSJ6lApYfgDOy6MnWdv2WpQ9g2ncyIpYpQK993c
	Bce05dYAHPb6In5x+soVQpCgOZa8OGGCCJ71jbjpGJkVleau0R5+RjFvh7jvw1A7+VGt4mxS1WX5g
	4Mgauqw31dw7uZjZuVeONEE12yLCFGNOy8PABM90UPjFrIDMULid8zommzgrQT3V0qUfFlcsgBoE3
	EjcsaivugRJqYrOCioNtMT6i7EMTJRagiKFphFaDYb1bEU4I67BrdBe6NSSW6Cbi9vzHHTKFrAT4J
	i+sQLQvQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQoJm-00000002TLj-3Wzr
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 14:59:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vQpAd-0007dW-Db; Wed, 03 Dec 2025 16:53:35 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 03 Dec 2025 16:52:31 +0100
Subject: [PATCH v2 09/22] media: rockchip: rga: align stride to 4 bytes
MIME-Version: 1.0
Message-Id: <20251203-spu-rga3-v2-9-989a67947f71@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251203_145858_929156_11A77259 
X-CRM114-Status: GOOD (  13.98  )
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

QWRkIGFuIGFsaWdubWVudCBzZXR0aW5nIHRvIHJnYV9odyB0byBzZXQgdGhlIGRlc2lyZWQgc3Ry
aWRlIGFsaWdubWVudC4KQXMgdGhlIFJHQTIgcmVnaXN0ZXIgZm9yIHRoZSBzdHJpZGUgY291bnRz
IGluIHdvcmQgdW5pdHMsIHRoZSBjb2RlCmFscmVhZHkgZGl2aWRlcyB0aGUgYnl0ZXNwZXJsaW5l
IHZhbHVlIGJ5IDQgd2hlbiB3cml0aW5nIGl0IGludG8gdGhlCnJlZ2lzdGVyLiBUaGVyZWZvcmUg
Zml4IHRoZSBhbGlnbm1lbnQgdG8gYSBtdWx0aXBsZSBvZiA0IHRvIGF2b2lkCnBvdGVudGlhbCBv
ZmYgYnkgb25lIGVycm9ycyBkdWUgZnJvbSB0aGUgZGl2aXNpb24uCgpTaWduZWQtb2ZmLWJ5OiBT
dmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jIHwgIDEgKwogZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgICAgfCAxMSArKysrKystLS0tLQogZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggICAgfCAgMSArCiAzIGZpbGVzIGNoYW5n
ZWQsIDggaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCmluZGV4IDc5YmY5MTFlNzQ3NzkuLjU2YTI1NTg1
MzliZmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS1ody5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5j
CkBAIC02MjAsNiArNjIwLDcgQEAgY29uc3Qgc3RydWN0IHJnYV9odyByZ2EyX2h3ID0gewogCS5t
YXhfd2lkdGggPSBNQVhfV0lEVEgsCiAJLm1pbl9oZWlnaHQgPSBNSU5fSEVJR0hULAogCS5tYXhf
aGVpZ2h0ID0gTUFYX0hFSUdIVCwKKwkuc3RyaWRlX2FsaWdubWVudCA9IDQsCiAKIAkuc3RhcnQg
PSByZ2FfaHdfc3RhcnQsCiAJLmhhbmRsZV9pcnEgPSByZ2FfaGFuZGxlX2lycSwKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggNzRkOTRjN2ZlMzFmZi4uNTky
Yzk3N2EwN2NmMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
Z2EvcmdhLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMK
QEAgLTIzNCwxMCArMjM0LDEwIEBAIHN0YXRpYyBpbnQgcmdhX29wZW4oc3RydWN0IGZpbGUgKmZp
bGUpCiAJY3R4LT5pbiA9IGRlZl9mcmFtZTsKIAljdHgtPm91dCA9IGRlZl9mcmFtZTsKIAotCXY0
bDJfZmlsbF9waXhmbXRfbXAoJmN0eC0+aW4ucGl4LAotCQkJICAgIGN0eC0+aW4uZm10LT5mb3Vy
Y2MsIGRlZl93aWR0aCwgZGVmX2hlaWdodCk7Ci0JdjRsMl9maWxsX3BpeGZtdF9tcCgmY3R4LT5v
dXQucGl4LAotCQkJICAgIGN0eC0+b3V0LmZtdC0+Zm91cmNjLCBkZWZfd2lkdGgsIGRlZl9oZWln
aHQpOworCXY0bDJfZmlsbF9waXhmbXRfbXBfYWxpZ25lZCgmY3R4LT5pbi5waXgsIGN0eC0+aW4u
Zm10LT5mb3VyY2MsCisJCQkJICAgIGRlZl93aWR0aCwgZGVmX2hlaWdodCwgcmdhLT5ody0+c3Ry
aWRlX2FsaWdubWVudCk7CisJdjRsMl9maWxsX3BpeGZtdF9tcF9hbGlnbmVkKCZjdHgtPm91dC5w
aXgsIGN0eC0+b3V0LmZtdC0+Zm91cmNjLAorCQkJCSAgICBkZWZfd2lkdGgsIGRlZl9oZWlnaHQs
IHJnYS0+aHctPnN0cmlkZV9hbGlnbm1lbnQpOwogCiAJaWYgKG11dGV4X2xvY2tfaW50ZXJydXB0
aWJsZSgmcmdhLT5tdXRleCkpIHsKIAkJcmV0ID0gLUVSRVNUQVJUU1lTOwpAQCAtMzU5LDcgKzM1
OSw4IEBAIHN0YXRpYyBpbnQgdmlkaW9jX3RyeV9mbXQoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQg
KnByaXYsIHN0cnVjdCB2NGwyX2Zvcm1hdCAqZikKIAlwaXhfZm10LT5oZWlnaHQgPSBjbGFtcChw
aXhfZm10LT5oZWlnaHQsCiAJCQkJaHctPm1pbl9oZWlnaHQsIGh3LT5tYXhfaGVpZ2h0KTsKIAot
CXY0bDJfZmlsbF9waXhmbXRfbXAocGl4X2ZtdCwgZm10LT5mb3VyY2MsIHBpeF9mbXQtPndpZHRo
LCBwaXhfZm10LT5oZWlnaHQpOworCXY0bDJfZmlsbF9waXhmbXRfbXBfYWxpZ25lZChwaXhfZm10
LCBwaXhfZm10LT5waXhlbGZvcm1hdCwKKwkJCQkgICAgcGl4X2ZtdC0+d2lkdGgsIHBpeF9mbXQt
PmhlaWdodCwgaHctPnN0cmlkZV9hbGlnbm1lbnQpOwogCXBpeF9mbXQtPmZpZWxkID0gVjRMMl9G
SUVMRF9OT05FOwogCiAJcmV0dXJuIDA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS5oCmluZGV4IGY4YzkzMmZkZWMyMWEuLjBhZWYzNDhkZGRiOTUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCisrKyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCkBAIC0xNTIsNiArMTUyLDcgQEAgc3Ry
dWN0IHJnYV9odyB7CiAJc2l6ZV90IGNtZGJ1Zl9zaXplOwogCXUzMiBtaW5fd2lkdGgsIG1pbl9o
ZWlnaHQ7CiAJdTMyIG1heF93aWR0aCwgbWF4X2hlaWdodDsKKwl1OCBzdHJpZGVfYWxpZ25tZW50
OwogCiAJdm9pZCAoKnN0YXJ0KShzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EsCiAJCSAgICAgIHN0
cnVjdCByZ2FfdmJfYnVmZmVyICpzcmMsIHN0cnVjdCByZ2FfdmJfYnVmZmVyICpkc3QpOwoKLS0g
CjIuNTIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
