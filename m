Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 637D9C77B62
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 14:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJWByEk7fp7+StAmEKynyzHZ9RRu03OXMaIwz3QRJn4=; b=cNk8GrPXXvzynr
	VA2/J4LRpXwPWupe+XL7QIcPHMfXSEOqJSZomUJ0CVj7RpHboYtXC9nnb610XsN1Rg52RV2ciFbeo
	la7YrfjUMWhe5wPgfeu0EF9aWph2D1LI18oXKTf3gdwqVo9gLsKl35huQT4cj3tVyD2Dzdi5eBegO
	zDd2vrpToYfhWauOXsZ3Z9v/aEOSRrc1X4TT4mgjQpOLJ3HzbcDWM1yk8MhaZEVU/Mz4ONCTRkASX
	iwIXa/9sIlEhvYYPqsG3tigt4eArtgyq3xJa0KSoWU3zy7KSAHdjwys4Av206O2diiHlGLrAJB+Sr
	rIWxspFhdboN5HR1kcOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgRRM-008ZUh-1k;
	Sun, 26 Mar 2023 14:33:48 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgRQc-008Yp5-0x
	for linux-rockchip@bombadil.infradead.org;
	Sun, 26 Mar 2023 14:33:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=epLJ6s4rNtn9ShVGxNQk2Gys4sZ4N5vBVVoYJaVmc2c=; b=nKKt4PY6UXs9gSDxegxdy/QYHr
	gwOmE45vSWDGwpgap2i2f1RprlditqVmXPm0dCrEk1ZWnApL3NWwnhoU+8z13fy8qgyYZljdS/Qm8
	RLD57Kd7GRHPDRxN0No4TzZ1pt6vPbb8u2Rruw0+voTdJ7JV2yeZNmHpUzWQx1OPejWJFdH0U44cX
	wXRC4gpND88OMpBuZbLhJfJEFjzabAfIP7+mpb3LGMun9W3pgKNsRaUGvXMqVu3JKUx7nm2M9cKRM
	9/moPP/7uas3FVMEUYmkKpBqMFQtIVObpW1WdygnKArpYiNJKb8MtvBdEG+opiNg+D4+G6zZhJw0a
	xrSxM5OA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pgRQT-006aQr-5h
	for linux-rockchip@lists.infradead.org; Sun, 26 Mar 2023 14:33:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pgRQI-0008RZ-RV; Sun, 26 Mar 2023 16:32:42 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pgRQF-006rdH-KI; Sun, 26 Mar 2023 16:32:39 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pgRQE-0088Xc-DI; Sun, 26 Mar 2023 16:32:38 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 060/117] media: rkisp1-dev: Convert to platform remove callback returning void
Date: Sun, 26 Mar 2023 16:31:27 +0200
Message-Id: <20230326143224.572654-63-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230326143224.572654-1-u.kleine-koenig@pengutronix.de>
References: <20230326143224.572654-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1786; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=Las+mkTmyDmRr0fHmoy+1HXOXOBTIkYgBinmFYNv/w4=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkIFbOhKe5iFEeZtaIE2yURCxYMuGQRmTh1Y9LN B+ToOKPFUSJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZCBWzgAKCRCPgPtYfRL+ TsngCACG7ACjJvUnzOuiMw/JoBsfe+H9JvMXYxc513dmVUlhNII4PUM+agoqvv2x87UqHjY8yZA k9X5H/WjbP839F1NxO3pT7eE3oDsbrpkBcN0uzvnarW+NM15qArGWUIe7jmx+zwEEUIAbDDodbu SAUaJscUYoxdPnU4D2w7w1FU7o47/V1jAvvQcBmz41tI5xa4YqBDvCVJWm2DfwKPkpulaEWaIfI ov521B2oGEwUPJcw5ehFyLz3SthvMmaCfyoduz7+4oUrRB+bPoh2r8MTcdKipJUlT7AnB1VcdRk Y8vuYZWcbEMStbNbNUWT7MaZF6a3ohYbwtIV/f8CHKe21Hy5
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_153253_383195_B5D89482 
X-CRM114-Status: GOOD (  12.65  )
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
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWRldi5jIHwgNiArKy0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWRl
di5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWRldi5j
CmluZGV4IGYyNDc1YzYyMzVlYS4uNDc2MmNiMzIzNTNkIDEwMDY0NAotLS0gYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtZGV2LmMKKysrIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWRldi5jCkBAIC02MjIsNyArNjIy
LDcgQEAgc3RhdGljIGludCBya2lzcDFfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIAlyZXR1cm4gcmV0OwogfQogCi1zdGF0aWMgaW50IHJraXNwMV9yZW1vdmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2b2lkIHJraXNwMV9yZW1vdmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3Qgcmtpc3AxX2RldmljZSAqcmtpc3AxID0g
cGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAKQEAgLTYzOCw4ICs2MzgsNiBAQCBzdGF0aWMg
aW50IHJraXNwMV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAl2NGwyX2Rl
dmljZV91bnJlZ2lzdGVyKCZya2lzcDEtPnY0bDJfZGV2KTsKIAogCXBtX3J1bnRpbWVfZGlzYWJs
ZSgmcGRldi0+ZGV2KTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3Jt
X2RyaXZlciBya2lzcDFfZHJ2ID0gewpAQCAtNjQ5LDcgKzY0Nyw3IEBAIHN0YXRpYyBzdHJ1Y3Qg
cGxhdGZvcm1fZHJpdmVyIHJraXNwMV9kcnYgPSB7CiAJCS5wbSA9ICZya2lzcDFfcG1fb3BzLAog
CX0sCiAJLnByb2JlID0gcmtpc3AxX3Byb2JlLAotCS5yZW1vdmUgPSBya2lzcDFfcmVtb3ZlLAor
CS5yZW1vdmVfbmV3ID0gcmtpc3AxX3JlbW92ZSwKIH07CiAKIG1vZHVsZV9wbGF0Zm9ybV9kcml2
ZXIocmtpc3AxX2Rydik7Ci0tIAoyLjM5LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
