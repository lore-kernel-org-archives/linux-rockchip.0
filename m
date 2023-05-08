Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7021C7EE25
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 May 2023 20:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvEi6Iyw8e6FPbEiy/7H2kaBqXiCPjtHGkKt+Z1yXMU=; b=tCHRlD7RvSOsg0
	o8i/LGG/Xcv1e+pL1SFeutnmXG2MKCelKL4P9ojDcowGI/bpOnN3gOt60YU6sCSeLrQLPjgp14aRf
	bRORvF4o5wR+4kPjZxHwy6pYz05VSvSFY3L5Wkq1Dsv61KBFrMPnRuDvWXBFVg0qMRZdCo/tC5qz2
	yLz/AElfJwh8H1e9GVvt5EG6MzqsNbg9Wbe9pUQggtcJLMsWC5WKWewtPalTnAkP5R6irD1DCCTd3
	CWZMD1XqUJu190yjKLpE0WlEjGjS1eghinQ3+JhjW+b/jksUok1gBvK397pV2585vIyC7MxjtTpsm
	6ViCmVzgChsjz2xebaVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pw7rq-001OKI-1N;
	Mon, 08 May 2023 20:53:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pw7rQ-001Nuv-2s
	for linux-rockchip@lists.infradead.org;
	Mon, 08 May 2023 20:53:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pw7rM-0003u4-HF; Mon, 08 May 2023 22:53:28 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pw7rL-0024tn-QY; Mon, 08 May 2023 22:53:27 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pw7rL-002YYb-3R; Mon, 08 May 2023 22:53:27 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Heiko Stuebner <heiko@sntech.de>,
	Wolfram Sang <wsa@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	kernel@pengutronix.de
Subject: [PATCH 60/89] i2c: rk3x: Convert to platform remove callback returning void
Date: Mon,  8 May 2023 22:52:37 +0200
Message-Id: <20230508205306.1474415-61-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230508205306.1474415-1-u.kleine-koenig@pengutronix.de>
References: <20230508205306.1474415-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1732; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=AaGQFomoFiReIuYC1pvhE1kk8xeCgfnRJ003pYzGhgM=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkWWD5Blzh3tdEZ68Ch76V/oeJAIwfm2QSaUoF3 P3jfmJKhR2JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZFlg+QAKCRCPgPtYfRL+ TjSdB/4v3jPTc2dE7vKKlt4EWSbbgv80S8HhHvYgxRfjJThGDeoyEkYFNDzq2neYS2v6K9AUdHU 7lwc1jnSXwafNhdBALDwOdchW/Whv4zmFlbwdsUNcER0c1hW5dFNGfPrHN8jxYt43LxtSZ0OyH+ Ku9wP3hu6KGUA/ZX66B4g3VoTy7tWbXpTQnRS5Li0tr5oDuBvwb/BZX5ws9bIsX4J5jZwHfV015 r/5Pge2HgVS9ujCCd/jgGUbyxhFqGoEyP/axeYxEKhP8nq7cNaG/RjAMHnputqvJ8f2tGfsQ2js 9Ztin/AJdsZ7uZAzacYiZDDrLCgNY0PHHRKgE1wbdQdVNX7D
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_135332_940432_CDB660FD 
X-CRM114-Status: GOOD (  16.07  )
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
dmVycy9pMmMvYnVzc2VzL2kyYy1yazN4LmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9i
dXNzZXMvaTJjLXJrM3guYyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5jCmluZGV4IGIz
MWNmNGYxOGY4NS4uYTA0NGNhMGMzNWExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2kyYy9idXNzZXMv
aTJjLXJrM3guYworKysgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYwpAQCAtMTM3Miw3
ICsxMzcyLDcgQEAgc3RhdGljIGludCByazN4X2kyY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQogCXJldHVybiByZXQ7CiB9CiAKLXN0YXRpYyBpbnQgcmszeF9pMmNfcmVtb3Zl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9pZCByazN4X2kyY19yZW1v
dmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3QgcmszeF9pMmMgKmky
YyA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwogCkBAIC0xMzgxLDE1ICsxMzgxLDEzIEBA
IHN0YXRpYyBpbnQgcmszeF9pMmNfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiAJY2xrX25vdGlmaWVyX3VucmVnaXN0ZXIoaTJjLT5jbGssICZpMmMtPmNsa19yYXRlX25iKTsK
IAljbGtfdW5wcmVwYXJlKGkyYy0+cGNsayk7CiAJY2xrX3VucHJlcGFyZShpMmMtPmNsayk7Ci0K
LQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIFNJTVBMRV9ERVZfUE1fT1BTKHJrM3hfaTJjX3BtX29w
cywgTlVMTCwgcmszeF9pMmNfcmVzdW1lKTsKIAogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2
ZXIgcmszeF9pMmNfZHJpdmVyID0gewogCS5wcm9iZSAgID0gcmszeF9pMmNfcHJvYmUsCi0JLnJl
bW92ZSAgPSByazN4X2kyY19yZW1vdmUsCisJLnJlbW92ZV9uZXcgPSByazN4X2kyY19yZW1vdmUs
CiAJLmRyaXZlciAgPSB7CiAJCS5uYW1lICA9ICJyazN4LWkyYyIsCiAJCS5vZl9tYXRjaF90YWJs
ZSA9IHJrM3hfaTJjX21hdGNoLAotLSAKMi4zOS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
