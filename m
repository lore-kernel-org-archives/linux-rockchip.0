Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ED9ACE7A96
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 09:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nOgtQOAU0GX2en9GGob/QMlDWUmEFz3NNtskHrl8sSI=; b=uMnnxVvP59+Y+o
	Z8BAcMLd7vDjuocpSFaUrue4nvsS1o9H+g9Qcvpb5YKbbWcEtf22lBhsbfXKDDmiwhD5gNGsnBdgj
	iKcQorPIw0T8YsOpfOSa2EmEHKqLBm0cU716XAXvO+q2m8M225c1TO71mfnfR9Sn0P/bJMPDuKUNc
	ua2AU9qY1fDTYzFjmQ5+8Rb3B0s37ZAVj9NCwmq0y66eMrTbO2i1epPfiJ3SgY7aWe51svhyxaVAo
	4iJheaUZBJYo2BxKXPvhrFwnuPnc3lycQawWM/Ze9FoUCf+U0PfSzSz8/4TKPJcqQK2JimUAPC0zW
	15Bw1vw8ImTuXgeWEpEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkiJr-00Dtpf-0L;
	Mon, 25 Sep 2023 09:55:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkiJc-00Dtf2-0t
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 09:55:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qkiJa-00083B-ND; Mon, 25 Sep 2023 11:55:42 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qkiJa-008q0T-64; Mon, 25 Sep 2023 11:55:42 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qkiJZ-004dmI-TM; Mon, 25 Sep 2023 11:55:41 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de
Subject: [PATCH 30/40] soc/rockchip: io-domain: Convert to platform remove callback returning void
Date: Mon, 25 Sep 2023 11:55:21 +0200
Message-Id: <20230925095532.1984344-31-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230925095532.1984344-1-u.kleine-koenig@pengutronix.de>
References: <20230925095532.1984344-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1863; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=dSb9QNeIckA738H8tOK4mdlXe6+NMGUKtANgI6GyJvY=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlEVhhLmCL9V7I1ameNsoabvEahY8rsNxRFzmCZ MhyoiSvkuaJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZRFYYQAKCRCPgPtYfRL+ TqsQB/9O+lvyEqVpjhB5clMRQGvlRE2E4pIuH64H6vN9WvwD5VS8yymgO0poaWwThVyUFi+99fT U093S8k4KltHmhp1f3W6QsxW5PRVITqv1aAfgbppx3udLWVOGS0Kxddhx6IQC6B1BH0ObMYLeS+ IyUyRbRc6+6yg6g47KD97bvsnYI0v7WSsNoYgqIFq6/q1qqc9cQcXpX+52TtX14VBmjcAc+8Z09 +4iATbjiqKUDmFD46IaH6VEfdqTT3kCBNefhCFKrhSxJR1Fphp7M0lRSrxo0+rE2e65cnk/OJXo MahpxRkHCxfat45eiM6+ExAZ7EOdKL3c+6aMRulj8Mk7KaL/
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230925_025544_315988_C114A57F 
X-CRM114-Status: GOOD (  15.73  )
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
ClRvIGltcHJvdmUgaGVyZSB0aGVyZSBpcyBhIHF1ZXN0IHRvIG1ha2UgdGhlIHJlbW92ZSBjYWxs
YmFjayByZXR1cm4Kdm9pZC4gSW4gdGhlIGZpcnN0IHN0ZXAgb2YgdGhpcyBxdWVzdCBhbGwgZHJp
dmVycyBhcmUgY29udmVydGVkIHRvCi5yZW1vdmVfbmV3KCkgd2hpY2ggYWxyZWFkeSByZXR1cm5z
IHZvaWQuIEV2ZW50dWFsbHkgYWZ0ZXIgYWxsIGRyaXZlcnMKYXJlIGNvbnZlcnRlZCwgLnJlbW92
ZV9uZXcoKSB3aWxsIGJlIHJlbmFtZWQgdG8gLnJlbW92ZSgpLgoKVHJpdmlhbGx5IGNvbnZlcnQg
dGhpcyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92ZQpjYWxs
YmFjayB0byB0aGUgdm9pZCByZXR1cm5pbmcgdmFyaWFudC4KClNpZ25lZC1vZmYtYnk6IFV3ZSBL
bGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVy
cy9zb2Mvcm9ja2NoaXAvaW8tZG9tYWluLmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9y
b2NrY2hpcC9pby1kb21haW4uYyBiL2RyaXZlcnMvc29jL3JvY2tjaGlwL2lvLWRvbWFpbi5jCmlu
ZGV4IDY2MTkyNTZjMmQxMS4uMThmODA5YzE2MGE3IDEwMDY0NAotLS0gYS9kcml2ZXJzL3NvYy9y
b2NrY2hpcC9pby1kb21haW4uYworKysgYi9kcml2ZXJzL3NvYy9yb2NrY2hpcC9pby1kb21haW4u
YwpAQCAtNjg3LDcgKzY4Nyw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfaW9kb21haW5fcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gcmV0OwogfQogCi1zdGF0aWMg
aW50IHJvY2tjaGlwX2lvZG9tYWluX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQorc3RhdGljIHZvaWQgcm9ja2NoaXBfaW9kb21haW5fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHJvY2tjaGlwX2lvZG9tYWluICppb2QgPSBwbGF0Zm9y
bV9nZXRfZHJ2ZGF0YShwZGV2KTsKIAlpbnQgaTsKQEAgLTY5OSwxMyArNjk5LDExIEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfaW9kb21haW5fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCiAJCQlyZWd1bGF0b3JfdW5yZWdpc3Rlcl9ub3RpZmllcihpb19zdXBwbHktPnJlZywKIAkJ
CQkJCSAgICAgICZpb19zdXBwbHktPm5iKTsKIAl9Ci0KLQlyZXR1cm4gMDsKIH0KIAogc3RhdGlj
IHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBfaW9kb21haW5fZHJpdmVyID0gewogCS5w
cm9iZSAgID0gcm9ja2NoaXBfaW9kb21haW5fcHJvYmUsCi0JLnJlbW92ZSAgPSByb2NrY2hpcF9p
b2RvbWFpbl9yZW1vdmUsCisJLnJlbW92ZV9uZXcgPSByb2NrY2hpcF9pb2RvbWFpbl9yZW1vdmUs
CiAJLmRyaXZlciAgPSB7CiAJCS5uYW1lICA9ICJyb2NrY2hpcC1pb2RvbWFpbiIsCiAJCS5vZl9t
YXRjaF90YWJsZSA9IHJvY2tjaGlwX2lvZG9tYWluX21hdGNoLAotLSAKMi40MC4xCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
