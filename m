Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F0BCC48BEC
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 09:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8gNcS4OoSLqluKnElqXP+uYz+vjv+H25+O2a53RGZs=; b=c+S6u+sKhepMUQ
	n2ofWd04TZ8C/49rpbt5Ag8u01QdQSrKkodMebKfyTgiRrZs62dTXUnNbWTY0w368hYlWkgJvAQru
	GdepnXWPl1s4Ar6C8PzZtYN5XZuvIAAer62asRQbIi4WAI6+6nuJTyA/VRtI8kAwNZ5Ol+brJSgMx
	/VqvDWCSkvSF7wI9i4oXVZtWMNML4P26TDEyVtkM4GTjMaTu6zidPmdZKOStLx4iM42pW/SCiZvJk
	hAWJEmJ6gokOi90TSPy1zwpUom+7+4iefaXRwKNw1jcSYgDrvSbWkogB/qgO1zazLFthGO+MWXj7G
	N0dJvPoUMAqTnA1+5lrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raBhl-0000000CMqd-0P0v;
	Wed, 14 Feb 2024 09:37:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raBfI-0000000CKdg-2pmY
	for linux-rockchip@bombadil.infradead.org;
	Wed, 14 Feb 2024 09:34:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=m+6oZm+yHrcQfep2+XibnEH0K8W71DygD6YTVIfrQF0=; b=nlnaHQR0AOvBnGWCo+fyG/phfM
	vbS1xHC9yfpmOWzxaVu+pzUmiFFljt5hk8jXWqTqMY/6tvIZIVYqYQyTiZQgLX1wfUMRNfz3tyBCz
	6XV8DzATF5TZR2wc3RSr2kHrnrxcTLw6IIh128KNdcQyP/gB5vB1I1MYvmbiDXsMnYLz56dDOE/wQ
	kGju76yaFcKLL98+l5O55FTrt1We0mSyxcY/lmr5s+EShUbCrFn4knZcig9BC3yi9k6FYmmC+XNEY
	Y42w1f0WcJEa4KtSA2Zd3mqVb0pliid8mMnhUoCf48ZDlb0Iu6ooTAeFWp0I6dROJbNpwYt8cUJoD
	aXD9sEjw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raBfD-0000000GAXI-1RVl
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Feb 2024 09:34:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1raBf0-0005NI-8x; Wed, 14 Feb 2024 10:34:34 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1raBex-000fEM-SF; Wed, 14 Feb 2024 10:34:31 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1raBex-004Y5q-2Y;
	Wed, 14 Feb 2024 10:34:31 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-pwm@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH v6 091/164] pwm: rochchip: Prepare removing pwm_chip from driver data
Date: Wed, 14 Feb 2024 10:32:18 +0100
Message-ID: <301657442c578cc8d330ad2b07463d59fed4bff6.1707900770.git.u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1707900770.git.u.kleine-koenig@pengutronix.de>
References: <cover.1707900770.git.u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2308; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=IKTf684HbAbCFxV/P3BN2Q+Ew9cnAV7p+JKFfoj1v3k=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlzIizoVhC0FRyoze4sZvNk4frGiCMCNVmrvi9M JGTTXoVeSKJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZcyIswAKCRCPgPtYfRL+ To66B/9bBWqw86Vi8ALhIjsb6DA2j/fZlrFMRghd87lmbzOpKe6/tZdipPrZgwiwVXriuSOudXZ /CwapgIrtBTNdkqOnRN3qAzSLbHBEpSplM/x5v9X8OtEO0M1rS/Lo64rWB4t2lZsDxAKGBD2h9o UfJhjI/XHr7X8Mj5SVrx0bAkzMgPJXRnHzAId1ZdkPDnSewMV3i01WzEwhRiIu4pk7s4NiqRPGL XCohn1umvYkQswCTDMbtglvViPlMNxH67zvh4WesNLKiugpsBA5F9iqXo25BKUngE5YQ5lYdhm+ 9b7H6NmCNMYOIooRfxcjJFAVxpBcbLZvvZ9fIjJpJPcmwsg8
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_093447_762503_C0B85F21 
X-CRM114-Status: GOOD (  12.83  )
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

