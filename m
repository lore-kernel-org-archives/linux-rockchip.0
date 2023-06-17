Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE983EB64DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 22:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0U/5lZnQrU7t+rNOmoevtkDW+Gefa2GHt3bFdFyCsjM=; b=NYwi4VeBjLOnbf
	kYpphmrGVgX40135Y/zeKHOl4NPLQHsyVAlNQv0pmmfFuyH+nziR3BnQHUJRWhdcOsh+CWgeuKh2s
	bm8pmEoJ7r0etamZhTsXzMmL3WKL2Udk4CTpLY9ofwFBHod27PB2lnEbaeLa6Uibs2jbZhmfS8MQQ
	XvPlxZAycERA24m8wox2855wDifZaoEUepVqL43lm8CIrJtzxB6pbt3JpgCuhWdE4Ja4PGoVklDPB
	eMOk5vPt9ZlH8M0LpP6V3MkYmfJD+LBDQZCr7uSPcu1aS8uZpkoAVIJ75n/VxXGZI2lwc+lev29RS
	bGJKVc80R99xWn9WNwYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAejg-004YH7-2j;
	Sat, 17 Jun 2023 22:49:36 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAejd-004YFq-0j
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Jun 2023 22:49:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1687042166; bh=eyC5JI8V8DNnn2DGE7rCYRCn5Al5AnVBD9PbxGzqK2g=;
	h=From:To:Cc:Subject:Date:From;
	b=oKUwMM8cgEjhyZLWJWVJisv9Ze3H3GBrDTrEP/0OLHL9U0g8IcZNRG1MRdNl3aAKH
	 z/EGNYpVQFTVKGNW59SfocIxaEoKq8EIWbpGcFFN7XEi7p/SeQXOVgj4tqUPave0Tb
	 wUP3AWpKQZrMz/jz0MqT/ScvrpWQzoJXcI2sxArA=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: linux-rockchip@lists.infradead.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Sam Ravnborg <sam@ravnborg.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Archit Taneja <architt@codeaurora.org>,
	Philippe CORNU <philippe.cornu@st.com>,
	dri-devel@lists.freedesktop.org (open list:DRM DRIVERS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2] drm: bridge: dw-mipi-dsi: Fix enable/disable of DSI controller
Date: Sun, 18 Jun 2023 00:48:25 +0200
Message-ID: <20230617224915.1923630-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_154933_713130_A76ACACC 
X-CRM114-Status: GOOD (  18.18  )
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

From: Ondrej Jirman <megi@xff.cz>

Before this patch, booting to Linux VT and doing a simple:

  echo 2 > /sys/class/graphics/fb0/blank
  echo 0 > /sys/class/graphics/fb0/blank

would result in failures to re-enable the panel. Mode set callback is
called only once during boot in this scenario, while calls to
enable/disable callbacks are balanced afterwards. The driver doesn't
work unless userspace calls modeset before enabling the CRTC/connector.

This patch moves enabling of the DSI host from mode_set into pre_enable
callback, and removes some old hacks where this bridge driver is
directly calling into other bridge driver's callbacks.

pre_enable_prev_first flag is set on the panel's bridge so that panel
drivers will get their prepare function called between DSI host's
pre_enable and enable callbacks, so that they get a chance to
perform panel setup while DSI host is already enabled in command
mode. Otherwise panel's prepare would be called before DSI host
is enabled, and any DSI communication used in prepare callback
would fail.

With all these changes, the enable/disable sequence is now well
balanced, and host's and panel's callbacks are called in proper order
documented in the drm_panel API documentation without needing the old
hacks. (Mainly that panel->prepare is called when DSI host is ready to
allow the panel driver to send DSI commands and vice versa during
disable.)

Tested on Pinephone Pro. Trace of the callbacks follows.

Before:

[    1.253882] dw-mipi-dsi-rockchip ff960000.dsi: mode_set
[    1.290732] panel-himax-hx8394 ff960000.dsi.0: prepare
[    1.475576] dw-mipi-dsi-rockchip ff960000.dsi: enable
[    1.475593] panel-himax-hx8394 ff960000.dsi.0: enable

echo 2 > /sys/class/graphics/fb0/blank

[   13.722799] panel-himax-hx8394 ff960000.dsi.0: disable
[   13.774502] dw-mipi-dsi-rockchip ff960000.dsi: post_disable
[   13.774526] panel-himax-hx8394 ff960000.dsi.0: unprepare

echo 0 > /sys/class/graphics/fb0/blank

[   17.735796] panel-himax-hx8394 ff960000.dsi.0: prepare
[   17.923522] dw-mipi-dsi-rockchip ff960000.dsi: enable
[   17.923540] panel-himax-hx8394 ff960000.dsi.0: enable
[   17.944330] dw-mipi-dsi-rockchip ff960000.dsi: failed to write command FIFO
[   17.944335] panel-himax-hx8394 ff960000.dsi.0: sending command 0xb9 failed: -110
[   17.944340] panel-himax-hx8394 ff960000.dsi.0: Panel init sequence failed: -110

echo 2 > /sys/class/graphics/fb0/blank

[  431.148583] panel-himax-hx8394 ff960000.dsi.0: disable
[  431.169259] dw-mipi-dsi-rockchip ff960000.dsi: failed to write command FIFO
[  431.169268] panel-himax-hx8394 ff960000.dsi.0: Failed to enter sleep mode: -110
[  431.169282] dw-mipi-dsi-rockchip ff960000.dsi: post_disable
[  431.169316] panel-himax-hx8394 ff960000.dsi.0: unprepare
[  431.169357] pclk_mipi_dsi0 already disabled

