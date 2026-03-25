Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D575109C036
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 14:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/78tK+zJmIr9j117w6KGeHZPD6XatPnYQrz9LM7uJI=; b=OJ2Q9Wmp8XsJ+W
	fLrH+O/KZ1nZkERpG/PnZfFCAd/H4J5ahdtUt/pex5Y0mH1xRHwq7b5upG6WbmPU3/trW33z1tq1w
	ityBP/Zy5+Tp1XePWkhGi/unn0boGHNDkIeWl2Eo5UsZ/6WPUyE0jThLNqe0LkFWKwCDH7t2+3JDM
	ekXT0FeqTz87eUADU0LvQrDutEKzlfv3tZuWgUi/v0UHET5qi7AYSIIsZJXrVs1S/5xosgAO0dezA
	4L5/RuW4GA8mrTh6ZAGh2yyIejzcA4tOCC9APC/4IKTHFiRc8yx0zg6vLqeHMTyqugOEWHEOlpTw+
	olO4NWs4G4euqW+o5x9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PZl-00000003fnA-42ua;
	Wed, 25 Mar 2026 14:51:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PZc-00000003fUE-1BC2
	for linux-rockchip@bombadil.infradead.org;
	Wed, 25 Mar 2026 14:51:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=/jRK13HvYdZHwyTwmHenfAju+YjbcJJrgmvWMeL1INo=; b=h0klhY8Tu66yWI5KR252fdIVpL
	7zAXyJ5a3PRp+h7fu+LVqA2uCJCWUbJR+JjaDzZJQ2ri0wLU1EMT+AgWo9cNyLNvyK1VY2GVODd/A
	n2ujb3IK1BiNxfbAyNG1H7O+V6QReZHWhavlFb/ImFebcP2+llG4QO0EVbsV+L2EBjK+a5N+Ex5FE
	eiUk9khMS4bFQYmvisOACGGgV/+BMt2j6Dsm74UVKyvS4jdyI4wtQdoid+uQH7BK1MrqYiFqiLguN
	6YZV2dtA93KzPc2rXffHUdPMifjeh8JqVqQ46J8NW/owNL52vzjplwri0UI6Yrm4U6cNX8QaYAT7b
	GbUU0QMQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PZY-00000006OTM-3v96
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 14:51:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1w5PZU-00050C-Ja; Wed, 25 Mar 2026 15:51:00 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 25 Mar 2026 15:50:45 +0100
Subject: [PATCH v4 14/27] media: rockchip: rga: align stride to 4 bytes
MIME-Version: 1.0
Message-Id: <20260325-spu-rga3-v4-14-e90ec1c61354@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260325_145105_051644_E45DA3A8 
X-CRM114-Status: GOOD (  13.92  )
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
LWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jIHwgIDEgKwogZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgICAgfCAxMSArKysrKystLS0tLQogZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggICAgfCAgMSArCiAzIGZpbGVz
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCmluZGV4IGNhZjI0MjQ5NjIzNTEuLjE2
MzgwYmU1OThlNGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS1ody5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS1ody5jCkBAIC01ODAsNiArNTgwLDcgQEAgY29uc3Qgc3RydWN0IHJnYV9odyByZ2EyX2h3ID0g
ewogCS5tYXhfd2lkdGggPSBNQVhfV0lEVEgsCiAJLm1pbl9oZWlnaHQgPSBNSU5fSEVJR0hULAog
CS5tYXhfaGVpZ2h0ID0gTUFYX0hFSUdIVCwKKwkuc3RyaWRlX2FsaWdubWVudCA9IDQsCiAKIAku
c3RhcnQgPSByZ2FfaHdfc3RhcnQsCiAJLmhhbmRsZV9pcnEgPSByZ2FfaGFuZGxlX2lycSwKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggYmY2YmJjYmZjODY5
Yi4uMTZhNjYzYWVlZjhjOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9yZ2EvcmdhLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Ev
cmdhLmMKQEAgLTIzNCwxMCArMjM0LDEwIEBAIHN0YXRpYyBpbnQgcmdhX29wZW4oc3RydWN0IGZp
bGUgKmZpbGUpCiAJY3R4LT5pbiA9IGRlZl9mcmFtZTsKIAljdHgtPm91dCA9IGRlZl9mcmFtZTsK
IAotCXY0bDJfZmlsbF9waXhmbXRfbXAoJmN0eC0+aW4ucGl4LAotCQkJICAgIGN0eC0+aW4uZm10
LT5mb3VyY2MsIGRlZl93aWR0aCwgZGVmX2hlaWdodCk7Ci0JdjRsMl9maWxsX3BpeGZtdF9tcCgm
Y3R4LT5vdXQucGl4LAotCQkJICAgIGN0eC0+b3V0LmZtdC0+Zm91cmNjLCBkZWZfd2lkdGgsIGRl
Zl9oZWlnaHQpOworCXY0bDJfZmlsbF9waXhmbXRfbXBfYWxpZ25lZCgmY3R4LT5pbi5waXgsIGN0
eC0+aW4uZm10LT5mb3VyY2MsCisJCQkJICAgIGRlZl93aWR0aCwgZGVmX2hlaWdodCwgcmdhLT5o
dy0+c3RyaWRlX2FsaWdubWVudCk7CisJdjRsMl9maWxsX3BpeGZtdF9tcF9hbGlnbmVkKCZjdHgt
Pm91dC5waXgsIGN0eC0+b3V0LmZtdC0+Zm91cmNjLAorCQkJCSAgICBkZWZfd2lkdGgsIGRlZl9o
ZWlnaHQsIHJnYS0+aHctPnN0cmlkZV9hbGlnbm1lbnQpOwogCiAJaWYgKG11dGV4X2xvY2tfaW50
ZXJydXB0aWJsZSgmcmdhLT5tdXRleCkpIHsKIAkJcmV0ID0gLUVSRVNUQVJUU1lTOwpAQCAtMzkz
LDcgKzM5Myw4IEBAIHN0YXRpYyBpbnQgdmlkaW9jX3RyeV9mbXQoc3RydWN0IGZpbGUgKmZpbGUs
IHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2Zvcm1hdCAqZikKIAkJZm10ID0gJmh3LT5mb3JtYXRz
WzBdOwogCiAJdjRsMl9hcHBseV9mcm1zaXplX2NvbnN0cmFpbnRzKCZwaXhfZm10LT53aWR0aCwg
JnBpeF9mbXQtPmhlaWdodCwgJmZybXNpemUpOwotCXY0bDJfZmlsbF9waXhmbXRfbXAocGl4X2Zt
dCwgZm10LT5mb3VyY2MsIHBpeF9mbXQtPndpZHRoLCBwaXhfZm10LT5oZWlnaHQpOworCXY0bDJf
ZmlsbF9waXhmbXRfbXBfYWxpZ25lZChwaXhfZm10LCBwaXhfZm10LT5waXhlbGZvcm1hdCwKKwkJ
CQkgICAgcGl4X2ZtdC0+d2lkdGgsIHBpeF9mbXQtPmhlaWdodCwgaHctPnN0cmlkZV9hbGlnbm1l
bnQpOwogCXBpeF9mbXQtPmZpZWxkID0gVjRMMl9GSUVMRF9OT05FOwogCiAJcmV0dXJuIDA7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCmluZGV4IDA0YWViN2I0Mjk1
MjMuLjM4NTE4MTQ2OTEwYTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9j
a2NoaXAvcmdhL3JnYS5oCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS5oCkBAIC0xNTAsNiArMTUwLDcgQEAgc3RydWN0IHJnYV9odyB7CiAJc2l6ZV90IGNtZGJ1
Zl9zaXplOwogCXUzMiBtaW5fd2lkdGgsIG1pbl9oZWlnaHQ7CiAJdTMyIG1heF93aWR0aCwgbWF4
X2hlaWdodDsKKwl1OCBzdHJpZGVfYWxpZ25tZW50OwogCiAJdm9pZCAoKnN0YXJ0KShzdHJ1Y3Qg
cm9ja2NoaXBfcmdhICpyZ2EsCiAJCSAgICAgIHN0cnVjdCByZ2FfdmJfYnVmZmVyICpzcmMsIHN0
cnVjdCByZ2FfdmJfYnVmZmVyICpkc3QpOwoKLS0gCjIuNTMuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
