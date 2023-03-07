Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77AFEC678D5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 12:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEM3wvoRF6I2LutmxrSWLR80ZIqePEnQGhYr9HRTeuQ=; b=lY+5qSsrcDygY8
	zAx8LrP/Bo1yNOLBYAvqeEkL16hb/4kQLJPzEmXnZkfLkjxnXaHljJfYwpScxDIlYKWcHoSUkfHDg
	qWxVuZ7V1DtMM+OgzhhkQYrAM6zdt4AyEIxJOuEUy5ngsPqxn2viNqnANLy8yvCkplHNnkcA9ufWQ
	o4oROvnv4eTEhuaxJtEqGftakmfUISrkAFdbLFhQMRdeonc2kJmAU4fY2IGV+2izkLzzqCkdWGksO
	h1jni4//LmpH7Zdlj6xibOCYcE6LO2Fpoz1EwiEvRr8N9ar1rayrpLiAi7QiKzt9TvylLhV3vZLiz
	iicswKVOioeB7JKanHnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVze-00HZmY-77; Tue, 07 Mar 2023 12:00:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyc-00HZ9U-Eg
	for linux-rockchip@lists.infradead.org; Tue, 07 Mar 2023 11:59:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyK-0006Zc-Hn; Tue, 07 Mar 2023 12:59:12 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-002TG5-Qk; Tue, 07 Mar 2023 12:59:11 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-002yjt-D5; Tue, 07 Mar 2023 12:59:10 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 21/31] phy: rockchip: phy-rockchip-inno-hdmi: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:50 +0100
Message-Id: <20230307115900.2293120-22-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1741; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=aTRs7YiQ1a+7kK0P1WOZZiXEEjnBAy1vmBRa+WG7UPE=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBybV3L1Dd9AGvegJYwUQZ5NxkwVVEGm6pZSsb LzqF38wCSiJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcm1QAKCRDB/BR4rcrs CWIxCACcWZnkd/l9nWEAp/E6XOnXQklrsB5Szy/o/BxNY+Jmd1pDG5nsSsCq5zcLd8//GsGZpqV YpBlpqd+sq4BecUPOFSp/UfxqrJoa6GbgtiNnssv5vF5pE6MJp6Iu/qbAP4u1oJ5yeuouW8FODv 1HJlz6AAkdakrQB+llwS7QF9OtCtaY9PhjHVYv9thSK0EdXZDB5abHZERQVy/xRaFwln1Ikji6/ sSK7bSIGYfhnZZJSKnfypGFYkhxysYcKt2YunaPbME1EW/kbr+I0UddaIYhqSjMmXIlHfYGfo2K mjUrvgga7sk0qzjo0VpZJ6iO2BiQJ8InJJPsfRdNhUVHp6aI
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035930_518911_982EAFFC 
X-CRM114-Status: GOOD (  16.05  )
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
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8taGRtaS5jIHwgNiArKy0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8taGRtaS5jIGIvZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8taGRtaS5jCmluZGV4IDgwYWNjYTRlOWUx
NC4uMWUxNTYzZjVmZmZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtaW5uby1oZG1pLmMKKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LWlubm8taGRtaS5jCkBAIC0xMjQ2LDExICsxMjQ2LDkgQEAgc3RhdGljIGludCBpbm5vX2hkbWlf
cGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIFBUUl9FUlJf
T1JfWkVSTyhwaHlfcHJvdmlkZXIpOwogfQogCi1zdGF0aWMgaW50IGlubm9faGRtaV9waHlfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9pZCBpbm5vX2hkbWlf
cGh5X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewogCW9mX2Nsa19kZWxf
cHJvdmlkZXIocGRldi0+ZGV2Lm9mX25vZGUpOwotCi0JcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlubm9faGRtaV9waHlfb2ZfbWF0Y2hbXSA9IHsKQEAg
LTEyNjYsNyArMTI2NCw3IEBAIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGlubm9faGRtaV9waHlf
b2ZfbWF0Y2gpOwogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBpbm5vX2hkbWlfcGh5
X2RyaXZlciA9IHsKIAkucHJvYmUgID0gaW5ub19oZG1pX3BoeV9wcm9iZSwKLQkucmVtb3ZlID0g
aW5ub19oZG1pX3BoeV9yZW1vdmUsCisJLnJlbW92ZV9uZXcgPSBpbm5vX2hkbWlfcGh5X3JlbW92
ZSwKIAkuZHJpdmVyID0gewogCQkubmFtZSA9ICJpbm5vLWhkbWktcGh5IiwKIAkJLm9mX21hdGNo
X3RhYmxlID0gaW5ub19oZG1pX3BoeV9vZl9tYXRjaCwKLS0gCjIuMzkuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
