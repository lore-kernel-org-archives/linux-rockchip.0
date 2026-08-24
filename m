Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03E7AC61CE2
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Aug 2026 10:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version
	:Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=64MX8t7l+Qf9LUvy+PMJOd5V5ShbMlKyfGc4+gaHOYc=; b=XipjijDy7JxbuR
	OB5IGY3vf4l5exAVifSVZrEXxrmAeuH/SRMYcX4uD9ky6z1+hmgHzFG+INz/4aucrWdydadr2IYem
	GFCw9khHzdhNEZDSjKUpQc0nPdbZeqh1Wkl83V4QLiCxCSYxeryGgiEKzyeOAiUjMrXJN+mqMCtqW
	KsUDReE+4+RXCMCL5HOzJIJYfGoGbVfSUaFmlB4fghtBNKTh2aKJAO8juwVq4dNwoygfZChQTWSey
	LQxaX0JZBLLc3ep+cYerLiHGRp/Tr3N72UNQ7MIwYA9QBJ3532ZbJmobeqpzSV4yEq0rsnqQ+7N86
	ZlaL61s3Xs1VnIGBYr9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRoW-0000000GO7v-2K5k;
	Mon, 24 Aug 2026 10:22:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRoV-0000000GO7d-2YWQ;
	Mon, 24 Aug 2026 10:21:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 03AB243CC0;
	Mon, 24 Aug 2026 10:21:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4BAC19425;
	Mon, 24 Aug 2026 10:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787566918;
	bh=mMxPnnGmmA+G7+r/GPriWEypHgjV/TV1mgBQxiAlsWc=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=tUo+Tct2bXXJenCEYtP0OWxu54STdxMBV/D6tDgt2t0EEcL7E87MKNICC6tTtkMrz
	 gnOUIWuHw/vtNLMsbZzARPMzLHvx0c6AkYSOAJneTyTXq94G/p+9Olo94gu0Po4l4C
	 n7bU9Ektwb+M4V53OUjRaSC+0PPJOKs4o8gx67M6zaQ5f91UG3nW/S2kPcD5ltLsv2
	 8npdbk97bylm2fcwSj6Ynsk0f5VpJJU5YLB7IiEo8HKvsj7f0TODGXSzsFfajlqpUp
	 +IBhRjLUYy109iIs1tlSi4Qb2SLvzGxhC9O8sEnFjs+LVGB4FcdTPqokLhkv/jbjE+
	 b7LybSmQ8lHnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6290C5DF9C;
	Mon, 24 Aug 2026 10:21:58 +0000 (UTC)
From: Johan Jonker via B4 Relay <devnull+jbx6244.gmail.com@kernel.org>
Date: Mon, 24 Aug 2026 12:21:19 +0200
Subject: [PATCH v2] drm/rockchip: rk3066_hdmi: convert to
 devm_drm_bridge_alloc() API
MIME-Version: 1.0
Message-Id: <20260824-drm-v2-1-7f9273c6020b@gmail.com>
X-B4-Tracking: v=1; b=H4sIAB4bjGoC/x2MQQqAMAzAviI9O5ChY/oV8dDNqj04pRURxL87P
 YaE3KAkTApdcYPQycpbymDLAuKCaSbDY2awlXWVt7UZZTVUO99OrsHgI+QyoJIJgikuX7uiHiS
 f2IUmvv59PzzPC0fXXRZuAAAA
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?H=C3=BCseyin_BIYIK?= <boogiepop@gmx.com>, 
 Johan Jonker <jbx6244@gmail.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787566916; l=1499;
 i=jbx6244@gmail.com; s=20260824; h=from:subject:message-id;
 bh=gBdOBm+5/o1a1xd4Bmk6AhfjkzD8KksLg7XU8cwssNc=;
 b=z6EnmGaIvC0JCbT+oiwCL4cHH96OWndTvfdzzWB2RDFX8yV33FbbSVgPjKU5kQIxXBk31f5z8
 1MCSkG9dw1/C6YYUQvnNufsRh0pyf1RgmtH81zuxSWVfXyT26r1UCjR
