Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7498C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 11:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ob3B2VBcexfeXeXJSiWxw635wXmqjs1jOQbqinmihw=; b=Hib6aKfpAgM/Tl
	47bjwScRR1K+l48aSK37OkrFq82Fx+JegWercQO2P0NPT4smLcuNpIZ5gAGiJa43H6IdKLu+bjxPK
	h7QUr7qmhNBU86Q/ph0+mXsfPLZvvORPzIzgZSn97FfjvbtRiEHev5c9V5nv+Z4DQdFw9wPsiQALk
	+P3w+qyWbjcOVCyVP34p1nlXC1CJfvAiU9aUtimv1oD5URWNSBQFkpNUEDu7IexvXW8Xaqs6wTYj9
	KHiFXrQplb6ZtvPGY5SET3VODM+5S/OTGDJb7QPNTQJaLlelsj8qLDc8d2FhDzmzOjFMlQtSaE8rF
	Og3MG6yO+BE/pCMqGwaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA74y-000000066ny-16SJ;
	Thu, 23 May 2024 11:57:52 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA74t-000000066n4-0zAk;
	Thu, 23 May 2024 11:57:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=QUBdeNRrqL3ceUPSW4Z5zFtbKSu0/iOTGYlKYtiJ5Bc=; b=Y
	mfSnQudUvoYAM5n1Am5P0u1QK10sQst9odx17lBPeEB2NPJ0E17nCkYX9PriYs3O
	QLtBXXs68TVtsBT+1+Ut+//zI5u54bcPhuco8kgJgAfJP6/NvSBIwYq/1/MRBnnd
	38nzflE1v38bhKybHZcrMgtXuBoTtnjmFudimVBKXg=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-140 (Coremail) ; Thu, 23 May 2024 19:56:59 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 23 May 2024 19:56:59 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Maxime Ripard" <mripard@kernel.org>
Cc: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, 
	"Thomas Zimmermann" <tzimmermann@suse.de>, 
	"David Airlie" <airlied@gmail.com>, 
	"Daniel Vetter" <daniel@ffwll.ch>, 
	"Jonathan Corbet" <corbet@lwn.net>, 
	"Sandy Huang" <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	"Chen-Yu Tsai" <wens@csie.org>, 
	"Jernej Skrabec" <jernej.skrabec@gmail.com>, 
	"Samuel Holland" <samuel@sholland.org>, 
	"Andy Yan" <andy.yan@rock-chips.com>, 
	"Hans Verkuil" <hverkuil@xs4all.nl>, 
	"Sebastian Wick" <sebastian.wick@redhat.com>, 
	=?UTF-8?Q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	"Sui Jingfeng" <sui.jingfeng@linux.dev>
Subject: Re:[PATCH v14 28/28] drm/sun4i: hdmi: Switch to HDMI connector
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-28-51950db4fedb@kernel.org>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-28-51950db4fedb@kernel.org>
X-NTES-SC: AL_Qu2aBPidukwq7yOZbekZnEobh+Y5UcK2s/ki2YFXN5k0hyXJ/ikYenh9A3Hv6sSAAhCNtx+aahdTwOZ2U4pBc5o4Re+fnzEqpvtIdRLck0ih
MIME-Version: 1.0
Message-ID: <3ad87b41.a48f.18fa54fc43e.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: _____wD3H+8LL09mdFlDAA--.13596W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMwDnXmXAlZIk2wADsU
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_045747_777383_B76FFB7A 
X-CRM114-Status: GOOD (  13.67  )
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


Hi Maxime,

At 2024-05-21 18:14:01, "Maxime Ripard" <mripard@kernel.org> wrote:
>The new HDMI connector infrastructure allows to remove some boilerplate,
>especially to generate infoframes. Let's switch to it.
>
>Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>
>Acked-by: Sui Jingfeng <sui.jingfeng@linux.dev>
>Signed-off-by: Maxime Ripard <mripard@kernel.org>

