Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4BFCC7618D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 15:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nhxKHH7Y1a6cPgjlq8ynldOIXnldIBa+guvQMqkS0Es=; b=sHz0DktzmXnnzx
	KPqbmovx9Ihwj7HK7Kagc/tSy06qd4zQZPEudK9veyENoxSzfUxLGAyWz//7g3u0/5Twl8BakdOII
	23iJP9J20GvEEFxaryKDkodO0ZEVmFHVhXse+eINqkgDW3EtElrooAjjNK4Wz75OFk7J1kLNY6T8c
	ZWHk2DtMUzDMIHnTAy1kDcYc8Xo57sYBW+96+4mcbKPENCZLPByqLwWzzuGUaqon8G+md6zWafdj7
	9idlLHUyr0KEGiIjR0Wkc6bC3wHdkM+s3MYQxLmL4AOHat39MDLSbStd+a4A5+kON/jIZwN9fCne5
	/pICvMf28LAUc5UWqlNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSmF-00Dlff-27;
	Wed, 15 Mar 2023 15:10:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSk8-00Dk1c-2O
	for linux-rockchip@bombadil.infradead.org;
	Wed, 15 Mar 2023 15:08:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=rshwgyjTioCO71faCxfTB8qD+5xiCDh3lm5oIJNYJSI=; b=NN44dzc5PetyihowdtRR4rmIs6
	3KLQ4V0+qQ+ZMb/vsNGn0hvPCl7HiSkiHkXJWNdOPTj6KdQGUKrJUTpEDIwBCLdNuqBHqhV7PhcGb
	yN+hSog6OgtpNxr8ALlKbh/JwlgoCZ7de6aG1xcmfysgkoD6JUwmM2UqORWyVyEo5XKGb18YIU3cv
	MQiG5TZTN8S08wX73CcLAwJvdZ8hZHe7MoeUMiZQhipEIYSkToyqYWswUAYqJYzMyt6B+SgBEsgTu
	t3Cr1zLm2fvRdBieLichnltaca1freGh5O5tm5EAhnnlNyYa1RgayRPjRJNJoQYWkiNTSL6Q3peYu
	Gs7bkWSA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSk3-0028ep-36
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 15:08:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjs-00008j-Gl; Wed, 15 Mar 2023 16:08:28 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjo-004KdB-K2; Wed, 15 Mar 2023 16:08:24 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcSjo-0057jl-1Z; Wed, 15 Mar 2023 16:08:24 +0100
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
Subject: [PATCH 123/173] ASoC: rockchip: rockchip_spdif: Convert to platform remove callback returning void
Date: Wed, 15 Mar 2023 16:06:55 +0100
Message-Id: <20230315150745.67084-124-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230315150745.67084-1-u.kleine-koenig@pengutronix.de>
References: <20230315150745.67084-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1707; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=rlWaemh5g1rU89YQHf9WoIxkHz6iNm5nKoRUg8ayQWU=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkEd6iN/f1A+POuc00eAzNx+MicdH5YwPwIHzDF fnYJxlQM+qJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZBHeogAKCRDB/BR4rcrs CWCaB/9ZFn64nRSnQ7vzabp6712lwI3s6X0NLJKZD5OP+GPLprl/YMMK/KksxgLBIh9XzWdr/+2 7dlGddyyvmsTKFVBmc006vaXoj/An8bywG82MJyN4sQ+FsSofM2KhUXakOF0aJRrwobi6dxLK65 VUfLhskBlZye7NpnTDMD/AtwfFAVZeb1mXBujvPJxhvKIXd4lKZx1Gccfhv5e+u7unG78LYoJ64 v8MzPA+ViWbkzym9jVSjti1dENGjnXDueup7SnyDmGpet4tfoFhTtbw2/J3EuyWmplu0Coh2k6B ybes8lR+RJNg9cGZ54EolMScG65aMldYl2kEsYkzdbMhhLVx
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_150841_847972_1A4CEA9A 
X-CRM114-Status: GOOD (  16.99  )
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
bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3NwZGlmLmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zb3VuZC9z
b2Mvcm9ja2NoaXAvcm9ja2NoaXBfc3BkaWYuYyBiL3NvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hp
cF9zcGRpZi5jCmluZGV4IDJkOTM3ZmNmMzU3ZC4uMGI3M2ZlOTRlNGJiIDEwMDY0NAotLS0gYS9z
b3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfc3BkaWYuYworKysgYi9zb3VuZC9zb2Mvcm9ja2No
aXAvcm9ja2NoaXBfc3BkaWYuYwpAQCAtMzY3LDEzICszNjcsMTEgQEAgc3RhdGljIGludCBya19z
cGRpZl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldHVybiByZXQ7CiB9
CiAKLXN0YXRpYyBpbnQgcmtfc3BkaWZfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCitzdGF0aWMgdm9pZCBya19zcGRpZl9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKIHsKIAlwbV9ydW50aW1lX2Rpc2FibGUoJnBkZXYtPmRldik7CiAJaWYgKCFwbV9ydW50
aW1lX3N0YXR1c19zdXNwZW5kZWQoJnBkZXYtPmRldikpCiAJCXJrX3NwZGlmX3J1bnRpbWVfc3Vz
cGVuZCgmcGRldi0+ZGV2KTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0
IGRldl9wbV9vcHMgcmtfc3BkaWZfcG1fb3BzID0gewpAQCAtMzgzLDcgKzM4MSw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZGV2X3BtX29wcyBya19zcGRpZl9wbV9vcHMgPSB7CiAKIHN0YXRpYyBz
dHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHJrX3NwZGlmX2RyaXZlciA9IHsKIAkucHJvYmUgPSBya19z
cGRpZl9wcm9iZSwKLQkucmVtb3ZlID0gcmtfc3BkaWZfcmVtb3ZlLAorCS5yZW1vdmVfbmV3ID0g
cmtfc3BkaWZfcmVtb3ZlLAogCS5kcml2ZXIgPSB7CiAJCS5uYW1lID0gInJvY2tjaGlwLXNwZGlm
IiwKIAkJLm9mX21hdGNoX3RhYmxlID0gb2ZfbWF0Y2hfcHRyKHJrX3NwZGlmX21hdGNoKSwKLS0g
CjIuMzkuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
