Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0236BC61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 15:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=07/sji9v8zK1sQfKuULaZkGpQcP3a9WoCTAaF0XBnqQ=; b=2luqZ3imF98utF
	lT4wwKYBRjIcWfrmbYCuuW60W0SPYWdlV9a1AJ1imTpnXAI46AXIUGgE+y53mGQ6d/zP+3aYpHfAU
	MkL/a3vTXhd6wGbLw2Jo3u1jmRC7lYamUzymZmpgS8+NqWhfQ5T2A/OtqKC8dtpY4ZwWLtq1zP7AP
	nWoUoUW6/napFAIFBdHFhDuR0ltMjNt/EebUuz7T+SQR95yk5ypnesUbnAcf3RbEfpH1AsziKKwrj
	zZ9zgeji883nlOWixYRHCXOuCEuPC9B1YlswT4TLH7hgOQJ+0LgIEBAo5poBLYU7Dox+t9G03eSg0
	PLOXFI9y/oKSV+tW4nbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSou-00DnzN-0T;
	Wed, 15 Mar 2023 15:13:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSkM-00DkAU-2y
	for linux-rockchip@bombadil.infradead.org;
	Wed, 15 Mar 2023 15:08:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=DmFjc5U25IWJxaQfuxhScHyrMDMnueYQitAoiBYcRlc=; b=q20P1o9n169KnwQLGuslvtyfAQ
	tE8k/Nc3m933R3kkaq5k/W2pWK3ed2DHn+AJlvr/fw6hLLDQYcYHjOGqqOBJl5dA6Va+vg/Pje/iV
	AKO740I4cP/l6EEmROkJe8RI4jOHIoqJ0WN2O1FYYZB1g3evWUP2mcS4SFAGEY71NkdYYoDCwCaNh
	ckjKdorXrgyCne9XndB0M69yc7YPERZ/65p8uhcMr0X7pabh6mDvkeulSK4ti5tS5zucHzVxEpKwi
	7ckq9NIPGj/sn4GTLeZYnwZh5DQs5eHri4femz5rfsQmdQyrjPQVkjegxNNvgMS4bhHBFJ5FjkM15
	AbsJiZXw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pcSkC-00Dw1J-Jv
	for linux-rockchip@lists.infradead.org; Wed, 15 Mar 2023 15:08:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjs-00007m-6A; Wed, 15 Mar 2023 16:08:28 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjo-004Kd4-CM; Wed, 15 Mar 2023 16:08:24 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjn-0057jg-PB; Wed, 15 Mar 2023 16:08:23 +0100
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
Subject: [PATCH 122/173] ASoC: rockchip: rockchip_rt5645: Convert to platform remove callback returning void
Date: Wed, 15 Mar 2023 16:06:54 +0100
Message-Id: <20230315150745.67084-123-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230315150745.67084-1-u.kleine-koenig@pengutronix.de>
References: <20230315150745.67084-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1733; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=DYgV418G1HHJeUqCA1P1kSgz2wPVPuFAcd/9MCT5gwM=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkEd6f1wJzQoQD2KJzDYqef/HTE55r9Gi6cw/3Y j+egw14J2yJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZBHenwAKCRDB/BR4rcrs CStYB/wKLpGaEafdneDGlLIhen0gzV3CF324RUbG9aCV5HIu06+4ZtTa3ojtN2fdpsiyPnDSnQh RYSpAIJda34Z26emwUC1P7qwqjBqxDMT6K2gvK+8o99EdttfdR83juiiymJg/fAEX8U4OjtEWgC 9PT2Xtx6CoMIMkRkcbhDv2wOSchPsfLFxE+YkSWgQYrsBuAscZmMrkrfDY+0T1KRHgym7X1hTga UJAhaxFCxh5zhxy3OcmEuDhwCNvWcshLE62Hd9nvqr2z/b0aoetqFXh2aJw74WPWQKz6/mOaruf gQfin9fYn38PLvvIty1tW/im8tlNMtiOi743hv1yOZM9GQWc
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_150849_236751_0EFD76A5 
X-CRM114-Status: GOOD (  13.11  )
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
bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3J0NTY0NS5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc291bmQv
c29jL3JvY2tjaGlwL3JvY2tjaGlwX3J0NTY0NS5jIGIvc291bmQvc29jL3JvY2tjaGlwL3JvY2tj
aGlwX3J0NTY0NS5jCmluZGV4IGQwN2NjNWM4MTNmMi4uZTczYTM0MmI3OTUzIDEwMDY0NAotLS0g
YS9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfcnQ1NjQ1LmMKKysrIGIvc291bmQvc29jL3Jv
Y2tjaGlwL3JvY2tjaGlwX3J0NTY0NS5jCkBAIC0yMDYsMTQgKzIwNiwxMiBAQCBzdGF0aWMgaW50
IHNuZF9ya19tY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldHVybiBy
ZXQ7CiB9CiAKLXN0YXRpYyBpbnQgc25kX3JrX21jX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQorc3RhdGljIHZvaWQgc25kX3JrX21jX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQogewogCW9mX25vZGVfcHV0KHJrX2RhaWxpbmsuY3B1cy0+b2Zfbm9kZSk7
CiAJcmtfZGFpbGluay5jcHVzLT5vZl9ub2RlID0gTlVMTDsKIAlvZl9ub2RlX3B1dChya19kYWls
aW5rLmNvZGVjcy0+b2Zfbm9kZSk7CiAJcmtfZGFpbGluay5jb2RlY3MtPm9mX25vZGUgPSBOVUxM
OwotCi0JcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJv
Y2tjaGlwX3J0NTY0NV9vZl9tYXRjaFtdID0gewpAQCAtMjI1LDcgKzIyMyw3IEBAIE1PRFVMRV9E
RVZJQ0VfVEFCTEUob2YsIHJvY2tjaGlwX3J0NTY0NV9vZl9tYXRjaCk7CiAKIHN0YXRpYyBzdHJ1
Y3QgcGxhdGZvcm1fZHJpdmVyIHNuZF9ya19tY19kcml2ZXIgPSB7CiAJLnByb2JlID0gc25kX3Jr
X21jX3Byb2JlLAotCS5yZW1vdmUgPSBzbmRfcmtfbWNfcmVtb3ZlLAorCS5yZW1vdmVfbmV3ID0g
c25kX3JrX21jX3JlbW92ZSwKIAkuZHJpdmVyID0gewogCQkubmFtZSA9IERSVl9OQU1FLAogCQku
cG0gPSAmc25kX3NvY19wbV9vcHMsCi0tIAoyLjM5LjIKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
