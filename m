Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A28BCD4F3C
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 May 2026 18:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBZB76qAaTD3onT6hFMxCluDhZkBSJ+5NvXAKnElJrw=; b=EYjZODSreidiS+
	vPX5NihFQtB2rE4Lr4sNFJIyX4ZM2E5MdB+Nb9vYT5U/jNSkfXGX8qq8Fdc/oyksPE0phU4zyuBS3
	Y4sBBNhh0K95BA2nZE8qRKkdCLsvLsyqLJaavZUUanStwhl+xk7BP7ABNtJaXCEqsbo+GU+yi6pM+
	cIwPntmGsI97V+ePkEXmH4+CwNkgx6SJQOyHndsYQDQVfexSZLEPoFi4m2SC/Gl30XZBueq+DEnCA
	njFnBNJAigPJdo/I08diJawfGI2Rzw64xLGE9QBSjbjmue6OaqSMlCCTqvydfRlsuAOGVW1F1+uif
	GwfuHvZ2b+Qf2R05GLrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOJyD-0000000BHtW-1lqQ;
	Sat, 16 May 2026 18:42:41 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOJyA-0000000BHqx-0ixL
	for linux-rockchip@lists.infradead.org;
	Sat, 16 May 2026 18:42:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1778956955; bh=w9gLcIjrWFUo1B9oSiBZ5ajnppXXlJddCFjM0GCTYiM=;
 b=Xj0/M8cFuh8qK4DJjd2HZUlLEyiLdopGHuL+mpq9BWvdgw1ELLVlbh09dMvUnuQKyXlqzYvmb
 mmycLWhhQ+1zpfhfrgnh2SUGLOg3qTIkUvqnRRbCumvHPK+xIbSmb+RLcGeLwAOmOab4DnQXqQC
 4+rKrSwjJcjlK5chqxRABgqP29rCnwOKCkWOGw9jLIL0NQhmLdAY3hJ8XJ47Vggr8tjq/9oIdME
 1fNnyYf95CDvK6AIxlHpYlcj+P4UubqNJ+rGLC8aPAJx1mrSBAW0yahDpJyCXgL5LpX+nyso4no
 zPTuWbr26W5gzFefA3XXQVyD/0XDDJF14uhkM6cL24jQ==
X-Forward-Email-ID: 6a08b9f079c7625f20eeee89
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
Subject: [PATCH v6 14/22] drm: bridge: dw_hdmi: Update EDID and CEC phys addr in bridge detect()
Date: Sat, 16 May 2026 18:38:24 +0000
Message-ID: <20260516183838.2024991-15-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260516183838.2024991-1-jonas@kwiboo.se>
References: <20260516183838.2024991-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260516_114238_214627_A304D961 
X-CRM114-Status: GOOD (  10.19  )
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

Update EDID and CEC phys addr in the bridge detect() func to closely
match the behavior of a bridge connector with a HDMI bridge attached
and the dw-hdmi connector.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v6: New patch

This is a temporary change until dw-hdmi is fully converted into a
HDMI bridge in a future part of this multi-series effort.
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 2bb043d64b65..3649ccf8d994 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2969,8 +2969,17 @@ static enum drm_connector_status
 dw_hdmi_bridge_detect(struct drm_bridge *bridge, struct drm_connector *connector)
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
+	enum drm_connector_status status;
 
-	return dw_hdmi_detect(hdmi);
+	status = dw_hdmi_detect(hdmi);
+
+	/*
+	 * Update EDID and CEC phys addr to match the behavior of a bridge
+	 * connector with a HDMI bridge attached and the dw-hdmi connector.
+	 */
+	dw_hdmi_connector_status_update(hdmi, connector, status);
+
+	return status;
 }
 
 static const struct drm_edid *dw_hdmi_bridge_edid_read(struct drm_bridge *bridge,
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
