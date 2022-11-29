Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3A60C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 19:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/95jMWjf61M7eZ9626ZLsTIq6BgHgjcqkIlE4rh+Oc=; b=QcPCEW2C07FHuT
	koO6UJqquaakdXDcJn0wbjNPFFmg75rDu2CLzZ362XXWIC0M/ezL/MuCxGmfMSkzxenzkCGoWaihS
	piTF25bR4wzOpYS7OK24nW8s/04eDykGJWM9nFL7bmBE0kzFlGJw744Bkorw4leNefcsUwbK3Y9UA
	vAouX1otAoA73cnhfv1dgaIxEFMvw5ve804poZlhFCRCdZbCxD4cUV0Pxkjhl2Xb6sCdu6vaLjk4t
	U57ifCVeShRwnzYOaUTVo7PF65nIZiEwa07Lhwm19Kc86AAZCADTiHzF8q7SWTvhaZmvCUGOQgVxz
	rBVa+QWf6LivNbFIPujA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0682-00Az5Z-NL; Tue, 29 Nov 2022 19:18:50 +0000
Received: from aposti.net ([89.234.176.197])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p067M-00AysL-FC; Tue, 29 Nov 2022 19:18:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1669749472; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G8DuH3BuKovOG4Q7ExNfPyHxexqJONRgTC1VLQg6L9Q=;
	b=XeDFUB1JkUgh0wnq9Xls3sBZht0UmGP/izWeb/iRwRNzHrS979IvpylbCjC2/q+8aUq3tT
	EOXMv8WFDy5gjLgrVnvlKo9WSBkpvLWBCb0cWc69f1vAl/XjHyvw2TCphvzX22HwJnUhIf
	4WmBhw+t+MczTtU+iytYxf4ZzAVrONY=
From: Paul Cercueil <paul@crapouillou.net>
To: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Paul Cercueil <paul@crapouillou.net>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 04/26] drm: rockchip: Define and use generic PM ops
Date: Tue, 29 Nov 2022 19:17:11 +0000
Message-Id: <20221129191733.137897-5-paul@crapouillou.net>
In-Reply-To: <20221129191733.137897-1-paul@crapouillou.net>
References: <20221129191733.137897-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221129_111808_699467_27522CFD 
X-CRM114-Status: GOOD (  12.82  )
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

VXNlIHRoZSBuZXcgREVGSU5FX0RSTV9NT0RFX0NPTkZJR19IRUxQRVJfUE1fT1BTKCkgbWFjcm8g
dG8gY3JlYXRlIGEKInN0cnVjdCBkZXZfcG1fb3BzIiB0aGF0IGNhbiBiZSB1c2VkIGJ5IHRoaXMg
ZHJpdmVyLCBpbnN0ZWFkIG9mIHVzaW5nCmN1c3RvbSBQTSBjYWxsYmFja3Mgd2l0aCB0aGUgc2Ft
ZSBiZWhhdmlvdXIuCgp2MjogVXNlIHRoZSBERUZJTkVfRFJNX01PREVfQ09ORklHX0hFTFBFUl9Q
TV9PUFMoKSBtYWNybyBpbnN0ZWFkIG9mIGFuCiAgICBleHBvcnRlZCBkZXZfcG1fb3BzLgoKU2ln
bmVkLW9mZi1ieTogUGF1bCBDZXJjdWVpbCA8cGF1bEBjcmFwb3VpbGxvdS5uZXQ+Ci0tLQpDYzog
U2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBzLmNvbT4KQ2M6ICJIZWlrbyBTdMO8Ym5lciIgPGhl
aWtvQHNudGVjaC5kZT4KQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpD
YzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgfCAyNSArKystLS0tLS0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgYi9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCmluZGV4IDZlMDc4OGQxNGMx
MC4uZWMxMTdjNTJjYjI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fZHJ2LmMKQEAgLTIzNiwyNyArMjM2LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZHJp
dmVyIHJvY2tjaGlwX2RybV9kcml2ZXIgPSB7CiAJLm1pbm9yCT0gRFJJVkVSX01JTk9SLAogfTsK
IAotI2lmZGVmIENPTkZJR19QTV9TTEVFUAotc3RhdGljIGludCByb2NrY2hpcF9kcm1fc3lzX3N1
c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQotewotCXN0cnVjdCBkcm1fZGV2aWNlICpkcm0gPSBk
ZXZfZ2V0X2RydmRhdGEoZGV2KTsKLQotCXJldHVybiBkcm1fbW9kZV9jb25maWdfaGVscGVyX3N1
c3BlbmQoZHJtKTsKLX0KLQotc3RhdGljIGludCByb2NrY2hpcF9kcm1fc3lzX3Jlc3VtZShzdHJ1
Y3QgZGV2aWNlICpkZXYpCi17Ci0Jc3RydWN0IGRybV9kZXZpY2UgKmRybSA9IGRldl9nZXRfZHJ2
ZGF0YShkZXYpOwotCi0JcmV0dXJuIGRybV9tb2RlX2NvbmZpZ19oZWxwZXJfcmVzdW1lKGRybSk7
Ci19Ci0jZW5kaWYKLQotc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHJvY2tjaGlwX2Ry
bV9wbV9vcHMgPSB7Ci0JU0VUX1NZU1RFTV9TTEVFUF9QTV9PUFMocm9ja2NoaXBfZHJtX3N5c19z
dXNwZW5kLAotCQkJCXJvY2tjaGlwX2RybV9zeXNfcmVzdW1lKQotfTsKLQogI2RlZmluZSBNQVhf
Uk9DS0NISVBfU1VCX0RSSVZFUlMgMTYKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyICpy
b2NrY2hpcF9zdWJfZHJpdmVyc1tNQVhfUk9DS0NISVBfU1VCX0RSSVZFUlNdOwogc3RhdGljIGlu
dCBudW1fcm9ja2NoaXBfc3ViX2RyaXZlcnM7CkBAIC00NzMsNiArNDUyLDggQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcm9ja2NoaXBfZHJtX2R0X2lkc1tdID0gewogfTsKIE1P
RFVMRV9ERVZJQ0VfVEFCTEUob2YsIHJvY2tjaGlwX2RybV9kdF9pZHMpOwogCitERUZJTkVfRFJN
X01PREVfQ09ORklHX0hFTFBFUl9QTV9PUFMocm9ja2NoaXBfcG1fb3BzKTsKKwogc3RhdGljIHN0
cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBfZHJtX3BsYXRmb3JtX2RyaXZlciA9IHsKIAku
cHJvYmUgPSByb2NrY2hpcF9kcm1fcGxhdGZvcm1fcHJvYmUsCiAJLnJlbW92ZSA9IHJvY2tjaGlw
X2RybV9wbGF0Zm9ybV9yZW1vdmUsCkBAIC00ODAsNyArNDYxLDcgQEAgc3RhdGljIHN0cnVjdCBw
bGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBfZHJtX3BsYXRmb3JtX2RyaXZlciA9IHsKIAkuZHJpdmVy
ID0gewogCQkubmFtZSA9ICJyb2NrY2hpcC1kcm0iLAogCQkub2ZfbWF0Y2hfdGFibGUgPSByb2Nr
Y2hpcF9kcm1fZHRfaWRzLAotCQkucG0gPSAmcm9ja2NoaXBfZHJtX3BtX29wcywKKwkJLnBtID0g
cG1fc2xlZXBfcHRyKCZyb2NrY2hpcF9wbV9vcHMpLAogCX0sCiB9OwogCi0tIAoyLjM1LjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
