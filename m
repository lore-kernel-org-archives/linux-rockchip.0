Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0F1AC61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 15:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+X2DQm/LjBpVOspBYADlOEme5h7ZQP4U0kpRCUJxYgU=; b=nkrxTcyS5PzgTS
	PdIy6fpqEmWXE2wxIz7B7beTI31+X7x9/5SyrYwperJf2cbSTwdleYntl4IEvAltvkSASoPon7Xls
	stZmVZZYj9lvpF74VX6/SKEmWOIGNW9vzlOst56A+HvxY+QjOBcT5krBYF4IRCXkgDiQy3Nl+MZud
	9t+/ajsSl5fCCMucslhZA4h0h4DV7e06gLVm+4Gmdzi/Ra+5viEN6ugqamZCX2nkbatCgYo33Tt5E
	cf6WsrtQpqQ43Cz/tr+GRx2yfbDXMaGPu5CDHheeK0t93F1nEQSuExGqhf5IjCWScxzdAsT7xy8vQ
	UnYnu5DQaEXQ+vySktiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSpy-00Dp2H-0w;
	Wed, 15 Mar 2023 15:14:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSkS-00DkFC-0Q
	for linux-rockchip@bombadil.infradead.org;
	Wed, 15 Mar 2023 15:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=NmnEXKV4WGjvrZ6eRB2Utr9cOH1OBX3D2M+ALumVmBE=; b=X8HdbzwdVrrrv0CqjPmaGZ2DBl
	7WwymPHhHbgvvjFGF74kQVqIhE5CBDmGMnDzGSkTKy9cHrNaFVX08FL2NTwPQ9cVPDouBSboMm4Ht
	4BPQuADv9bYjYIK7vSGiz9ZAqjxqXsmks2Dk9d+zcw8V5p6KXXjqHWqDK3JEqxOh+l72CoR7dlWiA
	MfEyag2mviQm1nnnCKgxwnUgKfbMzxb4ij+n/xWvvDZzb18vrL7H4qDGtCPAmQ8EZELK9EQJPE9jv
	L2HDfEg8Q7VfkVopzOsgBUkKHk+7oBOxljuh2H7QIP/lbOeviRkhFqX5Imn0JKa9JnCBuQIGgV1vL
	oM/TBJ5Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSk2-0028eF-1s
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 15:09:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjs-00007Q-4u; Wed, 15 Mar 2023 16:08:28 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjo-004Kd1-AZ; Wed, 15 Mar 2023 16:08:24 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjn-0057jc-I9; Wed, 15 Mar 2023 16:08:23 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 121/173] ASoC: rockchip: rockchip_pdm: Convert to platform remove callback returning void
Date: Wed, 15 Mar 2023 16:06:53 +0100
Message-Id: <20230315150745.67084-122-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230315150745.67084-1-u.kleine-koenig@pengutronix.de>
References: <20230315150745.67084-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1794; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=R5sAzYAeAz7UmVg6PWNYIucRjNJbrP/w9lKFt0p3Gao=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkEd6crhdW9NWhoT42/vTOyQdYigF3pALKqxNJZ NnN8gf0oa2JATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZBHenAAKCRDB/BR4rcrs CV7VCACHC9Ttbsh6xSWGAbxwntOXecBcaQjBkMc+v9ENniX5X74SoujiSvdBudMwghC86tHV5C3 tr05oIw5rG8NeXZHzqOlb/y7yA2nZteiJ4rWuIw+lPd4yDUv7RmoLBkRxLR7zEBGDZ1sNRYLpTn pxJbp1t7rcq2VH7B79ECp1RkfGQNh9TNHa6XwPok8V4JkeBjdC5PwgCm7+cCQO+kr7ymvPu1lCI SzjfUgMw+Qvdvy6DjywJGNZiuixU4Uf0cR/48lqXGg17/f2FUW6S9ivskE1q2uKdR7Q+uunGdIz 4Z6PHEEQZz3rXRMO3vUCWdLj16FbxabRrfglJPps6OPTc+WK
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_150900_906242_6F3814AF 
X-CRM114-Status: GOOD (  16.70  )
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
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogc291
bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3BkbS5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc291bmQvc29j
L3JvY2tjaGlwL3JvY2tjaGlwX3BkbS5jIGIvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3Bk
bS5jCmluZGV4IDZjZTkyYjFkYjc5MC4uNTJmOWFhZTYwYmU4IDEwMDY0NAotLS0gYS9zb3VuZC9z
b2Mvcm9ja2NoaXAvcm9ja2NoaXBfcGRtLmMKKysrIGIvc291bmQvc29jL3JvY2tjaGlwL3JvY2tj
aGlwX3BkbS5jCkBAIC02NjEsNyArNjYxLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wZG1fcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gcmV0OwogfQogCi1zdGF0
aWMgaW50IHJvY2tjaGlwX3BkbV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
K3N0YXRpYyB2b2lkIHJvY2tjaGlwX3BkbV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKIHsKIAlzdHJ1Y3QgcmtfcGRtX2RldiAqcGRtID0gZGV2X2dldF9kcnZkYXRhKCZwZGV2
LT5kZXYpOwogCkBAIC02NzEsOCArNjcxLDYgQEAgc3RhdGljIGludCByb2NrY2hpcF9wZG1fcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAKIAljbGtfZGlzYWJsZV91bnByZXBh
cmUocGRtLT5jbGspOwogCWNsa19kaXNhYmxlX3VucHJlcGFyZShwZG0tPmhjbGspOwotCi0JcmV0
dXJuIDA7CiB9CiAKICNpZmRlZiBDT05GSUdfUE1fU0xFRVAKQEAgLTcxMCw3ICs3MDgsNyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgcm9ja2NoaXBfcGRtX3BtX29wcyA9IHsKIAog
c3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBfcGRtX2RyaXZlciA9IHsKIAku
cHJvYmUgID0gcm9ja2NoaXBfcGRtX3Byb2JlLAotCS5yZW1vdmUgPSByb2NrY2hpcF9wZG1fcmVt
b3ZlLAorCS5yZW1vdmVfbmV3ID0gcm9ja2NoaXBfcGRtX3JlbW92ZSwKIAkuZHJpdmVyID0gewog
CQkubmFtZSA9ICJyb2NrY2hpcC1wZG0iLAogCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9tYXRjaF9w
dHIocm9ja2NoaXBfcGRtX21hdGNoKSwKLS0gCjIuMzkuMgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
