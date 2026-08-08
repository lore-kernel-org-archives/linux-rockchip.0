Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F2E4C55174
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Aug 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOmhSAxGRyY3GQ2pDu//9h8RkwSzvaASYzHjp9JdctU=; b=NThS/GoGtmBOMl
	JvAHfbKTVhNfjgy/TP6Bmsw2pDHISZp/zBKH+LiiP7V0JCJNeDhvNYlKJXC+aArEUFF4f+aLox0Uh
	4dKVRM9vJBbJ6gleSYb2oh1kBS9PnSEcaBtrz0gV+Te59Ll72jtw/ja4EnYmVJ+POGVJoQz/mWD/L
	nggUfvBFviJsomPTfHpQrRd929z0XZB5ADFMbOGNtIBNx0dEPYMOxfbG+XTSDRZJZ/mAw1dgl1ViL
	xwcDEanwRMezeI46AccQxvc+LY2w2c2Nv6YV0fLlSRwlczeAcWX5ub2PTPej6V+Rbn3l/27NLw1oY
	Dy9bLoIVI/pQmKNTdT/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdp1-00000009F9v-15MR;
	Sat, 08 Aug 2026 09:58:31 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdoz-00000009F48-0tap
	for linux-rockchip@lists.infradead.org;
	Sat, 08 Aug 2026 09:58:30 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-47fe45db360so32593f8f.2
        for <linux-rockchip@lists.infradead.org>; Sat, 08 Aug 2026 02:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786183107; x=1786787907; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eukZ4Yw0lPupGVKUZsE6QR5EVi6K7EEsCGMJTKxA3Qg=;
        b=tBh2zq5w+fz9J1uch4ubzAau0xb04PtWz09xsQev3UicjzORiRJ1F4lSU89Bhh4FrT
         /eghy2Zk8mjhrMIcPJvqUELVc8GDqOyxR/dtDogmhKVG+0yWKPAhjQcU0SBQmMq8vXah
         E/7XdemhzC8d/xm8C4VEh4nAy4dWGJF2jU30x7e120yg7cbnk7CkY584W5H44J8Q9PbZ
         O+5Hy8c9E4HfqNrnDf0pj/MAwOgZYor3rzlmRwSnHyi9qjR7olMCZuSgo+yagNsijyxN
         Wuhy0Wmun80N25t9TGUmI5Ed61l4NMBhlc8tA0zfmkXrX/9z0oVcO0UqEyTz0NYP3rv1
         Wq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786183107; x=1786787907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=eukZ4Yw0lPupGVKUZsE6QR5EVi6K7EEsCGMJTKxA3Qg=;
        b=tY7nfW1nsanS0iaZGyHSJlOAqiLCGXV24+4uwonUbmVSBl4dlR36PEDXn27m9gBcuk
         rNHK1ol08keFCuZRlrEmRM0h4GnnH3GUAOJ9ungqbhLXkStFPtS7tSUlnpEFN7uDH+Sj
         cvp2/f3rJAeZg0FBgxTjQnTh3eUGIe+/+K4HL7NHl4+DPGtrngjUC79Efry57GsHXBN2
         4dasPnbhVoR9uzuM5BxBdgN4xpwQ7/WM1B9035dqGwWSLG/oshXjAVR/TB1I6gJiWNfH
         rrLYOYJ0/ZTtEsROwyPt2iOI4+sX0qLZHPF7xdH5RrhM+4c4Qf/jtIrZEhVMdYDtGcY2
         0QNA==
X-Forwarded-Encrypted: i=1; AHgh+Rpbkb8dSqvQdSty0Q3F53XFPRKohjY7ESoKquVWZXa3FVJ0AbW3+8tGl5VDWD9ZQtYvFizGkUu8dE9MH41Rdg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGMAuehsKj0FZ41uS8cWKpJHN818EP23UlJ3H/l3UEKrDu12hs
	krkHvHOUX+4Y5M/CsGBz1/un1LNytkDw3Dp+r9A+cSPohx6s2aC1JHZS
X-Gm-Gg: AR+sD11ZgEVcBCnDarOFwcP/mCp75hLqfTZWe3zxco56GXI83yx+/R1iB7QNYU8Xian
	EhRTrBPnIGbO6zrmv9NMCHpjQUjLSgAzs+Iqt0kY11ZfWIGhRhJ7Hrc8MDXIWR2UX60jCPYRg+c
	uTkjh8MMOEsiK2gi51KzTfOh3imYrME3Qi+nln6iezDQ8bkPFPEMOKrD9k/kqokiBiug4BxAoCa
	RYhZakvpiPFuQ3Dk+zUUcmL79lRsrqvHs4GnKa2NGSg65Ebd8HNRKEVbO19Syhj0O1ToslEZKs1
	1uhUjtbHx33CcujqYSagKOLA+N8RZh1N6tlLhe5JO0QgptufE4jiQBPzKq6cu4+zyGsehy1oHEH
	F0u2DX5u2k1CYHL8FNHCHw82MlPccCQCbKJ45DqUPFs2Dh5R0r2B8re8cyGy9jTMB+WZrreHp9s
	79D6DC3CC6dNHSnE/U2locth2TvEDdcVYK4mXF/Sssda4ZFtKA07WapUqg25oUbEAQeHTcZnn8y
	JS7xUwGnKwmpNFpM7E3nRUO3uNFtv38bTllGGWmkhjXvk4lzV83yBQ2xo2RFqrktStLmAHGU1D9
	FCa/9w==
