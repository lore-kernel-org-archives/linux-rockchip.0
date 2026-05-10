Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B13B6CD37B9
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 May 2026 12:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGA0uXpfMidj6GIaBdTA8gTR4872ug7uA6pl9fduJ28=; b=iTakAVWbs7NSID
	5z15Lt8KQitlWwnZ4R48dbhrYygS58kHSc2EINULPo4+UeG3PAFkHQGK2u2AX1jbrSnr85IzrTaon
	r4BVoYqEWVtM31WQbvhgfHrbz23mzweGBqkhNRUF/Ioa2bd+KF5YSF9JvlKlu61kIsXCyeuVL0Vvw
	NPaRmZEXQNjTxXc6N/g+hSsmWyvkKpm+ZHLOHLdtF577oEKNVrRogjWeAOMVia+zShwgCijWcQ8pH
	rCb3azGjup4TowqMIFFr4Ug1bX22/hPEvo+PRuc7nCe9znADnrkmk08z79xDf+Uu7lXBspSKDVmLT
	A/Rk5f/BboY+kGz+EpXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3UZ-0000000AkUz-2auZ;
	Sun, 10 May 2026 12:42:43 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3UU-0000000AkJr-3pUz
	for linux-rockchip@lists.infradead.org;
	Sun, 10 May 2026 12:42:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1778416958; bh=ZyXjV8RIEykXpQ/mO+NRxXhhNJY1zN/i06aVZnE2r3Y=;
 b=C8MF6+skPXylyRmRIMmpS5NXa1RM9I2SgK1kE/m8FYTsraSueCSHU2ss2V4nfN0tW9+D0/juL
 hdnzcP1lx8K0H9k3KMizq+rJefvq7b4/jDS/HVi7ODnx39qijKVaqS1ZJ3GUft/DiAzeDlf+PRY
 h/8plMCF+Ng39ZaGIg7oxOfhKpcvx67tZLv45pLbUCh4m+ek3ox5DTfwOBye73vIRjtA7bFMEEu
 xD+hYFcp78WGmqCZJ8AHYYjEzqWFlQ8n6EhZJHVg84N4xB+tyJxIfvb0kmkRRDBtoCnTjmmrMCc
 xY6hv3bPg2K6beHyIrsuftEg6VYw+H+yYx5lFzFSNgUg==
X-Forward-Email-ID: 6a007d240d91f03a31a0bc92
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
Subject: [PATCH v5 12/21] drm: bridge: dw_hdmi: Use dw_hdmi_connector_status_update()
Date: Sun, 10 May 2026 12:40:56 +0000
Message-ID: <20260510124111.1226584-13-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260510124111.1226584-1-jonas@kwiboo.se>
References: <20260510124111.1226584-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_054239_095039_444EF30C 
X-CRM114-Status: GOOD (  10.60  )
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

Update connector EDID and CEC phys addr from detect and force funcs to
ensure that userspace always have access to latest read EDID after a
sink use a HPD low voltage pulse to indicate that EDID has changed.

With EDID being updated in detect and force funcs, there should no
longer be a need to re-read EDID in get_modes funcs, so drop it.

This change make the dw-hdmi connector work more closely like the bridge
connector does with a hdmi bridge.

Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v5: No change
v4: Move last_connector_result assign in force ops to this patch,
    Collect r-b tag
v3: Reworked 'Update EDID during hotplug processing' patch
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 25 ++++++++++++++---------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 71f90a5f5e8b..006eaf3fb8cb 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2473,33 +2473,36 @@ dw_hdmi_connector_status_update(struct drm_connector *connector,
 	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
 	const struct drm_edid *drm_edid;
 
+	if (status == connector_status_disconnected) {
+		drm_edid_connector_update(connector, NULL);
+		cec_notifier_phys_addr_invalidate(hdmi->cec_notifier);
+		return;
+	}
+
 	drm_edid = dw_hdmi_edid_read(hdmi, connector);
 	drm_edid_connector_update(connector, drm_edid);
 	drm_edid_free(drm_edid);
 
-	cec_notifier_set_phys_addr(hdmi->cec_notifier,
-				   connector->display_info.source_physical_address);
+	if (status == connector_status_connected)
+		cec_notifier_set_phys_addr(hdmi->cec_notifier,
+				connector->display_info.source_physical_address);
 }
 
 static enum drm_connector_status
 dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
 {
-	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
-					     connector);
+	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
 	enum drm_connector_status status;
 
 	status = dw_hdmi_detect(hdmi);
 
-	if (status == connector_status_disconnected)
-		cec_notifier_phys_addr_invalidate(hdmi->cec_notifier);
+	dw_hdmi_connector_status_update(connector, status);
 
 	return status;
 }
 
 static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
 {
-	dw_hdmi_connector_status_update(connector, connector->status);
-
 	return drm_edid_connector_add_modes(connector);
 }
 
@@ -2529,13 +2532,15 @@ static int dw_hdmi_connector_atomic_check(struct drm_connector *connector,
 
 static void dw_hdmi_connector_force(struct drm_connector *connector)
 {
-	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
-					     connector);
+	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
 
 	mutex_lock(&hdmi->mutex);
 	hdmi->force = connector->force;
+	hdmi->last_connector_result = connector->status;
 	dw_hdmi_update_phy_mask(hdmi);
 	mutex_unlock(&hdmi->mutex);
+
+	dw_hdmi_connector_status_update(connector, connector->status);
 }
 
 static void dw_hdmi_connector_destroy(struct drm_connector *connector)
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