Reviewed-by: Andy Yan <andyshrk@163.com>
>---
> drivers/gpu/drm/sun4i/Kconfig          |  3 ++
> drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c | 81 +++++++++++++++++++++-------------
> 2 files changed, 54 insertions(+), 30 deletions(-)
>
>diff --git a/drivers/gpu/drm/sun4i/Kconfig b/drivers/gpu/drm/sun4i/Kconfig
>index 4741d9f6544c..4037e085430e 100644
>--- a/drivers/gpu/drm/sun4i/Kconfig
>+++ b/drivers/gpu/drm/sun4i/Kconfig
>@@ -16,10 +16,13 @@ config DRM_SUN4I
> if DRM_SUN4I
> 
> config DRM_SUN4I_HDMI
> 	tristate "Allwinner A10/A10s/A20/A31 HDMI Controller Support"
> 	depends on ARM || COMPILE_TEST
>+	select DRM_DISPLAY_HDMI_HELPER
>+	select DRM_DISPLAY_HDMI_STATE_HELPER
>+	select DRM_DISPLAY_HELPER
> 	default DRM_SUN4I
> 	help
> 	  Choose this option if you have an Allwinner A10/A10s/A20/A31
> 	  SoC with an HDMI controller.
> 
>diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
>index 1c6cda2bfb14..0e652dd480c9 100644
>--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
>+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
>@@ -38,34 +38,28 @@
> 	container_of_const(e, struct sun4i_hdmi, encoder)
> 
> #define drm_connector_to_sun4i_hdmi(c)		\
> 	container_of_const(c, struct sun4i_hdmi, connector)
> 
>-static int sun4i_hdmi_setup_avi_infoframes(struct sun4i_hdmi *hdmi,
>-					   struct drm_display_mode *mode)
>+static int sun4i_hdmi_write_infoframe(struct drm_connector *connector,
>+				      enum hdmi_infoframe_type type,
>+				      const u8 *buffer, size_t len)
> {
>-	struct hdmi_avi_infoframe frame;
>-	u8 buffer[17];
>-	int i, ret;
>+	struct sun4i_hdmi *hdmi = drm_connector_to_sun4i_hdmi(connector);
>+	int i;
> 
>-	ret = drm_hdmi_avi_infoframe_from_display_mode(&frame,
>-						       &hdmi->connector, mode);
>-	if (ret < 0) {
>-		DRM_ERROR("Failed to get infoframes from mode\n");
>-		return ret;
>+	if (type != HDMI_INFOFRAME_TYPE_AVI) {
>+		drm_err(connector->dev,
>+			"Unsupported infoframe type: %u\n", type);
>+		return 0;
> 	}
> 
>-	ret = hdmi_avi_infoframe_pack(&frame, buffer, sizeof(buffer));
>-	if (ret < 0) {
>-		DRM_ERROR("Failed to pack infoframes\n");
>-		return ret;
>-	}
>-
>-	for (i = 0; i < sizeof(buffer); i++)
>+	for (i = 0; i < len; i++)
> 		writeb(buffer[i], hdmi->base + SUN4I_HDMI_AVI_INFOFRAME_REG(i));
> 
> 	return 0;
>+
> }
> 
> static void sun4i_hdmi_disable(struct drm_encoder *encoder,
> 			       struct drm_atomic_state *state)
> {
>@@ -84,18 +78,22 @@ static void sun4i_hdmi_disable(struct drm_encoder *encoder,
> static void sun4i_hdmi_enable(struct drm_encoder *encoder,
> 			      struct drm_atomic_state *state)
> {
> 	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
> 	struct sun4i_hdmi *hdmi = drm_encoder_to_sun4i_hdmi(encoder);
>-	struct drm_display_info *display = &hdmi->connector.display_info;
>+	struct drm_connector *connector = &hdmi->connector;
>+	struct drm_display_info *display = &connector->display_info;
>+	struct drm_connector_state *conn_state =
>+		drm_atomic_get_new_connector_state(state, connector);
>+	unsigned long long tmds_rate = conn_state->hdmi.tmds_char_rate;
> 	unsigned int x, y;
> 	u32 val = 0;
> 
> 	DRM_DEBUG_DRIVER("Enabling the HDMI Output\n");
> 
>-	clk_set_rate(hdmi->mod_clk, mode->crtc_clock * 1000);
>-	clk_set_rate(hdmi->tmds_clk, mode->crtc_clock * 1000);
>+	clk_set_rate(hdmi->mod_clk, tmds_rate);
>+	clk_set_rate(hdmi->tmds_clk, tmds_rate);
> 
> 	/* Set input sync enable */
> 	writel(SUN4I_HDMI_UNKNOWN_INPUT_SYNC,
> 	       hdmi->base + SUN4I_HDMI_UNKNOWN_REG);
> 
>@@ -144,11 +142,12 @@ static void sun4i_hdmi_enable(struct drm_encoder *encoder,
> 
> 	writel(val, hdmi->base + SUN4I_HDMI_VID_TIMING_POL_REG);
> 
> 	clk_prepare_enable(hdmi->tmds_clk);
> 
>-	sun4i_hdmi_setup_avi_infoframes(hdmi, mode);
>+	drm_atomic_helper_connector_hdmi_update_infoframes(connector, state);
>+
> 	val |= SUN4I_HDMI_PKT_CTRL_TYPE(0, SUN4I_HDMI_PKT_AVI);
> 	val |= SUN4I_HDMI_PKT_CTRL_TYPE(1, SUN4I_HDMI_PKT_END);
> 	writel(val, hdmi->base + SUN4I_HDMI_PKT_CTRL_REG(0));
> 
> 	val = SUN4I_HDMI_VID_CTRL_ENABLE;
>@@ -197,23 +196,26 @@ static int sun4i_hdmi_connector_atomic_check(struct drm_connector *connector,
> 	struct drm_crtc_state *crtc_state = crtc->state;
> 	struct drm_display_mode *mode = &crtc_state->adjusted_mode;
> 	enum drm_mode_status status;
> 
> 	status = sun4i_hdmi_connector_clock_valid(connector, mode,
>-						  mode->clock * 1000);
>+						  conn_state->hdmi.tmds_char_rate);
> 	if (status != MODE_OK)
> 		return -EINVAL;
> 
> 	return 0;
> }
> 
> static enum drm_mode_status
> sun4i_hdmi_connector_mode_valid(struct drm_connector *connector,
> 				struct drm_display_mode *mode)
> {
>-	return sun4i_hdmi_connector_clock_valid(connector, mode,
>-						mode->clock * 1000);
>+	unsigned long long rate =
>+		drm_connector_hdmi_compute_mode_clock(mode, 8,
>+						      HDMI_COLORSPACE_RGB);
>+
>+	return sun4i_hdmi_connector_clock_valid(connector, mode, rate);
> }
> 
> static int sun4i_hdmi_get_modes(struct drm_connector *connector)
> {
> 	struct sun4i_hdmi *hdmi = drm_connector_to_sun4i_hdmi(connector);
>@@ -259,10 +261,15 @@ static struct i2c_adapter *sun4i_hdmi_get_ddc(struct device *dev)
> 		return ERR_PTR(-EPROBE_DEFER);
> 
> 	return ddc;
> }
> 
>+static const struct drm_connector_hdmi_funcs sun4i_hdmi_hdmi_connector_funcs = {
>+	.tmds_char_rate_valid	= sun4i_hdmi_connector_clock_valid,
>+	.write_infoframe	= sun4i_hdmi_write_infoframe,
>+};
>+
> static const struct drm_connector_helper_funcs sun4i_hdmi_connector_helper_funcs = {
> 	.atomic_check	= sun4i_hdmi_connector_atomic_check,
> 	.mode_valid	= sun4i_hdmi_connector_mode_valid,
> 	.get_modes	= sun4i_hdmi_get_modes,
> };
>@@ -280,15 +287,20 @@ sun4i_hdmi_connector_detect(struct drm_connector *connector, bool force)
> 	}
> 
> 	return connector_status_connected;
> }
> 
>+static void sun4i_hdmi_connector_reset(struct drm_connector *connector)
>+{
>+	drm_atomic_helper_connector_reset(connector);
>+	__drm_atomic_helper_connector_hdmi_reset(connector, connector->state);
>+}
>+
> static const struct drm_connector_funcs sun4i_hdmi_connector_funcs = {
> 	.detect			= sun4i_hdmi_connector_detect,
> 	.fill_modes		= drm_helper_probe_single_connector_modes,
>-	.destroy		= drm_connector_cleanup,
>-	.reset			= drm_atomic_helper_connector_reset,
>+	.reset			= sun4i_hdmi_connector_reset,
> 	.atomic_duplicate_state	= drm_atomic_helper_connector_duplicate_state,
> 	.atomic_destroy_state	= drm_atomic_helper_connector_destroy_state,
> };
> 
> #ifdef CONFIG_DRM_SUN4I_HDMI_CEC
>@@ -643,14 +655,23 @@ static int sun4i_hdmi_bind(struct device *dev, struct device *master,
> 	       hdmi->base + SUN4I_HDMI_CEC);
> #endif
> 
> 	drm_connector_helper_add(&hdmi->connector,
> 				 &sun4i_hdmi_connector_helper_funcs);
>-	ret = drm_connector_init_with_ddc(drm, &hdmi->connector,
>-					  &sun4i_hdmi_connector_funcs,
>-					  DRM_MODE_CONNECTOR_HDMIA,
>-					  hdmi->ddc_i2c);
>+	ret = drmm_connector_hdmi_init(drm, &hdmi->connector,
>+				       /*
>+					* NOTE: Those are likely to be
>+					* wrong, but I couldn't find the
>+					* actual ones in the BSP.
>+					*/
>+				       "AW", "HDMI",
>+				       &sun4i_hdmi_connector_funcs,
>+				       &sun4i_hdmi_hdmi_connector_funcs,
>+				       DRM_MODE_CONNECTOR_HDMIA,
>+				       hdmi->ddc_i2c,
>+				       BIT(HDMI_COLORSPACE_RGB),
>+				       8);
> 	if (ret) {
> 		dev_err(dev,
> 			"Couldn't initialise the HDMI connector\n");
> 		goto err_cleanup_connector;
> 	}
>
>-- 
>2.45.0
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