X-Received: by 2002:a5d:584c:0:b0:47f:959f:d5e with SMTP id ffacd0b85a97d-47fec487b60mr22022705f8f.0.1786183107204;
        Sat, 08 Aug 2026 02:58:27 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8E20009911270F4BEC2300.dsl.pool.telekom.hu. [2001:4c4e:1b8e:2000:9911:270f:4bec:2300])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-480020be8f3sm13255725f8f.0.2026.08.08.02.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 02:58:26 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 5/5] drm/bridge: synopsys: dw-dp: Add BT.2020 colorimetry support
Date: Sat,  8 Aug 2026 11:57:24 +0200
Message-ID: <20260808095749.9428-6-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260808095749.9428-1-royalnet026@gmail.com>
References: <20260808095749.9428-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_025829_306844_084C7ACE 
X-CRM114-Status: GOOD (  21.82  )
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, Imre Deak <imre.deak@intel.com>, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Igor Paunovic <royalnet026@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, intel-gfx@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The VSC SDP colorimetry is hardcoded: DEFAULT for RGB output and
BT709_YCC for YCbCr. HDR compositors render into a BT.2020 container
and need a way to tell the sink.

The legacy MSA MISC0 colorimetry bits cannot express BT.2020; DP 1.4a
requires the VSC SDP revision 5 pixel encoding/colorimetry format
indication, with MISC1 bit 6 set so the sink takes the format from the
VSC SDP instead of MISC0. The driver already sets MISC1 bit 6 whenever
it sends the VSC SDP, so only the trigger and the colorimetry values
need extending:

- store conn_state->colorspace in the bridge state during
  atomic_check(), next to the negotiated format;
- send the VSC SDP also when the colorspace is BT2020_RGB or
  BT2020_YCC, not only for YCbCr 4:2:0 output;
- map BT2020_RGB/BT2020_YCC to DP_COLORIMETRY_BT2020_RGB/
  DP_COLORIMETRY_BT2020_YCC in the VSC SDP; every other colorspace
  value keeps today's values. The dynamic range stays VESA for RGB and
  CTA for YCbCr output.

Sinks advertise VSC SDP colorimetry support in the DPCD
(DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED). Without it BT.2020 cannot
be signaled at all, so atomic_check() rejects such a request with
-EINVAL and userspace's TEST_ONLY probe learns the configuration is
impossible; i915 instead silently omits the VSC SDP and scans out
BT.2020 pixels without signaling them. A colorspace change on a live
stream forces a modeset, so the VSC SDP is regenerated with the new
colorimetry.

On the Rockchip side, create the DP Colorspace property with exactly
the enum values the driver implements (Default, BT2020_RGB,
BT2020_YCC). When the colorspace is BT.2020 and the negotiated bus
format is YCbCr, program s->color_space = V4L2_COLORSPACE_BT2020 so
the VOP2 uses its BT.2020 R'G'B' to Y'C'bC'r matrix for the CSC. For
RGB output the pixels leave the VOP2 unconverted and the color space
stays DEFAULT.

Userspace that leaves the property at "Default" sees no change in
behavior: the colorimetry mapping, the VSC SDP trigger and the VOP2
CSC selection all take the previous paths.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-dp.c   | 44 +++++++++++++++++++----
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 38 +++++++++++++++++++-
 2 files changed, 74 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index ca997ea53e66..8f0ee9628dcc 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -306,6 +306,7 @@ struct dw_dp_bridge_state {
 	u8 color_format;
 	u8 bpc;
 	u8 bpp;
+	enum drm_colorspace colorspace;
 };
 
 struct dw_dp_sdp {
@@ -1125,6 +1126,12 @@ static void dw_dp_clear_sdp(struct dw_dp *dp, int nr)
 		clear_bit(nr, dp->sdp_reg_bank);
 }
 
+static bool dw_dp_colorspace_is_bt2020(enum drm_colorspace colorspace)
+{
+	return colorspace == DRM_MODE_COLORIMETRY_BT2020_RGB ||
+	       colorspace == DRM_MODE_COLORIMETRY_BT2020_YCC;
+}
+
 static int dw_dp_send_vsc_sdp(struct dw_dp *dp)
 {
 	struct dw_dp_bridge_state *state;
@@ -1160,13 +1167,25 @@ static int dw_dp_send_vsc_sdp(struct dw_dp *dp)
 		break;
 	}
 
