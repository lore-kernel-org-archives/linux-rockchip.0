Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D177CD4F26
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jun 2026 12:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDUbSlnciR5VWQSmLdQ1FuIzhxigPvF9UfoOk+PZkt8=; b=hGEbrQY/hk4xlH
	KBoKSciyiPdi5d0Um99jVFICgo6KAT8NPse4GHY2J3JqX7cGHvVmIGBESexdnEP5LZYKSU2mD4SmY
	fa00/lb7nPKZKu23N+DOtAXHjbpZXmZGdEZM9vMyKVwX00sQKlSXubft9CHDkVdfHEjAQpVYtn9wN
	4AaPxF7NqF2l8Knc//WmvNAGV3Ed4QJx46aWdepxk5P8kvfHic212kXryhDkcdYDSXcxBaLmOyYPF
	Ky6Kt5gRbft+JgRCUtkBhZZ7ajeorVg17O8xXH+bkz3TLb2P9Kk8gq2b8oBI6xiAk0UieYmeljklg
	YKM13TE38rwbzgHE8dsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waYJx-00000002P6f-3glD;
	Fri, 19 Jun 2026 12:27:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waYJw-00000002P5I-0p7X;
	Fri, 19 Jun 2026 12:27:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A1F23601E2;
	Fri, 19 Jun 2026 12:27:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA9101F000E9;
	Fri, 19 Jun 2026 12:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781872059;
	bh=PmFg1F7stkBZtAn0NWj/38h1CH75VRKu7DzE/r76fNA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=b5SL0UfZ6gorAykE5x6ZtZ+1kPrVs1sPyRTgu6F+KTpR+UXSMZIKyLlDDLf3unIac
	 gPk2hAhFKVzrpi4AtjnkhFit0cVu9aeoRRlwlO86zFliF1/XsDH+pkyshMyBG1DFst
	 yVv2CHQBNH4udi0A+j3iYMQyfmhskrLr9r6uGGgdWU08l1KGu+dN8ugMAHdMCM/ONv
	 yBxFbazj6FNOnZ4in8NXdRqWXbu+SfGi4hCA7JIIEHVkZz4FkXzuy1+kUkRuBBGPBU
	 XrvzxNKFO4E4GXuRUa496nikHGDAywobkapO0KMPrpc4QLSPdUGVpXA26lA6Jc4Kbc
	 Li81T1F96DvOg==
From: Maxime Ripard <mripard@kernel.org>
Date: Fri, 19 Jun 2026 14:25:09 +0200
Subject: [PATCH v3 64/78] drm/rockchip: cdn-dp: Switch to
 atomic_create_state
MIME-Version: 1.0
Message-Id: <20260619-drm-no-more-bridge-reset-v3-64-ff399263111b@kernel.org>
References: <20260619-drm-no-more-bridge-reset-v3-0-ff399263111b@kernel.org>
In-Reply-To: <20260619-drm-no-more-bridge-reset-v3-0-ff399263111b@kernel.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>
Cc: Dmitry Baryshkov <lumag@kernel.org>, dri-devel@lists.freedesktop.org, 
 Maxime Ripard <mripard@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1587; i=mripard@kernel.org;
 h=from:subject:message-id; bh=mH6AkWs35KuBQWOVkh00AHkgGCpu8OjsSiyDjardA9A=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFmmpmzqrOsqzwZ5T3ju2Fvztyzu1pvSE9c6V/xt+uuxp
 vrs4oNJHVNZGIQ5GWTFFFmeyISdXt6+uMrBfuUPmDmsTCBDGLg4BWAiyW2M9RnL4p36NfIWrH6h
 PT96IseEl+IqF279fhyRmNq2eUpy2R+h7Q9Y+bl98g8YL5bn/HE2nrHerzzwXtf+rm3Xuia++JE
 Vt6Fp0p1qjre1AbMjTwnonj6lF/HGSlXsz1Uf6U+nZy/Ku9AFAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
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

VGhlIGRybV9icmlkZ2VfZnVuY3MuYXRvbWljX3Jlc2V0IGNhbGxiYWNrIGFuZCBpdHMKZHJtX2F0
b21pY19oZWxwZXJfYnJpZGdlX3Jlc2V0KCkgaGVscGVyIGFyZSBkZXByZWNhdGVkLgoKU3dpdGNo
IHRvIHRoZSBhdG9taWNfY3JlYXRlX3N0YXRlIGNhbGxiYWNrIGFuZCBpdHMKZHJtX2F0b21pY19o
ZWxwZXJfYnJpZGdlX2NyZWF0ZV9zdGF0ZSgpIGNvdW50ZXJwYXJ0LgoKUmV2aWV3ZWQtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+ClJldmlld2VkLWJ5OiBUaG9tYXMgWmltbWVy
bWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8
bXJpcGFyZEBrZXJuZWwub3JnPgotLS0KVG86IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5j
b20+ClRvOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+ClRvOiBBbmR5IFlhbiA8
YW5keS55YW5Acm9jay1jaGlwcy5jb20+CkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
Y2RuLWRwLWNvcmUuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAt
Y29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMKaW5kZXggMTkw
Y2NlOTUzMGM4Li5lMTU5ZTE2MjdmM2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9jZG4tZHAtY29yZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAt
Y29yZS5jCkBAIC04MjMsMTEgKzgyMywxMSBAQCBzdGF0aWMgaW50IGNkbl9kcF9hdWRpb19tdXRl
X3N0cmVhbShzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLAogfQogCiBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRybV9icmlkZ2VfZnVuY3MgY2RuX2RwX2JyaWRnZV9mdW5jcyA9IHsKIAkuYXRvbWljX2R1
cGxpY2F0ZV9zdGF0ZSA9IGRybV9hdG9taWNfaGVscGVyX2JyaWRnZV9kdXBsaWNhdGVfc3RhdGUs
CiAJLmF0b21pY19kZXN0cm95X3N0YXRlID0gZHJtX2F0b21pY19oZWxwZXJfYnJpZGdlX2Rlc3Ry
b3lfc3RhdGUsCi0JLmF0b21pY19yZXNldCA9IGRybV9hdG9taWNfaGVscGVyX2JyaWRnZV9yZXNl
dCwKKwkuYXRvbWljX2NyZWF0ZV9zdGF0ZSA9IGRybV9hdG9taWNfaGVscGVyX2JyaWRnZV9jcmVh
dGVfc3RhdGUsCiAJLmRldGVjdCA9IGNkbl9kcF9icmlkZ2VfZGV0ZWN0LAogCS5lZGlkX3JlYWQg
PSBjZG5fZHBfYnJpZGdlX2VkaWRfcmVhZCwKIAkuYXRvbWljX2VuYWJsZSA9IGNkbl9kcF9icmlk
Z2VfYXRvbWljX2VuYWJsZSwKIAkuYXRvbWljX2Rpc2FibGUgPSBjZG5fZHBfYnJpZGdlX2F0b21p
Y19kaXNhYmxlLAogCS5tb2RlX3ZhbGlkID0gY2RuX2RwX2JyaWRnZV9tb2RlX3ZhbGlkLAoKLS0g
CjIuNTQuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
