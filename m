Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37B6AC10F1A
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 May 2024 08:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xBkqZDm18gp4YK/aK2Hqbawbq+zwgiMGL48rVBdMK0=; b=T9bfoC92MT03Av
	ieFwutkAUHUsQeAz1dxxbF9Cw9Xk17XZXLcpX+tKvyjpvPgHdYHtNxDzC8iNLjVLOJYDFcJLvTWG0
	R/qJOsKxg/UQ9go2enY0hRjTZ+LAEZdDHbMS6tPVRSTwF2GtH0ecsmulu46g7LenSWb0JrmPEl99M
	F60yhVUx2mFmEnUmFJWp78eqftnIkNwVVTiELy98x2J6ZxFLM9SXrXekobu016kPvVAURdzaS+vJC
	KMGRdv1Kdh3Gbx1sS88DNVK8pToydnzFaGAdwGCaU9N22STkp4FbA7WFh9XuizxB3aX0qmRmWmwu/
	oIEtdxxbf3CE4Ol1tKAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s64bS-00000009Zwy-380y;
	Sun, 12 May 2024 08:30:42 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s64bN-00000009Zsd-1q81;
	Sun, 12 May 2024 08:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=laQYefkku3gVwt8bMMDsCuBt7YXFxaCqejXoM5vQ4W4=; b=Z
	IjDaLCEaRuCWq3ETlfqalEf5VujhfSfQvhODF3naoLI/papZfPOAhb1wAS3CAThi
	Wi1m75Un/rkdoQcN9IUPPE/sIRIWczncmigVlG0JhAVX/66TGvXm5czyNNWV2otW
	09oO6eykb+hcVJfAFMJuAgW94d1vAvsmeaGkZxq3pI=
Received: from andyshrk$163.com ( [103.29.142.67] ) by
 ajax-webmail-wmsvr-40-121 (Coremail) ; Sun, 12 May 2024 16:29:47 +0800
 (CST)
X-Originating-IP: [103.29.142.67]
Date: Sun, 12 May 2024 16:29:47 +0800 (CST)
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
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re:[PATCH v13 27/28] drm/rockchip: inno_hdmi: Switch to HDMI
 connector
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <20240507-kms-hdmi-connector-state-v13-27-8fafc5efe8be@kernel.org>
References: <20240507-kms-hdmi-connector-state-v13-0-8fafc5efe8be@kernel.org>
 <20240507-kms-hdmi-connector-state-v13-27-8fafc5efe8be@kernel.org>
X-NTES-SC: AL_Qu2aB/mbvU0j4SKaYukZnEobh+Y5UcK2s/ki2YFXN5k0kiTIwAsfYWZeB3v3zsWCGgGlqQGVcDpD0Pp9R4t8TZkAHubVysdUlb/POX51X+YZ
MIME-Version: 1.0
Message-ID: <2d3073ce.16e2.18f6bec1d61.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: _____wD338T7fUBmWJopAA--.47081W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEBzcXmVOD6eJvQADs6
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240512_013037_886678_E2AA15C4 
X-CRM114-Status: GOOD (  15.10  )
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

