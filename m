Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C50AC88E41
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 14:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BULTAI2DjtnIpQmCmO3EWKOGy3lMOFf/X5LGXYzu4es=; b=mkgrvlVT13G2Aa
	I1B4L6a2Y0Mxr86B9Mmk6rmRHuHsJqcInsQoO9Hjm0Nh2lK8aX7eiC1hUjQ7/IfXP2M9v33Q4zKOu
	9EFS3O2xYvQGCtvrGoQbWWXpGkrcH6MrSkihA+WTZV+Cad8YK07sbzG8TLw6MJvqKB3lXZSzTJ4hS
	umFOoYpi3Jy6ccAgoVqIw4ZhWEy9aESgvaw0vbPNWIbBw0aGs0PK1qKmI2RYyrP/189tEKT09LX3D
	BiTEC7ImUXbP1j092chJ9zovCIprEV/Y+fWmNOy0W2sf1jbSNr8uiZD7sTpDW6Dno6d22p+tQomEl
	7NdhO5gcfIymavt8sciA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkFn-0000000EQnk-0Mhk;
	Tue, 27 Jan 2026 14:41:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkF8-0000000EQDS-1WVK
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 14:40:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vkkEx-0007YT-ME; Tue, 27 Jan 2026 15:40:23 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 27 Jan 2026 15:39:23 +0100
Subject: [PATCH v3 14/27] media: rockchip: rga: align stride to 4 bytes
MIME-Version: 1.0
Message-Id: <20260127-spu-rga3-v3-14-77b273067beb@pengutronix.de>
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
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_064044_086199_92A94F70 
X-CRM114-Status: GOOD (  14.30  )
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
dGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCmluZGV4IGNhZjI0MjQ5NjIzNTEuLjE2MzgwYmU1
OThlNGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS1ody5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5j
CkBAIC01ODAsNiArNTgwLDcgQEAgY29uc3Qgc3RydWN0IHJnYV9odyByZ2EyX2h3ID0gewogCS5t
YXhfd2lkdGggPSBNQVhfV0lEVEgsCiAJLm1pbl9oZWlnaHQgPSBNSU5fSEVJR0hULAogCS5tYXhf
aGVpZ2h0ID0gTUFYX0hFSUdIVCwKKwkuc3RyaWRlX2FsaWdubWVudCA9IDQsCiAKIAkuc3RhcnQg
PSByZ2FfaHdfc3RhcnQsCiAJLmhhbmRsZV9pcnEgPSByZ2FfaGFuZGxlX2lycSwKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggYWM0MmU5MDVhODhjZC4uMjky
MGVmZTY1MDgyYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
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
aWJsZSgmcmdhLT5tdXRleCkpIHsKIAkJcmV0ID0gLUVSRVNUQVJUU1lTOwpAQCAtMzkzLDcgKzM5
Myw4IEBAIHN0YXRpYyBpbnQgdmlkaW9jX3RyeV9mbXQoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQg
KnByaXYsIHN0cnVjdCB2NGwyX2Zvcm1hdCAqZikKIAkJZm10ID0gJmh3LT5mb3JtYXRzWzBdOwog
CiAJdjRsMl9hcHBseV9mcm1zaXplX2NvbnN0cmFpbnRzKCZwaXhfZm10LT53aWR0aCwgJnBpeF9m
bXQtPmhlaWdodCwgJmZybXNpemUpOwotCXY0bDJfZmlsbF9waXhmbXRfbXAocGl4X2ZtdCwgZm10
LT5mb3VyY2MsIHBpeF9mbXQtPndpZHRoLCBwaXhfZm10LT5oZWlnaHQpOworCXY0bDJfZmlsbF9w
aXhmbXRfbXBfYWxpZ25lZChwaXhfZm10LCBwaXhfZm10LT5waXhlbGZvcm1hdCwKKwkJCQkgICAg
cGl4X2ZtdC0+d2lkdGgsIHBpeF9mbXQtPmhlaWdodCwgaHctPnN0cmlkZV9hbGlnbm1lbnQpOwog
CXBpeF9mbXQtPmZpZWxkID0gVjRMMl9GSUVMRF9OT05FOwogCiAJcmV0dXJuIDA7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCmluZGV4IDA0YWViN2I0Mjk1MjMuLjM4
NTE4MTQ2OTEwYTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS5oCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5o
CkBAIC0xNTAsNiArMTUwLDcgQEAgc3RydWN0IHJnYV9odyB7CiAJc2l6ZV90IGNtZGJ1Zl9zaXpl
OwogCXUzMiBtaW5fd2lkdGgsIG1pbl9oZWlnaHQ7CiAJdTMyIG1heF93aWR0aCwgbWF4X2hlaWdo
dDsKKwl1OCBzdHJpZGVfYWxpZ25tZW50OwogCiAJdm9pZCAoKnN0YXJ0KShzdHJ1Y3Qgcm9ja2No
aXBfcmdhICpyZ2EsCiAJCSAgICAgIHN0cnVjdCByZ2FfdmJfYnVmZmVyICpzcmMsIHN0cnVjdCBy
Z2FfdmJfYnVmZmVyICpkc3QpOwoKLS0gCjIuNTIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