X-Developer-Key: i=jbx6244@gmail.com; a=ed25519;
 pk=MK5Flx1ndjAF0uwXdNm8VvvoghD4KWCNd2hQE8QGyl0=
X-Endpoint-Received: by B4 Relay for jbx6244@gmail.com/20260824 with
 auth_id=971
X-Original-From: Johan Jonker <jbx6244@gmail.com>
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
Reply-To: jbx6244@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTogSMO8c2V5aW4gQklZSUsgPGJvb2dpZXBvcEBnbXguY29tPgoKVGhlIGZ1bmN0aW9uIGRl
dm1fZHJtX2JyaWRnZV9hbGxvYygpIGlzIHRoZSBuZXcgQVBJIGZvciBhbGxvY2F0aW5nIERSTSBi
cmlkZ2VzLgpUaGlzIGNvbnZlcnNpb24gd2FzIG1pc3NlZCBkdXJpbmcgdGhlIGluaXRpYWwgY29u
dmVyc2lvbiBvZiBhbGwgYnJpZGdlcyB0bwp0aGUgbmV3IEFQSS4KClNpZ25lZC1vZmYtYnk6IEjD
vHNleWluIEJJWUlLIDxib29naWVwb3BAZ214LmNvbT4KU2lnbmVkLW9mZi1ieTogSm9oYW4gSm9u
a2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcmsz
MDY2X2hkbWkuYyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jr
MzA2Nl9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYwppbmRl
eCBmMjhkNmE4ODNlMDkuLjM5YzY1ZWUwN2NhYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jr
MzA2Nl9oZG1pLmMKQEAgLTcwMyw3ICs3MDMsNiBAQCByazMwNjZfaGRtaV9yZWdpc3RlcihzdHJ1
Y3QgZHJtX2RldmljZSAqZHJtLCBzdHJ1Y3QgcmszMDY2X2hkbWkgKmhkbWkpCiAJCQkgRFJNX01P
REVfRU5DT0RFUl9UTURTLCBOVUxMKTsKIAogCWhkbWktPmJyaWRnZS5kcml2ZXJfcHJpdmF0ZSA9
IGhkbWk7Ci0JaGRtaS0+YnJpZGdlLmZ1bmNzID0gJnJrMzA2Nl9oZG1pX2JyaWRnZV9mdW5jczsK
IAloZG1pLT5icmlkZ2Uub3BzID0gRFJNX0JSSURHRV9PUF9ERVRFQ1QgfAogCQkJICAgRFJNX0JS
SURHRV9PUF9FRElEIHwKIAkJCSAgIERSTV9CUklER0VfT1BfSERNSSB8CkBAIC03NDcsOSArNzQ2
LDEwIEBAIHN0YXRpYyBpbnQgcmszMDY2X2hkbWlfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0
cnVjdCBkZXZpY2UgKm1hc3RlciwKIAlpbnQgaXJxOwogCWludCByZXQ7CiAKLQloZG1pID0gZGV2
bV9remFsbG9jKGRldiwgc2l6ZW9mKCpoZG1pKSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCFoZG1pKQot
CQlyZXR1cm4gLUVOT01FTTsKKwloZG1pID0gZGV2bV9kcm1fYnJpZGdlX2FsbG9jKGRldiwgc3Ry
dWN0IHJrMzA2Nl9oZG1pLCBicmlkZ2UsCisJCQkJICAgICAmcmszMDY2X2hkbWlfYnJpZGdlX2Z1
bmNzKTsKKwlpZiAoSVNfRVJSKGhkbWkpKQorCQlyZXR1cm4gUFRSX0VSUihoZG1pKTsKIAogCWhk
bWktPmRldiA9IGRldjsKIAloZG1pLT5kcm1fZGV2ID0gZHJtOwoKLS0tCmJhc2UtY29tbWl0OiAy
NzA5ZGQ1YWUzMmYwODI4ZjM4NjMyN2M3NmJiYTlmMzlmNjNhMWM2CmNoYW5nZS1pZDogMjAyNjA4
MjQtZHJtLWU0Njg5ZjY1YWI4YwoKQmVzdCByZWdhcmRzLAotLSAKSm9oYW4gSm9ua2VyIDxqYng2
MjQ0QGdtYWlsLmNvbT4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
