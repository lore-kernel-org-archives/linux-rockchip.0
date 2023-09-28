Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00DB6CE7B04
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 07:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTJsiU1vubkkQuRFdkjVkv6F9zfMcpZq+48uRs+sjyU=; b=DpyAk7X7RGjDhJ
	d5ctCCdF15YNY/gwn0S0Yn25DvnlniTo5/UkQfrYdfVfLyMEUKNjdzdkBLDwMhcRnP1szwC0JNa1K
	P00VdCRkuUR1z7FJa5vkKqHyILD1O3YqgRcL97LXmHc1533mUdLl4lzOryHMnCaDC0KHybDd89Q7c
	M6a/FhaxjtFVDDIvYAOZC+HA9UdMQybNAn6Uty0M5qZTCVGUHo53jAzqONPX1hI1OxjE6Hu5frLX3
	SHPeloEIx9GX/s7eGwJi45+Rc6dpRZTheQGqgpTqlh2Y6gL3ucaRwO0MZfjN24WYyi6YdAkCS4mKi
	dY3taBkRjb59xkkmDxXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qll7V-002S7F-1N;
	Thu, 28 Sep 2023 07:07:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qll7F-002Rpn-1v
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Sep 2023 07:07:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qll79-0002Qw-Nj; Thu, 28 Sep 2023 09:07:11 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qll79-009WCJ-AP; Thu, 28 Sep 2023 09:07:11 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qll79-005ZXt-1D; Thu, 28 Sep 2023 09:07:11 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Andy Shevchenko <andy@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 16/23] gpio: rockchip: Convert to platform remove callback returning void
Date: Thu, 28 Sep 2023 09:06:59 +0200
Message-Id: <20230928070706.2290137-17-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230928070706.2290137-1-u.kleine-koenig@pengutronix.de>
References: <20230928070706.2290137-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1845; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=/JLr4SMPsCZBTD/SLWvssmlD+6BeWoxGgRK3cfWhYFs=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlFSRwp8TO2fD5SYns9E6Kt3lGHfikwBVk3nEgE c2ujARGr8eJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZRUkcAAKCRCPgPtYfRL+ ThCBB/9GGMGnIv3R0ikL7rxHVHWdlAQxJ093w/Cjj1PDwYrmn6YN8qn1j/kbyX/QoErQm676zv3 YFk4SoO+F6cD3xDM0LDXo/cAvspHBGOg1wIEOtTNjvLEYjST/UfVkFTR6w6tZWylGPOO+bh6/f6 Q64M8I0lBnwv/z+z6jdhSVZNFki+iVgXiuJijg2r02fR6Mz0KZTvqqQA175SKaas9uRdgBmvx1u Xyxx75rLm6avnZ2iZASmP44wpOSE/BWNO+qG/e17AzZ3CbjLxGxepXYxV1BIEBQHwh0ueMYdAAT OW34nOZ8ZkuzJS1WYJT3iDR9mEUvoi/KxwOZnQTCzvusgZ2k
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_000717_644149_98EFF982 
X-CRM114-Status: GOOD (  16.69  )
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
ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncGlvL2dw
aW8tcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKaW5kZXggYjM1Yjk2
MDQ0MTNmLi4yMzA0MGE4Y2VhMzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tj
aGlwLmMKKysrIGIvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwpAQCAtNzc4LDE0ICs3Nzgs
MTIgQEAgc3RhdGljIGludCByb2NrY2hpcF9ncGlvX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBpbnQgcm9ja2NoaXBfZ3Bpb19yZW1v
dmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2b2lkIHJvY2tjaGlwX2dw
aW9fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHJvY2tj
aGlwX3Bpbl9iYW5rICpiYW5rID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAKIAljbGtf
ZGlzYWJsZV91bnByZXBhcmUoYmFuay0+Y2xrKTsKIAlncGlvY2hpcF9yZW1vdmUoJmJhbmstPmdw
aW9fY2hpcCk7Ci0KLQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZp
Y2VfaWQgcm9ja2NoaXBfZ3Bpb19tYXRjaFtdID0gewpAQCAtNzk2LDcgKzc5NCw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJvY2tjaGlwX2dwaW9fbWF0Y2hbXSA9IHsKIAog
c3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBfZ3Bpb19kcml2ZXIgPSB7CiAJ
LnByb2JlCQk9IHJvY2tjaGlwX2dwaW9fcHJvYmUsCi0JLnJlbW92ZQkJPSByb2NrY2hpcF9ncGlv
X3JlbW92ZSwKKwkucmVtb3ZlX25ldwk9IHJvY2tjaGlwX2dwaW9fcmVtb3ZlLAogCS5kcml2ZXIJ
CT0gewogCQkubmFtZQk9ICJyb2NrY2hpcC1ncGlvIiwKIAkJLm9mX21hdGNoX3RhYmxlID0gcm9j
a2NoaXBfZ3Bpb19tYXRjaCwKLS0gCjIuNDAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
