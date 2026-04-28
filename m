Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27977FF886C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 09:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uy0CR39hGJNNZfnutaQXfvHm6/TL4gWubhVf24+4sPQ=; b=MESjdktfeORc33
	zH5u7LkyoNm8cpJhz1QgraDkQKkgDrQC85d1WV47oGsiG0DCRxC4n2KC2GGYhhCVWm0AAKJd7R2eg
	TdlWEXJ8eQTHrJCQ8p4g0WNJpE+CcF/BVRYzjElh/ENyrPF0R9QLmv7K3nEWRj+l7Gp29NeLsBCsq
	z99XXbKqPWOiJFpvA0utKDzSwhPNPmIHtscWVGvcFho+PhL7ymTbOZEqZFKkhWfzV9WKeLT5Wdg9P
	WRfp//1i62hT9KW8JgMoNSZdJlsNXjztunaWWJoK/4W8TsQ0zU3dOPigpQG9sL2Z8oWofKIjp4DKT
	JSunMPVN7/Yath47l8JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJt-00000000xlw-3B0l;
	Tue, 28 Apr 2026 09:01:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeJi-00000000xWn-31xF
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 09:01:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wHeJF-0004Lz-Pm; Tue, 28 Apr 2026 11:00:49 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 28 Apr 2026 11:00:50 +0200
Subject: [PATCH v5 15/29] media: rockchip: rga: align stride to 4 bytes
MIME-Version: 1.0
Message-Id: <20260428-spu-rga3-v5-15-eb7f5d019d86@pengutronix.de>
References: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
In-Reply-To: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_020118_783177_AB6964C2 
X-CRM114-Status: GOOD (  13.76  )
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
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCmluZGV4IDk4ODFjMTRmOTA4ZDUuLmRh
YzNjYjZhYTE3ZDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
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
cnVjdCByZ2FfdmJfYnVmZmVyICpkc3QpOwoKLS0gCjIuNTQuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
