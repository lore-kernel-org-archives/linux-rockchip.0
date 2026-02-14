Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E78F5EF99FF
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Feb 2026 07:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0MiJ0QY+uuq0LuYREmL9kotHnvNNb9oX9Z6stNulPU8=; b=q/FJxYswreVIWO
	ot48lrKuhPOy85OOidfMmFmr/nenFWp23lO58O6Q6+qkNyJaXHwi3QxYDCp3QjqJL22LoZ1Hdn9eJ
	lBbmcMOrlKtd8qV3rEEQA7d2WaVNYomm9x8OS+Muu1dtNr42ooshL0ZSEaYVkMA+jgwQIcMQfOhKU
	QjCzWEIfqwM4Nl0Ba4vItBH/zYP4Bcp6Mx8xNMdj+5IAZZZ14epzEtRYLxmqg1cJTeOwUjN3PpGtA
	TqJ15OJKGUgWiwPjivfAEvxrBvqX6Wb0nx8I4tfkgOru6ATHP4NLmtdN0jlgRgri7MxD3S/sMLm8G
	ENXQhsWq47ARWWqy89Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrAIm-00000004NBE-0jV2;
	Sat, 14 Feb 2026 07:42:52 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrAIj-00000004NAM-08DW;
	Sat, 14 Feb 2026 07:42:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=+v5pAbslEMYTGdjdZQDhHSyvhMUMNQICQR+cUdc+GgQ=; b=T
	BKEyd/70P5p0XXP5OUHUtm7AZ6I6tqNyhILHrI5l9oDiwXO9E6zlXh8dlH/Q1CgJ
	b0CECQKVUi9zqQqMEF7KLrnKN9dr2BYwQP3p09ofL8ozkJ2SA5YJBUMEhb5aYFMX
	zO75HP4EvO/Pm0dUyQ/gssxxwt/NaUUBdsumlSqklE=
Received: from andyshrk$163.com ( [2409:8a55:33d7:2431:f10b:187b:3f26:ab0c]
 ) by ajax-webmail-wmsvr-40-117 (Coremail) ; Sat, 14 Feb 2026 15:41:12 +0800
 (CST)
X-Originating-IP: [2409:8a55:33d7:2431:f10b:187b:3f26:ab0c]
Date: Sat, 14 Feb 2026 15:41:12 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
	"Maxime Ripard" <mripard@kernel.org>,
	"Thomas Zimmermann" <tzimmermann@suse.de>,
	"David Airlie" <airlied@gmail.com>,
	"Simona Vetter" <simona@ffwll.ch>,
	"Sandy Huang" <hjc@rock-chips.com>,
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
	"Andy Yan" <andy.yan@rock-chips.com>,
	"Louis Chauvet" <louis.chauvet@bootlin.com>,
	"Haneen Mohammed" <hamohammed.sa@gmail.com>,
	"Melissa Wen" <melissa.srw@gmail.com>,
	"Jani Nikula" <jani.nikula@linux.intel.com>,
	"Andy Shevchenko" <andriy.shevchenko@linux.intel.com>,
	"Robert Mader" <robert.mader@collabora.com>, kernel@collabora.com,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	"Diederik de Haas" <diederik@cknow-tech.com>
Subject: Re:[PATCH v7 4/4] drm/rockchip: vop2: Support setting custom
 background color
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20251222(83accb85) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260204-rk3588-bgcolor-v7-4-78d1d01c5ca1@collabora.com>
References: <20260204-rk3588-bgcolor-v7-0-78d1d01c5ca1@collabora.com>
 <20260204-rk3588-bgcolor-v7-4-78d1d01c5ca1@collabora.com>
X-CM-CTRLMSGS: 0xem7nBsdXM9MTc3MTA1NDg3MzAxOV9mMzIxMGMxZjQ2NDU5YTk3OTJhOTllM
 jYyODkxNTJkNg==
X-NTES-SC: AL_Qu2cA/yeu0As5CiZZ+kfmUgWjuw/WsG1v/Ul1YBSP556jD/p5wAhYnlFJHL90dOvNj6tnyiuTwJi+sdlbbJff74t27OnGnXYj8g71xfaPiVNkQ==
MIME-Version: 1.0
Message-ID: <7d35324b.1f93.19c5b18b8f6.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: dSgvCgB3p7oYJ5BpAj4oAA--.41162W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7hhOrGmQJxgIRwAA3d
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_234249_472931_83614BD3 
X-CRM114-Status: UNSURE (   8.85  )
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


Hello Cristian,

