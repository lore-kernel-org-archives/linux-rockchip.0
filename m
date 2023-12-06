Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14DEEC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 11:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jsntp9b6lhaYcmIG5yxFEwYGS87EwkTfnPBidQFAiew=; b=witgLRxQNfV+0z
	LuMoJMEAvf3/8VpyLXAOLQfeoz49HAbQ64B1CA7833IGH5G6AbBcwwDqSlKMOum5Zo3EP9yrWlySH
	td2OaoW3dR/jWPxBlR4U6pp12cPYVorWUNpYzR4nhA0/lq8m7h94ywqO/iYJzhw+pkF7xa0SOb5ki
	zvrLdAJwtbjf+6R4mQMWyTAy0Ak0ZIdN4mbtZBIytGKaeIjRR6BkBmUE7fWzaRQ5mVzwmVpax3r9y
	G31iOSD2NVgmJkR77hQHGNT1QfPmGEMQQb/MKK1KAIwEE92e+cXMY0ndSh6Ot22CLF1Lu1FhW1g9Z
	STjMDDLy1zuox0VPqj1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAqPn-00A7ef-0F;
	Wed, 06 Dec 2023 11:50:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAqOT-00A6MZ-0w
	for linux-rockchip@bombadil.infradead.org;
	Wed, 06 Dec 2023 11:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=TzfasbkGyDvNfRcHywl8JXqjm5rOYFrymrqw1WeQHGc=; b=RjKidYecoyv7FTxyH0eOf2K89a
	k9RMapG7TGvuOtABTMJ+1hhzipKvk5IDBpBwfaxNdU0KufUGNiE2PLvrm1eI+2x2hCCgFEOeACDsK
	QU5COKh7WFJn1L3x5T4Oh++ZBbpqqOpanLSSQgAMgVPhn9T3QMxMFKZU0XOz9KT0YLgFfGBK3mcfw
	IFpr7W9QitAl7wp5LlKozh9RdZ37jllMANNI7M2LhUWbx8BOssdIVb35X1KVxDYRKWlphWdBJai1k
	07zSLvB0AtPRC4iEKLxsJYQhERPCjyneMammFf3nEalbYbhwsAsPwyG91dz/TSPGUEqRIQyKMYPTc
	uWXu0j2Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAqOP-0059Vr-34
	for linux-rockchip@lists.infradead.org;
	Wed, 06 Dec 2023 11:48:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rAqOK-0007HD-V6; Wed, 06 Dec 2023 12:48:36 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rAqOI-00Dwwg-Oo; Wed, 06 Dec 2023 12:48:34 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rAqOI-00FR29-Fj; Wed, 06 Dec 2023 12:48:34 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: kernel@pengutronix.de,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 086/115] pwm: rockchip: Make use of devm_pwmchip_alloc() function
Date: Wed,  6 Dec 2023 12:44:40 +0100
Message-ID: <6ff62a16862768b6817819b95e2924e41e05274f.1701860672.git.u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <cover.1701860672.git.u.kleine-koenig@pengutronix.de>
References: <cover.1701860672.git.u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2782; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=S7YX0LwIqVOrST7fEGIoSpGkN5LeF/GvgXdy7bmFJng=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlcF8L7yvFClcAEsxR7qwjFMFeptLj1uN1lQo+j wAiKYkyHf2JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZXBfCwAKCRCPgPtYfRL+ ToOgB/4nxtvlkfat2L0pkMInq5YCqdx6qHhSfWrrtVUm/8qDbeIWh/3BRuLQDYDSc4e1YNgmz9d qUFCK+r0kDwnNgxqszPj5/LRlviTZu3RnwGvk7U0RR+DKL8trUKjhvSgbNLBf8KXHXNICPn9pus 2N9CpNc2NerpHDaoZSALAyFfNAbORgCNIjLFXS91n1rVyz6Sa3VIFdM/OmHSqMw6zNPy8RWXSNQ Nhd7AIMObGFCVQG+lz3FsgT8WM92EVzuHu3DPbYFZnMaHqKWi1oFNeitaMtrvWwAqKe63z9zDZ6 oDfMan+q7WhGdIIgT7+Oha1hDVbif2lDlNjlAXLUxm/sJnGj
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_114842_117050_77F9E6A7 
X-CRM114-Status: GOOD (  14.56  )
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

