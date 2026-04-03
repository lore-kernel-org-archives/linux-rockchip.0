Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F1C3D730A2
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Apr 2026 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IBRykXm6nc5FbP6pvEpCawnK+G3cc8Fmw//u5cdSEpw=; b=NvQzl6XDvKRuqz
	6smOI9dH1l7PjxQfJvM5+n9vOQi2H7VMwOWQgVtcVGVk6bKTX/yCMmRBXyr9YR7W71AFAdwONF4Qb
	677dQc2zh9kCbcrTkUs/lNL0oyPwRalrKe0SuPA5nTcGc2GWpaIfuwyFJz1E3+dzdo3klk06eCwRW
	Zk6oaqKjlcbHrrjQMlFpVnR8OBrktLTIrndotuyUZcGgiRU1F4d+7JwGSuqibShwMnIEX7vURjuUR
	X1Auw2JD85GvFkgLypgYF3++25kuT5lhRZriBq+DgGegfZfP2aQBbI5OJ/ej8eIx8Tt2cl9mlW0ef
	RK/ao/EVzWOPiQZ1eQqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8YWO-00000001Qi8-2Up8;
	Fri, 03 Apr 2026 07:00:48 +0000
Received: from mail-m15593.qiye.163.com ([101.71.155.93])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8YWL-00000001QfF-02fn;
	Fri, 03 Apr 2026 07:00:47 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 396d58c7b;
	Fri, 3 Apr 2026 15:00:38 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	wens@kernel.org,
	samuel@sholland.org,
	luca.ceresoli@bootlin.com
Cc: Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	victor.liu@nxp.com,
	dmitry.baryshkov@oss.qualcomm.com,
	shengjiu.wang@nxp.com,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v1 2/4] drm/bridge: dw-hdmi: Allow &dw_hdmi_plat_data.output_port = 0 without DRM_BRIDGE_ATTACH_NO_CONNECTOR
Date: Fri,  3 Apr 2026 15:00:30 +0800
Message-Id: <20260403070032.447102-3-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260403070032.447102-1-damon.ding@rock-chips.com>
References: <20260403070032.447102-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9d5224d3e103a3kunm1d6b6bc811de8c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh4eHVZDSBpJSE8YT09PSkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=a3czWbbNA5bRxbuC+yj8HGXru+0VhED5jHr8yHMEfFFY6t7unzRDodHsLfmDyeRad9b/QdfUJzGJ3Smi7907Aro4Xl9VnWC2+x1KmIVJCb0ntGB2hpB9P/2tQukCKhE58S7ylyU2NlUI9MJ1OAzPunQBSCUK+B3nNmdoWub9CRQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=7YFq+k4oWEJWI7D226Mei8EZK2WhHcRNVgZytreS/T0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260403_000045_634559_F293956A 
X-CRM114-Status: GOOD (  11.00  )
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

In the previous commit, Luca split the dw-hdmi attach process into two
cases:

 A. hdmi->plat_data->output_port = 0:
    the HDMI output (port@1) in device tree is not used

 B. hdmi->plat_data->output_port = 1:
    the HDMI output (port@1) is parsed to find the next bridge

For Rockchip, many older platforms (RK3288, RK3399, etc.) only support
case A by default. They can support DRM_BRIDGE_ATTACH_NO_CONNECTOR flag
after adapting to the bridge connector helper. Relax this constraint in
preparation for Rockchip dw-hdmi bridge-connector adaptation.

Link: https://lore.kernel.org/all/20260402-drm-lcdif-dbanc-v3-6-27cd247a0847@bootlin.com/
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index dd50dda3a4f5..20b2f9e145b0 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2912,9 +2912,8 @@ static int dw_hdmi_bridge_attach(struct drm_bridge *bridge,
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
 
-	/* DRM_BRIDGE_ATTACH_NO_CONNECTOR requires a remote-endpoint to the next bridge */
-	if (WARN_ON((flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR) && !hdmi->plat_data->output_port))
-		return -EINVAL;
+	if ((flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR) && !hdmi->plat_data->output_port)
+		return 0;
 
 	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR) {
 		struct device_node *remote __free(device_node) =
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