VGhpcyBwcmVwYXJlcyB0aGUgZHJpdmVyIGZvciBmdXJ0aGVyIGNoYW5nZXMgdGhhdCB3aWxsIGRy
b3Agc3RydWN0CnB3bV9jaGlwIGNoaXAgZnJvbSBzdHJ1Y3Qgcm9ja2NoaXBfcHdtX2NoaXAuIFVz
ZSB0aGUgcHdtX2NoaXAgYXMgZHJpdmVyCmRhdGEgaW5zdGVhZCBvZiB0aGUgcm9ja2NoaXBfcHdt
X2NoaXAgdG8gZ2V0IGFjY2VzcyB0byB0aGUgcHdtX2NoaXAgaW4Kcm9ja2NoaXBfcHdtX3JlbW92
ZSgpIHdpdGhvdXQgdXNpbmcgcGMtPmNoaXAuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvD
tm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvcHdtL3B3
bS1yb2NrY2hpcC5jIHwgMTcgKysrKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3
bS1yb2NrY2hpcC5jIGIvZHJpdmVycy9wd20vcHdtLXJvY2tjaGlwLmMKaW5kZXggYTdjNjQ3ZTM3
ODM3Li5jMDAxZWI2YjE3YWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5j
CisrKyBiL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jCkBAIC0yOTYsNiArMjk2LDcgQEAgTU9E
VUxFX0RFVklDRV9UQUJMRShvZiwgcm9ja2NoaXBfcHdtX2R0X2lkcyk7CiAKIHN0YXRpYyBpbnQg
cm9ja2NoaXBfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CisJc3Ry
dWN0IHB3bV9jaGlwICpjaGlwOwogCXN0cnVjdCByb2NrY2hpcF9wd21fY2hpcCAqcGM7CiAJdTMy
IGVuYWJsZV9jb25mLCBjdHJsOwogCWJvb2wgZW5hYmxlZDsKQEAgLTMwNCw2ICszMDUsNyBAQCBz
dGF0aWMgaW50IHJvY2tjaGlwX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQogCXBjID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqcGMpLCBHRlBfS0VSTkVM
KTsKIAlpZiAoIXBjKQogCQlyZXR1cm4gLUVOT01FTTsKKwljaGlwID0gJnBjLT5jaGlwOwogCiAJ
cGMtPmJhc2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UocGRldiwgMCk7CiAJaWYg
KElTX0VSUihwYy0+YmFzZSkpCkBAIC0zMzcsMTggKzMzOSwxOCBAQCBzdGF0aWMgaW50IHJvY2tj
aGlwX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlnb3RvIGVycl9j
bGs7CiAJfQogCi0JcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgcGMpOworCXBsYXRmb3JtX3Nl
dF9kcnZkYXRhKHBkZXYsIGNoaXApOwogCiAJcGMtPmRhdGEgPSBkZXZpY2VfZ2V0X21hdGNoX2Rh
dGEoJnBkZXYtPmRldik7Ci0JcGMtPmNoaXAuZGV2ID0gJnBkZXYtPmRldjsKLQlwYy0+Y2hpcC5v
cHMgPSAmcm9ja2NoaXBfcHdtX29wczsKLQlwYy0+Y2hpcC5ucHdtID0gMTsKKwljaGlwLT5kZXYg
PSAmcGRldi0+ZGV2OworCWNoaXAtPm9wcyA9ICZyb2NrY2hpcF9wd21fb3BzOworCWNoaXAtPm5w
d20gPSAxOwogCiAJZW5hYmxlX2NvbmYgPSBwYy0+ZGF0YS0+ZW5hYmxlX2NvbmY7CiAJY3RybCA9
IHJlYWRsX3JlbGF4ZWQocGMtPmJhc2UgKyBwYy0+ZGF0YS0+cmVncy5jdHJsKTsKIAllbmFibGVk
ID0gKGN0cmwgJiBlbmFibGVfY29uZikgPT0gZW5hYmxlX2NvbmY7CiAKLQlyZXQgPSBwd21jaGlw
X2FkZCgmcGMtPmNoaXApOworCXJldCA9IHB3bWNoaXBfYWRkKGNoaXApOwogCWlmIChyZXQgPCAw
KSB7CiAJCWRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgcmV0LCAicHdtY2hpcF9hZGQoKSBmYWls
ZWRcbiIpOwogCQlnb3RvIGVycl9wY2xrOwpAQCAtMzcyLDkgKzM3NCwxMCBAQCBzdGF0aWMgaW50
IHJvY2tjaGlwX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCiBzdGF0
aWMgdm9pZCByb2NrY2hpcF9wd21fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiB7Ci0Jc3RydWN0IHJvY2tjaGlwX3B3bV9jaGlwICpwYyA9IHBsYXRmb3JtX2dldF9kcnZkYXRh
KHBkZXYpOworCXN0cnVjdCBwd21fY2hpcCAqY2hpcCA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBk
ZXYpOworCXN0cnVjdCByb2NrY2hpcF9wd21fY2hpcCAqcGMgPSB0b19yb2NrY2hpcF9wd21fY2hp
cChjaGlwKTsKIAotCXB3bWNoaXBfcmVtb3ZlKCZwYy0+Y2hpcCk7CisJcHdtY2hpcF9yZW1vdmUo
Y2hpcCk7CiAKIAljbGtfdW5wcmVwYXJlKHBjLT5wY2xrKTsKIAljbGtfdW5wcmVwYXJlKHBjLT5j
bGspOwotLSAKMi40My4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
