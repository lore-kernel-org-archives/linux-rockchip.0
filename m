Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C5A0CD4F3C
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 18:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ari4cffJwzEQ9ncEaAOtTt9k3r31j4ZBre6JKJLviQc=; b=z3fQaiWxFjaWsY
	1LBiScSA7BqFOQ5Xl5LBrHEoC/OU2pL+3RX9GCC4uWl8q+lBBR5/M50k7Pcz4WuI8leqAUqP35LR7
	nkKcjDUFEf29y78+mVh3v8mQl7Mqhr0cHUb5nStT3Tm13d+TtxTv8rUIsKqUlSMgYhMPH+Zcje60K
	uC3TBqa3+Bef5VIhQnRcQKyKb7B+yG4QuoyUPqbo798d9UA9mv9aCjSFwmcHDxUN/iADVbVAxf071
	xyRxbjFvUIXZK1ukhw7U5FvC0yN9rPLRcZ9pV7o49q8GB3pboPm15VoK4aFDYI+yWO0ssqhBPoCTE
	pQbi4sB71Pzf2uL1VZPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2JW-0000000GUGX-0oU7;
	Mon, 18 May 2026 18:03:38 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2JP-0000000GU2c-2xKp
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 18:03:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779127411; bh=HKqZrWH/mIENot9S0r7SqDZlavFSRVbiuTr0NBVKdNk=;
 b=l8eHPFv0TmAuE5YrdT6n7leBO/3MCxmMkzPr36OOoa1EzoHVYffsNv0dQlT0TKPqgq9J+RieA
 voIrVa76jwrzVHpqGbBDhpdcUB0VeJ0rHtjJoVtdyIBFidSgOmLtCTKrEbFGnkwSQOlWhQjeoS6
 eXbyZqFvpL1sfchRxuS79+Cv2qzRa8SM/U/KTqTEGHK3SWJi5lJNiFBRkX2FvqwO0/wvi9t0Rb0
 IOpYafFlN11d8K3pRJLAQOLNqBGf55Vh71ri4VW+7qqbPlcGhryaujlHvYRIQlXJnOU4nX5BZXn
 UFX2+phIfONpO3FnAzZDCcDGBDg26kGSQ8+NoGJs58Gw==
X-Forward-Email-ID: 6a0b546eb84dbc72d2274f74
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
Subject: [PATCH v7 17/23] drm: bridge: dw_hdmi: Declare bridge CEC notifier support
Date: Mon, 18 May 2026 18:01:53 +0000
Message-ID: <20260518180206.2480119-18-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518180206.2480119-1-jonas@kwiboo.se>
References: <20260518180206.2480119-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_110331_893996_9DADE127 
X-CRM114-Status: UNSURE (   8.61  )
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
v7: Only declare CEC notifier support when CEC device register succeeds
v6: New patch
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 0c4388e7aa5e..5dacb8a99715 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -3515,6 +3515,10 @@ struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
 		pdevinfo.dma_mask = 0;
 
 		hdmi->cec = platform_device_register_full(&pdevinfo);
+		if (!IS_ERR(hdmi->cec)) {
+			hdmi->bridge.ops |= DRM_BRIDGE_OP_HDMI_CEC_NOTIFIER;
+			hdmi->bridge.hdmi_cec_dev = hdmi->dev;
+		}
 	}
 
 	drm_bridge_add(&hdmi->bridge);
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