VGhpcyBwcmVwYXJlcyB0aGUgcHdtLXJvY2tjaGlwIGRyaXZlciB0byBmdXJ0aGVyIGNoYW5nZXMg
b2YgdGhlIHB3bSBjb3JlCm91dGxpbmVkIGluIHRoZSBjb21taXQgaW50cm9kdWNpbmcgZGV2bV9w
d21jaGlwX2FsbG9jKCkuIFRoZXJlIGlzIG5vCmludGVuZGVkIHNlbWFudGljYWwgY2hhbmdlIGFu
ZCB0aGUgZHJpdmVyIHNob3VsZCBiZWhhdmUgYXMgYmVmb3JlLgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2
ZXJzL3B3bS9wd20tcm9ja2NoaXAuYyB8IDI0ICsrKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jIGIvZHJpdmVycy9wd20vcHdtLXJvY2tjaGlw
LmMKaW5kZXggYTdjNjQ3ZTM3ODM3Li4wZmE3NTc1ZGJiNTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
cHdtL3B3bS1yb2NrY2hpcC5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jCkBAIC0z
MCw3ICszMCw2IEBACiAjZGVmaW5lIFBXTV9MUF9ESVNBQkxFCQkoMCA8PCA4KQogCiBzdHJ1Y3Qg
cm9ja2NoaXBfcHdtX2NoaXAgewotCXN0cnVjdCBwd21fY2hpcCBjaGlwOwogCXN0cnVjdCBjbGsg
KmNsazsKIAlzdHJ1Y3QgY2xrICpwY2xrOwogCWNvbnN0IHN0cnVjdCByb2NrY2hpcF9wd21fZGF0
YSAqZGF0YTsKQEAgLTU0LDcgKzUzLDcgQEAgc3RydWN0IHJvY2tjaGlwX3B3bV9kYXRhIHsKIAog
c3RhdGljIGlubGluZSBzdHJ1Y3Qgcm9ja2NoaXBfcHdtX2NoaXAgKnRvX3JvY2tjaGlwX3B3bV9j
aGlwKHN0cnVjdCBwd21fY2hpcCAqY2hpcCkKIHsKLQlyZXR1cm4gY29udGFpbmVyX29mKGNoaXAs
IHN0cnVjdCByb2NrY2hpcF9wd21fY2hpcCwgY2hpcCk7CisJcmV0dXJuIHB3bWNoaXBfZ2V0X2Ry
dmRhdGEoY2hpcCk7CiB9CiAKIHN0YXRpYyBpbnQgcm9ja2NoaXBfcHdtX2dldF9zdGF0ZShzdHJ1
Y3QgcHdtX2NoaXAgKmNoaXAsCkBAIC0yOTYsMTQgKzI5NSwxNiBAQCBNT0RVTEVfREVWSUNFX1RB
QkxFKG9mLCByb2NrY2hpcF9wd21fZHRfaWRzKTsKIAogc3RhdGljIGludCByb2NrY2hpcF9wd21f
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKKwlzdHJ1Y3QgcHdtX2NoaXAg
KmNoaXA7CiAJc3RydWN0IHJvY2tjaGlwX3B3bV9jaGlwICpwYzsKIAl1MzIgZW5hYmxlX2NvbmYs
IGN0cmw7CiAJYm9vbCBlbmFibGVkOwogCWludCByZXQsIGNvdW50OwogCi0JcGMgPSBkZXZtX2t6
YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpwYyksIEdGUF9LRVJORUwpOwotCWlmICghcGMpCi0J
CXJldHVybiAtRU5PTUVNOworCWNoaXAgPSBkZXZtX3B3bWNoaXBfYWxsb2MoJnBkZXYtPmRldiwg
MSwgc2l6ZW9mKCpwYykpOworCWlmIChJU19FUlIoY2hpcCkpCisJCXJldHVybiBQVFJfRVJSKGNo
aXApOworCXBjID0gdG9fcm9ja2NoaXBfcHdtX2NoaXAoY2hpcCk7CiAKIAlwYy0+YmFzZSA9IGRl
dm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKIAlpZiAoSVNfRVJSKHBjLT5i
YXNlKSkKQEAgLTMzNywxOCArMzM4LDE2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcHdtX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCWdvdG8gZXJyX2NsazsKIAl9CiAKLQlw
bGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBwYyk7CisJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRl
diwgY2hpcCk7CiAKIAlwYy0+ZGF0YSA9IGRldmljZV9nZXRfbWF0Y2hfZGF0YSgmcGRldi0+ZGV2
KTsKLQlwYy0+Y2hpcC5kZXYgPSAmcGRldi0+ZGV2OwotCXBjLT5jaGlwLm9wcyA9ICZyb2NrY2hp
cF9wd21fb3BzOwotCXBjLT5jaGlwLm5wd20gPSAxOworCWNoaXAtPm9wcyA9ICZyb2NrY2hpcF9w
d21fb3BzOwogCiAJZW5hYmxlX2NvbmYgPSBwYy0+ZGF0YS0+ZW5hYmxlX2NvbmY7CiAJY3RybCA9
IHJlYWRsX3JlbGF4ZWQocGMtPmJhc2UgKyBwYy0+ZGF0YS0+cmVncy5jdHJsKTsKIAllbmFibGVk
ID0gKGN0cmwgJiBlbmFibGVfY29uZikgPT0gZW5hYmxlX2NvbmY7CiAKLQlyZXQgPSBwd21jaGlw
X2FkZCgmcGMtPmNoaXApOworCXJldCA9IHB3bWNoaXBfYWRkKGNoaXApOwogCWlmIChyZXQgPCAw
KSB7CiAJCWRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgcmV0LCAicHdtY2hpcF9hZGQoKSBmYWls
ZWRcbiIpOwogCQlnb3RvIGVycl9wY2xrOwpAQCAtMzcyLDkgKzM3MSwxMCBAQCBzdGF0aWMgaW50
IHJvY2tjaGlwX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCiBzdGF0
aWMgdm9pZCByb2NrY2hpcF9wd21fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiB7Ci0Jc3RydWN0IHJvY2tjaGlwX3B3bV9jaGlwICpwYyA9IHBsYXRmb3JtX2dldF9kcnZkYXRh
KHBkZXYpOworCXN0cnVjdCBwd21fY2hpcCAqY2hpcCA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBk
ZXYpOworCXN0cnVjdCByb2NrY2hpcF9wd21fY2hpcCAqcGMgPSB0b19yb2NrY2hpcF9wd21fY2hp
cChjaGlwKTsKIAotCXB3bWNoaXBfcmVtb3ZlKCZwYy0+Y2hpcCk7CisJcHdtY2hpcF9yZW1vdmUo
Y2hpcCk7CiAKIAljbGtfdW5wcmVwYXJlKHBjLT5wY2xrKTsKIAljbGtfdW5wcmVwYXJlKHBjLT5j
bGspOwotLSAKMi40Mi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