-	if (state->color_format == DRM_OUTPUT_COLOR_FORMAT_RGB444) {
-		vsc.colorimetry = DP_COLORIMETRY_DEFAULT;
+	switch (state->colorspace) {
+	case DRM_MODE_COLORIMETRY_BT2020_RGB:
+		vsc.colorimetry = DP_COLORIMETRY_BT2020_RGB;
+		break;
+	case DRM_MODE_COLORIMETRY_BT2020_YCC:
+		vsc.colorimetry = DP_COLORIMETRY_BT2020_YCC;
+		break;
+	default:
+		if (state->color_format == DRM_OUTPUT_COLOR_FORMAT_RGB444)
+			vsc.colorimetry = DP_COLORIMETRY_DEFAULT;
+		else
+			vsc.colorimetry = DP_COLORIMETRY_BT709_YCC;
+		break;
+	}
+
+	if (state->color_format == DRM_OUTPUT_COLOR_FORMAT_RGB444)
 		vsc.dynamic_range = DP_DYNAMIC_RANGE_VESA;
-	} else {
-		vsc.colorimetry = DP_COLORIMETRY_BT709_YCC;
+	else
 		vsc.dynamic_range = DP_DYNAMIC_RANGE_CTA;
-	}
 
 	drm_dp_vsc_sdp_pack(&vsc, &sdp.base);
 
@@ -1227,7 +1246,7 @@ static bool dw_dp_video_need_vsc_sdp(struct dw_dp *dp)
 	if (state->color_format == DRM_OUTPUT_COLOR_FORMAT_YCBCR420)
 		return true;
 
-	return false;
+	return dw_dp_colorspace_is_bt2020(state->colorspace);
 }
 
 static int dw_dp_video_set_msa(struct dw_dp *dp,
@@ -1644,10 +1663,21 @@ static int dw_dp_bridge_atomic_check(struct drm_bridge *bridge,
 	state->color_format = fmt->color_format;
 	state->bpc = fmt->bpc;
 	state->bpp = fmt->bpp;
+	state->colorspace = conn_state->colorspace;
+
+	/*
+	 * BT.2020 cannot be signaled through the legacy MSA MISC0
+	 * colorimetry bits; it requires the VSC SDP colorimetry format
+	 * indication, which the sink must support.
+	 */
+	if (dw_dp_colorspace_is_bt2020(conn_state->colorspace) &&
+	    !dp->link.vsc_sdp_supported)
+		return -EINVAL;
 
 	old_conn_state = drm_atomic_get_old_connector_state(conn_state->state,
 							    conn_state->connector);
-	if (!drm_connector_atomic_hdr_metadata_equal(old_conn_state, conn_state))
+	if (!drm_connector_atomic_hdr_metadata_equal(old_conn_state, conn_state) ||
+	    old_conn_state->colorspace != conn_state->colorspace)
 		crtc_state->mode_changed = true;
 
 	if ((adjusted_mode->hsync_start - adjusted_mode->hdisplay) & 0x1) {
diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index c5bc178c0a50..798d82893f98 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -69,6 +69,21 @@ static void dw_dp_rockchip_hpd_sw_cfg(void *data, bool hpd)
 		     FIELD_PREP_WM16(ROCKCHIP_VO_GRF_DP_SINK_HPD_CFG, hpd));
 }
 
+static bool dw_dp_yuv_bus_format(u32 bus_format)
+{
+	switch (bus_format) {
+	case MEDIA_BUS_FMT_UYYVYY10_0_5X30:
+	case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
+	case MEDIA_BUS_FMT_YUYV10_1X20:
+	case MEDIA_BUS_FMT_YUYV8_1X16:
+	case MEDIA_BUS_FMT_YUV10_1X30:
+	case MEDIA_BUS_FMT_YUV8_1X24:
+		return true;
+	default:
+		return false;
+	}
+}
+
 static int dw_dp_encoder_atomic_check(struct drm_encoder *encoder,
 				      struct drm_crtc_state *crtc_state,
 				      struct drm_connector_state *conn_state)
@@ -102,7 +117,17 @@ static int dw_dp_encoder_atomic_check(struct drm_encoder *encoder,
 	s->output_type = DRM_MODE_CONNECTOR_DisplayPort;
 	s->bus_format = bus_format;
 	s->bus_flags = di->bus_flags;
-	s->color_space = V4L2_COLORSPACE_DEFAULT;
+
+	/*
+	 * For BT.2020 YCbCr output the VOP2 must use its BT.2020 R'G'B' to
+	 * Y'C'bC'r matrix; BT.2020 RGB is passed through unconverted.
+	 */
+	if ((conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_RGB ||
+	     conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_YCC) &&
+	    dw_dp_yuv_bus_format(bus_format))
+		s->color_space = V4L2_COLORSPACE_BT2020;
+	else
+		s->color_space = V4L2_COLORSPACE_DEFAULT;
 
 	return 0;
 }
@@ -200,6 +225,17 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
 
 	drm_connector_attach_hdr_output_metadata_property(connector);
 
+	ret = drm_mode_create_dp_colorspace_property(connector,
+						     BIT(DRM_MODE_COLORIMETRY_DEFAULT) |
+						     BIT(DRM_MODE_COLORIMETRY_BT2020_RGB) |
+						     BIT(DRM_MODE_COLORIMETRY_BT2020_YCC));
+	if (ret) {
+		dw_dp_unbind(dp->base);
+		return ret;
+	}
+
+	drm_connector_attach_colorspace_property(connector);
+
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
