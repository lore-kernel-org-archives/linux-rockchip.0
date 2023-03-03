Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6879C64EC4
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Mar 2023 17:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djRMkC1zGgE1Gd9uQNseRglUu0sjUBOJNUbPpFyWTrY=; b=n7L/zR8w7ufs1N
	BZWVJNo8zi3O4AwmM4KQnVRz9hXNRWhAo2/3+BNwK8ixGwKBnK1PlgEpa6Rn6Bcqv+aPH+vcMJYLE
	SaYL1vhdSCc+vv1S03ZD7Mq21eKZjRBHm/ZfRBldrswGi/HsChpULKAcD9TbnxQoVKFbBZkPJ271l
	ExjCRBy50zbfCrkv0HJJaDNlC2ohXftHTRYiATjeq1kawjFBgvksfXLJDFgUWCD0H5dRA8Bssvzld
	6DJ+eYbc8EPI/0v/z5lHUpBHe4I5mjhQKzIuNbNHaV+5zelb/GHv1+qa8sohWHxABignzjCcueCnF
	yno8vpKtFdWq6hh+l7mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY9FQ-006xzb-4i; Fri, 03 Mar 2023 17:31:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY960-006tFe-3c
	for linux-rockchip@bombadil.infradead.org; Fri, 03 Mar 2023 17:21:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=+XZIihPAZWmJPi7uAj2lm0bHI9d5NzrTphb9A8dxRrc=; b=qwHHkO+pmcYR3MvkPHmHa03Jsz
	3M20Vfs6h4qGoLQ5VX1N0Vf7mMatcmL5iUOvriLLg0Xd6aIRbAc3E+RNYc0gY8tn0Qt+SWDNzJYQn
	Qjdhd9KXzC+v4gc6QDjwL6nrRTdsjufh4oejlGC+CNl6RXeCQ4ItE/83G4CBo9EiyaDNv+3eilbFE
	5/ySt0Dxj1wr5X/r/pEdVbS4hDeo0E2uuJoRXwYvWdDD0+YL/ZqWerTVpPJMcbI/JM7+LU9cP/+aG
	25TczKR3CZvhtzECxb5FoAd7utOIMyP/aB8nkHnBV+lMBv4QA9nPkguhkt83dAVtcwfhVWy3CBhDc
	NlhsZH7A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY95t-00FkTd-0x
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Mar 2023 17:21:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pY95c-0006yR-QV; Fri, 03 Mar 2023 18:21:04 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pY95b-001bn9-M5; Fri, 03 Mar 2023 18:21:03 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pY95a-001tlY-Jf; Fri, 03 Mar 2023 18:21:02 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Mark Brown <broonie@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 58/87] spi: rockchip-sfc: Convert to platform remove callback returning void
Date: Fri,  3 Mar 2023 18:20:12 +0100
Message-Id: <20230303172041.2103336-59-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230303172041.2103336-1-u.kleine-koenig@pengutronix.de>
References: <20230303172041.2103336-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1816; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=bX62lV2TXhh+Chr6nrCmzfML6Z1r56z5yaVi5PzLxgA=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkAivrj5tHxRTJlYZlxWo0q/BM24wM1jynBx/c5 uaQAIHVd/OJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAIr6wAKCRDB/BR4rcrs CZu3CACfuE1Q77oNhvmLE3bTfyqTKU1HGoOxSnsSfbLWeiTFpbR/XRDXh1thy8s0qRpJmxVySx/ N39A8idBKYGWHpgfkyIwXeTx4owGnrUL85wJTzzObScztrImSWymvOHuJHinVigWiXbXN0XFxmT UNa6A5Hs1oPk5pk5/XN8QGCagstBYSPCeP9pZ5nObujWvuAywQBSSPcIUbkNSGe91uH1f73VLeM Sdq7rwk1zLrioymoaIw1clRQnrgxnp2cL0/oFw+MvwQ/KGyujDWCfdgasdeD/TWgAtW+XND2sww Jt92SNe+wj4ovzmxSdVYpD6g2qMBLBWnZEkfpNcoHaf9xUUe
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_172121_622556_808D5777 
X-CRM114-Status: GOOD (  15.77  )
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
dmVycy9zcGkvc3BpLXJvY2tjaGlwLXNmYy5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkv
c3BpLXJvY2tjaGlwLXNmYy5jIGIvZHJpdmVycy9zcGkvc3BpLXJvY2tjaGlwLXNmYy5jCmluZGV4
IGJkODdkM2M5MmRkMy4uODBlMWVlMTEwZDMxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9zcGkt
cm9ja2NoaXAtc2ZjLmMKKysrIGIvZHJpdmVycy9zcGkvc3BpLXJvY2tjaGlwLXNmYy5jCkBAIC02
NTYsNyArNjU2LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9zZmNfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gcmV0OwogfQogCi1zdGF0aWMgaW50IHJvY2tjaGlw
X3NmY19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2b2lkIHJv
Y2tjaGlwX3NmY19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1
Y3Qgc3BpX21hc3RlciAqbWFzdGVyID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAJc3Ry
dWN0IHJvY2tjaGlwX3NmYyAqc2ZjID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CkBAIC02
NjUsOCArNjY1LDYgQEAgc3RhdGljIGludCByb2NrY2hpcF9zZmNfcmVtb3ZlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCiAKIAljbGtfZGlzYWJsZV91bnByZXBhcmUoc2ZjLT5jbGspOwog
CWNsa19kaXNhYmxlX3VucHJlcGFyZShzZmMtPmhjbGspOwotCi0JcmV0dXJuIDA7CiB9CiAKIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJvY2tjaGlwX3NmY19kdF9pZHNbXSA9IHsK
QEAgLTY4MSw3ICs2NzksNyBAQCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciByb2NrY2hp
cF9zZmNfZHJpdmVyID0gewogCQkub2ZfbWF0Y2hfdGFibGUgPSByb2NrY2hpcF9zZmNfZHRfaWRz
LAogCX0sCiAJLnByb2JlCT0gcm9ja2NoaXBfc2ZjX3Byb2JlLAotCS5yZW1vdmUJPSByb2NrY2hp
cF9zZmNfcmVtb3ZlLAorCS5yZW1vdmVfbmV3ID0gcm9ja2NoaXBfc2ZjX3JlbW92ZSwKIH07CiBt
b2R1bGVfcGxhdGZvcm1fZHJpdmVyKHJvY2tjaGlwX3NmY19kcml2ZXIpOwogCi0tIAoyLjM5LjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
