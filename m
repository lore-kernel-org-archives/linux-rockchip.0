Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F546CD343F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 15:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESNGWcotB2PvoY8q9fiZuSju4rbCbyQT5w1XEPLrRlM=; b=VtNr7q1d6Ybdmw
	drARx0K42sW1jaOAh2e5vudGWNIzow7rxp9AcFN00EKaItoj51jvKFehZ9ns2smPUgxCVT6plGLML
	Ana5GPUuFfBK2pFO00ce/zF74aknFnAhoIF0mm2ILp5h2DZGGcoUEh0ZSJ+fR8k9RxtbCQnzb3ZYr
	mpRUod6f/9xuo1eC6FRKw4w6K9OzS+us9WLz0Zm8P3DAOZUpIW9N82deiMAC/PHfFzWQTDhfHkkxx
	lWITAQAnygHSHCit2MoYwxbnXdflwnRiKJV+dxJGXH4yGIMwmnQMdZXJJxHAETQHrQG4Ju4Ljjp54
	J5W0uS0qUmfajIeMsmiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXe-00000008irF-0T6A;
	Fri, 15 May 2026 15:33:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXU-00000008ias-2XiM
	for linux-rockchip@bombadil.infradead.org;
	Fri, 15 May 2026 15:33:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=VLt6FrL1oCiwltoReqO/MKLVt4RIeJYJgVW54ycc/K4=; b=Z72X+jsJS0ImMRG4zBdAq2Gv26
	+jks9+kpwo3Hq9PGl0yYjdqp8fHBVrxIqLtZAupot4LIPrwXygxpVx5Iuqku/pPAiYZAujKngaMIi
	4N9U0nvOAMtCddhMWdax0yMPX03916R9sdSAEfbYcA3AIzUiOOHYqoS3MSJ2IxEZ5qo35mBMm63lI
	5BQiKsfScxLzWo805IUlGY43ZT6r79TXsWxUmCbeg7qGH97sOmOvnrNwAbA0XgKiZcWYHIzTGzLbI
	5mzQ5tAdduf1lbSuQsy96N4HA2faqZiNEV1yd/ZBIHLgAyzkLWwOiixPhEWoVemf091s7tsEG8uvs
	dsbUB/cQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuXR-00000005Ztf-2ABZ
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 15:33:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wNuXF-0005OF-Vv; Fri, 15 May 2026 17:33:10 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Fri, 15 May 2026 17:32:48 +0200
Subject: [PATCH v6 22/28] media: rockchip: rga: remove size from rga_frame
MIME-Version: 1.0
Message-Id: <20260515-spu-rga3-v6-22-e547152eb9c9@pengutronix.de>
References: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
In-Reply-To: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, m.tretter@pengutronix.de, 
 p.zabel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_163321_960721_7CCDB83D 
X-CRM114-Status: GOOD (  13.92  )
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

