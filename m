Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0364C624D3
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 10:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version
	:Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ChxxIpDO1sS2hVSWq9h1U11jeIvj+SoOXXRGwU0s6aw=; b=e/UmdOTnUWkWuq
	x6AxwgosqzPNydDbrTiHbl1nawvoWNrwEkmLU0FL+pC2amPizvG1+/nsyxqYAU2x/3XUB8o/QQT1V
	jyI8b+EHetSK/OEjdHrIsg/F/3IDKvpj8ZXJBTA1nPwPehFyGc6bxFN/NaEo7FAIVhdfE3LFbvU6C
	RDkZByYzEFMjw4yGMDNbhWtrJUBguJzE+2g83hJdtArgaRyiK23+SKgHovNE9i78y0kNyI43qJhnM
	g0xQ3Q/UwzxVjSDn9FLVEpu2QfTHykhkcAW+d7JXN/h0ZVIvVrIujru43VyzOFFyBi3TidnTEcr0W
	PFPage8zrRtauxMRr0Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Qz6-00000001dkt-1yoR;
	Fri, 04 Sep 2026 10:17:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Qz5-00000001dkO-0DKI;
	Fri, 04 Sep 2026 10:17:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2853D6020A;
	Fri,  4 Sep 2026 10:17:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7AF7C2BCC7;
	Fri,  4 Sep 2026 10:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788517041;
	bh=vXy3dTG8NU1XKB5YaVHYVFYOlsItcROkxlpr8aDEbhQ=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=E1IJbec/pSXWAwq86b7ICBeXZft4k62I+SwenIroshzCPGVoHYZp405CnB3+Ql7sv
	 Fvz/ZYigkaC487jcTesGK62C1govSgdDa4VkBwuSKSt8BdFXYMoDtMmYFzfa1fDwqN
	 4Nrf4f/lUYYWum81Jdfo0xRxVA9fquSrJiduuZTnW3BnkwCXbbc8iO1FUXUBtUYfq+
	 jIUf8WdHdxlZ8lZ/XiiD3tj/VXBQysXVla6n11X7i2I9RiuioLbB2vcIqhEDc5Q8s1
	 pAPwejT1fe2l2g6cDVs88AzO/HuG85/VoX7hN3iBRcsQYfiI2ZodnmTBzlRxQxb1JV
	 Kj9stjPMvSekw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3082C61DD6;
	Fri,  4 Sep 2026 10:17:21 +0000 (UTC)
From: Johan Jonker via B4 Relay <devnull+jbx6244.gmail.com@kernel.org>
Date: Fri, 04 Sep 2026 12:17:19 +0200
Subject: [PATCH v3] drm/rockchip: rk3066_hdmi: convert to
 devm_drm_bridge_alloc() API
MIME-Version: 1.0
Message-Id: <20260904-drm-v3-1-5b36532a3b72@gmail.com>
X-B4-Tracking: v=1; b=H4sIAK6ammoC/x2MSwqFMAwAryJZv0Kx/q/ycBHbqFlYJRERxLtbX
 Q4zzAVKwqTQZRcIHay8xgTul4GfMU5kOCSG3OaVbW1hgiymDXXjSu8chgpSOaCSGQSjn992Qd1
 JXrEJjXx++39/3w/ouI4PbgAAAA==
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788517040; l=1613;
 i=jbx6244@gmail.com; s=20260824; h=from:subject:message-id;
 bh=qWT53GXoOigdQ+erxp3d408shOqYOF+aDMQefkq/Jcs=;
 b=IGdDcQbuWqvrHDkGDHwvL4L5TmWy9kQdIO4Ze6skcvw1cYPzJMVH8k/kHGr0/8asjWG9BamhJ
 SAP9yAsgbn2AWzCty0wEJWmCHyyJubNkEO7HMxCWnoIbvNrG3T8Lzmh
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
a2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4KLS0tCgpDaGFuZ2VkIFYzOgpyZWJhc2UKcmVtb3ZlIGRy
aXZlcl9wcml2YXRlCi0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMg
fCA5ICsrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWku
YyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5jCmluZGV4IGYyOGQ2YTg4
M2UwOS4uMDVkYmJjYzZmN2IwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cmszMDY2X2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWku
YwpAQCAtNzAyLDggKzcwMiw2IEBAIHJrMzA2Nl9oZG1pX3JlZ2lzdGVyKHN0cnVjdCBkcm1fZGV2
aWNlICpkcm0sIHN0cnVjdCByazMwNjZfaGRtaSAqaGRtaSkKIAlkcm1fZW5jb2Rlcl9pbml0KGRy
bSwgZW5jb2RlciwgJnJrMzA2Nl9oZG1pX2VuY29kZXJfZnVuY3MsCiAJCQkgRFJNX01PREVfRU5D
T0RFUl9UTURTLCBOVUxMKTsKIAotCWhkbWktPmJyaWRnZS5kcml2ZXJfcHJpdmF0ZSA9IGhkbWk7
Ci0JaGRtaS0+YnJpZGdlLmZ1bmNzID0gJnJrMzA2Nl9oZG1pX2JyaWRnZV9mdW5jczsKIAloZG1p
LT5icmlkZ2Uub3BzID0gRFJNX0JSSURHRV9PUF9ERVRFQ1QgfAogCQkJICAgRFJNX0JSSURHRV9P
UF9FRElEIHwKIAkJCSAgIERSTV9CUklER0VfT1BfSERNSSB8CkBAIC03NDcsOSArNzQ1LDEwIEBA
IHN0YXRpYyBpbnQgcmszMDY2X2hkbWlfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBk
ZXZpY2UgKm1hc3RlciwKIAlpbnQgaXJxOwogCWludCByZXQ7CiAKLQloZG1pID0gZGV2bV9remFs
bG9jKGRldiwgc2l6ZW9mKCpoZG1pKSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCFoZG1pKQotCQlyZXR1
cm4gLUVOT01FTTsKKwloZG1pID0gZGV2bV9kcm1fYnJpZGdlX2FsbG9jKGRldiwgc3RydWN0IHJr
MzA2Nl9oZG1pLCBicmlkZ2UsCisJCQkJICAgICAmcmszMDY2X2hkbWlfYnJpZGdlX2Z1bmNzKTsK
KwlpZiAoSVNfRVJSKGhkbWkpKQorCQlyZXR1cm4gUFRSX0VSUihoZG1pKTsKIAogCWhkbWktPmRl
diA9IGRldjsKIAloZG1pLT5kcm1fZGV2ID0gZHJtOwoKLS0tCmJhc2UtY29tbWl0OiA5ZDgwYWE0
NjE3YjMyZjUwNTRjNWFhNDcxZDA2YjY2NzA0ODU0OTM1CmNoYW5nZS1pZDogMjAyNjA5MDQtZHJt
LTlkNzgzNWMzM2FkNgoKQmVzdCByZWdhcmRzLAotLSAKSm9oYW4gSm9ua2VyIDxqYng2MjQ0QGdt
YWlsLmNvbT4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
