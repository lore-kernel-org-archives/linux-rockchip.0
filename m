Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36975C7EE2D
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Mar 2023 18:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/ViXFA01gzyE+LzgFOKpdw1QtwJudr+lH447+oAeu4=; b=L5enNAOftsic9g
	XztG/GlC5ChnVi2jkTLPQcgKpBts6uHEVlnrKmBA6U1kcOR66s5TJjCvRekPqfnRgKgKRpQXb+tME
	T3vYbXmbixItm3BTDREQThUjI8EUWunf/c3oIcJY5vYNFhVtiPwPv40RtFIei0mxs8ORjugbY8DYB
	zbGX1nRUvYecrR8MFyHwzFfvi7+CXDpvL3CQx917wxsHmTKsaTYIiaIvfURqgMGJpJZ/Sl9B6Fer8
	0WcsOXJ1qQecA00wOED7Tj8G9MIP95LvGdDL1rj3YSUIODPcgWxJAXZKgoCHM8zTuhExMW3S2mngV
	Qh5+x/gpaMIpCwPe1uRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYAbV-007EN9-KD; Fri, 03 Mar 2023 18:58:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYAYf-007CrW-PT
	for linux-rockchip@lists.infradead.org; Fri, 03 Mar 2023 18:55:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pYAYZ-0006OB-Pd; Fri, 03 Mar 2023 19:55:03 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pYAYZ-001cV1-1y; Fri, 03 Mar 2023 19:55:03 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pYAYW-001ukg-RA; Fri, 03 Mar 2023 19:55:00 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: kernel@pengutronix.de,
	linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 18/30] pwm: rockchip: Convert to platform remove callback returning void
Date: Fri,  3 Mar 2023 19:54:33 +0100
Message-Id: <20230303185445.2112695-19-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230303185445.2112695-1-u.kleine-koenig@pengutronix.de>
References: <20230303185445.2112695-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1721; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=BA5tBz3RDO+orps9Y8Wko0quf5LMj8+YSMYVNzVlmtU=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkAkI/53UCg8nISaMHiQ4+6ZzNDpKtLgpeheIWj JXmDV1274mJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAJCPwAKCRDB/BR4rcrs CRYnB/956EuHuoq0uYM1tAohD8oJ5deZmHNw5BQU3ZYryxd5Qgo/oR3pqM+6lVF1esDKM5dP07h 9HcJngDvvnuZ09M+m1HvcrgBIe/1mF9b+y7qKwO7vGfXZHR+CA39vVepDQa0WbIG5bWo8JFF4wd RbtnaijBEOZVb3fApvM7qeGW+nFWrr9Fvx17XDNAIlXIHtf2BnFPAgJ4NVuugGhTJdp6epBAouY 2pskEFCFb4W+0zKrrdo1c+ezjfqW6EFWdDSwLOSvCtoxfxHKesGBcbq63iOvcTtWltA7/FHuVPo awIhMIyGoxrrBBbAth5LDK1TGe6WqTEiASb0IqRH9IKGA6Ke
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_105509_861027_7B03F943 
X-CRM114-Status: GOOD (  15.42  )
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
dmVycy9wd20vcHdtLXJvY2tjaGlwLmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20t
cm9ja2NoaXAuYyBiL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jCmluZGV4IDdmMDg0ZWIzNDA5
Mi4uYzFhMWYyZDg2NGI1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYwor
KysgYi9kcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYwpAQCAtMzc2LDcgKzM3Niw3IEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJ
cmV0dXJuIHJldDsKIH0KIAotc3RhdGljIGludCByb2NrY2hpcF9wd21fcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9pZCByb2NrY2hpcF9wd21fcmVtb3ZlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHJvY2tjaGlwX3B3bV9jaGlw
ICpwYyA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwogCkBAIC0zODQsOCArMzg0LDYgQEAg
c3RhdGljIGludCByb2NrY2hpcF9wd21fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCiAKIAljbGtfdW5wcmVwYXJlKHBjLT5wY2xrKTsKIAljbGtfdW5wcmVwYXJlKHBjLT5jbGsp
OwotCi0JcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHJvY2tj
aGlwX3B3bV9kcml2ZXIgPSB7CkBAIC0zOTQsNyArMzkyLDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0
Zm9ybV9kcml2ZXIgcm9ja2NoaXBfcHdtX2RyaXZlciA9IHsKIAkJLm9mX21hdGNoX3RhYmxlID0g
cm9ja2NoaXBfcHdtX2R0X2lkcywKIAl9LAogCS5wcm9iZSA9IHJvY2tjaGlwX3B3bV9wcm9iZSwK
LQkucmVtb3ZlID0gcm9ja2NoaXBfcHdtX3JlbW92ZSwKKwkucmVtb3ZlX25ldyA9IHJvY2tjaGlw
X3B3bV9yZW1vdmUsCiB9OwogbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihyb2NrY2hpcF9wd21fZHJp
dmVyKTsKIAotLSAKMi4zOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
