Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6E3ACD37B2
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 May 2026 12:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGW9fUe9rK8SWmf2VuIJ7hK7S56r8NujYtZ6iIF878c=; b=O5vhaQDqtz0a96
	BeQCv+gVIsyQ8Lf9ERMN8fpS5igazFzJqREtb3g7u4PpavwhbEqYmCUqCY16lIw+79kiw5zz6t0Gb
	hyJQE2/2FDabpItBxhsZ7zKUXU3UBKGBkb96voh9pmSmNYgRdqT53t3lcscnx4N0sHcP0rEJAxlzh
	BcGPxf/pB0NZ5AAEKf16xRw5Sz/U/tedi/pvgpKBR/Y+l5gKLHJxibeeIPPAMM8djEtVGF+cYLveB
	LJldMsFdCcJDpNaEeajq031hFqnDUw1OA04mpfGYkLZadYmBm6omiQ05xezKbf3uidi6Rd396XNKD
	JkuupyxX98ZWjNFawqkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3UI-0000000Ajyk-1Hys;
	Sun, 10 May 2026 12:42:27 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3UB-0000000Ajh7-2z5I
	for linux-rockchip@lists.infradead.org;
	Sun, 10 May 2026 12:42:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1778416930; bh=er0xhzvCLlN0qh9ZkIzd2DuMHrfTOjO1xjORGDDCi3A=;
 b=Mx+JjzTOkgdc+KnvK7OLj4dAx+8qxcCLkPVUNvNfh3SxjxRhYHYYLH/xSvK1DMVBFTrpxN3xa
 JGOLMlp1ubsNy6QEeeDmHpcI5Rrr66b/jGFH4FQS9bc6hTgncNBLdR0trknjM1Jyl7wm4dBxU2b
 9vqQFM5TVvulmODWHO/gsXxTf8QZnD6n3ZjODcc5MBZZvei6+B/NTRXe5PYcUy4VCGjNVxiUMET
 oAbwhGtGXUu4pCWgQYLg4Mj9cbVKGqSuFlR+/ZTvgUWy3Ksor1MMbhZFk9KBFs70sskP0nw9N/H
 XjW1sfbREjQ+1WLpCssdxKeq97VgF6UjjTbp1IDiKkpA==
X-Forward-Email-ID: 6a007d050d91f03a31a0bb6e
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.8.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: Liu Ying <victor.liu@nxp.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Christian Hewitt <christianshewitt@gmail.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 05/21] drm: bridge: dw_hdmi: Fold poweron and setup functions
Date: Sun, 10 May 2026 12:40:49 +0000
Message-ID: <20260510124111.1226584-6-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260510124111.1226584-1-jonas@kwiboo.se>
References: <20260510124111.1226584-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_054219_920549_6593669A 
X-CRM114-Status: GOOD (  11.16  )
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

Fold the poweron and setup functions into one function and use the
adjusted_mode directly from the new crtc_state to remove the need of
storing previous_mode.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v5: No change, rebase on next-20260508
v4: No change
v3: Collect r-b tag
v2: No change
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index aa12397b3343..607faf4da967 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2254,9 +2254,9 @@ static void hdmi_disable_overflow_interrupts(struct dw_hdmi *hdmi)
 		    HDMI_IH_MUTE_FC_STAT2);
 }
 
-static int dw_hdmi_setup(struct dw_hdmi *hdmi,
-			 const struct drm_connector *connector,
-			 const struct drm_display_mode *mode)
+static int dw_hdmi_poweron(struct dw_hdmi *hdmi,
+			   const struct drm_connector *connector,
+			   const struct drm_display_mode *mode)
 {
 	const struct drm_display_info *display = &connector->display_info;
 	int ret;
@@ -2396,15 +2396,6 @@ static void initialize_hdmi_ih_mutes(struct dw_hdmi *hdmi)
 	hdmi_writeb(hdmi, ih_mute, HDMI_IH_MUTE);
 }
 
-static void dw_hdmi_poweron(struct dw_hdmi *hdmi)
-{
-	/*
-	 * The curr_conn field is guaranteed to be valid here, as this function
-	 * is only be called when !hdmi->disabled.
-	 */
-	dw_hdmi_setup(hdmi, hdmi->curr_conn, &hdmi->previous_mode);
-}
-
 static void dw_hdmi_poweroff(struct dw_hdmi *hdmi)
 {
 	if (hdmi->phy.enabled) {
@@ -2969,15 +2960,19 @@ static void dw_hdmi_bridge_atomic_enable(struct drm_bridge *bridge,
 					 struct drm_atomic_commit *state)
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
+	const struct drm_display_mode *mode;
 	struct drm_connector *connector;
+	struct drm_crtc *crtc;
 
 	connector = drm_atomic_get_new_connector_for_encoder(state,
 							     bridge->encoder);
+	crtc = drm_atomic_get_new_connector_state(state, connector)->crtc;
+	mode = &drm_atomic_get_new_crtc_state(state, crtc)->adjusted_mode;
 
 	mutex_lock(&hdmi->mutex);
 	hdmi->disabled = false;
 	hdmi->curr_conn = connector;
-	dw_hdmi_poweron(hdmi);
+	dw_hdmi_poweron(hdmi, connector, mode);
 	dw_hdmi_update_phy_mask(hdmi);
 	handle_plugged_change(hdmi, true);
 	mutex_unlock(&hdmi->mutex);
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
