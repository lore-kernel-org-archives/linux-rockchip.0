Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F60ECD4F25
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 15:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ouKsef5oPNOiGb8Fz3q5mWzEgD/St6Zjpf6nkRB54c=; b=y4Hkd68O0CmNxh
	cG9IfgSsPlclInebK8XnPO24nPywfv7dZKBKKrJapyr7ftxc+DCf+87b2MMOFfM/k3c40Dzl5gvau
	WRppSF6Ij5SwLLfnn2vLj5j9prYMhsYQqxUESFwp36qbvoJShxCJvJTwxT2pRtsybSlAiBxURFvXl
	4QsRwEKAmDY7w/X0xIq+Rt8+wcCpRZorrxG5gYY9Qp+bgR1agsfPhjqFBpgMm2wNmBnL/oWgzu7yZ
	iJvfode+/4TYMD3bpLrRTxwfuT1/YRIjP38PcjlOBY4no33t6iMc0MhGI2Jl4Xjq0i3rn+FctKWDO
	24J/D26sxWvdw8KwqYIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXJ-00000008iIJ-1RxA;
	Fri, 15 May 2026 15:33:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXG-00000008iBE-1RJw
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 15:33:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wNuX6-0005OF-Ps; Fri, 15 May 2026 17:33:00 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Fri, 15 May 2026 17:32:41 +0200
Subject: [PATCH v6 15/28] media: rockchip: rga: align stride to 4 bytes
MIME-Version: 1.0
Message-Id: <20260515-spu-rga3-v6-15-e547152eb9c9@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260515_083310_387546_85B83721 
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
ZmYgYnkgb25lIGVycm9ycyBkdWUgZnJvbSB0aGUgZGl2aXNpb24uCgpSZXZpZXdlZC1ieTogTmlj
b2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgpTaWduZWQtb2Zm
LWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgoKLS0tCkNoYW5n
ZWQgaW4gdjY6Ci0gRHJvcCB1bmludGVuZGVkIGNoYW5nZSBmcm9tIGZtdC0+Zm91cmNjIHRvIHBp
eF9mbXQtPnBpeGVsZm9ybWF0CiAgRmxhZ2dlZCBieSBTYXNoaWtvOgogIGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDQyOC1zcHUtcmdhMy12NS0wLWViN2Y1ZDAxOWQ4NiU0MHBl
bmd1dHJvbml4LmRlP3BhcnQ9MTUKLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JnYS9yZ2EtaHcuYyB8ICAxICsKIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5jICAgIHwgMTEgKysrKysrLS0tLS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmdhL3JnYS5oICAgIHwgIDEgKwogMyBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9yZ2EvcmdhLWh3LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9y
Z2EtaHcuYwppbmRleCA5ODgxYzE0ZjkwOGQ1Li5kYWMzY2I2YWExN2QzIDEwMDY0NAotLS0gYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYworKysgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYwpAQCAtNTgwLDYgKzU4MCw3IEBA
IGNvbnN0IHN0cnVjdCByZ2FfaHcgcmdhMl9odyA9IHsKIAkubWF4X3dpZHRoID0gTUFYX1dJRFRI
LAogCS5taW5faGVpZ2h0ID0gTUlOX0hFSUdIVCwKIAkubWF4X2hlaWdodCA9IE1BWF9IRUlHSFQs
CisJLnN0cmlkZV9hbGlnbm1lbnQgPSA0LAogCiAJLnN0YXJ0ID0gcmdhX2h3X3N0YXJ0LAogCS5o
YW5kbGVfaXJxID0gcmdhX2hhbmRsZV9pcnEsCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmdhL3JnYS5jCmluZGV4IGJmNmJiY2JmYzg2OWIuLmQwODBjYjY3Mjc0MGIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCkBAIC0yMzQsMTAgKzIzNCwxMCBA
QCBzdGF0aWMgaW50IHJnYV9vcGVuKHN0cnVjdCBmaWxlICpmaWxlKQogCWN0eC0+aW4gPSBkZWZf
ZnJhbWU7CiAJY3R4LT5vdXQgPSBkZWZfZnJhbWU7CiAKLQl2NGwyX2ZpbGxfcGl4Zm10X21wKCZj
dHgtPmluLnBpeCwKLQkJCSAgICBjdHgtPmluLmZtdC0+Zm91cmNjLCBkZWZfd2lkdGgsIGRlZl9o
ZWlnaHQpOwotCXY0bDJfZmlsbF9waXhmbXRfbXAoJmN0eC0+b3V0LnBpeCwKLQkJCSAgICBjdHgt
Pm91dC5mbXQtPmZvdXJjYywgZGVmX3dpZHRoLCBkZWZfaGVpZ2h0KTsKKwl2NGwyX2ZpbGxfcGl4
Zm10X21wX2FsaWduZWQoJmN0eC0+aW4ucGl4LCBjdHgtPmluLmZtdC0+Zm91cmNjLAorCQkJCSAg
ICBkZWZfd2lkdGgsIGRlZl9oZWlnaHQsIHJnYS0+aHctPnN0cmlkZV9hbGlnbm1lbnQpOworCXY0
bDJfZmlsbF9waXhmbXRfbXBfYWxpZ25lZCgmY3R4LT5vdXQucGl4LCBjdHgtPm91dC5mbXQtPmZv
dXJjYywKKwkJCQkgICAgZGVmX3dpZHRoLCBkZWZfaGVpZ2h0LCByZ2EtPmh3LT5zdHJpZGVfYWxp
Z25tZW50KTsKIAogCWlmIChtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJnJnYS0+bXV0ZXgpKSB7
CiAJCXJldCA9IC1FUkVTVEFSVFNZUzsKQEAgLTM5Myw3ICszOTMsOCBAQCBzdGF0aWMgaW50IHZp
ZGlvY190cnlfZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9m
b3JtYXQgKmYpCiAJCWZtdCA9ICZody0+Zm9ybWF0c1swXTsKIAogCXY0bDJfYXBwbHlfZnJtc2l6
ZV9jb25zdHJhaW50cygmcGl4X2ZtdC0+d2lkdGgsICZwaXhfZm10LT5oZWlnaHQsICZmcm1zaXpl
KTsKLQl2NGwyX2ZpbGxfcGl4Zm10X21wKHBpeF9mbXQsIGZtdC0+Zm91cmNjLCBwaXhfZm10LT53
aWR0aCwgcGl4X2ZtdC0+aGVpZ2h0KTsKKwl2NGwyX2ZpbGxfcGl4Zm10X21wX2FsaWduZWQocGl4
X2ZtdCwgZm10LT5mb3VyY2MsCisJCQkJICAgIHBpeF9mbXQtPndpZHRoLCBwaXhfZm10LT5oZWln
aHQsIGh3LT5zdHJpZGVfYWxpZ25tZW50KTsKIAlwaXhfZm10LT5maWVsZCA9IFY0TDJfRklFTERf
Tk9ORTsKIAogCXJldHVybiAwOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9y
Z2EuaAppbmRleCAwNGFlYjdiNDI5NTIzLi4zODUxODE0NjkxMGE2IDEwMDY0NAotLS0gYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAorKysgYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaApAQCAtMTUwLDYgKzE1MCw3IEBAIHN0cnVjdCBy
Z2FfaHcgewogCXNpemVfdCBjbWRidWZfc2l6ZTsKIAl1MzIgbWluX3dpZHRoLCBtaW5faGVpZ2h0
OwogCXUzMiBtYXhfd2lkdGgsIG1heF9oZWlnaHQ7CisJdTggc3RyaWRlX2FsaWdubWVudDsKIAog
CXZvaWQgKCpzdGFydCkoc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhLAogCQkgICAgICBzdHJ1Y3Qg
cmdhX3ZiX2J1ZmZlciAqc3JjLCBzdHJ1Y3QgcmdhX3ZiX2J1ZmZlciAqZHN0KTsKCi0tIAoyLjU0
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
