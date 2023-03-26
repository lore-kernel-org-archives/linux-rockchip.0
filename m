Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ADA4C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 14:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJ8LZCymNSgJi7rukhrEWtKR7BIn6k05IY2PJSgWt6s=; b=gDj+65eYgDkQ09
	uddeBrDjjsldHmmJLX/3iT7/HRy+C4kpcVeOLEZ3Tl+FNvzQ7rkHKw/QKfNQId9OuZ18/NR/cbIvM
	HMDZFlRKl4VBr7WmCAF11klUZ8VvwPkM9y8FFczkChENTrh8YLTLOWYMQVFZS0+B+INSm/b9+6xAa
	kAGqZVwBPTsAXLH20r0jPxawaQkst50gZ8i6T5dttEfF4eUTwI++RWGTLAumSTDnZCDRkh9jAoZY4
	jx5E/cWRopQG3L4XBBx6H8dMuFoy3/lU3vVjDvUqSnsQQzrDyPQ0+c2Cf2NouM59d+ds0DGAWyNz+
	6kf1yPlHlidtvVPHahig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgRRZ-008ZfQ-1i;
	Sun, 26 Mar 2023 14:34:01 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgRQh-008YwS-2E
	for linux-rockchip@bombadil.infradead.org;
	Sun, 26 Mar 2023 14:33:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=O3dLPb25KkVbQHhROJobFc+hmqqQpVIqv2TaxdiZcSs=; b=KaeYAkUgcT6It4cLcOUDrQopd7
	Nbo4wtcQTx/P0ePO73sXBQ2ioEieGeKJnYbpMEZRYliuW7EUzbX3f67psRXfyT24AmBu9B8+ARTbI
	NxpQJZONfsGvkBPnJekN97vFTO6JX435rzF5HUdkqCJI2RexB1d4GykXVsYhxosg6XyGGo4y/m6ao
	qWCKHs0SAtiJlyYHylxhl95unIePHunW6NVu5lFH2B+eB/GB75jVsgmE62ds8UxWnupnAt/T3S66O
	kVOinbjNjLeBV7i3dUm9kL0MKp65Ya8hk33d0D6UmBPZes7LLGojpLj2TBzms2Pr6pecp7DQ9vDDA
	AVllZolA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pgRQX-006aQm-So
	for linux-rockchip@lists.infradead.org; Sun, 26 Mar 2023 14:33:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pgRQM-0008S2-Pp; Sun, 26 Mar 2023 16:32:46 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pgRQF-006rdO-Qe; Sun, 26 Mar 2023 16:32:39 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pgRQE-0088XZ-6K; Sun, 26 Mar 2023 16:32:38 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 059/117] media: rga: Convert to platform remove callback returning void
Date: Sun, 26 Mar 2023 16:31:26 +0200
Message-Id: <20230326143224.572654-62-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230326143224.572654-1-u.kleine-koenig@pengutronix.de>
References: <20230326143224.572654-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1753; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=rQQfsHrwV+c5wQvF4lxwVI1GbxtOlE3rn040X1cCNXs=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkIFbNZWAoNfeZ9R1R0Vor7bhu8//Bx1HBz2Mvn 0ZZ6FSPkJeJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZCBWzQAKCRCPgPtYfRL+ TkKbCAC3ciBfPEnrewhCphhzSZ6Rle7/TOFS75TLT2UAgJBi2wBF9i1OqQtpBCR2MJ757dV0EHS 29H8a2jNlXTrt17GCzk+Nkf3uC1mbcrFPkQFS6JmnD5RCcLdX5/48563D2J7MDa/a70OiXpu9F2 pxG4750fz8oNQZMlYcyjm9/vZQcDmMi5+iIf8IwYNz9PAjBzEZSHuPcMrLGIIed/2zZIQbuPbEO ePSPCv71Y9BZB74NpmbPQ6GwLuGtBg/Q8+ifuz2+Ud5MvXjpfAkDtFf4BL018kCjKKLE0SNRvJ8 GJcU4IO56EVXd70rqdmIRvrzGE3cFHTpOIbzxc/RcYU8KV4d
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_153257_982819_F5EE4C3E 
X-CRM114-Status: GOOD (  13.07  )
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
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgfCA2ICsrLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4IDYxYjI1ZmNmODI2ZS4uNjdkY2YyMmU1
YmEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2Eu
YworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwpAQCAtOTMw
LDcgKzkzMCw3IEBAIHN0YXRpYyBpbnQgcmdhX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiAJcmV0dXJuIHJldDsKIH0KIAotc3RhdGljIGludCByZ2FfcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9pZCByZ2FfcmVtb3ZlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gcGxhdGZv
cm1fZ2V0X2RydmRhdGEocGRldik7CiAKQEAgLTk0Nyw4ICs5NDcsNiBAQCBzdGF0aWMgaW50IHJn
YV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAl2NGwyX2RldmljZV91bnJl
Z2lzdGVyKCZyZ2EtPnY0bDJfZGV2KTsKIAogCXBtX3J1bnRpbWVfZGlzYWJsZShyZ2EtPmRldik7
Ci0KLQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGludCBfX21heWJlX3VudXNlZCByZ2FfcnVudGlt
ZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKQEAgLTk4Niw3ICs5ODQsNyBAQCBNT0RVTEVf
REVWSUNFX1RBQkxFKG9mLCByb2NrY2hpcF9yZ2FfbWF0Y2gpOwogCiBzdGF0aWMgc3RydWN0IHBs
YXRmb3JtX2RyaXZlciByZ2FfcGRydiA9IHsKIAkucHJvYmUgPSByZ2FfcHJvYmUsCi0JLnJlbW92
ZSA9IHJnYV9yZW1vdmUsCisJLnJlbW92ZV9uZXcgPSByZ2FfcmVtb3ZlLAogCS5kcml2ZXIgPSB7
CiAJCS5uYW1lID0gUkdBX05BTUUsCiAJCS5wbSA9ICZyZ2FfcG0sCi0tIAoyLjM5LjIKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
