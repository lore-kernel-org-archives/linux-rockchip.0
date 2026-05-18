Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36BD7CD4F4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 19:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGuiJpDNfVnhzuSZPJsusZEfNqkVK3XaDX7aAILAjlQ=; b=g3gWEAMJFQl4OZ
	KPCqwFF3UoElVMk/QymEHtGVI3IwNERq4zTW+Kt9E5R934Un4+vMXsX1uNQKmdhm8LVvkSwys1kN/
	vhIn9a2p3TKDsfcvvsaaZbmJyetrJBD2ASaWLo8uWf7MGCONG+Ppp5y636d0yviLRey1jzY8E4oX8
	133x1tzYBO+rqBI9aTRdIMgdS4ug8jM0USgGkS639Rti33dZK6nDGoj5PJaADn4G6x7zAvgv+BXgf
	+NxsH4ZEXEgOxX8uAGKMSYH7aSScSwt93IDNwZr76u1g6iwZSaQ4ErucyRs+RwZyBvto0eQ5MT69w
	AqSCqgG4EakN1x0EU12w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3ns-0000000Givl-0BcL;
	Mon, 18 May 2026 19:39:04 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3nn-0000000GipV-2fRi
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 19:39:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779133139; bh=Rmq5rXYq2R8CPfydo2bXTvXYgpGKdl/FCPluNApQXPM=;
 b=LuyV3UNY8RrWn1LUIKNCQjrI7ieqi0Bx3GKnueVy8jgo72ZdjMKUwYn0RdTjyQxaCNyNg6C73
 Iuj0EEHWjHdfZl4DU1bY0wdvPP6UdgeB7wfh4sVTwhukZghQouz/uVb6Pyl6X5+X87u4AOyj3FO
 G9Y+cw8LDVsV4ador1ks0KiMKJjiZlsBFpdBRH7IrjEt9QRirwiHFNxw5xq3rQOAyk5jJf8qilT
 kyvFclElXmAr4xDpnp8TT05No1SzhyGmKBwjobqv/T3j6ZA5KlA3YVH3r4+hYuPxjMXs3o6wt9P
 EiURxpVmPKOM8LTDiWlhpFpNyk3tUDjJML500y1AXxmA==
X-Forward-Email-ID: 6a0b6ab4486b4b38b826fa92
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 09/11] drm/rockchip: dw_hdmi: Configure HDMI PHY in atomic_mode_set()
Date: Mon, 18 May 2026 19:37:43 +0000
Message-ID: <20260518193748.2482823-10-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518193748.2482823-1-jonas@kwiboo.se>
References: <20260518193748.2482823-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_123859_695404_38323F82 
X-CRM114-Status: GOOD (  12.28  )
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

The HDMI helpers negotiated TMDS character rate and output bpc are
available from the connector state. Change the encoder helper from
mode_set() to atomic_mode_set() so these values can be used to configure
the HDMI PHY using phy_configure().

This has no impact until the dw-hdmi bridge is fully converted into a
HDMI bridge and HDMI helpers are used to assign hdmi.tmds_char_rate.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: No change
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 29 +++++++++++++++++----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 6c4923b9b659..4e7fd4b80d76 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -226,11 +226,22 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
 	return MODE_OK;
 }
 
-static void dw_hdmi_rockchip_encoder_mode_set(struct drm_encoder *encoder,
-					      struct drm_display_mode *mode,
-					      struct drm_display_mode *adj_mode)
+static void
+dw_hdmi_rockchip_encoder_atomic_mode_set(struct drm_encoder *encoder,
+					 struct drm_crtc_state *crtc_state,
+					 struct drm_connector_state *conn_state)
 {
 	struct rockchip_hdmi *hdmi = to_rockchip_hdmi(encoder);
+	struct drm_display_mode *adj_mode = &crtc_state->adjusted_mode;
+
+	if (hdmi->phy && conn_state->hdmi.tmds_char_rate) {
+		union phy_configure_opts opts = {};
+
+		opts.hdmi.bpc = conn_state->hdmi.output_bpc;
+		opts.hdmi.tmds_char_rate = conn_state->hdmi.tmds_char_rate;
+
+		phy_configure(hdmi->phy, &opts);
+	}
 
 	clk_set_rate(hdmi->ref_clk, adj_mode->clock * 1000);
 }
@@ -270,15 +281,23 @@ dw_hdmi_rockchip_encoder_atomic_check(struct drm_encoder *encoder,
 				      struct drm_connector_state *conn_state)
 {
 	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
+	struct rockchip_hdmi *hdmi = to_rockchip_hdmi(encoder);
+	union phy_configure_opts opts = {};
 
 	s->output_mode = ROCKCHIP_OUT_MODE_AAAA;
 	s->output_type = DRM_MODE_CONNECTOR_HDMIA;
 
-	return 0;
+	if (!hdmi->phy || !conn_state->hdmi.tmds_char_rate)
+		return 0;
+
+	opts.hdmi.bpc = conn_state->hdmi.output_bpc;
+	opts.hdmi.tmds_char_rate = conn_state->hdmi.tmds_char_rate;
+
+	return phy_validate(hdmi->phy, PHY_MODE_HDMI, PHY_HDMI_MODE_TMDS, &opts);
 }
 
 static const struct drm_encoder_helper_funcs dw_hdmi_rockchip_encoder_helper_funcs = {
-	.mode_set = dw_hdmi_rockchip_encoder_mode_set,
+	.atomic_mode_set = dw_hdmi_rockchip_encoder_atomic_mode_set,
 	.enable = dw_hdmi_rockchip_encoder_enable,
 	.atomic_check = dw_hdmi_rockchip_encoder_atomic_check,
 };
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