At 2024-05-07 21:17:45, "Maxime Ripard" <mripard@kernel.org> wrote:
>The new HDMI connector infrastructure allows to remove some boilerplate,
>especially to generate infoframes. Let's switch to it.
>
>Reviewed-by: Heiko Stuebner <heiko@sntech.de>
>Acked-by: Heiko Stuebner <heiko@sntech.de>
>Signed-off-by: Maxime Ripard <mripard@kernel.org>
>---
> drivers/gpu/drm/rockchip/Kconfig       |   3 +
> drivers/gpu/drm/rockchip/inno_hdmi.c   | 153 ++++++++++++---------------------
> drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c |   3 +
> 3 files changed, 61 insertions(+), 98 deletions(-)
>
>diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
>index 1bf3e2829cd0..7df875e38517 100644
>--- a/drivers/gpu/drm/rockchip/Kconfig
>+++ b/drivers/gpu/drm/rockchip/Kconfig
>@@ -72,10 +72,13 @@ config ROCKCHIP_DW_MIPI_DSI
> 	  enable MIPI DSI on RK3288 or RK3399 based SoC, you should
> 	  select this option.
> 
> config ROCKCHIP_INNO_HDMI
> 	bool "Rockchip specific extensions for Innosilicon HDMI"
>+	select DRM_DISPLAY_HDMI_HELPER
>+	select DRM_DISPLAY_HDMI_STATE_HELPER
>+	select DRM_DISPLAY_HELPER
> 	help
> 	  This selects support for Rockchip SoC specific extensions
> 	  for the Innosilicon HDMI driver. If you want to enable
> 	  HDMI on RK3036 based SoC, you should select this option.
> 
>diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
>index 3df2cfcf9998..5069403c3b80 100644
>--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
>+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
>@@ -20,10 +20,13 @@
> #include <drm/drm_edid.h>
> #include <drm/drm_of.h>
> #include <drm/drm_probe_helper.h>
> #include <drm/drm_simple_kms_helper.h>
> 
>+#include <drm/display/drm_hdmi_helper.h>
>+#include <drm/display/drm_hdmi_state_helper.h>
>+
......
> 
> static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
> {
> 	struct drm_connector *connector = &hdmi->connector;
> 	struct drm_connector_state *conn_state = connector->state;
>@@ -359,12 +323,12 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
> 	value = v_VIDEO_INPUT_BITS(VIDEO_INPUT_8BITS) |
> 		v_VIDEO_OUTPUT_COLOR(0) |
> 		v_VIDEO_INPUT_CSP(0);
> 	hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL2, value);
> 
>-	if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_RGB) {
>-		if (inno_conn_state->rgb_limited_range) {
>+	if (conn_state->hdmi.output_format == HDMI_COLORSPACE_RGB) {
>+		if (conn_state->hdmi.is_limited_range) {
> 			csc_mode = CSC_RGB_0_255_TO_RGB_16_235_8BIT;
> 			auto_csc = AUTO_CSC_DISABLE;
> 			c0_c2_change = C0_C2_CHANGE_DISABLE;
> 			csc_enable = v_CSC_ENABLE;
> 
>@@ -378,18 +342,18 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
> 				  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
> 			return 0;
> 		}
> 	} else {
> 		if (inno_conn_state->colorimetry == HDMI_COLORIMETRY_ITU_601) {
>-			if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV444) {
>+			if (conn_state->hdmi.output_format == HDMI_COLORSPACE_YUV444) {
> 				csc_mode = CSC_RGB_0_255_TO_ITU601_16_235_8BIT;
> 				auto_csc = AUTO_CSC_DISABLE;
> 				c0_c2_change = C0_C2_CHANGE_DISABLE;
> 				csc_enable = v_CSC_ENABLE;
> 			}
> 		} else {
>-			if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV444) {
>+			if (conn_state->hdmi.output_format == HDMI_COLORSPACE_YUV444) {
> 				csc_mode = CSC_RGB_0_255_TO_ITU709_16_235_8BIT;
> 				auto_csc = AUTO_CSC_DISABLE;
> 				c0_c2_change = C0_C2_CHANGE_DISABLE;
> 				csc_enable = v_CSC_ENABLE;
> 			}
>@@ -460,14 +424,16 @@ static int inno_hdmi_config_video_timing(struct inno_hdmi *hdmi,
> 
> 	return 0;
> }
> 
> static int inno_hdmi_setup(struct inno_hdmi *hdmi,
>-			   struct drm_display_mode *mode)
>+			   struct drm_crtc_state *new_crtc_state,
>+			   struct drm_connector_state *new_conn_state)
> {
>-	struct drm_display_info *display = &hdmi->connector.display_info;
>-	unsigned long mpixelclock = mode->clock * 1000;
>+	struct drm_connector *connector = &hdmi->connector;
>+	struct drm_display_info *display = &connector->display_info;
>+	struct drm_display_mode *mode = &new_crtc_state->adjusted_mode;
> 
> 	/* Mute video and audio output */
> 	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
> 		  v_AUDIO_MUTE(1) | v_VIDEO_MUTE(1));
> 
>@@ -477,26 +443,26 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
> 
> 	inno_hdmi_config_video_timing(hdmi, mode);
> 
> 	inno_hdmi_config_video_csc(hdmi);
> 
>-	if (display->is_hdmi)
>-		inno_hdmi_config_video_avi(hdmi, mode);
>+	drm_atomic_helper_connector_hdmi_update_infoframes(connector,
>+							   new_conn_state->state);
> 

new_conn_state->state will be set NULL in drm_atomic_helper_swap_state,
so this will cause a NULL pointer reference panic here.


> 	/*
> 	 * When IP controller have configured to an accurate video
> 	 * timing, then the TMDS clock source would be switched to
> 	 * DCLK_LCDC, so we need to init the TMDS rate to mode pixel
> 	 * clock rate, and reconfigure the DDC clock.
> 	 */
>-	inno_hdmi_i2c_init(hdmi, mpixelclock);
>+	inno_hdmi_i2c_init(hdmi, new_conn_state->hdmi.tmds_char_rate);
> 
> 	/* Unmute video and audio output */
> 	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
> 		  v_AUDIO_MUTE(0) | v_VIDEO_MUTE(0));
> 
>-	inno_hdmi_power_up(hdmi, mpixelclock);
>+	inno_hdmi_power_up(hdmi, new_conn_state->hdmi.tmds_char_rate);
> 
> 	return 0;
> }
> 

>-- 
>2.45.0
>
>
>_______________________________________________
>linux-arm-kernel mailing list
>linux-arm-kernel@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
