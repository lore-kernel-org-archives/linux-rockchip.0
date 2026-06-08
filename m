Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C41BACD8C92
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 14:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10dLV59u4DInf56Xr0rq+Byhqx4RWJgzqofw0Cchr6c=; b=RuDVMq+I2NHO0p
	2fYZDDUX2NOTQ+CfF6PkBPfdOZw1+HuSgYM0JINYWwi41KKDtOBhAAmFiHXZOADWf5tAvzqJKDn/g
	Ji1lM6+Y4vcJQTMdY0T9K/tBiFYGl4GJRhryfRFGI0/iJvWCskU4bUwt+c/GxIuFlfvXmfjD9fcbT
	4rOIKxBgUn4+ARSjpIgfqtbzKsL6rq0uxo8579z33dwqInuy9reZjov1zTnjiLZqW4r7MkDtprJ55
	Vbz0qx2/7/aCjy0OUOsGoceP7TrOj59v5NhHqRvwyX7Ksa8Wob/KurDwgUjo52oH7q/0QhwMPREbT
	YPsjo+YAqwPm989guHhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWb8N-00000003nIU-2SjZ;
	Mon, 08 Jun 2026 14:39:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWb8L-00000003nG0-1W5O;
	Mon, 08 Jun 2026 14:39:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1156B433AD;
	Mon,  8 Jun 2026 14:39:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 754D21F00893;
	Mon,  8 Jun 2026 14:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780929560;
	bh=wCmzrMv2DL6StxzQwZhyovANP6a1QXl6r05elWG794g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=Sw7OOedVYW2Mx3RD+pBw3u/OUTWz2/N0jS9XunFhwcKeHPQ17ktPFu5rdEqW6ntm7
	 FEBcb/YtiH5rZxQlaTnQbqcr+fqES1iWH5lGXOOuztzpXRiN2r7ED3p793OXcuvLZ5
	 1oGflZDtdHwkktR5Ohiy+/5eOTQSE2ZaRgqkXZi5wPYmklqRB2duUw42EPk3rul0xp
	 MWtZKRXfIUHZ90aTSbrp+Hl2FevDeVpIVsIyKWW76uz8fbAoOj/o4KT8gsWDevMACo
	 +Sf9JgFZhcEjwb16pcWtv1uWYzrYoJo+RjuPM7baPxnkyDGHx5aVBodadEtMLavKjD
	 LlW4Jo9IyYC4g==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 08 Jun 2026 16:36:47 +0200
Subject: [PATCH v2 65/78] drm/rockchip: rk3066_hdmi: Switch to
 atomic_create_state
MIME-Version: 1.0
Message-Id: <20260608-drm-no-more-bridge-reset-v2-65-0a91018bf886@kernel.org>
References: <20260608-drm-no-more-bridge-reset-v2-0-0a91018bf886@kernel.org>
In-Reply-To: <20260608-drm-no-more-bridge-reset-v2-0-0a91018bf886@kernel.org>
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
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFlqlxNd1mbE5s0zsVe90VvjG/PS0tBG6p+6qkJXzn4Rp
 wJF6U8dU1kYhDkZZMUUWZ7IhJ1e3r64ysF+5Q+YOaxMIEMYuDgFYCKaCYz12W/Wp1nl63w5HrNC
 oGKKp+XmsrcTxVU1FXsO9H4yreFe84nXY9d7+WWKuRPe7lLsPOvKWF/2/P2hqWXrbxwv7VK52r1
 xX9rdo2WXeIO+yd/9VLNmF2+Ie1zYops/z7Y53JKSNFymlw8A
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
