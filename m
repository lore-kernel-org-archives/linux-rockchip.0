Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB0E9D15DAA
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 15:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbUFf1gp7K/KGXJwDeZaPCuEzFXBSH5feRvOcpmqQ4Y=; b=y4iI8xH9jtjYOd
	+v/y9icb/7GHz2AmSqdOfXjuyteyT+O5d5I5j5x4cUnZrG41AyzS+VKP3k6/YvYbtvjJmqoJYeVW2
	4JCdFLA7eRXmG1lUDehKr0shYCBUauYGrODIlnM0o8Apmq8TQXEiPD0pIyPMH/P2rlIyHhRXTQvsO
	IxCV6AT5xWrcSS1sVK+KP6FLMNrb+xtrrMn5sXn+kX0AI6D4cMkbaQ4C0112GZStwt9g2KlmPa4At
	P6hOP+Tz/PnK9CAgIYM1jmuccSOhndKxSGjb8soubxIujfzXsmCwporkfjE9DcO8LrxvFAfZf65Kn
	PyC8FewnqTvPrnpDVAbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBl-00000006key-35uW;
	Wed, 03 Dec 2025 15:54:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBK-00000006jwy-10wg
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 15:54:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vQpAe-0007dW-SI; Wed, 03 Dec 2025 16:53:36 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 03 Dec 2025 16:52:42 +0100
Subject: [PATCH v2 20/22] media: rockchip: rga: disable multi-core support
MIME-Version: 1.0
Message-Id: <20251203-spu-rga3-v2-20-989a67947f71@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251203_075419_606593_6077C752 
X-CRM114-Status: GOOD (  11.75  )
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

RGlzYWJsZSBtdWx0aS1jb3JlIHN1cHBvcnQgaW4gcHJlcGFyYXRpb24gb2YgdGhlIFJHQTMgYWRk
aXRpb24uIFRoZQpSSzM1ODggU29DIGZlYXR1cmVzIHR3byBlcXVhbCBSR0EzIGNvcmVzLiBUaGlz
IGFsbG93cyBzY2hlZHVsaW5nIG9mIHRoZQp3b3JrIGJldHdlZW4gYm90aCBjb3Jlcywgd2hpY2gg
aXMgbm90IHlldCBpbXBsZW1lbnRlZC4gVW50aWwgaXQgaXMKaW1wbGVtZW50ZWQgYXZvaWQgZXhw
b3NpbmcgYm90aCBjb3JlcyBhcyBpbmRlcGVuZGVudCB2aWRlbyBkZXZpY2VzIHRvCnByZXZlbnQg
YW4gQUJJIGJyZWFrYWdlIHdoZW4gbXVsdGktY29yZSBzdXBwb3J0IGlzIGFkZGVkLgoKU2lnbmVk
LW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVzY2hlbEBwZW5ndXRyb25peC5kZT4KLS0tCiBk
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyB8IDI4ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwppbmRleCAzOTU4ZTcxYjg5ODdk
Li42NTY4NjIyOGI3MzAwIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JnYS9yZ2EuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9y
Z2EuYwpAQCAtNjYwLDYgKzY2MCwzMCBAQCBzdGF0aWMgaW50IHJnYV9wYXJzZV9kdChzdHJ1Y3Qg
cm9ja2NoaXBfcmdhICpyZ2EpCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBpbnQgcmdhX2Rpc2Fi
bGVfbXVsdGljb3JlKHN0cnVjdCBkZXZpY2UgKmRldikKK3sKKwljb25zdCBjaGFyICpjb21wYXRp
YmxlOworCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZTsKKwlpbnQgcmV0OworCisJLyogSW50ZW50
aW9uYWxseSBpZ25vcmVzIHRoZSBmYWxsYmFjayBzdHJpbmdzICovCisJcmV0ID0gb2ZfcHJvcGVy
dHlfcmVhZF9zdHJpbmcoZGV2LT5vZl9ub2RlLCAiY29tcGF0aWJsZSIsICZjb21wYXRpYmxlKTsK
KwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCisJLyogZmlyc3QgY29tcGF0aWJsZSBub2RlIGZv
dW5kIGZyb20gdGhlIHJvb3Qgbm9kZSBpcyBjb25zaWRlcmVkIHRoZSBtYWluIGNvcmUgKi8KKwlu
b2RlID0gb2ZfZmluZF9jb21wYXRpYmxlX25vZGUoTlVMTCwgTlVMTCwgY29tcGF0aWJsZSk7CisJ
aWYgKCFub2RlKQorCQlyZXR1cm4gLUVJTlZBTDsgLyogYnJva2VuIERUPyAqLworCisJaWYgKGRl
di0+b2Zfbm9kZSAhPSBub2RlKSB7CisJCWRldl9pbmZvKGRldiwgIm1pc3NpbmcgbXVsdGktY29y
ZSBzdXBwb3J0LCBpZ25vcmluZyB0aGlzIGluc3RhbmNlXG4iKTsKKwkJcmV0dXJuIC1FTk9ERVY7
CisJfQorCisJcmV0dXJuIDA7Cit9CisKIHN0YXRpYyBpbnQgcmdhX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhOwpAQCAtNjcw
LDYgKzY5NCwxMCBAQCBzdGF0aWMgaW50IHJnYV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQogCWlmICghcGRldi0+ZGV2Lm9mX25vZGUpCiAJCXJldHVybiAtRU5PREVWOwogCisJ
cmV0ID0gcmdhX2Rpc2FibGVfbXVsdGljb3JlKCZwZGV2LT5kZXYpOworCWlmIChyZXQpCisJCXJl
dHVybiByZXQ7CisKIAlyZ2EgPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpyZ2Ep
LCBHRlBfS0VSTkVMKTsKIAlpZiAoIXJnYSkKIAkJcmV0dXJuIC1FTk9NRU07CgotLSAKMi41Mi4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
