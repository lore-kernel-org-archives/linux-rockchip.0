Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10770CD4F3C
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 May 2026 18:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYFMWsKhMafEu/zuanBmimrSZxDt/YNYFckOkoStr/g=; b=cmmw+SeVdRtCCn
	CxRUv9aTCfIss7TQsAijHjJGJdRgTckBcisp+WAat/jOYLpK3LJaQc69mWLIoeDeYQaangltLVgHr
	9PZUMlmTExxOtuAp8NCE8YXW2uyEqarqz+Wh48z47sW0NZCx1VsHVvIQdBGSv0yeIx5suMzH2vKrA
	BrG/I1U1P8kCsrHeTN1guGFQ6hSafFMbl/+o+TCvKJgp2iM8YlRtbi12gPmJO8oym7imBYtRj5+kM
	G+Ku3pbfGFHjJFTh5QOVW7i41YSqpgR54sjRgB42S8/lh/fpaVGbdJ19f3OdvfKrYw428nja6aAXx
	5WCz6Re7t6G36zipIdvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOJxA-0000000BHTX-3grL;
	Sat, 16 May 2026 18:41:36 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOJx9-0000000BHSP-0OAY
	for linux-rockchip@lists.infradead.org;
	Sat, 16 May 2026 18:41:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1778956894; bh=8Xu8zmkoGpSjHmQcHYNXb6z5Nt0YqaebtxsoCwdpiVk=;
 b=HfiYUyv17wqXmrwH9kdhvKUz3sda4bYDj1Q0JbZlWYPttTwKXbw1nC6vEdx0lSKsoxxKBqU1m
 hR2Wd9y13EpdvUC1oFbYAIa5UVXcAFDsCIfQEGsg+SVQmSlyV0f7gM9MTIXoEDAYdNW70msrdk3
 BV0JvWKnJqu677QoaUpD4hNnSrptxSoXMZMZhfH8uO3BCoImM6jLBix/tXNRett8/rBzLvORN+O
 X44L7Df+CzcuVwRqhoko4kS0v7raW1Y3D1ljLIP+wuXXwXxxr6sv8DUiHPaiiwh9ODu8cm+b4U0
 YGNkqAwvBnK5B0QyggYo4ep8w9MihuPAUN+GTepBZWBA==
X-Forward-Email-ID: 6a08b9d279c7625f20eeedab
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
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
Subject: [PATCH v6 07/22] drm: bridge: dw_hdmi: Hold bridge ref until connector cleanup
Date: Sat, 16 May 2026 18:38:17 +0000
Message-ID: <20260516183838.2024991-8-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260516183838.2024991-1-jonas@kwiboo.se>
References: <20260516183838.2024991-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260516_114135_127341_2A6F275A 
X-CRM114-Status: GOOD (  12.09  )
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

drmres connector cleanup typically run after devres has released the
last dw-hdmi bridge reference. Since struct dw_hdmi, where the connector
lives, is freed when the last bridge reference is released, connector
cleanup can end up accessing freed memory.

Call trace without a bridge reference held until connector cleanup:
- dw_hdmi_bridge_detach()
- dw_hdmi_bridge_destroy()      <<-- struct dw_hdmi is free()
- [drm:drm_managed_release] drmres release begin
- [drm:drm_managed_release] REL (____ptrval____) drm_mode_config_init_release (0 bytes)
- dw_hdmi_connector_destroy()
  - drm_connector_cleanup()     <<-- drm_connector is use-after-free
  [...]
- [drm:drm_managed_release] drmres release end

Hold a bridge reference for as long as the connector exists and drop it
after drm_connector_cleanup() has completed to keep struct dw_hdmi alive
until connector teardown is finished and avoids the use-after-free.

Call trace with a bridge reference held until connector cleanup:
- dw_hdmi_bridge_detach()
- [drm:drm_managed_release] drmres release begin
- [drm:drm_managed_release] REL (____ptrval____) drm_mode_config_init_release (0 bytes)
- dw_hdmi_connector_destroy()
  - drm_connector_cleanup()     <<-- drm_connector is destroy()
  - drm_bridge_put()
- dw_hdmi_bridge_destroy()      <<-- struct dw_hdmi is free()
  [...]
- [drm:drm_managed_release] drmres release end

Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # Rock64, RockPro64, Quartz64-B
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v6: Collect t-b tag
v5: New patch
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index a176eb55418c..cbbd15578042 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2528,10 +2528,18 @@ static void dw_hdmi_connector_force(struct drm_connector *connector)
 	mutex_unlock(&hdmi->mutex);
 }
 
+static void dw_hdmi_connector_destroy(struct drm_connector *connector)
+{
+	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
+
+	drm_connector_cleanup(connector);
+	drm_bridge_put(&hdmi->bridge);
+}
+
 static const struct drm_connector_funcs dw_hdmi_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.detect = dw_hdmi_connector_detect,
-	.destroy = drm_connector_cleanup,
+	.destroy = dw_hdmi_connector_destroy,
 	.force = dw_hdmi_connector_force,
 	.reset = drm_atomic_helper_connector_reset,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
@@ -2548,6 +2556,7 @@ static int dw_hdmi_connector_create(struct dw_hdmi *hdmi)
 	struct drm_connector *connector = &hdmi->connector;
 	struct cec_connector_info conn_info;
 	struct cec_notifier *notifier;
+	int ret;
 
 	if (hdmi->version >= 0x200a)
 		connector->ycbcr_420_allowed =
@@ -2560,10 +2569,14 @@ static int dw_hdmi_connector_create(struct dw_hdmi *hdmi)
 
 	drm_connector_helper_add(connector, &dw_hdmi_connector_helper_funcs);
 
-	drm_connector_init_with_ddc(hdmi->bridge.dev, connector,
-				    &dw_hdmi_connector_funcs,
-				    DRM_MODE_CONNECTOR_HDMIA,
-				    hdmi->ddc);
+	ret = drm_connector_init_with_ddc(hdmi->bridge.dev, connector,
+					  &dw_hdmi_connector_funcs,
+					  DRM_MODE_CONNECTOR_HDMIA,
+					  hdmi->ddc);
+	if (ret)
+		return ret;
+
+	drm_bridge_get(&hdmi->bridge);
 
 	/*
 	 * drm_connector_attach_max_bpc_property() requires the
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
