Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A160CCA47D
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 21:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dW8rjsaGcBvuBje4RsdhY2ssYfjcxB5fgiAdrZe18Q=; b=BBO7CPTcmFWeVu
	kAIFW8CHUw44ypvpZX3w9Ey7XX5/X3+ZmRX/ulyt/D/aQKXoTenp6CyHMhZ5p+KbT+YalkgNcBHVZ
	bZp/8o8FwuMOOZzsFjCnzuEqSuRfdE+bm7iXKyMnY1RcU6Mv3c2McqpfSbaDcuZGt5v2v5b0kAaMu
	Ix91UqcDjv8+cGg6gbdBFPIwIZhmWfnitLtjoXtLBIjq6jffVAv523fQRPk8qrSPzAXYhJYsZToiq
	QgjF2uBL1zOYe3TfWbwH1nq53dWUSubBayqbg329DJGFqgOsZxDuB+fG615NfvX77RDjhanuWZUzP
	S8xhztv1FwL3d1ghMGTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzlxX-009vsZ-NP; Fri, 10 Jun 2022 21:14:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzlwV-009vAW-8u
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 21:13:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzlwP-0007ES-Kg; Fri, 10 Jun 2022 23:13:13 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzlwM-007eRZ-0b; Fri, 10 Jun 2022 23:13:08 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzlwJ-00FTco-PH; Fri, 10 Jun 2022 23:13:07 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Jaehoon Chung <jh80.chung@samsung.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: kernel@pengutronix.de,
	linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] mmc: dw_mmc: rockchip: Obviously always return success in remove callback
Date: Fri, 10 Jun 2022 23:12:55 +0200
Message-Id: <20220610211257.102071-3-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220610211257.102071-1-u.kleine-koenig@pengutronix.de>
References: <20220610211257.102071-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1127; h=from:subject; bh=X7sBJEOoF/EYAe4rLWNuktAtosW9B7BT2XqynC8bowU=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBio7PMozMORTXicDL+cWiZL0+Ts8EeeJIr5sgKtzDj DWI0AU+JATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYqOzzAAKCRDB/BR4rcrsCbr8B/ 4ww4MPsxCrFYZhS1rElYQwerv5C4lY5BjWqgaBlcfsraeppQaP3NeMAtMU8YGxvP9lldcNhQqsg1Zg B57X+QdbcI2rv0HmXmMqmYWkX/UM0RYx7I/Y5r5qSwKQMPOBqOfO3029045FWVIadBfGBdGbgBdLww +CjUaCrqJ+vLzDc82IF03Q/704NBHMBwhClKK2XoSsKWamtnzlwTbYMI3oY+S0qHlKCQMCg5W7gWUp XnWLvmw1JBRu7Peru8eGNWTfilc6Yn3PP5tb5CBDkPZfLx0DKjOmskOSAbXHfA+gd9yU3RInfwlTfK bsO36Y+eUJ1xkr3eY5zxqU2HvakH99
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_141319_432544_44B7FBC0 
X-CRM114-Status: GOOD (  15.82  )
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

ZHdfbWNpX3BsdGZtX3JlbW92ZSgpIHJldHVybnMgMCB1bmNvbmRpdGlvbmFsbHkgYW5kIHJldHVy
bmluZyBhbiBlcnJvcgppbiBhIHBsYXRmb3JtIHJlbW92ZSBjYWxsYmFjayBpc24ndCB2ZXJ5IHNl
bnNpYmxlLiAoVGhlIG9ubHkgZWZmZWN0IG9mCnRoZSBsYXR0ZXIgaXMgdGhhdCB0aGUgZGV2aWNl
IGNvcmUgZW1pdHMgYSBnZW5lcmljIHdhcm5pbmcgYW5kIHRoZW4KcmVtb3ZlcyB0aGUgZGV2aWNl
IGFueWhvdy4pCgpTbyByZXR1cm4gMCB1bmNvbmRpdGlvbmFsbHkgdG8gbWFrZSBpdCBvYnZpb3Vz
IHRoZXJlIGlzIG5vIGVycm9yCmZvcndhcmRlZCB0byB0aGUgdXBwZXIgbGF5ZXJzLgoKVGhpcyBp
cyBhIHByZXBhcmF0aW9uIGZvciBtYWtpbmcgcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrcyByZXR1
cm4gdm9pZC4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2Vu
aWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAu
YyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMgYi9kcml2
ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jCmluZGV4IGY4MjU0ODdhYTczOS4uMmE5OWYx
NWY1MjdmIDEwMDY0NAotLS0gYS9kcml2ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jCisr
KyBiL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKQEAgLTM3Nyw3ICszNzcsOSBA
QCBzdGF0aWMgaW50IGR3X21jaV9yb2NrY2hpcF9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKIAlwbV9ydW50aW1lX2Rpc2FibGUoJnBkZXYtPmRldik7CiAJcG1fcnVudGltZV9w
dXRfbm9pZGxlKCZwZGV2LT5kZXYpOwogCi0JcmV0dXJuIGR3X21jaV9wbHRmbV9yZW1vdmUocGRl
dik7CisJZHdfbWNpX3BsdGZtX3JlbW92ZShwZGV2KTsKKworCXJldHVybiAwOwogfQogCiBzdGF0
aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgZHdfbWNpX3JvY2tjaGlwX2Rldl9wbV9vcHMgPSB7
Ci0tIAoyLjM2LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
