Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53A2CC61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 15:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+YQseh+GVN4vNdqeh6cqvc4Y/QygUEN3CVIYVbFlpfI=; b=Lfeii8uAdYDtfG
	WXfMcPXzAOgrTw9m7DorGSt9rQvk6dVGmPSWLvDvu2b+xMBs503u+neT832Md915aegMdE6GdJlm9
	/ZI5Y2CQW0JvPEEbSY/fyXbFkCyx5UbPoloMHdyxkX52HEW15ZSqGw0r5/Ui/JYOGPK063vnCkyIR
	Krrx1A11JIh88MWlfM71vA4kHdEpKXW46F5Mh3xRE3bb2c/PBiHk5sB9JRoWbXUJHFD2zzI86W2V2
	iD8hLFM9jOie6zXWJXIYu2KI0FWzy+kadrdAUNAeNBky/VUzKvpizYCMsXb69XLwRzmXTffp3xhfA
	FjN2YaFMF70zHSZ2EDMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSn4-00DmOU-2s;
	Wed, 15 Mar 2023 15:11:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSkD-00Dk3t-22
	for linux-rockchip@bombadil.infradead.org;
	Wed, 15 Mar 2023 15:08:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=CCz9bK9OG13BhN989AUTd0Peg61F+BYO8zgNGNTA76E=; b=JtjIsc3O7n+LF3/VTQbsxYrBDJ
	TyZ5kmmgV6f7VbLSBwHyjt8bzukN2qzxWry7JByuGTunN6NaBVpfJhJ1c5OehaFUkO0RnLhk/Zamq
	i2e8UHQeAzFbH7r+FHNlLHWpRV8lxQQzKAvIzhuLGuBOcmwa7o/LfEEHYVTy6eUrSq46GIOZZQNMR
	BxS+if72UtdbAkEl0b0X4U9Cyxbuu4EJli96Sm1yeDth3IlImm5UrlrcdGheqXW2Z4j1tIPOWL+Wc
	1H4jC8+95uP3Q3CVUMpOs0UNXAj2bdmkoTW1VW6tduVYRycXhRxfdTq4lyqTUPCjEQcG1muIYvo6E
	TxcrCgxA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSk3-0028ea-1j
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 15:08:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjs-00006b-1H; Wed, 15 Mar 2023 16:08:28 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjo-004Kcw-41; Wed, 15 Mar 2023 16:08:24 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjn-0057jY-Ai; Wed, 15 Mar 2023 16:08:23 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 120/173] ASoC: rockchip: rockchip_i2s_tdm: Convert to platform remove callback returning void
Date: Wed, 15 Mar 2023 16:06:52 +0100
Message-Id: <20230315150745.67084-121-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230315150745.67084-1-u.kleine-koenig@pengutronix.de>
References: <20230315150745.67084-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1807; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=bxa7oqwO4CDIhDDV/+gTG3tBSwdbzGBsmosnfqeoLaY=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkEd6ZppXe7kh2gT9GFFh7N7KCNurmQRJeuc3hj khN4tvLC2+JATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZBHemQAKCRDB/BR4rcrs CVFWCACTvskd6CjuJJv2mGvB9WqemBva4WyJup6JkKzyHHI46MtxXK88Bc7BFV5bVq69hoDHJf6 apmLfll3+uSPFXjUEKXaHdW5ukGDAt1ErmVqS/vL6FilGrO48SyZfoSVQN6SL8uXNQDel0xhIHw qlhhmFZGfA8voisLJW9yrtkKjCWvAloPIyKz+McWBhx+arOCz3DKgBSlHnbrfycWXQfMXG4rdXN 5tAuDANryH93tW7a3ou2SvlGSjidmcwY0lIa+YqD/sn0vMaRWOBR6LEe416MWEXyYRTwS66RR74 a+mo7CofdSC1h/MV/UdOkft3HR6TAPvxOd8yfTMEhzukQFIg
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_150843_666392_8AC7BDC0 
X-CRM114-Status: GOOD (  16.47  )
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
bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX2kyc190ZG0uYyB8IDYgKystLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NvdW5k
L3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9pMnNfdGRtLmMgYi9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9j
a2NoaXBfaTJzX3RkbS5jCmluZGV4IDE2NjI1N2M2YWUxNC4uYzJlOWZkNWFiMDVlIDEwMDY0NAot
LS0gYS9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfaTJzX3RkbS5jCisrKyBiL3NvdW5kL3Nv
Yy9yb2NrY2hpcC9yb2NrY2hpcF9pMnNfdGRtLmMKQEAgLTE3MjIsMTQgKzE3MjIsMTIgQEAgc3Rh
dGljIGludCByb2NrY2hpcF9pMnNfdGRtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCiAJcmV0dXJuIHJldDsKIH0KIAotc3RhdGljIGludCByb2NrY2hpcF9pMnNfdGRtX3JlbW92
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQorc3RhdGljIHZvaWQgcm9ja2NoaXBfaTJz
X3RkbV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlpZiAoIXBtX3J1
bnRpbWVfc3RhdHVzX3N1c3BlbmRlZCgmcGRldi0+ZGV2KSkKIAkJaTJzX3RkbV9ydW50aW1lX3N1
c3BlbmQoJnBkZXYtPmRldik7CiAKIAlwbV9ydW50aW1lX2Rpc2FibGUoJnBkZXYtPmRldik7Ci0K
LQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGludCBfX21heWJlX3VudXNlZCByb2NrY2hpcF9pMnNf
dGRtX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQpAQCAtMTc2NCw3ICsxNzYyLDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHJvY2tjaGlwX2kyc190ZG1fcG1fb3BzID0gewog
CiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciByb2NrY2hpcF9pMnNfdGRtX2RyaXZlciA9
IHsKIAkucHJvYmUgPSByb2NrY2hpcF9pMnNfdGRtX3Byb2JlLAotCS5yZW1vdmUgPSByb2NrY2hp
cF9pMnNfdGRtX3JlbW92ZSwKKwkucmVtb3ZlX25ldyA9IHJvY2tjaGlwX2kyc190ZG1fcmVtb3Zl
LAogCS5kcml2ZXIgPSB7CiAJCS5uYW1lID0gRFJWX05BTUUsCiAJCS5vZl9tYXRjaF90YWJsZSA9
IG9mX21hdGNoX3B0cihyb2NrY2hpcF9pMnNfdGRtX21hdGNoKSwKLS0gCjIuMzkuMgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
