Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36392E95A91
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 09:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMNSTryjIKTGYVmXDHxoRFi5JC38C5f4quxebk9rYEw=; b=OGq0ZITtzfwOdI
	eZJfMOq8yLPFQbZv1ZzU67sfnTWQ8zAcyxXfG6SWlO+XzziZKrmE4mj1RiA3zXicnNXkvqPrdf0SA
	Gae/jDgq61OQFxk7wfgHcMaVtWhm92ssoa9RCOH1MoQs5lhxQ6/+QuluYcet4jG1who4zyWpXcjOQ
	8GHLsDoBA0udEqdJleptnhObTaPIkI84dRS9NJelK7qSrIxKd6cV3hPr3uAjJjr03/Lhk/faXf8b0
	7HZlOPUNuftal/x9o6QM4ttTtYAVhl+hkusdl7x0Rx21s4uvDkiNoUkSGFDgm2Bi2MeZq9bPcZLfY
	oD1Y6XDPCMrw9uK9qtAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpmTS-00A5Ij-34;
	Mon, 09 Oct 2023 09:22:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpmTH-00A5BM-3B
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Oct 2023 09:22:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qpmTE-0006ts-SJ; Mon, 09 Oct 2023 11:22:36 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qpmTE-000NWz-F4; Mon, 09 Oct 2023 11:22:36 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qpmTE-00C4pT-5l; Mon, 09 Oct 2023 11:22:36 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 11/20] pinctrl: rockchip: Convert to platform remove callback returning void
Date: Mon,  9 Oct 2023 10:38:47 +0200
Message-Id: <20231009083856.222030-12-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231009083856.222030-1-u.kleine-koenig@pengutronix.de>
References: <20231009083856.222030-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1992; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=1r75hWhFIwS3Xxx1rg10xcxelpQqUr47pBcp8katCvo=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlI7wLOmza0DUzIsCY9zfipvZ36aTSt6DU6kjvl EYs+uaL1TSJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZSO8CwAKCRCPgPtYfRL+ TnXnB/9xI3Eby3413pFsFuP6EKG8aPL42C5OSRsytr3PhPLwgGp3LeX4/f2CzGzcQvQ1x/iXOLl mnhbwlPcElww+ahQoXDEsvpW4wLsNmZjTbrttMB+eHZ4TdXWn8dW6qsnosiATY3xSAgYsVn3UF8 t+K1fNRR9o5yOWL5uTaH06nXwmqZ2ZTFt3Kghc4NpMcJw5QeI0e89NdlHfR7lgUCFbLXgRUFkJa oCxEl53LUOeQSti/1W5K5dL7lAeLhX3H87pGo0fDnnXDfS9tEfty6ZoAXQTzp9sBf5oi8e13aYb qRGs+RIDCz2PyhmyH+dx8TTA+OCZH1VE4pVnXA+OpmzaD+1y
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_022240_064067_27AEBC7F 
X-CRM114-Status: GOOD (  16.77  )
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
ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tj
aGlwLmMKaW5kZXggNDVlNDE2ZjY4ZTc0Li4zYmVkZjM2YTAwMTkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvcGluY3RybC9waW5jdHJsLXJvY2tjaGlwLmMKKysrIGIvZHJpdmVycy9waW5jdHJsL3BpbmN0
cmwtcm9ja2NoaXAuYwpAQCAtMzQyOSw3ICszNDI5LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9w
aW5jdHJsX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIDA7CiB9
CiAKLXN0YXRpYyBpbnQgcm9ja2NoaXBfcGluY3RybF9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKK3N0YXRpYyB2b2lkIHJvY2tjaGlwX3BpbmN0cmxfcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHJvY2tjaGlwX3BpbmN0cmwgKmluZm8g
PSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKIAlzdHJ1Y3Qgcm9ja2NoaXBfcGluX2Jhbmsg
KmJhbms7CkBAIC0zNDUwLDggKzM0NTAsNiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BpbmN0cmxf
cmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCX0KIAkJbXV0ZXhfdW5sb2Nr
KCZiYW5rLT5kZWZlcnJlZF9sb2NrKTsKIAl9Ci0KLQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIHN0
cnVjdCByb2NrY2hpcF9waW5fYmFuayBweDMwX3Bpbl9iYW5rc1tdID0gewpAQCAtMzk4Miw3ICsz
OTgwLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcm9ja2NoaXBfcGluY3Ry
bF9kdF9tYXRjaFtdID0gewogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciByb2NrY2hp
cF9waW5jdHJsX2RyaXZlciA9IHsKIAkucHJvYmUJCT0gcm9ja2NoaXBfcGluY3RybF9wcm9iZSwK
LQkucmVtb3ZlCQk9IHJvY2tjaGlwX3BpbmN0cmxfcmVtb3ZlLAorCS5yZW1vdmVfbmV3CT0gcm9j
a2NoaXBfcGluY3RybF9yZW1vdmUsCiAJLmRyaXZlciA9IHsKIAkJLm5hbWUJPSAicm9ja2NoaXAt
cGluY3RybCIsCiAJCS5wbSA9ICZyb2NrY2hpcF9waW5jdHJsX2Rldl9wbV9vcHMsCi0tIAoyLjQw
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
