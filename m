Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54556CDB466
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jun 2026 12:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10dLV59u4DInf56Xr0rq+Byhqx4RWJgzqofw0Cchr6c=; b=maF5dVGEEnPm0S
	RiElD4nvTWXwNZ/5E/Zlm1kM97PZidbI59yUBXF1gOA1l90hV1PNnMAWVd9vEXo0Ao1JDJzlph9CS
	aI93Af3sWHQE9wFBeFcuzXCVFyyawfJ6n+3nPdFkpSFx0geJQlpJc/BV/3PFhvF4gQI6uwA/qtS2S
	NBmk83UmzPfl4ESrk5Jomlfqq5Iy2xSYjzxdzI1TW05JGtcRAHL17ez5tAYII5FDijvFrwbPqLlfx
	wDKbz8x0YV3twFjoqJYKPg7tHrRtYvzbSHiaf+omLE9HYl84lcOs/KeolMtNaARftI5/sHsKO0q+U
	vHFl6Z4FzjxT/KK5EEbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waYK3-00000002PCC-0JXs;
	Fri, 19 Jun 2026 12:27:47 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waYJy-00000002P7F-1YcP;
	Fri, 19 Jun 2026 12:27:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 218B141B43;
	Fri, 19 Jun 2026 12:27:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8649C1F000E9;
	Fri, 19 Jun 2026 12:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781872062;
	bh=wCmzrMv2DL6StxzQwZhyovANP6a1QXl6r05elWG794g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=EsuIjJqxbH7kw+2w10unk++vJfJp5vumQcI54MGZbFQTmWZ/TbCLA4kpu0tb7OHTA
	 lvS9384YYv5NlyRy5zW3zLWM4L/Kh7WHIsmO6dO/Tb9HdB+HqS8AoVn4t9k7a1OVFT
	 E6GGQvGdxX8cwTJY7rfwTNCE1uljmAMKfbNWpQ/WcwqvXDGH+r8P946ZY7lOwDr5mD
	 LkvBepdpEevStAEOYhXinSaS8d8xeyiY/L64wVuWwzkUPdC5bZHARNeVJSUB+I1cbc
	 TVCu0P/yOuiEJCBfbqr8Qo3PEYOe0P5UlmQ94S8RB9Yy9FzciWcLX+j17ebv0SiN58
	 U/LrIpI/8uv2A==
From: Maxime Ripard <mripard@kernel.org>
Date: Fri, 19 Jun 2026 14:25:10 +0200
Subject: [PATCH v3 65/78] drm/rockchip: rk3066_hdmi: Switch to
 atomic_create_state
MIME-Version: 1.0
Message-Id: <20260619-drm-no-more-bridge-reset-v3-65-ff399263111b@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1634; i=mripard@kernel.org;
 h=from:subject:message-id; bh=T5DlskzpLagGD1zvo+B+5y16Ha2hhau7ZG5m8/6Erz8=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFmmpmxV7R91lQMWPV6tGh8tvSJA+92jhqZp/pOEufIez
 j8o1vmuYyoLgzAng6yYIssTmbDTy9sXVznYr/wBM4eVCWQIAxenAEwkgoexYdZtkchjs0yZrgaw
 FcWJXlVKMHp+ULjm3fbeXfFuy2IPlr3S4iydoHrUdHkS14kK3hxrxjqVJN2f+22jbr/IyN3xSjt
 JNC6OJfTCxaJU7TsWOv993HiKJHNXrI6cdPvaBjm+lMWPFgAA
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
cmszMDY2X2hkbWkuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZf
aGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMKaW5kZXggMTk5
NmY4NjU2NjEyLi45Yjg5ODFmYTE5YWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yazMwNjZfaGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZf
aGRtaS5jCkBAIC00OTUsMTEgKzQ5NSwxMSBAQCByazMwNjZfaGRtaV9icmlkZ2VfbW9kZV92YWxp
ZChzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLAogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRy
bV9icmlkZ2VfZnVuY3MgcmszMDY2X2hkbWlfYnJpZGdlX2Z1bmNzID0gewogCS5hdG9taWNfZHVw
bGljYXRlX3N0YXRlID0gZHJtX2F0b21pY19oZWxwZXJfYnJpZGdlX2R1cGxpY2F0ZV9zdGF0ZSwK
IAkuYXRvbWljX2Rlc3Ryb3lfc3RhdGUgPSBkcm1fYXRvbWljX2hlbHBlcl9icmlkZ2VfZGVzdHJv
eV9zdGF0ZSwKLQkuYXRvbWljX3Jlc2V0ID0gZHJtX2F0b21pY19oZWxwZXJfYnJpZGdlX3Jlc2V0
LAorCS5hdG9taWNfY3JlYXRlX3N0YXRlID0gZHJtX2F0b21pY19oZWxwZXJfYnJpZGdlX2NyZWF0
ZV9zdGF0ZSwKIAkuYXRvbWljX2VuYWJsZSA9IHJrMzA2Nl9oZG1pX2JyaWRnZV9hdG9taWNfZW5h
YmxlLAogCS5hdG9taWNfZGlzYWJsZSA9IHJrMzA2Nl9oZG1pX2JyaWRnZV9hdG9taWNfZGlzYWJs
ZSwKIAkuZGV0ZWN0ID0gcmszMDY2X2hkbWlfYnJpZGdlX2RldGVjdCwKIAkuZWRpZF9yZWFkID0g
cmszMDY2X2hkbWlfYnJpZGdlX2VkaWRfcmVhZCwKIAkuaGRtaV9jbGVhcl9hdmlfaW5mb2ZyYW1l
ID0gcmszMDY2X2hkbWlfYnJpZGdlX2NsZWFyX2F2aV9pbmZvZnJhbWUsCgotLSAKMi41NC4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
