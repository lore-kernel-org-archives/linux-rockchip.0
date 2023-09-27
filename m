Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4F0DE82CCF
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Sep 2023 19:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXpM2kl4Ps6adQRvO5cC6hmyqjDfBohbw4bkOLuYcwQ=; b=KMBBTzJZJAn6T3
	xez0+s9cYYGhiGCYarxiCeupBlr5tFJbTB2prEEZxs5trZgh6I+U35iYaR2yVT6huCICR5ntaYZ5a
	UI8+idS/A1pTRlnVSqbBtJfB1yarNWFOeBM72kF9505TQM/cwc5nlnZik5TahvJ7mMy5Ie9BOiYcl
	T/lm4ucn9pCDuQDtwrRyyo7iuKvn3aoRO33Hq36UgaTYvVnDRvfJ22WCkUazpdxfXt1rA4qo+B6wT
	mD+2DWfOgpR79v8eJjE/Jae4kgix39pWbmOIZ9TcLtODKq8vYcwWmff2SzUEeRiQwX/9uPuOEeHme
	1QjrrAoMPas2QKRzqdNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlaME-001fLb-2b;
	Wed, 27 Sep 2023 19:38:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlaMB-001fJA-0h
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Sep 2023 19:38:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qlaM0-0002Qj-7j; Wed, 27 Sep 2023 21:37:48 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qlaLz-009PaW-2j; Wed, 27 Sep 2023 21:37:47 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qlaLy-005Rgk-Po; Wed, 27 Sep 2023 21:37:46 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 22/31] thermal: rockchip: Convert to platform remove callback returning void
Date: Wed, 27 Sep 2023 21:37:27 +0200
Message-Id: <20230927193736.2236447-23-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230927193736.2236447-1-u.kleine-koenig@pengutronix.de>
References: <20230927193736.2236447-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1954; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=e9cswn2yEzGLDC3P0jt87Owou9KyRVBuLfDjfIop/Mc=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlFIRy71cHzhX/ZuIEZQHoUBDTG+CGXJ4ufI0VD wDtDvakgvyJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZRSEcgAKCRCPgPtYfRL+ TmPRB/9Q/oLKkk1Th1akg27q61GsJsMU10Du/v9EzM16DwZYTHR25fuBljtlcZe+dNxZV+5suKd ZmI09Fse46EVDBcm17gwGY3ohWxM1PCEDsILOWTXz2VS0N5wnPCW1cdhOYAzQn6WX8i+CIQ0Z46 aiItwpBzexEgwAbhbnJDpfNB3G208JnaJWUQgB6ujqcnOYwHUCvxlfMvX1pobLzPivvhS4rllEq QeVFBl497yxtK0BYqTxY+0f+j0xTWjAW2ZIr5dVxBpV2cYuCdaxx58fbVWBFkHfJ8tWcOjjsYC6 e20P2VcjnmmDCnrXPAlUTUR4u2xW9xiOTFVJzAIBQXE03U+R
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230927_123759_251559_F5662BA8 
X-CRM114-Status: GOOD (  15.15  )
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
b3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyBpZ25vcmVkIChhcGFydApmcm9tIGVtaXR0aW5n
IGEgd2FybmluZykgYW5kIHRoaXMgdHlwaWNhbGx5IHJlc3VsdHMgaW4gcmVzb3VyY2UgbGVha3Mu
CgpUbyBpbXByb3ZlIGhlcmUgdGhlcmUgaXMgYSBxdWVzdCB0byBtYWtlIHRoZSByZW1vdmUgY2Fs
bGJhY2sgcmV0dXJuCnZvaWQuIEluIHRoZSBmaXJzdCBzdGVwIG9mIHRoaXMgcXVlc3QgYWxsIGRy
aXZlcnMgYXJlIGNvbnZlcnRlZCB0bwoucmVtb3ZlX25ldygpLCB3aGljaCBhbHJlYWR5IHJldHVy
bnMgdm9pZC4gRXZlbnR1YWxseSBhZnRlciBhbGwgZHJpdmVycwphcmUgY29udmVydGVkLCAucmVt
b3ZlX25ldygpIHdpbGwgYmUgcmVuYW1lZCB0byAucmVtb3ZlKCkuCgpUcml2aWFsbHkgY29udmVy
dCB0aGlzIGRyaXZlciBmcm9tIGFsd2F5cyByZXR1cm5pbmcgemVybyBpbiB0aGUgcmVtb3ZlCmNh
bGxiYWNrIHRvIHRoZSB2b2lkIHJldHVybmluZyB2YXJpYW50LgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2
ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy90
aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVy
bWFsLmMKaW5kZXggNzcyMzFhOWQyOGZmLi4wODZlZDQyZGQxNmMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKKysrIGIvZHJpdmVycy90aGVybWFsL3JvY2tj
aGlwX3RoZXJtYWwuYwpAQCAtMTYwMSw3ICsxNjAxLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF90
aGVybWFsX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIDA7CiB9
CiAKLXN0YXRpYyBpbnQgcm9ja2NoaXBfdGhlcm1hbF9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKK3N0YXRpYyB2b2lkIHJvY2tjaGlwX3RoZXJtYWxfcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHJvY2tjaGlwX3RoZXJtYWxfZGF0YSAq
dGhlcm1hbCA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwogCWludCBpOwpAQCAtMTYxNCw4
ICsxNjE0LDYgQEAgc3RhdGljIGludCByb2NrY2hpcF90aGVybWFsX3JlbW92ZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQogCX0KIAogCXRoZXJtYWwtPmNoaXAtPmNvbnRyb2wodGhlcm1h
bC0+cmVncywgZmFsc2UpOwotCi0JcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBpbnQgX19tYXliZV91
bnVzZWQgcm9ja2NoaXBfdGhlcm1hbF9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKQEAgLTE2
OTEsNyArMTY4OSw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHJvY2tjaGlwX3Ro
ZXJtYWxfZHJpdmVyID0gewogCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9yb2NrY2hpcF90aGVybWFs
X21hdGNoLAogCX0sCiAJLnByb2JlID0gcm9ja2NoaXBfdGhlcm1hbF9wcm9iZSwKLQkucmVtb3Zl
ID0gcm9ja2NoaXBfdGhlcm1hbF9yZW1vdmUsCisJLnJlbW92ZV9uZXcgPSByb2NrY2hpcF90aGVy
bWFsX3JlbW92ZSwKIH07CiAKIG1vZHVsZV9wbGF0Zm9ybV9kcml2ZXIocm9ja2NoaXBfdGhlcm1h
bF9kcml2ZXIpOwotLSAKMi40MC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
