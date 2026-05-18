Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BB41CD4F3C
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 18:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASfE9gnZ2CdidtCECFRtaRHbc6THDuUUja0bZmDowhg=; b=LUGJkWQremeJOc
	C3dWOWHDEY0tBDtZGQSfYgRfFCGNk3eSIRMHkbYY94pmLdNiU/lI/DfPTw2z85Pa3CNWsNf/cmbG8
	AUEHyhEsVWxTab2JpYvRpCAabA8aHjwBzkh4jfkgcSRCDZq3h8yGuqevhbvztuq9IVenPDL7TeyP+
	wWkKr63jx8TxkShtsJE/fYjgPiJCVsSEsdRRgyWoWowXpGhkBlaEBUVejVEi2Wt7oDO8xkjfgqUax
	mz9Y7l2lpPaW5VstxqZWxmBRjWHWGzT4XzE5lZ6EZOwWfbtnoa4gXKcx9gH0HUj+ljxbeslDtN9fj
	1MqAM0juVHg/d+R7hbPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2Ih-0000000GStQ-3eRx;
	Mon, 18 May 2026 18:02:47 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2Id-0000000GSlt-1Qfh
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 18:02:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779127362; bh=XfdOVcCGyUBMZGBHIeMbtLWfoogDufTONgzIIn0zATo=;
 b=GBhhLOfun4M0j8rzAfwtKGj0AAxZVqnwaB8aBe7c/cK9T/MTJOEHUC289MhiETlJumF4RbTDz
 2dVsmBMyvJnVmstFa5zffhbjJdr8CNW6Js5AUFApaKdRxxszZbdWbKl9p36Uw0iwdVXL5fQJUhM
 f9m4tdzHr5QLmHWMtZsL369wXDLQytOSTbPFW0jLW/Es41tH/rPUYxOXIgnrDMe4YS9236vxA8k
 4MCwjwDpA64LEI8pr78Ukn2xHUnDLuZEzDNv+p1myc1jJhx6B7bRES10u6SVMm5ko/6HcxBOhwq
 prv4GlyWYWm45jSJOPtYdUsK0ph+1UklEjhuli+mGOQw==
X-Forward-Email-ID: 6a0b543fb84dbc72d2274e36
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
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
Subject: [PATCH v7 06/23] drm: bridge: dw_hdmi: Use passed mode instead of stored previous_mode
Date: Mon, 18 May 2026 18:01:42 +0000
Message-ID: <20260518180206.2480119-7-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518180206.2480119-1-jonas@kwiboo.se>
References: <20260518180206.2480119-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_110243_470029_7485C593 
X-CRM114-Status: UNSURE (   9.74  )
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

Use the passed mode instead of mixing use of passed mode and the stored
previous_mode in dw_hdmi_setup(). The passed mode is currenly always the
previous_mode.

Also fix a small typo and add a variable to help shorten a code line.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # Rock64, RockPro64, Quartz64-B
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v7: No change
v6: Collect t-b tag
v5: No change
v4: No change
v3: Collect r-b tag
v2: Update commit message, s/type/typo/
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 8bec9b5cd803..7a9b4a7e9cbf 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2258,6 +2258,7 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi,
 			 const struct drm_connector *connector,
 			 const struct drm_display_mode *mode)
 {
+	const struct drm_display_info *display = &connector->display_info;
 	int ret;
 
 	hdmi_disable_overflow_interrupts(hdmi);
@@ -2303,12 +2304,10 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi,
 	hdmi->hdmi_data.video_mode.mdataenablepolarity = true;
 
 	/* HDMI Initialization Step B.1 */
-	hdmi_av_composer(hdmi, &connector->display_info, mode);
+	hdmi_av_composer(hdmi, display, mode);
 
-	/* HDMI Initializateion Step B.2 */
-	ret = hdmi->phy.ops->init(hdmi, hdmi->phy.data,
-				  &connector->display_info,
-				  &hdmi->previous_mode);
+	/* HDMI Initialization Step B.2 */
+	ret = hdmi->phy.ops->init(hdmi, hdmi->phy.data, display, mode);
 	if (ret)
 		return ret;
 	hdmi->phy.enabled = true;
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
