Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58ECBCD3427
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 May 2026 12:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pudo5WdYOux376L5fyRR8unQBF1isQ5f+dVsP00rD30=; b=VJyzVaO6V6UJiK
	9Q2kpP/QBziqx3vbAK8sWsr4QwRER9Da4th0QRRd15ymZ1iM/ZA8NBCgVBNQJNuXwF9WjFvJKaEJq
	i4e92M8Tv+E08f/UYW6z70opwQu52WOrGfVsNjDpIDEYjqOia42KELjItor0m4zXVvn6V/WRZVGCr
	uSbUDn6u2wq/yXXzTI3/YW7KbGvciNitzw03WfoFEiB/tvQ1TNHOk6R1OunPyittX65wd7FJUeCJY
	r9TwRCzvZ2irdTDKs1gTTM8fIL7PB8nYulG2aIMuBUBIVV2I19TkbQpbtJy0aVENB1+WaBuvmGtct
	VRdtFt4JPVTpgd0r14lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3Vw-0000000Am60-0Bnh;
	Sun, 10 May 2026 12:44:08 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3Vr-0000000AlyV-0yjv
	for linux-rockchip@lists.infradead.org;
	Sun, 10 May 2026 12:44:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1778417043; bh=FWAD8SZSmBu3ljsgBzIEPn48TWjaPxPQR4qoFwmK3bU=;
 b=ukwpfmiDr2g0M03nWwf51m3fjNcb+3I742wUmcobKEPpoZUonIKTjl6Wcwoglmv+Er3/kQdzn
 xF0KQlhfQXoEpszTJRlBWoL8Qd6xwmr5V+rw1EY2SyJxBJY+kenCEKF5bHLK8AGJZpl7j+bqqw/
 vpqUWzfz0BczajyOQnc2PazzQozKaOFdDSReV8tPP710fi/58Yqs0S7Ghphvl6rc3k497DX21zC
 EHptQfcSB/m2jL7+azRHXpgl4eG76sM782VRoo4tlRnDwLjcPDC1fUN/2tUAdiYUDGlDb9kiCEV
 pP6XZbGHqAOTfoXsyPE7qqlO+/+7MTRUKPFOSiiDODbw==
X-Forward-Email-ID: 6a007d280d91f03a31a0bcaf
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
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
Subject: [PATCH v5 13/21] drm: bridge: dw_hdmi: Use display_info is_hdmi and has_audio
Date: Sun, 10 May 2026 12:40:57 +0000
Message-ID: <20260510124111.1226584-14-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260510124111.1226584-1-jonas@kwiboo.se>
References: <20260510124111.1226584-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_054403_276649_6C1EAEC5 
X-CRM114-Status: GOOD (  13.33  )
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

drm_edid_connector_update() is being called from bridge connector funcs
and from detect and force funcs for dw-hdmi connector.

Change to use is_hdmi and has_audio from display_info directly instead
of keeping our own state in sink_is_hdmi and sink_has_audio.

Also remove the old and unused edid struct member and related define.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v5: No change
v4: Collect r-b tag
v3: No change
v2: Collect r-b tag
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 32 ++++-------------------
 1 file changed, 5 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 006eaf3fb8cb..6fb21399f137 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -46,8 +46,6 @@
 #define DDC_CI_ADDR		0x37
 #define DDC_SEGMENT_ADDR	0x30
 
-#define HDMI_EDID_LEN		512
-
 /* DW-HDMI Controller >= 0x200a are at least compliant with SCDC version 1 */
 #define SCDC_MIN_SOURCE_VERSION	0x1
 
@@ -147,8 +145,6 @@ struct dw_hdmi {
 
 	int vic;
 
-	u8 edid[HDMI_EDID_LEN];
-
 	struct {
 		const struct dw_hdmi_phy_ops *ops;
 		const char *name;
@@ -158,8 +154,6 @@ struct dw_hdmi {
 
 	struct i2c_adapter *ddc;
 	void __iomem *regs;
-	bool sink_is_hdmi;
-	bool sink_has_audio;
 
 	struct pinctrl *pinctrl;
 	struct pinctrl_state *default_state;
@@ -2056,7 +2050,7 @@ static void hdmi_av_composer(struct dw_hdmi *hdmi,
 		HDMI_FC_INVIDCONF_IN_I_P_INTERLACED :
 		HDMI_FC_INVIDCONF_IN_I_P_PROGRESSIVE;
 
-	inv_val |= hdmi->sink_is_hdmi ?
+	inv_val |= display->is_hdmi ?
 		HDMI_FC_INVIDCONF_DVI_MODEZ_HDMI_MODE :
 		HDMI_FC_INVIDCONF_DVI_MODEZ_DVI_MODE;
 
@@ -2292,7 +2286,7 @@ static int dw_hdmi_poweron(struct dw_hdmi *hdmi,
 	if (hdmi->hdmi_data.enc_out_bus_format == MEDIA_BUS_FMT_FIXED)
 		hdmi->hdmi_data.enc_out_bus_format = MEDIA_BUS_FMT_RGB888_1X24;
 
-	hdmi->hdmi_data.rgb_limited_range = hdmi->sink_is_hdmi &&
+	hdmi->hdmi_data.rgb_limited_range = display->is_hdmi &&
 		drm_default_rgb_quant_range(mode) ==
 		HDMI_QUANTIZATION_RANGE_LIMITED;
 
@@ -2312,7 +2306,7 @@ static int dw_hdmi_poweron(struct dw_hdmi *hdmi,
 	/* HDMI Initialization Step B.3 */
 	dw_hdmi_enable_video_path(hdmi);
 
-	if (hdmi->sink_has_audio) {
+	if (display->has_audio) {
 		dev_dbg(hdmi->dev, "sink has audio support\n");
 
 		/* HDMI Initialization Step E - Configure audio */
@@ -2321,7 +2315,7 @@ static int dw_hdmi_poweron(struct dw_hdmi *hdmi,
 	}
 
 	/* not for DVI mode */
-	if (hdmi->sink_is_hdmi) {
+	if (display->is_hdmi) {
 		dev_dbg(hdmi->dev, "%s HDMI mode\n", __func__);
 
 		/* HDMI Initialization Step F - Configure AVI InfoFrame */
@@ -2435,29 +2429,13 @@ static const struct drm_edid *dw_hdmi_edid_read(struct dw_hdmi *hdmi,
 						struct drm_connector *connector)
 {
 	const struct drm_edid *drm_edid;
-	const struct edid *edid;
 
 	if (!hdmi->ddc)
 		return NULL;
 
 	drm_edid = drm_edid_read_ddc(connector, hdmi->ddc);
-	if (!drm_edid) {
+	if (!drm_edid)
 		dev_dbg(hdmi->dev, "failed to get edid\n");
-		return NULL;
-	}
-
-	/*
-	 * FIXME: This should use connector->display_info.is_hdmi and
-	 * connector->display_info.has_audio from a path that has read the EDID
-	 * and called drm_edid_connector_update().
-	 */
-	edid = drm_edid_raw(drm_edid);
-
-	dev_dbg(hdmi->dev, "got edid: width[%d] x height[%d]\n",
-		edid->width_cm, edid->height_cm);
-
-	hdmi->sink_is_hdmi = drm_detect_hdmi_monitor(edid);
-	hdmi->sink_has_audio = drm_detect_monitor_audio(edid);
 
 	return drm_edid;
 }
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