VGhlIHNpemUgbWVtYmVyIGlzIG9ubHkgdXNlZCBmb3IgdGhlIG1tdSBwYWdlIHRhYmxlIG1hcHBp
bmcuClRoZXJlZm9yZSBhdm9pZCBzdG9yaW5nIHRoZSB2YWx1ZSBhbmQgaW5zdGVhZCBvbmx5IGNh
bGN1bGF0ZSBpdAppbiBwbGFjZS4gVGhpcyBhbHNvIGF2b2lkcyB0aGUgY2FsY3VsYXRpb24gZW50
aXJlbHkgd2hlbiBhbiBleHRlcm5hbAppb21tdSBpcyB1c2VkLgoKUmV2aWV3ZWQtYnk6IE5pY29s
YXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KU2lnbmVkLW9mZi1i
eTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVzY2hlbEBwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMgfCA2ICsrKysrLQogZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgICAgIHwgOCArKy0tLS0tLQogZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggICAgIHwgMSAtCiAzIGZpbGVz
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMKaW5kZXggY2Q2OTA0ZDVmZTVhNi4u
MDkyYzJiZGY2YjY3MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9yZ2EvcmdhLWJ1Zi5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdh
L3JnYS1idWYuYwpAQCAtNzksNiArNzksOCBAQCBzdGF0aWMgaW50IHJnYV9idWZfaW5pdChzdHJ1
Y3QgdmIyX2J1ZmZlciAqdmIpCiAJc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5yZ2E7
CiAJc3RydWN0IHJnYV9mcmFtZSAqZiA9IHJnYV9nZXRfZnJhbWUoY3R4LCB2Yi0+dmIyX3F1ZXVl
LT50eXBlKTsKIAlzaXplX3Qgbl9kZXNjID0gMDsKKwl1MzIgc2l6ZSA9IDA7CisJdTggaTsKIAog
CWlmIChJU19FUlIoZikpCiAJCXJldHVybiBQVFJfRVJSKGYpOwpAQCAtODYsNyArODgsOSBAQCBz
dGF0aWMgaW50IHJnYV9idWZfaW5pdChzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCiAJaWYgKCFyZ2Ff
aGFzX2ludGVybmFsX2lvbW11KHJnYSkpCiAJCXJldHVybiAwOwogCi0Jbl9kZXNjID0gRElWX1JP
VU5EX1VQKGYtPnNpemUsIFBBR0VfU0laRSk7CisJZm9yIChpID0gMDsgaSA8IGYtPnBpeC5udW1f
cGxhbmVzOyBpKyspCisJCXNpemUgKz0gZi0+cGl4LnBsYW5lX2ZtdFtpXS5zaXplaW1hZ2U7CisJ
bl9kZXNjID0gRElWX1JPVU5EX1VQKHNpemUsIFBBR0VfU0laRSk7CiAKIAlyYnVmLT5uX2Rlc2Mg
PSBuX2Rlc2M7CiAJcmJ1Zi0+ZG1hX2Rlc2MgPSBkbWFfYWxsb2NfY29oZXJlbnQocmdhLT5kZXYs
CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCmluZGV4IGNkYTNjZWNi
MWNlOGMuLmU0NGU4MTgxNGI3Y2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmdhL3JnYS5jCkBAIC0yNjgsNyArMjY4LDYgQEAgc3RhdGljIGludCByZ2Ffb3BlbihzdHJ1Y3Qg
ZmlsZSAqZmlsZSkKIAl9OwogCiAJZGVmX2ZyYW1lLnN0cmlkZSA9IChkZWZfd2lkdGggKiBkZWZf
ZnJhbWUuZm10LT5kZXB0aCkgPj4gMzsKLQlkZWZfZnJhbWUuc2l6ZSA9IGRlZl9mcmFtZS5zdHJp
ZGUgKiBkZWZfaGVpZ2h0OwogCiAJY3R4ID0ga3phbGxvY19vYmooKmN0eCk7CiAJaWYgKCFjdHgp
CkBAIC00ODEsOSArNDgwLDYgQEAgc3RhdGljIGludCB2aWRpb2Nfc19mbXQoc3RydWN0IGZpbGUg
KmZpbGUsIHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2Zvcm1hdCAqZikKIAlmcm0gPSByZ2FfZ2V0
X2ZyYW1lKGN0eCwgZi0+dHlwZSk7CiAJaWYgKElTX0VSUihmcm0pKQogCQlyZXR1cm4gUFRSX0VS
Uihmcm0pOwotCWZybS0+c2l6ZSA9IDA7Ci0JZm9yIChpID0gMDsgaSA8IHBpeF9mbXQtPm51bV9w
bGFuZXM7IGkrKykKLQkJZnJtLT5zaXplICs9IHBpeF9mbXQtPnBsYW5lX2ZtdFtpXS5zaXplaW1h
Z2U7CiAJZnJtLT5mbXQgPSByZ2FfZm10X2ZpbmQocmdhLCBwaXhfZm10LT5waXhlbGZvcm1hdCk7
CiAJZnJtLT5zdHJpZGUgPSBwaXhfZm10LT5wbGFuZV9mbXRbMF0uYnl0ZXNwZXJsaW5lOwogCkBA
IC01MDgsMTAgKzUwNCwxMCBAQCBzdGF0aWMgaW50IHZpZGlvY19zX2ZtdChzdHJ1Y3QgZmlsZSAq
ZmlsZSwgdm9pZCAqcHJpdiwgc3RydWN0IHY0bDJfZm9ybWF0ICpmKQogCWN0eC0+Y21kYnVmX2Rp
cnR5ID0gdHJ1ZTsKIAogCXY0bDJfZGJnKGRlYnVnLCAxLCAmcmdhLT52NGwyX2RldiwKLQkJICJb
JXNdIGZtdCAtICVwNGNjICVkeCVkIChzdHJpZGUgJWQsIHNpemVpbWFnZSAlZClcbiIsCisJCSAi
WyVzXSBmbXQgLSAlcDRjYyAlZHglZCAoc3RyaWRlICVkKVxuIiwKIAkJICBWNEwyX1RZUEVfSVNf
T1VUUFVUKGYtPnR5cGUpID8gIk9VVFBVVCIgOiAiQ0FQVFVSRSIsCiAJCSAgJmZybS0+Zm10LT5m
b3VyY2MsIHBpeF9mbXQtPndpZHRoLCBwaXhfZm10LT5oZWlnaHQsCi0JCSAgZnJtLT5zdHJpZGUs
IGZybS0+c2l6ZSk7CisJCSAgZnJtLT5zdHJpZGUpOwogCiAJZm9yIChpID0gMDsgaSA8IHBpeF9m
bXQtPm51bV9wbGFuZXM7IGkrKykgewogCQl2NGwyX2RiZyhkZWJ1ZywgMSwgJnJnYS0+djRsMl9k
ZXYsCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2Eu
aCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCmluZGV4IGIxODBk
ZjVjNDgzNzAuLmQ0N2M2ODIxY2UyYzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcm9ja2NoaXAvcmdhL3JnYS5oCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmdhL3JnYS5oCkBAIC0zNCw3ICszNCw2IEBAIHN0cnVjdCByZ2FfZnJhbWUgewogCiAJLyog
VmFyaWFibGVzIHRoYXQgY2FuIGNhbGN1bGF0ZWQgb25jZSBhbmQgcmV1c2VkICovCiAJdTMyIHN0
cmlkZTsKLQl1MzIgc2l6ZTsKIH07CiAKIHN0cnVjdCByZ2FfZG1hX2Rlc2MgewoKLS0gCjIuNTQu
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
