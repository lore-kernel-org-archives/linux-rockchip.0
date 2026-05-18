Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 856C9CD4F52
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 18:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qz+dG74yXwjDEl7sf/TznIzIXVWzwGXjP73dFxSMB4w=; b=NGCw/OIPIXdH+X
	Bck3kL1fIt3A1ZL9+LA5m0L8txb36PijofQw4p04Lz0GRTjjRvVM2/s5m5fsFu9eRObda7e3PCDsP
	HCMiImN4u6phqwzb2kp6ZD1XuNP+rbtxfjZay6hDitk6irVwXzoK9pxApLsKxPLHO/eRG+ebIht+f
	1xwW9TeKI54Pg2hHFHDhoJ8KOpa0TnfczqIiQcBnIMrnDnZh+STOrzfJtfZ41Pwcz4h7MJpAbwWMX
	QS2O1fT597g0mHUGeSbkDm8dZdUKskJ24Csz21MofSOW79cxWmv1azN+se6taSNuARWgnVT5Fjhqw
	IYH0ZEKoCy3iz8YtKXag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2JO-0000000GU26-3Yv8;
	Mon, 18 May 2026 18:03:30 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2JI-0000000GTox-0Vha
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 18:03:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779127398; bh=fYmxPzn2Z9iehS0fAf63Ttmw7rvgQXUScT2oAp7xhm8=;
 b=PGId3RV/6fjfo/Tj4KK2HqiWW8L/iqov7gV0HXa93iAU8QGoXw8iFd4EqooLvmOA/b7DoS7f4
 lEqIyk3cBVCHY+g/u+rZxR30scM87OquVTCMG4QICUMB0pZElwCIdiSAa0+Ow7LRMrJGqZulADB
 CW5nbaH++t1Ya11yYU1bjpgBZzraVgEMSapzDPqv7RmpeBC3HdajSic1LkJ8R2z0ZaPJn5zCra4
 xe8EezQ8G5zuqWps3HyH/+9/wltEW4J9tztMTjHL1kaZa4qYDtZ/ZMCQkS5NQ0iJrMEy/9tNg4Z
 tUAHFzB9flFva1WztmtHX9ttq8X5TSUovMXaLgzPGr1A==
X-Forward-Email-ID: 6a0b542db84dbc72d2274dca
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
	Simona Vetter <simona@ffwll.ch>,
	Lucas Stach <l.stach@pengutronix.de>
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
Subject: [PATCH v7 02/23] drm: bridge: dw_hdmi: Only notify connected status on HPD interrupt
Date: Mon, 18 May 2026 18:01:38 +0000
Message-ID: <20260518180206.2480119-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518180206.2480119-1-jonas@kwiboo.se>
References: <20260518180206.2480119-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_110324_235123_F5879244 
X-CRM114-Status: GOOD (  13.96  )
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

drm_helper_hpd_irq_event() and drm_bridge_hpd_notify() may incorrectly
be called with a connected status when HPD is high and RX sense is
changed. This typically happens when the HDMI cable is unplugged,
shortly before the HPD is changed to low.

The original intent of commit da09daf88108 ("drm: bridge: dw_hdmi: only
trigger hotplug event on link change") was to signal hotplug event at
correct interrupt states.

Based on the commit message the intent was to trigger hotplug event:
- when HPD goes high (plugin)
- when both HPD and RX sense has gone low (plugout)

However, following interrupt state changes can typically be observed
when the HDMI cable is unplugged:
- RX interrupt:  HPD=high RX=low  -> triggers a connected event
- HPD interrupt: HPD=low  RX=low  -> triggers a disconnected event

Fix this by only notify connected status on the HPD interrupt when HPD
is going high, not on the RX sense interrupt when RX sense is changed.

After this a connected event should be triggered when HPD=high at HPD
interrupt, and a disconnected event should be triggered when both
HPD=low and RX=low at either HPD or RX interrupt.

Fixes: da09daf88108 ("drm: bridge: dw_hdmi: only trigger hotplug event on link change")
Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # Rock64, RockPro64, Quartz64-B
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v7: No change
v6: Collect t-b tag
v5: No change
v4: Collect r-b tag
v3: Update commit message
v2: New patch
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index d3e6a6562870..b7bfc0e9a6b2 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -3157,7 +3157,8 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
 			mutex_unlock(&hdmi->cec_notifier_mutex);
 		}
 
-		if (phy_stat & HDMI_PHY_HPD)
+		if ((intr_stat & HDMI_IH_PHY_STAT0_HPD) &&
+		    (phy_stat & HDMI_PHY_HPD))
 			status = connector_status_connected;
 
 		if (!(phy_stat & (HDMI_PHY_HPD | HDMI_PHY_RX_SENSE)))
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
