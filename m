Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ED06CD4851
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 May 2026 18:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9CX9FBGshYcR3EZ9LB+bdIe7nLkJ2zz5o3ldn+tyzM=; b=Ikz7RkjXMACIuQ
	W8ZrMrp9kZHCEKpCA8cXpuLOAR1m8jR5IcpbEMYoxTjZarErSKlR0hvfjGFecV/wtIJb7J1kcs5P5
	WVPIOVzs73DMT9GJUOGPkTNdrdQWjEOwON4ENBVAB1KjYWtAjik3M7NON4SWazYk6EziS8nR+UWe3
	31CMbXeYcptMnAUJd5J/YPKcBngohnRIMnfqA4nch7N4qvazZ8YY/jvdAL7qSQvPwdmYGxRMyNwSB
	4sq6goSvw9NTX8G3ys5DPui7QNwZqCQVFo1d5T21OSW0qaZbUVf85MYeKQnOz3ZP/itDCu7CinxlN
	8aaCgiyTVAB3sLAgPdCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOJvg-0000000BG5R-0fLc;
	Sat, 16 May 2026 18:40:04 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOJvX-0000000BFnX-2tmW
	for linux-rockchip@lists.infradead.org;
	Sat, 16 May 2026 18:39:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1778956795; bh=kFmdEA7lLMUeMCYib0u0AXUGOtneg4blGy8SvPLQFtU=;
 b=tvPyjnEcEmKy8mgCeI5xfsyosQ0e+gAwv3fk/c+1HpaQGRYrsiDYj94h96ml8ZuHU/pm8Wnek
 4z6OYdRlAc7v01X/vhcwkjdcz+bImvxrOdxB+n1thtrOnzLtF9L0X6ZTCuFHTQUWmUMCWrXz7U0
 sjXTRlYsG4/tfIbQelZzJVZfSIDtgl9R3CW07psnKLn+rYK4k81SD1ji1QuHiZfqsLBXZwfU0mo
 MWrpIyAqxKjeL8hdLLSIcNTTWfnqckxbeV8ldfQy3CZGAFUsGn2G3rFZJooflyn4PVqfpGo10pn
 PWJcDjuL1vrbpOu70SlmCvX0N+xp3q5YM85RYYv5Q3Gg==
X-Forward-Email-ID: 6a08b9f479c7625f20eeeea4
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
Subject: [PATCH v6 15/22] drm: bridge: dw_hdmi: Declare bridge CEC notifier support
Date: Sat, 16 May 2026 18:38:25 +0000
Message-ID: <20260516183838.2024991-16-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260516183838.2024991-1-jonas@kwiboo.se>
References: <20260516183838.2024991-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260516_113955_889662_57013ED3 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
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

EDID and CEC phys addr is now being updated in bridge detect() func,
making it possible to have CEC notifier support using the bridge
connector.

Add the CEC notifier bridge op to instruct the bridge connector to make
use of the generic CEC notifier helpers.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v6: New patch
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 3649ccf8d994..1402b3963ae1 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -3537,6 +3537,9 @@ struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
 		pdevinfo.dma_mask = 0;
 
 		hdmi->cec = platform_device_register_full(&pdevinfo);
+
+		hdmi->bridge.ops |= DRM_BRIDGE_OP_HDMI_CEC_NOTIFIER;
+		hdmi->bridge.hdmi_cec_dev = hdmi->dev;
 	}
 
 	drm_bridge_add(&hdmi->bridge);
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
