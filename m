Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 118D4CD37B5
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 May 2026 18:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJxoOvmWeVxpfIpebr/iugRgrJDEz9lb1EJEMN17VGc=; b=WZsLRj+aF7jgfT
	0jtZF1C0yXZkDht4yV/KCEBa3KToZIioaslno5YahGVFrFnvZt/PBayXWdIFL+7fAGiBfEY52T0Fw
	grG9DFF3Pv5DiLrqQFqnGvJdqQrBw4QznHhukk0TZVTWtsoOXHMuB+gFtVTTmyQzNM30KSzxaPYlx
	oCYpAC1MxdIr28E8SjbZOu6fl5HJ53BS+6oSzL2yRQTYNlLlzUfMbXsD/FB+zlXDEk3w/SStPuIJw
	+/6+QHpz4goWpiiY2LrC5o11CGbj6r0ILRraA6fKtSA+U19Ge4Lb3NZgl4qB2X7npdK/11H8Ipdfp
	JWmpNuIUZ8yKmRTprN2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM8x2-0000000BMtt-192s;
	Sun, 10 May 2026 18:32:28 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM8wx-0000000BMhS-3Lek
	for linux-rockchip@lists.infradead.org;
	Sun, 10 May 2026 18:32:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1778437926; bh=tWZ1i/q7CLgAfivuQtexjnsHVV4DZ1Xla4Z36a9NDCo=;
 b=d85J8gg65p0VN8cfnJvnhuktmcI1HlYmh4RC9pw8ikHhcunMiYnIgwfi3jJbJ6PvKPtZgoFHD
 nkgZmVvDmWzSp0AGMe8osTUPmJ9aWqf4YcXs+9JvlZ38dPGU19UATiuHpI0309rLGkws3fhYm+V
 nVwwpyUEpSB9L0Xd4f4LOCX+MkEKeaRusEqV+orYvVdf4ZRdHmJ4ErfhPS3QEM+2UAxm1hA8h6F
 pA3wh2HIa3bityJ97+ggHFB1cUrBh5B9kBafAMNxXMsgZ9KNhLzPk0qWJ62qXgEPVooTJ/7tEQv
 5OzK9f48OItpEUepAqv770tN6bcICf4A2XBasaKfE7/w==
X-Forward-Email-ID: 6a00cf1b61db3ab145b0f2fe
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.8.0
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
Subject: [PATCH 09/10] drm/rockchip: dw_hdmi: Configure HDMI PHY in atomic_mode_set()
Date: Sun, 10 May 2026 18:31:10 +0000
Message-ID: <20260510183114.1248840-10-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260510183114.1248840-1-jonas@kwiboo.se>
References: <20260510183114.1248840-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_113224_264778_37EB349F 
X-CRM114-Status: GOOD (  12.07  )
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
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 29 +++++++++++++++++----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 9d3bb6cd5670..94a30579a736 100644
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
