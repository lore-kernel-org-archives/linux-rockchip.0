Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9602DC7618B
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWeWJpovSupLwxnBGWaJbhf9+T7dOCOmWbDgL4kqwyc=; b=ht8I/XUI2jtL/2
	7B5Smfic2A4oVBLlbG7nuIV4wg6pnCPx26H9QZm9/Yx0Z0Rz2C4F0JPeuwLc/LUCXzauM8KGSwSO6
	kz659sAx2TcPZoyiX7CrduAcc3XzqCrBRCGj+6DRZqJIcNSRvniNlr/OwasKZ2mblRsK/ylSFWYUT
	2w3DbZKgZHy3su2An8BjKgjEAXrdMzYAOrMrb8chEIAhgywvEtxZm+9vf4bcUVnNvw/tJdiP7dNAF
	3rSQmTTKM0MVxFVXOsG6OypfEE+owG2Bo4SlKKVlM3oV+FbIsgo6fDZVtiJVfIWbCl2YkbtvL+Db0
	+8EgukqeG6nPCbFyzdwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSln-00DlK6-2Y;
	Wed, 15 Mar 2023 15:10:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSk7-00Djzt-05
	for linux-rockchip@bombadil.infradead.org;
	Wed, 15 Mar 2023 15:08:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=D/WjMxxedhaPxY7OMzM6sTfuNSkopIOKiVr7fDDVabU=; b=pPK5kVMg0qAaAchQg8LfgXJ/ZT
	Ggr2NIOknv6UTcF3TS+NhsQotbBgIWYlpNP38o7b9jQjnIbvDxS9ENR/8/BnCDRIgVcDHGo+APpXv
	euI2EtaSOl6mhsBdpEG3MZuaIasvIRmV0fgnZt5U6lHNblGtzA1gj5uqW3HDzCwVIxg4Z4FAGH1nR
	UbOcgk10Vb3kOspKc9BGlXF0auc0Xznv5cPS8zIPotZxx7GG90D61KsDqlnaJXSn+Lt0unR9Yn91f
	wJT+5KU7SXibI0xYnVaD+MDbwC29MD+sbFP8vUYULMIPTsn5PE7gzezuS45mH2+3CqpXCqscDr1Bf
	PhZxWSbQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSk1-0028d2-0v
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 15:08:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjr-00005m-Q3; Wed, 15 Mar 2023 16:08:27 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjn-004Kcq-RU; Wed, 15 Mar 2023 16:08:23 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjn-0057jV-3h; Wed, 15 Mar 2023 16:08:23 +0100
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
Subject: [PATCH 119/173] ASoC: rockchip: rockchip_i2s: Convert to platform remove callback returning void
Date: Wed, 15 Mar 2023 16:06:51 +0100
Message-Id: <20230315150745.67084-120-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230315150745.67084-1-u.kleine-koenig@pengutronix.de>
References: <20230315150745.67084-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1820; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=ZdN5klOvP29SLEvL9BI/I7KMW66b93lMlx6fT9RACus=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkEd6WemVdfuqwbUAkWKuntINDcKvOWrL0cEGeh Ee6iAGfQPSJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZBHelgAKCRDB/BR4rcrs CaTSB/wPuI/OBYaVHWcxJ5VpT8HzmX3sG7MAiLtlNlaP8Gah5scZSqJIjLXeQoozOA6b1hw5UTd 1oeX1fwtgbNYA82yxbZIVJQvvW4B3Sm97gxcvMSK8aLqarRHoirRyne4rdXICNMfT53gz71pOdq rYd3kD8W+3dYQNNmeDA5CuuZkitBGjI3SCJ7Gvsbdzw8/WwFjtvpc0vfWXsj7D3RSJ0K2d5LRTr +rZZkAsCF3vNrK4faLodDCmDwc1wm5j+5trYuTY79cJfPjsmT/Y1DhYciinZW0BcfIFuOULvmjc bf5y/CgQVty7SW3fbWfS9bnNnu6vMkUWVNbRXeLw5pZkJpD1
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_150839_249142_831BA76B 
X-CRM114-Status: GOOD (  16.79  )
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
bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX2kycy5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc291bmQvc29j
L3JvY2tjaGlwL3JvY2tjaGlwX2kycy5jIGIvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX2ky
cy5jCmluZGV4IGE4NzU4YWQ2ODQ0Mi4uNzlhYmVjMjRhNWEyIDEwMDY0NAotLS0gYS9zb3VuZC9z
b2Mvcm9ja2NoaXAvcm9ja2NoaXBfaTJzLmMKKysrIGIvc291bmQvc29jL3JvY2tjaGlwL3JvY2tj
aGlwX2kycy5jCkBAIC04NTAsNyArODUwLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9pMnNfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gcmV0OwogfQogCi1zdGF0
aWMgaW50IHJvY2tjaGlwX2kyc19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
K3N0YXRpYyB2b2lkIHJvY2tjaGlwX2kyc19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKIHsKIAlzdHJ1Y3QgcmtfaTJzX2RldiAqaTJzID0gZGV2X2dldF9kcnZkYXRhKCZwZGV2
LT5kZXYpOwogCkBAIC04NTksOCArODU5LDYgQEAgc3RhdGljIGludCByb2NrY2hpcF9pMnNfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCWkyc19ydW50aW1lX3N1c3BlbmQo
JnBkZXYtPmRldik7CiAKIAljbGtfZGlzYWJsZV91bnByZXBhcmUoaTJzLT5oY2xrKTsKLQotCXJl
dHVybiAwOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgcm9ja2NoaXBfaTJz
X3BtX29wcyA9IHsKQEAgLTg3MCw3ICs4NjgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRldl9w
bV9vcHMgcm9ja2NoaXBfaTJzX3BtX29wcyA9IHsKIAogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9k
cml2ZXIgcm9ja2NoaXBfaTJzX2RyaXZlciA9IHsKIAkucHJvYmUgPSByb2NrY2hpcF9pMnNfcHJv
YmUsCi0JLnJlbW92ZSA9IHJvY2tjaGlwX2kyc19yZW1vdmUsCisJLnJlbW92ZV9uZXcgPSByb2Nr
Y2hpcF9pMnNfcmVtb3ZlLAogCS5kcml2ZXIgPSB7CiAJCS5uYW1lID0gRFJWX05BTUUsCiAJCS5v
Zl9tYXRjaF90YWJsZSA9IG9mX21hdGNoX3B0cihyb2NrY2hpcF9pMnNfbWF0Y2gpLAotLSAKMi4z
OS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
