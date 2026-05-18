Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB7FCCD4F4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 18:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzBlfIj8NeS/zkfiqG7VUFl8+d5iUue9lU4uY53sUt4=; b=bGcBeMPL4J/Dmq
	F1GxOiM9FkJfJo9nmV6TNxNOhmIrnuVJh/k8lDoupluYd5gZi9rdVdRcrvoPovv7B6o302izdr9rq
	tWjkY2GsXUxPOTNjoed9YHUCvFKCTHheav4VqpItWUJ+3Sl6U6+EUJskJckWlo/yEzqwUbN6yDPhB
	fhWKmFyywdtYPm9bmjPF/l74cxZwnRfWZjcYLB3bDqjnywRFVpFdpBUElfnY0gW7XkhV7qXtM5Wdg
	tIs3FBSGxjJfLpPcRdonv+JQAKwVMim0u+dJU8pbWn6p2ivVJMXh8UFqN6GMU6OpMzRxNszavlF3z
	qD6OXaXvuM/O9gdj7Xzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2Iv-0000000GTG9-3ehC;
	Mon, 18 May 2026 18:03:01 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2Iq-0000000GT71-3h5C
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 18:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779127376; bh=y1qusCJrJS8qT16e2pU+cznjnv8NM8UAIVFu7XIBUj8=;
 b=l8xDgENk0Ffz8bvIvEvFbkJYjwVKmsyNLNSs95YuQEmKjx54Yh4eDrPUZzFz6xmoHHsXs7Jyy
 MTCujYuB30sLmtz4vEsNImt5Eg2UUonHN9TPiqENTRgPvrVT4vYzame7oRF94hjd1CsEU7DDB3x
 DVrG7a+VtVeuL+d0PQEJVx8155O8u1KxhGN9HsIkzMFPB9X1yLSuCdAYAdq7P85M+xlHi9fcD/F
 /C4SvcUlLRVnlzxWFXgVTcN0lHcuo5A0Q8OiTx+/IUGTK1DuDj78D3hmtUeXN80SFYNOX8nCFq7
 ERol6XF21hAycjGYN2qOfd1T+NT1MzxstPDSpooIpscg==
X-Forward-Email-ID: 6a0b544cb84dbc72d2274e87
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.8.12
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
Subject: [PATCH v7 09/23] drm: bridge: dw_hdmi: Unregister CEC notifier during connector cleanup
Date: Mon, 18 May 2026 18:01:45 +0000
Message-ID: <20260518180206.2480119-10-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518180206.2480119-1-jonas@kwiboo.se>
References: <20260518180206.2480119-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_110257_021677_9470482B 
X-CRM114-Status: GOOD (  10.08  )
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

The CEC notifier is being unregistered when the bridge detach,
something that happens earlier than normal connector cleanup.

Change to unregister the CEC notifier at connector cleanup, in the
connector .destroy() func, to align the lifetime of the connector and
the CEC notifier and closer match a drmres handled generic CEC notifier.

Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # Rock64, RockPro64, Quartz64-B
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v7: No change
v6: Collect t-b tag
v5: New patch
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index cbbd15578042..5fd26ff8f55b 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2532,6 +2532,11 @@ static void dw_hdmi_connector_destroy(struct drm_connector *connector)
 {
 	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
 
+	mutex_lock(&hdmi->cec_notifier_mutex);
+	cec_notifier_conn_unregister(hdmi->cec_notifier);
+	hdmi->cec_notifier = NULL;
+	mutex_unlock(&hdmi->cec_notifier_mutex);
+
 	drm_connector_cleanup(connector);
 	drm_bridge_put(&hdmi->bridge);
 }
@@ -2909,16 +2914,6 @@ static int dw_hdmi_bridge_attach(struct drm_bridge *bridge,
 	return dw_hdmi_connector_create(hdmi);
 }
 
-static void dw_hdmi_bridge_detach(struct drm_bridge *bridge)
-{
-	struct dw_hdmi *hdmi = bridge->driver_private;
-
-	mutex_lock(&hdmi->cec_notifier_mutex);
-	cec_notifier_conn_unregister(hdmi->cec_notifier);
-	hdmi->cec_notifier = NULL;
-	mutex_unlock(&hdmi->cec_notifier_mutex);
-}
-
 static enum drm_mode_status
 dw_hdmi_bridge_mode_valid(struct drm_bridge *bridge,
 			  const struct drm_display_info *info,
@@ -2996,7 +2991,6 @@ static const struct drm_bridge_funcs dw_hdmi_bridge_funcs = {
 	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
 	.atomic_reset = drm_atomic_helper_bridge_reset,
 	.attach = dw_hdmi_bridge_attach,
-	.detach = dw_hdmi_bridge_detach,
 	.atomic_check = dw_hdmi_bridge_atomic_check,
 	.atomic_get_output_bus_fmts = dw_hdmi_bridge_atomic_get_output_bus_fmts,
 	.atomic_get_input_bus_fmts = dw_hdmi_bridge_atomic_get_input_bus_fmts,
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
