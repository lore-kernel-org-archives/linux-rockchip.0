Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4275FCDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Oct 2023 07:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ioq1EqBufMmzFRpxoNtQ+2DM754PnZoWurePhccTajY=; b=lgm88XIXmEDwG5
	vzb1nmXhrpLnVH0tghKp6tAmb16sc7K9ihzNnxko4LuG9cpmdDeBPsile5T3RsadjIINxn+JEELBs
	ep0uu4ofGPnlZVuvYcaRstfenTwjpeXP9lJvxdznmCBKpFBNK+peP9apK/WDah3duyJHJgLJ0tngE
	VqI3uRpcdV7iXkyruwsDxPH2VPZ5XAWPzlk64Ujmf5vAfBT1mVI2YlvbW7MUpoZmxKHMqIgqVbUE2
	PiNOyE3ivFIy5aF7d7gpSr8QI0dMMEP7Gup1aqkdruLg4jU3FQkLc9pR+H7vHI5hYlgMPY3MhA4MG
	K1sZGOrkGIdejq71/B7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtkNu-001Ubf-1r;
	Fri, 20 Oct 2023 07:57:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtkND-001UE8-0a
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Oct 2023 07:56:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qtkN6-0003bJ-Ci; Fri, 20 Oct 2023 09:56:40 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qtkN4-002yW5-DU; Fri, 20 Oct 2023 09:56:38 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qtkN4-002OKQ-47; Fri, 20 Oct 2023 09:56:38 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>
Cc: Corentin Labbe <clabbe@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-crypto@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 34/42] crypto: rockchip/rk3288 - Convert to platform remove callback returning void
Date: Fri, 20 Oct 2023 09:55:56 +0200
Message-ID: <20231020075521.2121571-78-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231020075521.2121571-44-u.kleine-koenig@pengutronix.de>
References: <20231020075521.2121571-44-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1829; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=OSkAhDdh6kSQDLklGjL3p61jBuTD2vuCyW1G0nBc6KE=; b=owGbwMvMwMXY3/A7olbonx/jabUkhlQjowm3z2mLOVfsj9qseDcuU47JZLU/S4rYGs64R1+3G QvX7/XvZDRmYWDkYpAVU2Sxb1yTaVUlF9m59t9lmEGsTCBTGLg4BWAi7IkcDA3aYiz6ce961hiE fnQ/rRpn3Lb+WmXem0wrEe6KRRwbQs6wbpH46aaR2xKqmeN94pPaf2Umz7PG6ip7rJNa5pcYz5M 7xBPF1OH1Lmk3P/+3MwIrjoZt0Jcsuyv0fsZ60Sl5KvuKJyy8Fv21cesv6/XXMi+aX5hXwZ03T3 TzAYPFHjsS55xZVR16NWn62RTXl0VRqW/lBZr4Km10Fx07rRV69NWVg46R/BpeC132+yrf+XVwe Wr93wPn2a16p1ckB5mrbqpsqK3IuBxkrdzYs7mqqvlhzq7jefVaKpcYahI6biUJ23L8LtloXjCx QTs/LPNT7Mrnq1quP0s2mprkPd3rd8p5NY2fTD/X81UDAA==
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_005647_216352_8F8279CC 
X-CRM114-Status: GOOD (  15.16  )
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
ZXJzL2NyeXB0by9yb2NrY2hpcC9yazMyODhfY3J5cHRvLmMgfCA1ICsrLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvY3J5cHRvL3JvY2tjaGlwL3JrMzI4OF9jcnlwdG8uYyBiL2RyaXZlcnMvY3J5cHRvL3JvY2tj
aGlwL3JrMzI4OF9jcnlwdG8uYwppbmRleCA3N2Q1NzA1YTVkOTYuLjcwZWRmNDBiYzUyMyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9jcnlwdG8vcm9ja2NoaXAvcmszMjg4X2NyeXB0by5jCisrKyBiL2Ry
aXZlcnMvY3J5cHRvL3JvY2tjaGlwL3JrMzI4OF9jcnlwdG8uYwpAQCAtNDA1LDcgKzQwNSw3IEBA
IHN0YXRpYyBpbnQgcmtfY3J5cHRvX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiAJcmV0dXJuIGVycjsKIH0KIAotc3RhdGljIGludCBya19jcnlwdG9fcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9pZCBya19jcnlwdG9fcmVtb3ZlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHJrX2NyeXB0b19pbmZvICpjcnlw
dG9fdG1wID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAJc3RydWN0IHJrX2NyeXB0b19p
bmZvICpmaXJzdDsKQEAgLTQyNCwxMiArNDI0LDExIEBAIHN0YXRpYyBpbnQgcmtfY3J5cHRvX3Jl
bW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCX0KIAlya19jcnlwdG9fcG1fZXhp
dChjcnlwdG9fdG1wKTsKIAljcnlwdG9fZW5naW5lX2V4aXQoY3J5cHRvX3RtcC0+ZW5naW5lKTsK
LQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgY3J5cHRvX2Ry
aXZlciA9IHsKIAkucHJvYmUJCT0gcmtfY3J5cHRvX3Byb2JlLAotCS5yZW1vdmUJCT0gcmtfY3J5
cHRvX3JlbW92ZSwKKwkucmVtb3ZlX25ldwk9IHJrX2NyeXB0b19yZW1vdmUsCiAJLmRyaXZlcgkJ
PSB7CiAJCS5uYW1lCT0gInJrMzI4OC1jcnlwdG8iLAogCQkucG0JCT0gJnJrX2NyeXB0b19wbV9v
cHMsCi0tIAoyLjQyLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
