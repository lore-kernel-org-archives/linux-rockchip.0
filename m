Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3CC0C77B62
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 14:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=If/Zg+oMw/sTW0qe8v6Ic9rQ0w1/1+ZNYeh5KUYUxg4=; b=VkL1oFJl1M//47
	7K/nKFffwAdlT159hRBUrVMcASmayjT1GP2agnPBMQBCcfNs59c8A7jkbuUb9vU9R+rAqaLDR3u0R
	yUyayVobpWsO967L6ozczjNOKGd0SzbQjB3etjt8oEmjjBmzIWCFUgt+T9icwjvQcMRTTV0WQfL9B
	xCamofgJJIr0J9XoFZZaLZenNrvjNMqf7nsVDNeuja0t3zGNLxjcK1Qn7/DBq4ytyI752A5cc60gS
	625bSJ71f5F7fZKSSM6xI328xiHuQ6C0omGLGl4hxvudGmHXHwgYudUhgFR+3qRK/3t8giHQEk2Fr
	LoWbrjQnemobih9i/wHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgRQx-008ZC6-2M;
	Sun, 26 Mar 2023 14:33:23 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgRQW-008YiJ-0J
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Mar 2023 14:33:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pgRQO-0000Fg-Sl; Sun, 26 Mar 2023 16:32:48 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pgRQM-006rfw-Hz; Sun, 26 Mar 2023 16:32:46 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pgRQL-0088Zh-Dn; Sun, 26 Mar 2023 16:32:45 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 092/117] media: hantro_drv: Convert to platform remove callback returning void
Date: Sun, 26 Mar 2023 16:31:59 +0200
Message-Id: <20230326143224.572654-95-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230326143224.572654-1-u.kleine-koenig@pengutronix.de>
References: <20230326143224.572654-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1845; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=TN8gitWclwX0bEZHPliWL+MpMfLhdwSxRa3vI9fej70=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkIFbz+QQp+nHH7O8XtcFcJSBkWVdls+Q9/cJxR 6ZND9lYh66JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZCBW8wAKCRCPgPtYfRL+ TkVtCACK0akQVv6Lp3WSIDoAtHERnPMPO49yB0zmpuOZE5kKHqReCRF2EDGls/IByydhEcpNnKq TWvZmrp26l21NstAP98GPS/R5pu2lOgcA4w5QU0JinvMx8CVQfV/et3GGhN5eUEys164wI0t1xz b1rx6FXjsnFkcRkrkmNYzyF879IMj4kip4X4n0GOKbN0fs011q1cicnQKnIwuBmKSxM234b7bDE DYX7rgDmsFeQXsbAQKuhTQ/1Ywiy0SkPmc1+0ko07QoYiQ7uQpDeueR70MNf1naeHzD6J9lmiad Zc9kHofDAaX7T5CX6EnqXrD7H5T0DQdnyrRFFxqpVxS5FwkS
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_073256_176583_DC28C9D7 
X-CRM114-Status: GOOD (  16.54  )
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
dmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgfCA1ICsrLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKaW5kZXggYjBhZWVk
YWU3YjY1Li5kZGVjNDJkMGJkNDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
dmVyaXNpbGljb24vaGFudHJvX2Rydi5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvX2Rydi5jCkBAIC0xMDkzLDcgKzEwOTMsNyBAQCBzdGF0aWMgaW50IGhh
bnRyb19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldHVybiByZXQ7CiB9
CiAKLXN0YXRpYyBpbnQgaGFudHJvX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQorc3RhdGljIHZvaWQgaGFudHJvX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQogewogCXN0cnVjdCBoYW50cm9fZGV2ICp2cHUgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2
KTsKIApAQCAtMTEwOSw3ICsxMTA5LDYgQEAgc3RhdGljIGludCBoYW50cm9fcmVtb3ZlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmVzZXRfY29udHJvbF9hc3NlcnQodnB1LT5yZXNl
dHMpOwogCXBtX3J1bnRpbWVfZG9udF91c2VfYXV0b3N1c3BlbmQodnB1LT5kZXYpOwogCXBtX3J1
bnRpbWVfZGlzYWJsZSh2cHUtPmRldik7Ci0JcmV0dXJuIDA7CiB9CiAKICNpZmRlZiBDT05GSUdf
UE0KQEAgLTExMzIsNyArMTEzMSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGV2X3BtX29wcyBo
YW50cm9fcG1fb3BzID0gewogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBoYW50cm9f
ZHJpdmVyID0gewogCS5wcm9iZSA9IGhhbnRyb19wcm9iZSwKLQkucmVtb3ZlID0gaGFudHJvX3Jl
bW92ZSwKKwkucmVtb3ZlX25ldyA9IGhhbnRyb19yZW1vdmUsCiAJLmRyaXZlciA9IHsKIAkJICAg
Lm5hbWUgPSBEUklWRVJfTkFNRSwKIAkJICAgLm9mX21hdGNoX3RhYmxlID0gb2ZfbWF0Y2hfcHRy
KG9mX2hhbnRyb19tYXRjaCksCi0tIAoyLjM5LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
