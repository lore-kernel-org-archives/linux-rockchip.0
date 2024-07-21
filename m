Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B945EC3DA5D
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jul 2024 10:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:From:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gtr3KDXlNUpNGYo/smZgQfJ3xuDHa6g4YS8tyh3sMSI=; b=wRcRJygBFNjXlM
	1PFHHMOKdr4nm8ehk/EP2NrG/XjrKUQMHU6FOz+ydLrSRvUPWFViPceUjRSlJpGrI8eYT2MHjYU7V
	vr47aPdoX42gkZmdEM51SBdDu+EyWhe8MFWva3vbC9PbO4cNsCLwiX7ZCNJUqhY9rlwLtRc1937gF
	cJ4jUeTVh60ND0ZQ4XfLiMPPz+xxzejhucyf1ldYRCiq8KOH03RymqvPgUZrhKHXO/y9956aFEtFI
	wvxXyjndDB3jCneG2FNrRVQtDiz1aJjI/bZriw0HS3EkKq2Yv4CmLfu8TxYZOxjeZmEb4+WJJ5OfE
	U2RSN81kqZyA3pgP5AGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVTSL-00000006bec-3Mn8;
	Sun, 21 Jul 2024 10:06:17 +0000
Received: from mail-40141.protonmail.ch ([185.70.40.141])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVTSH-00000006bdc-2k4T
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Jul 2024 10:06:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=7f3czn4ib5cvtfzpwicerss7mi.protonmail; t=1721556369; x=1721815569;
	bh=38BTDuCsvYA7NiNmP6uC+7Ilo/e3rGADV/aHh7g8NfE=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=fdviY1KsDnI88Hex8eatzI0ESwo5Cbsxj2mf3fxpBVPgcI+fcA2oo2l6G03w7py0B
	 GsvHxC6377VdVOb703ABNHeUTuCinJ1RAS0A29hzjAsVblFctPVNMWfX+qoaxtRLck
	 e3XSMC4GvTuEXB+xduzMbqPVgXthM9Wwt1t58yvXUX9slplu0KuXZSu5QWzMFl6e99
	 b5lGLQupQ/Sa8VpP0uhQ2l9KHLs8uE6Nl9L4kgiVwu8UH0vtwPYQQnp2ptU4glMpt5
	 yliJHuakSm2lHivN966tUpQb9d+v8zYPk8CzHIpcWM4BCh0bRmol5ooIuniMBad0kZ
	 S+LpCbdOialcQ==
Date: Sun, 21 Jul 2024 10:06:01 +0000
To: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "airlied@gmail.com" <airlied@gmail.com>, "tzimmermann@suse.de" <tzimmermann@suse.de>, "mripard@kernel.org" <mripard@kernel.org>, "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, "heiko@sntech.de" <heiko@sntech.de>, "hjc@rock-chips.com" <hjc@rock-chips.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Subject: [PATCH RESEND] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <ZVMxgcrtgHui9fJpnhbN6TSPhofHbbXElh241lImrzzTUl-8WejGpaR8CPzYhBgoqe_xj7N6En8Ny7Z-gsCr0kaFs7apwjYV1MBJJLmLHxs=@proton.me>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 2ca5930eba6262874ec75f1181d9912ac21ce0eb
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240721_030614_316029_9CA9043E 
X-CRM114-Status: GOOD (  10.48  )
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

Add support for gamma LUT in VOP2 driver. The implementation is based on
the one found in VOP driver and modified to be compatible with VOP2. Blue
and red channels in gamma LUT register write were swapped with respect to
how gamma LUT values are written in VOP. Write of the current video port id
to VOP2_SYS_LUT_PORT_SEL register was added before the write of DSP_LUT_EN
bit. Gamma size is set and drm color management is enabled for each video
port's CRTC except ones which have no associated device. Tested on RK3566
(Pinetab2).

Signed-off-by: Piotr Zalewski <pZ010001011111@proton.me>
---

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 9873172e3fd3..16abdc4a59a8 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -278,6 +278,15 @@ static u32 vop2_readl(struct vop2 *vop2, u32 offset)
 	return val;
 }