At 2026-02-05 04:02:31, "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com> wrote:
>The Rockchip VOP2 display controller allows configuring the background
>color of each video output port.
>
>Since a previous patch introduced the BACKGROUND_COLOR CRTC property,
>which defaults to solid black, make use of it when programming the
>hardware.
>
>Note the maximum precision allowed by the display controller is 10bpc,
>while the alpha component is not supported, hence ignored.
>
>Tested-by: Diederik de Haas <diederik@cknow-tech.com>
>Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

   Reviewed-by: Andy Yan <andyshrk@163.com>
>---
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 17 ++++++++++++++++-
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  4 ++++
> 2 files changed, 20 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>index ec3b4fde10db..8f22e90a23dd 100644
>--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>@@ -1552,6 +1552,7 @@ static void vop2_post_config(struct drm_crtc *crtc)
> 	struct vop2_video_port *vp = to_vop2_video_port(crtc);
> 	struct vop2 *vop2 = vp->vop2;
> 	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
>+	u64 bgcolor = crtc->state->background_color;
> 	u16 vtotal = mode->crtc_vtotal;
> 	u16 hdisplay = mode->crtc_hdisplay;
> 	u16 hact_st = mode->crtc_htotal - mode->crtc_hsync_start;
>@@ -1597,7 +1598,15 @@ static void vop2_post_config(struct drm_crtc *crtc)
> 		vop2_vp_write(vp, RK3568_VP_POST_DSP_VACT_INFO_F1, val);
> 	}
> 
>-	vop2_vp_write(vp, RK3568_VP_DSP_BG, 0);
>+	/*
>+	 * Background color is programmed with 10 bits of precision.
>+	 * Since performance is more important than accuracy here,
>+	 * make use of the DRM_ARGB64_GET*_BPCS() helpers.
>+	 */
>+	val = FIELD_PREP(RK3568_VP_DSP_BG__DSP_BG_RED, DRM_ARGB64_GETR_BPCS(bgcolor, 10));
>+	FIELD_MODIFY(RK3568_VP_DSP_BG__DSP_BG_GREEN, &val, DRM_ARGB64_GETG_BPCS(bgcolor, 10));
>+	FIELD_MODIFY(RK3568_VP_DSP_BG__DSP_BG_BLUE, &val, DRM_ARGB64_GETB_BPCS(bgcolor, 10));
>+	vop2_vp_write(vp, RK3568_VP_DSP_BG, val);
> }
> 
> static int us_to_vertical_line(struct drm_display_mode *mode, int us)
>@@ -1983,6 +1992,10 @@ static int vop2_crtc_state_dump(struct drm_crtc *crtc, struct seq_file *s)
> 		   drm_get_bus_format_name(vcstate->bus_format));
> 	seq_printf(s, "\toutput_mode[%x]", vcstate->output_mode);
> 	seq_printf(s, " color_space[%d]\n", vcstate->color_space);
>+	seq_printf(s, "\tbackground color (10bpc): r=0x%x g=0x%x b=0x%x\n",
>+		   DRM_ARGB64_GETR_BPCS(cstate->background_color, 10),
>+		   DRM_ARGB64_GETG_BPCS(cstate->background_color, 10),
>+		   DRM_ARGB64_GETB_BPCS(cstate->background_color, 10));
> 	seq_printf(s, "    Display mode: %dx%d%s%d\n",
> 		   mode->hdisplay, mode->vdisplay, interlaced ? "i" : "p",
> 		   drm_mode_vrefresh(mode));
>@@ -2472,6 +2485,8 @@ static int vop2_create_crtcs(struct vop2 *vop2)
> 			return dev_err_probe(drm->dev, ret,
> 					     "crtc init for video_port%d failed\n", i);
> 
>+		drm_crtc_attach_background_color_property(&vp->crtc);
>+
> 		drm_crtc_helper_add(&vp->crtc, &vop2_crtc_helper_funcs);
> 		if (vop2->lut_regs) {
> 			const struct vop2_video_port_data *vp_data = &vop2_data->vp[vp->id];
>diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
>index 9124191899ba..37722652844a 100644
>--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
>+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
>@@ -658,6 +658,10 @@ enum dst_factor_mode {
> #define RK3588_VP_CLK_CTRL__DCLK_OUT_DIV		GENMASK(3, 2)
> #define RK3588_VP_CLK_CTRL__DCLK_CORE_DIV		GENMASK(1, 0)
> 
>+#define RK3568_VP_DSP_BG__DSP_BG_RED			GENMASK(29, 20)
>+#define RK3568_VP_DSP_BG__DSP_BG_GREEN			GENMASK(19, 10)
>+#define RK3568_VP_DSP_BG__DSP_BG_BLUE			GENMASK(9, 0)
>+
> #define RK3568_VP_POST_SCL_CTRL__VSCALEDOWN		BIT(1)
> #define RK3568_VP_POST_SCL_CTRL__HSCALEDOWN		BIT(0)
> 
>
>-- 
>2.52.0
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
