Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7188DCDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 22:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiuLSq9i9CogmP27kTlbFOLBE7shi8mNFsYD+R1PcfI=; b=hfdDXeYV0+3+rf
	07meZP/r5Dxh+IX0tZ7s/UR76A5Q4l4diQqseXh+TErv9grbSjrUo+6YpttKupUPBbJxXzPoOy+lK
	qTX/u2v2IxrB25q9z+kKu6JojkdWy+qdskrMsvPNev1vTUsZXUy+Oco1rhMIgsTw70/V8m271Ut8o
	W28dN1TrJPZcd30RiZCxgqycUJVVgH+imT583hZ0n1zaeTCwt5U5JAmN4eSxtmDAo1XOzYIP1qMge
	C6gFEsCyUZvq6qGFHlo5q9k1LYXXuzyhSwzM1S7dGd1jqaVM2C3r/ml9rsIVTD94PPaGmgZdFnIk7
	vNT9VGdmwbmd3h5MZW7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrQWH-004N3o-0H;
	Fri, 13 Oct 2023 22:20:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrQWA-004N1S-19
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 22:20:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qrQVv-0003u2-Mh; Sat, 14 Oct 2023 00:20:11 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qrQVu-001UR1-MZ; Sat, 14 Oct 2023 00:20:10 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qrQVu-00FrGo-DA; Sat, 14 Oct 2023 00:20:10 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 1/7] ASoC: rockchip: i2s_tdm: Convert to platform remove callback returning void
Date: Sat, 14 Oct 2023 00:19:47 +0200
Message-ID: <20231013221945.1489203-10-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231013221945.1489203-9-u.kleine-koenig@pengutronix.de>
References: <20231013221945.1489203-9-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1807; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=TllgjmOjMn10IcS4j2LTAf95NQP1JOMB2P4WeNA3glA=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlKcKCP/NXhj0+ihQ+srsUX95YXpJG5+0IZy8Iu eZgljftmt2JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZSnCggAKCRCPgPtYfRL+ TmSFB/4sT4DJ034kWuvTwoq22jsYVgiW1Q7xzIWZcBuAX2Spwetg9y0flIXxPLCfAj+yn+6uBZw 1o/nympFzyUhMsxc48WTFX2j7o2sQW4NNLhB3xfA/T/H71MnXZb92R/VKs9WSJc6QcDzXD+bNus Ff9Wf3PMWoIUPIKq5vpxEDqavSeewxK7m4F40Cr/cYk2wn2ONgGNeFQDfMUOK8wgzJceCF1fTIW mL6dDSi3cszIQHnHcmt4O/x5laqTFEPvk4RbqOcsNDA+h0ZouQMBthj1yl1gbLF7zeZ5NwsPqWs O5Pxu+sVWG/iQ/d7JgfWF3pWYmhAtPmZ5ZUJtpFT1dJR6ahL
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_152026_428240_C77A84AE 
X-CRM114-Status: GOOD (  16.15  )
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

VGhlIC5yZW1vdmUoKSBjYWxsYmFjayBmb3IgYSBwbGF0Zm9ybSBkcml2ZXIgcmV0dXJucyBhbiBp
bnQgd2hpY2ggbWFrZXMKbWFueSBkcml2ZXIgYXV0aG9ycyB3cm9uZ2x5IGFzc3VtZSBpdCdzIHBv
c3NpYmxlIHRvIGRvIGVycm9yIGhhbmRsaW5nIGJ5CnJldHVybmluZyBhbiBlcnJvciBjb2RlLiBI
b3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyAobW9zdGx5KSBpZ25vcmVkCmFuZCB0aGlzIHR5
cGljYWxseSByZXN1bHRzIGluIHJlc291cmNlIGxlYWtzLiBUbyBpbXByb3ZlIGhlcmUgdGhlcmUg
aXMgYQpxdWVzdCB0byBtYWtlIHRoZSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuIHZvaWQuIEluIHRo
ZSBmaXJzdCBzdGVwIG9mIHRoaXMKcXVlc3QgYWxsIGRyaXZlcnMgYXJlIGNvbnZlcnRlZCB0byAu
cmVtb3ZlX25ldygpIHdoaWNoIGFscmVhZHkgcmV0dXJucwp2b2lkLgoKVHJpdmlhbGx5IGNvbnZl
cnQgdGhpcyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92ZQpj
YWxsYmFjayB0byB0aGUgdm9pZCByZXR1cm5pbmcgdmFyaWFudC4KClNpZ25lZC1vZmYtYnk6IFV3
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogc291
bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX2kyc190ZG0uYyB8IDYgKystLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NvdW5k
L3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9pMnNfdGRtLmMgYi9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9j
a2NoaXBfaTJzX3RkbS5jCmluZGV4IDdlOTk2NTUwZDFkZi4uNWM1MWRiZWY2ZTg2IDEwMDY0NAot
LS0gYS9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfaTJzX3RkbS5jCisrKyBiL3NvdW5kL3Nv
Yy9yb2NrY2hpcC9yb2NrY2hpcF9pMnNfdGRtLmMKQEAgLTE3MTQsMTQgKzE3MTQsMTIgQEAgc3Rh
dGljIGludCByb2NrY2hpcF9pMnNfdGRtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCiAJcmV0dXJuIHJldDsKIH0KIAotc3RhdGljIGludCByb2NrY2hpcF9pMnNfdGRtX3JlbW92
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQorc3RhdGljIHZvaWQgcm9ja2NoaXBfaTJz
X3RkbV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlpZiAoIXBtX3J1
bnRpbWVfc3RhdHVzX3N1c3BlbmRlZCgmcGRldi0+ZGV2KSkKIAkJaTJzX3RkbV9ydW50aW1lX3N1
c3BlbmQoJnBkZXYtPmRldik7CiAKIAlwbV9ydW50aW1lX2Rpc2FibGUoJnBkZXYtPmRldik7Ci0K
LQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGludCBfX21heWJlX3VudXNlZCByb2NrY2hpcF9pMnNf
dGRtX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQpAQCAtMTc1Niw3ICsxNzU0LDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHJvY2tjaGlwX2kyc190ZG1fcG1fb3BzID0gewog
CiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciByb2NrY2hpcF9pMnNfdGRtX2RyaXZlciA9
IHsKIAkucHJvYmUgPSByb2NrY2hpcF9pMnNfdGRtX3Byb2JlLAotCS5yZW1vdmUgPSByb2NrY2hp
cF9pMnNfdGRtX3JlbW92ZSwKKwkucmVtb3ZlX25ldyA9IHJvY2tjaGlwX2kyc190ZG1fcmVtb3Zl
LAogCS5kcml2ZXIgPSB7CiAJCS5uYW1lID0gRFJWX05BTUUsCiAJCS5vZl9tYXRjaF90YWJsZSA9
IG9mX21hdGNoX3B0cihyb2NrY2hpcF9pMnNfdGRtX21hdGNoKSwKLS0gCjIuNDIuMAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