+static u32 vop2_vp_read(struct vop2_video_port *vp, u32 offset)
+{
+	u32 val;
+
+	regmap_read(vp->vop2->map, vp->data->offset + offset, &val);
+
+	return val;
+}
+
 static void vop2_win_write(const struct vop2_win *win, unsigned int reg, u32 v)
 {
 	regmap_field_write(win->reg[reg], v);
@@ -1482,6 +1491,97 @@ static bool vop2_crtc_mode_fixup(struct drm_crtc *crtc,
 	return true;
 }

+static bool vop2_vp_dsp_lut_is_enabled(struct vop2_video_port *vp)
+{
+	return (u32) (vop2_vp_read(vp, RK3568_VP_DSP_CTRL) & RK3568_VP_DSP_CTRL__DSP_LUT_EN) >
+	    0;
+}
+
+static void vop2_vp_dsp_lut_enable(struct vop2_video_port *vp)
+{
+	u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
+
+	dsp_ctrl |= RK3568_VP_DSP_CTRL__DSP_LUT_EN;
+	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
+}
+
+static void vop2_vp_dsp_lut_disable(struct vop2_video_port *vp)
+{
+	u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
+
+	dsp_ctrl &= ~RK3568_VP_DSP_CTRL__DSP_LUT_EN;
+	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
+}
+
+static void vop2_crtc_write_gamma_lut(struct vop2 *vop2, struct drm_crtc *crtc)
+{
+	const struct vop2_data *vop2_data = vop2->data;
+	const struct vop2_video_port *vp = to_vop2_video_port(crtc);
+	const struct vop2_video_port_data *vp_data = &vop2_data->vp[vp->id];
+
+	struct drm_color_lut *lut = crtc->state->gamma_lut->data;
+	unsigned int i, bpc = ilog2(vp_data->gamma_lut_len);
+	u32 word;
+
+	for (i = 0; i < crtc->gamma_size; i++) {
+		word = (drm_color_lut_extract(lut[i].blue, bpc) << (2 * bpc)) |
+		    (drm_color_lut_extract(lut[i].green, bpc) << bpc) |
+		    drm_color_lut_extract(lut[i].red, bpc);
+
+		writel(word, vop2->lut_regs + i * 4);
+	}
+}
+
+static void vop2_crtc_gamma_set(struct vop2 *vop2, struct drm_crtc *crtc,
+				struct drm_crtc_state *old_state)
+{
+	struct drm_crtc_state *state = crtc->state;
+	struct vop2_video_port *vp = to_vop2_video_port(crtc);
+	u32 dsp_ctrl;
+	int ret;
+
+	if (!vop2->lut_regs)
+		return;
+
+	if (!state->gamma_lut) {
+		/*
+		 * To disable gamma (gamma_lut is null) or to write
+		 * an update to the LUT, clear dsp_lut_en.
+		 */
+		vop2_lock(vop2);
+
+		vop2_vp_dsp_lut_disable(vp);
+
+		vop2_cfg_done(vp);
+		vop2_unlock(vop2);
+		/*
+		 * In order to write the LUT to the internal memory,
+		 * we need to first make sure the dsp_lut_en bit is cleared.
+		 */
+		ret =
+		    readx_poll_timeout(vop2_vp_dsp_lut_is_enabled, vp, dsp_ctrl, !dsp_ctrl, 5,
+				       30 * 1000);
+
+		if (ret) {
+			DRM_DEV_ERROR(vop2->dev, "display LUT RAM enable timeout!\n");
+			return;
+		}
+
+		if (!state->gamma_lut)
+			return;
+	}
+
+	vop2_crtc_write_gamma_lut(vop2, crtc);
+
+	vop2_lock(vop2);
+	vop2_writel(vp->vop2, RK3568_LUT_PORT_SEL, vp->id);
+
+	vop2_vp_dsp_lut_enable(vp);
+
+	vop2_cfg_done(vp);
+	vop2_unlock(vop2);
+}
+
 static void vop2_dither_setup(struct drm_crtc *crtc, u32 *dsp_ctrl)
 {
 	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(crtc->state);
@@ -1925,6 +2025,7 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 	const struct vop2_data *vop2_data = vop2->data;
 	const struct vop2_video_port_data *vp_data = &vop2_data->vp[vp->id];
 	struct drm_crtc_state *crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
+	struct drm_crtc_state *old_state = drm_atomic_get_old_crtc_state(state, crtc);
 	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(crtc->state);
 	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
 	unsigned long clock = mode->crtc_clock * 1000;
@@ -2060,6 +2161,9 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 	drm_crtc_vblank_on(crtc);

 	vop2_unlock(vop2);
+
+	if (crtc->state->gamma_lut)
+		vop2_crtc_gamma_set(vop2, crtc, old_state);
 }

 static int vop2_crtc_atomic_check(struct drm_crtc *crtc,
@@ -2070,6 +2174,16 @@ static int vop2_crtc_atomic_check(struct drm_crtc *crtc,
 	int nplanes = 0;
 	struct drm_crtc_state *crtc_state = drm_atomic_get_new_crtc_state(state, crtc);

+	if (vp->vop2->lut_regs && crtc_state->color_mgmt_changed && crtc_state->gamma_lut) {
+		unsigned int len = drm_color_lut_size(crtc_state->gamma_lut);
+
+		if (len != crtc->gamma_size) {
+			DRM_DEBUG_KMS("Invalid LUT size; got %d, expected %d\n",
+				      len, crtc->gamma_size);
+			return -EINVAL;
+		}
+	}
+
 	drm_atomic_crtc_state_for_each_plane(plane, crtc_state)
 		nplanes++;

@@ -2459,6 +2573,10 @@ static void vop2_setup_dly_for_windows(struct vop2 *vop2)
 static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
 				   struct drm_atomic_state *state)
 {
+	struct drm_crtc_state *crtc_state = drm_atomic_get_new_crtc_state(state,
+									  crtc);
+	struct drm_crtc_state *old_crtc_state = drm_atomic_get_old_crtc_state(state,
+									      crtc);
 	struct vop2_video_port *vp = to_vop2_video_port(crtc);
 	struct vop2 *vop2 = vp->vop2;
 	struct drm_plane *plane;
@@ -2482,6 +2600,9 @@ static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
 	vop2_setup_layer_mixer(vp);
 	vop2_setup_alpha(vp);
 	vop2_setup_dly_for_windows(vop2);
+
+	if (crtc_state->color_mgmt_changed && !crtc_state->active_changed)
+		vop2_crtc_gamma_set(vop2, crtc, old_crtc_state);
 }

 static void vop2_crtc_atomic_flush(struct drm_crtc *crtc,
@@ -2791,6 +2912,14 @@ static int vop2_create_crtcs(struct vop2 *vop2)

 		drm_crtc_helper_add(&vp->crtc, &vop2_crtc_helper_funcs);

+		if (vop2->lut_regs && vp->crtc.dev != NULL) {
+			const struct vop2_video_port_data *vp_data = &vop2_data->vp[vp->id];
+
+			drm_mode_crtc_set_gamma_size(&vp->crtc, vp_data->gamma_lut_len);
+			drm_crtc_enable_color_mgmt(&vp->crtc, 0, false,
+						   vp_data->gamma_lut_len);
+		}
+
 		init_completion(&vp->dsp_hold_completion);
 	}

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index 615a16196aff..3a58b73fa876 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -394,6 +394,7 @@ enum dst_factor_mode {
 #define RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN		BIT(15)

 #define RK3568_VP_DSP_CTRL__STANDBY			BIT(31)
+#define RK3568_VP_DSP_CTRL__DSP_LUT_EN			BIT(28)
 #define RK3568_VP_DSP_CTRL__DITHER_DOWN_MODE		BIT(20)
 #define RK3568_VP_DSP_CTRL__DITHER_DOWN_SEL		GENMASK(19, 18)
 #define RK3568_VP_DSP_CTRL__DITHER_DOWN_EN		BIT(17)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
