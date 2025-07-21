Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2786AC83F25
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jul 2025 18:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZm1JMAbMfkN+6MsmQdMt1zDGI4cf3BmAwvwriGcv5c=; b=nbp0VXuUf/D76x
	8TJYKqnakfBRcMzpHOzWjqdAsdo92f9PD3gK6btY9u6Jq6YtL0vL02SaO9UwrTFkqdIoeHSeygOMr
	J4yKwZcAXL2Uw35BYh2IP6fqepABsNg1S3qXRm3B8GjBXAV6ewsfXjS9R7f0vVCmGGFD6TBXhm6aG
	ubeeAywJnMmNAutXIQmWvQYyYYwR4WHvWjUaVrZ5abgK6ACeFNLkC39QUUwRMRkNBb43xSi96UeD8
	32Abfbo9eDxw/BSpUrknjLK9jvxzH+0VOMgw09FXtJJ1x2nlqImhoXRTpBC9R9dF4OaB7l4pzQvRA
	Z6m16tfQjxGFmsG0CDww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udus3-00000000O2E-2HG2;
	Mon, 21 Jul 2025 18:04:15 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uduTv-00000000L5O-2YPG;
	Mon, 21 Jul 2025 17:39:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753119557;
	bh=+NxwCSFikgeHnVstlsL75xTEJJOsmcejblMGw0MIuuM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AzketAWr2NbCHyuLcFl2Ql2VVzoOaz10vVWNSg9qWu/tyCjDG/VOtYrLLA2MtGYAY
	 dctOAXCBMuWyI80OK/JBRp9oZ8K7/DKwVmfX5bF8xiDbYgPLQYDGFi9KN9dm/7T/cS
	 dbB1/nOY8Cq3oE8xY9I2UUhOLb9KvK7WJd3OvcH6B4YcVCAAx58nT0ja9U4QA9t/F4
	 t6fUhVknTJWbPVKvHp5nQ9lPDcV5CeZxkLl3b2Q0H3vC6Qg3LNFhiJTt09BqsMRxcB
	 hDSA843EZ88QSpjz5j/guqUVSIxRoz20+go/4x1kGmE4LbzZ4NeEMnlTwPfHqv2q52
	 fFg7I04JvS8SQ==
Received: from localhost (unknown [82.79.138.60])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id C647017E1301;
	Mon, 21 Jul 2025 19:39:17 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 21 Jul 2025 20:39:06 +0300
Subject: [PATCH 3/5] drm/rockchip: dw_hdmi_qp: Switch to phy_configure()
MIME-Version: 1.0
Message-Id: <20250721-rk3588-10bpc-v1-3-e95a4abcf482@collabora.com>
References: <20250721-rk3588-10bpc-v1-0-e95a4abcf482@collabora.com>
In-Reply-To: <20250721-rk3588-10bpc-v1-0-e95a4abcf482@collabora.com>
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
X-CRM114-CacheID: sfid-20250721_103920_157317_96A5ADF9 
X-CRM114-Status: GOOD (  17.75  )
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

Stop relying on phy_set_bus_width() based workaround to setup the TMDS
character rate and, instead, use the recently introduced HDMI PHY
configuration API.  This is also a prerequisite to enable high color
depth and FRL support.

Additionally, move the logic to ->atomic_check() callback where the
current mode rate is already provided by the connector state.  As a
matter of fact this is actually necessary to ensure the link rate is
configured before VOP2 attempts to use the PHY PLL as a DCLK source in
vop2_crtc_atomic_enable().  The rationale is to restrict any changes of
the PHY rate via CCF and, instead, prefer the PHY configuration API for
this purpose.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 37 +++++++++++++-------------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index 7d531b6f4c098c6c548788dad487ce4613a2f32b..b2dd29347338d58640387adb2b455cc1558d4272 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -13,6 +13,7 @@
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/phy/phy.h>
+#include <linux/phy/phy-hdmi.h>
 #include <linux/regmap.h>
 #include <linux/workqueue.h>
 
@@ -95,6 +96,7 @@ struct rockchip_hdmi_qp {
 	struct delayed_work hpd_work;
 	int port_id;
 	const struct rockchip_hdmi_qp_ctrl_ops *ctrl_ops;
+	unsigned long long tmds_char_rate;
 };
 
 struct rockchip_hdmi_qp_ctrl_ops {
@@ -113,24 +115,9 @@ static struct rockchip_hdmi_qp *to_rockchip_hdmi_qp(struct drm_encoder *encoder)
 static void dw_hdmi_qp_rockchip_encoder_enable(struct drm_encoder *encoder)
 {
 	struct rockchip_hdmi_qp *hdmi = to_rockchip_hdmi_qp(encoder);
-	struct drm_crtc *crtc = encoder->crtc;
-	unsigned long long rate;
 
 	/* Unconditionally switch to TMDS as FRL is not yet supported */
 	gpiod_set_value(hdmi->enable_gpio, 1);
-
-	if (crtc && crtc->state) {
-		rate = drm_hdmi_compute_mode_clock(&crtc->state->adjusted_mode,
-						   8, HDMI_COLORSPACE_RGB);
-		/*
-		 * FIXME: Temporary workaround to pass pixel clock rate
-		 * to the PHY driver until phy_configure_opts_hdmi
-		 * becomes available in the PHY API. See also the related
-		 * comment in rk_hdptx_phy_power_on() from
-		 * drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
-		 */
-		phy_set_bus_width(hdmi->phy, div_u64(rate, 100));
-	}
 }
 
 static int
@@ -138,12 +125,26 @@ dw_hdmi_qp_rockchip_encoder_atomic_check(struct drm_encoder *encoder,
 					 struct drm_crtc_state *crtc_state,
 					 struct drm_connector_state *conn_state)
 {
+	struct rockchip_hdmi_qp *hdmi = to_rockchip_hdmi_qp(encoder);
 	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
+	union phy_configure_opts phy_cfg = {};
+	int ret;
 
-	s->output_mode = ROCKCHIP_OUT_MODE_AAAA;
-	s->output_type = DRM_MODE_CONNECTOR_HDMIA;
+	if (hdmi->tmds_char_rate == conn_state->hdmi.tmds_char_rate)
+		return 0;
 
-	return 0;
+	phy_cfg.hdmi.tmds_char_rate = conn_state->hdmi.tmds_char_rate;
+
+	ret = phy_configure(hdmi->phy, &phy_cfg);
+	if (!ret) {
+		hdmi->tmds_char_rate = conn_state->hdmi.tmds_char_rate;
+		s->output_mode = ROCKCHIP_OUT_MODE_AAAA;
+		s->output_type = DRM_MODE_CONNECTOR_HDMIA;
+	} else {
+		dev_err(hdmi->dev, "Failed to configure phy: %d\n", ret);
+	}
+
+	return ret;
 }
 
 static const struct

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