echo 0 > /sys/class/graphics/fb0/blank

[  432.796851] panel-himax-hx8394 ff960000.dsi.0: prepare
[  432.981537] dw-mipi-dsi-rockchip ff960000.dsi: enable
[  432.981568] panel-himax-hx8394 ff960000.dsi.0: enable
[  433.002290] dw-mipi-dsi-rockchip ff960000.dsi: failed to write command FIFO
[  433.002299] panel-himax-hx8394 ff960000.dsi.0: sending command 0xb9 failed: -110
[  433.002312] panel-himax-hx8394 ff960000.dsi.0: Panel init sequence failed: -110

-----------------------------------------------------------------------

After:

[    1.248372] dw-mipi-dsi-rockchip ff960000.dsi: mode_set
[    1.248704] dw-mipi-dsi-rockchip ff960000.dsi: pre_enable
[    1.285377] panel-himax-hx8394 ff960000.dsi.0: prepare
[    1.468392] dw-mipi-dsi-rockchip ff960000.dsi: enable
[    1.468421] panel-himax-hx8394 ff960000.dsi.0: enable

echo 2 > /sys/class/graphics/fb0/blank

[   16.210357] panel-himax-hx8394 ff960000.dsi.0: disable
[   16.261315] dw-mipi-dsi-rockchip ff960000.dsi: post_disable
[   16.261339] panel-himax-hx8394 ff960000.dsi.0: unprepare

echo 0 > /sys/class/graphics/fb0/blank

[   19.161453] dw-mipi-dsi-rockchip ff960000.dsi: pre_enable
[   19.197869] panel-himax-hx8394 ff960000.dsi.0: prepare
[   19.382141] dw-mipi-dsi-rockchip ff960000.dsi: enable
[   19.382158] panel-himax-hx8394 ff960000.dsi.0: enable

Fixes: 46fc51546d44 ("drm/bridge/synopsys: Add MIPI DSI host controller bridge")
       (But depends on functionality intorduced in Linux 6.3, so this patch will
        not build on older kernels when applied to older stable branches.)
Signed-off-by: Ondrej Jirman <megi@xff.cz>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
---
Changed in v2:
- use proper function for copying drm mode
- add fixes + note about dependencies

 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 28 +++++++++++--------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index b2efecf7d160..4291798bd70f 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -265,6 +265,7 @@ struct dw_mipi_dsi {
 	struct dw_mipi_dsi *master; /* dual-dsi master ptr */
 	struct dw_mipi_dsi *slave; /* dual-dsi slave ptr */
 
+	struct drm_display_mode mode;
 	const struct dw_mipi_dsi_plat_data *plat_data;
 };
 
@@ -332,6 +333,7 @@ static int dw_mipi_dsi_host_attach(struct mipi_dsi_host *host,
 	if (IS_ERR(bridge))
 		return PTR_ERR(bridge);
 
+	bridge->pre_enable_prev_first = true;
 	dsi->panel_bridge = bridge;
 
 	drm_bridge_add(&dsi->bridge);
@@ -859,15 +861,6 @@ static void dw_mipi_dsi_bridge_post_atomic_disable(struct drm_bridge *bridge,
 	 */
 	dw_mipi_dsi_set_mode(dsi, 0);
 
-	/*
-	 * TODO Only way found to call panel-bridge post_disable &
-	 * panel unprepare before the dsi "final" disable...
-	 * This needs to be fixed in the drm_bridge framework and the API
-	 * needs to be updated to manage our own call chains...
-	 */
-	if (dsi->panel_bridge->funcs->post_disable)
-		dsi->panel_bridge->funcs->post_disable(dsi->panel_bridge);
-
 	if (phy_ops->power_off)
 		phy_ops->power_off(dsi->plat_data->priv_data);
 
@@ -942,15 +935,25 @@ static void dw_mipi_dsi_mode_set(struct dw_mipi_dsi *dsi,
 		phy_ops->power_on(dsi->plat_data->priv_data);
 }
 
+static void dw_mipi_dsi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
+						 struct drm_bridge_state *old_bridge_state)
+{
+	struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
+
+	/* Power up the dsi ctl into a command mode */
+	dw_mipi_dsi_mode_set(dsi, &dsi->mode);
+	if (dsi->slave)
+		dw_mipi_dsi_mode_set(dsi->slave, &dsi->mode);
+}
+
 static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
 					const struct drm_display_mode *mode,
 					const struct drm_display_mode *adjusted_mode)
 {
 	struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
 
-	dw_mipi_dsi_mode_set(dsi, adjusted_mode);
-	if (dsi->slave)
-		dw_mipi_dsi_mode_set(dsi->slave, adjusted_mode);
+	/* Store the display mode for later use in pre_enable callback */
+	drm_mode_copy(&dsi->mode, adjusted_mode);
 }
 
 static void dw_mipi_dsi_bridge_atomic_enable(struct drm_bridge *bridge,
@@ -1004,6 +1007,7 @@ static const struct drm_bridge_funcs dw_mipi_dsi_bridge_funcs = {
 	.atomic_duplicate_state	= drm_atomic_helper_bridge_duplicate_state,
 	.atomic_destroy_state	= drm_atomic_helper_bridge_destroy_state,
 	.atomic_reset		= drm_atomic_helper_bridge_reset,
+	.atomic_pre_enable	= dw_mipi_dsi_bridge_atomic_pre_enable,
 	.atomic_enable		= dw_mipi_dsi_bridge_atomic_enable,
 	.atomic_post_disable	= dw_mipi_dsi_bridge_post_atomic_disable,
 	.mode_set		= dw_mipi_dsi_bridge_mode_set,
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
