Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2F33CA0FE1
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Aug 2025 11:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Su7OFaeGBYxpGoS8aIrTO8ahKBgG9JJcSItLHJmDiu4=; b=ACz4/NuK8SxSDX
	VRB9snaTX821CkN4fXjZdhk9DtDhbFBxmKzKCRsxJx9z0kvpPIJ0GReXpMtzy+/ZeAJTZ677GtnuQ
	CBepuKuPIkTMxIHf9ScwFzfesu1FUPh4KCqvOfK0l50tgj76rV9Q7xPOfCNBZRbbkP0ADYd3rGlVZ
	vdoYpZXWipzQgb6afFERFsmAgam//vT04tBw6cQpu5f9LWVX+L2ElZirkxh1zrNA2pn3IgxXdhrl4
	T8MdUuVH6ZlPijP3E5QspoqqOG1A6YclDqQC4yO0uLdLRiJwjhYaOCBziQYGufYJCdabzTsspilfQ
	t10unVU3BwQWihr8l0OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqVaP-00000007nMT-2tDG;
	Mon, 25 Aug 2025 11:42:05 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqU85-00000007as5-0ISO;
	Mon, 25 Aug 2025 10:08:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1756116523;
	bh=uVOJsredVv4e5nXVxSY8qJOlUNYeVhIe/XTK3wdzwkQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ffSNh3xn56Ce4vrTMTi/sQkljMCCIznOyQ2pyUbUKSp2vtx3cmFlt10WMEW/njKJh
	 QKL8W32XQq8j/NZVwpg1uR+j5WjsFBO+0DvruhR1N1i8iPvNvaw77mgcaaOzlu4+c4
	 tpU1IwkRoTGOreGvJTksbZ7yopJ0MllgsDhUbtEFqjmyR+lt6lAVITQB5RzGhdSJMm
	 jSIOCu3htJxX3eOeUoqMX+dnBh8IQsLKhalFNTSkhsRPXN5B6KS6ac6yDd/8D++zOk
	 Za0ksyGh+EqoPubPUs72v1Ppi09RWwLr/CW8DKsLH30ji8VfHih0Oee47bU53TtNbK
	 EP/XmsG+YDThw==
Received: from localhost (unknown [82.79.138.60])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 6C37517E056F;
	Mon, 25 Aug 2025 12:08:43 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 25 Aug 2025 13:08:32 +0300
Subject: [PATCH v2 1/5] drm/rockchip: vop2: Check bpc before switching DCLK
 source
MIME-Version: 1.0
Message-Id: <20250825-rk3588-10bpc-v2-1-955622d16985@collabora.com>
References: <20250825-rk3588-10bpc-v2-0-955622d16985@collabora.com>
In-Reply-To: <20250825-rk3588-10bpc-v2-0-955622d16985@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_030845_277420_3B4155E2 
X-CRM114-Status: GOOD (  16.42  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

When making use of the HDMI PHY PLL as a VOP2 DCLK source, it's output
rate does normally match the mode clock.  But this is only applicable
for default color depth of 8 bpc.  For higher depths, the output clock
is further divided by the hardware according to the formula:

  output rate = PHY PLL rate * 8 / bpc

Hence there is no need for VOP2 to compensate for bpc when adjusting
DCLK, but it is required to do so when computing its maximum operating
frequency.

Take color depth into consideration before deciding to switch DCLK
source.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 60 +++++++++++++++++-----------
 1 file changed, 36 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index b50927a824b4020a7ffd57974070ed202cd8b838..977ccbf163448bc1a0423b8af707e9b2cf9b4be6 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -101,7 +101,7 @@ enum vop2_afbc_format {
 	VOP2_AFBC_FMT_INVALID = -1,
 };
 
-#define VOP2_MAX_DCLK_RATE		600000000
+#define VOP2_MAX_DCLK_RATE		600000000UL
 
 /*
  * bus-format types.
@@ -1737,36 +1737,48 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 	 * Switch to HDMI PHY PLL as DCLK source for display modes up
 	 * to 4K@60Hz, if available, otherwise keep using the system CRU.
 	 */
-	if ((vop2->pll_hdmiphy0 || vop2->pll_hdmiphy1) && clock <= VOP2_MAX_DCLK_RATE) {
-		drm_for_each_encoder_mask(encoder, crtc->dev, crtc_state->encoder_mask) {
-			struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
+	if (vop2->pll_hdmiphy0 || vop2->pll_hdmiphy1) {
+		unsigned long max_dclk;
 
-			if (rkencoder->crtc_endpoint_id == ROCKCHIP_VOP2_EP_HDMI0) {
-				if (!vop2->pll_hdmiphy0)
-					break;
+		if (vcstate->output_bpc > 8)
+			max_dclk = DIV_ROUND_CLOSEST_ULL(VOP2_MAX_DCLK_RATE * 8,
+							 vcstate->output_bpc);
+		else
+			max_dclk = VOP2_MAX_DCLK_RATE;
 
-				if (!vp->dclk_src)
-					vp->dclk_src = clk_get_parent(vp->dclk);
+		if (clock <= max_dclk) {
+			drm_for_each_encoder_mask(encoder, crtc->dev, crtc_state->encoder_mask) {
+				struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
 
-				ret = clk_set_parent(vp->dclk, vop2->pll_hdmiphy0);
-				if (ret < 0)
-					drm_warn(vop2->drm,
-						 "Could not switch to HDMI0 PHY PLL: %d\n", ret);
-				break;
-			}
+				if (rkencoder->crtc_endpoint_id == ROCKCHIP_VOP2_EP_HDMI0) {
+					if (!vop2->pll_hdmiphy0)
+						break;
+
+					if (!vp->dclk_src)
+						vp->dclk_src = clk_get_parent(vp->dclk);
 
-			if (rkencoder->crtc_endpoint_id == ROCKCHIP_VOP2_EP_HDMI1) {
-				if (!vop2->pll_hdmiphy1)
+					ret = clk_set_parent(vp->dclk, vop2->pll_hdmiphy0);
+					if (ret < 0)
+						drm_warn(vop2->drm,
+							 "Could not switch to HDMI0 PHY PLL: %d\n",
+							 ret);
 					break;
+				}
 
-				if (!vp->dclk_src)
-					vp->dclk_src = clk_get_parent(vp->dclk);
+				if (rkencoder->crtc_endpoint_id == ROCKCHIP_VOP2_EP_HDMI1) {
+					if (!vop2->pll_hdmiphy1)
+						break;
 
-				ret = clk_set_parent(vp->dclk, vop2->pll_hdmiphy1);
-				if (ret < 0)
-					drm_warn(vop2->drm,
-						 "Could not switch to HDMI1 PHY PLL: %d\n", ret);
-				break;
+					if (!vp->dclk_src)
+						vp->dclk_src = clk_get_parent(vp->dclk);
+
+					ret = clk_set_parent(vp->dclk, vop2->pll_hdmiphy1);
+					if (ret < 0)
+						drm_warn(vop2->drm,
+							 "Could not switch to HDMI1 PHY PLL: %d\n",
+							 ret);
+					break;
+				}
 			}
 		}
 	}

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
