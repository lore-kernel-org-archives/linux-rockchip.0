Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F00CD2F7D1
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 22:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:From
	:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Da9EUxb+td529WDWk0pq92dchJBjR+LsBE4HfjNjp00=; b=Um+SQjAfWE/dr+
	4GmXyvQ2JnQ1Pm5lMnkrpMPuybyZf4O+T7xsSblu9XfDtCekqCl9t/eY72SEmG3N42+zWc4KB4VFz
	kzLR4JQhNMJHJZtBpnB7C3QR4/Wyu4oEsOhXCAUt25ppNcDDulFnWHrn0hGkpBCephwec9ws5I6zo
	WFSMd7JOI3WHPZ4pjtijf0uKCI4IgJvQ5nZj921H4uy8aMqxp+XUJALp11rgEyPA5byhb6F4161Kg
	sSIhL4u2RZgJHR7qKYigo5AuD2VBimMczkCeDd2ciHVtZFUx7QqRBJ/zDVIR3CAqjUM8/ClQDh2oJ
	gOdzIaGa+DIKeIOGUtMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Ceq-0000000DAUr-1yvI;
	Wed, 16 Oct 2024 22:38:20 +0000
Received: from mail-40131.protonmail.ch ([185.70.40.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1CdN-0000000DALZ-2qdN;
	Wed, 16 Oct 2024 22:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=w2xjyq5xrzenxa7sla6e7n5vra.protonmail; t=1729118204; x=1729377404;
	bh=p3qUpYzsETrLtS2wA7XGfD7P3DQeW9BZBjw7bL1yYmY=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=ee0Idz96MY342PhzbSMltuqhkLgoD1CFYTf8l1NdXYtaKviruIFFWjE7+wQ8VAQVp
	 ULsAlxUEy7P2G38vnTdC2CtuH2MbdiS0IGx1HQLhR7uI7h/eSBPoJnd5CIYpkI+Dmk
	 7WlfKNE7XOKcD6FkQ0keDpn9zD9OQQQ3p8lqSTRzg9SKbmfrknVg89HcYZYJMHcwCy
	 LFLudIpHfPfejhcXaJlejK/9Sj3cD6xGDTFJbm1xiEOmBh4dCsMqI42ueyajl3Pprk
	 GuPiciztGYxmwbUcn1/Miln/8z7AmIEKQajOB4uhs8wPSKxxvzKpNI3Kj81HzzUXTk
	 FmdGsza/7o7rA==
Date: Wed, 16 Oct 2024 22:36:41 +0000
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: skhan@linuxfoundation.org, Piotr Zalewski <pZ010001011111@proton.me>, Daniel Stone <daniel@fooishbar.org>, Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v6] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <20241016223558.673145-2-pZ010001011111@proton.me>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 9ae115d0182f36af6df9b4331c7b182bf242d281
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_153650_491091_A32583A0 
X-CRM114-Status: GOOD (  17.27  )
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

Add support for gamma LUT in VOP2 driver. The implementation was inspired
by one found in VOP1 driver. Blue and red channels in gamma LUT register
write were swapped with respect to how gamma LUT values are written in
VOP1. Gamma LUT port selection was added before the write of new gamma LUT
table. 

If the current SoC is rk356x, check if no other CRTC has gamma LUT enabled
in atomic_check (only one video port can use gamma LUT at a time) and 
disable gamma LUT before the LUT table write.

If the current SoC isn't rk356x, "seamless" gamma lut update is performed
similarly to how it was done in the case of RK3399 in VOP1[1]. In seamless
update gamma LUT disable before the write isn't necessary, check if no 
other CRTC has gamma LUT enabled is also not necessary, different register
is being used to select gamma LUT port[2] and after setting DSP_LUT_EN bit,
GAMMA_UPDATE_EN bit is set[3].

Gamma size is set and drm color management is enabled for each video port's 
CRTC except ones which have no associated device.

Solution was tested on RK3566 (Pinetab2). When using userspace tools
which set eg. constant color temperature no issues were noticed. When
using userspace tools which adjust eg. color temperature the slight screen
flicker is visible probably because of gamma LUT disable.

Compare behaviour of eg.:
```
gammastep -O 3000
```

To eg.:
```
gammastep -l 53:23 -t 6000:3000
```

In latter case color temperature is slowly adjusted at the beginning which
causes screen to slighly flicker. Then it adjusts every few seconds which 
also causes slight screen flicker.

[1] https://lists.infradead.org/pipermail/linux-rockchip/2021-October/028132.html
[2] https://lore.kernel.org/linux-rockchip/48249708-8c05-40d2-a5d8-23de960c5a77@rock-chips.com/
[3] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c#L3437

Helped-by: Daniel Stone <daniel@fooishbar.org>
Helped-by: Dragan Simic <dsimic@manjaro.org>
Helped-by: Diederik de Haas <didi.debian@cknow.org>
Helped-by: Andy Yan <andy.yan@rock-chips.com>
Signed-off-by: Piotr Zalewski <pZ010001011111@proton.me>
---

Notes:
    Changes in v6:
        - Move gamma lut write to atomic_flush[4].
        - In atomic_check if any other than the currently updated CRTC has
          gamma lut enabled, return -EINVAL [5] (perform a check only if
          device is rk356x).
        - Instead of checking for rk3588 to determine seamless gamma
          update availability check for rk3566/rk3568.
        - remove null check in vop2_create_crtcs
        - Move some code to separate functions to increase readability.

    Changes in v5:
        - Do not trigger full modeset in case seamless gamma lut update
          isn't possible (eg. rk356x case). It was discovered that with
          full modeset, userspace tools which adjust color temperature with
          high frequency cause screen to go black and reduce overall
          performance. Instead, revert to previous behaviour of lut update
          happening in atomic_begin or (in case there is a modeset) in
          atomic_enable. Also, add unrelated to modeset trigger
          changes/improvements from v4 on top. Improve code readability
          too.

    Changes in v4:
        - rework the implementation to better utilize DRM atomic updates[2]
        - handle the RK3588 case[2][3]

    Changes in v3:
        - v3 is patch v2 "resend", by mistake the incremental patch was
        sent in v2

    Changes in v2:
        - Apply code styling corrections[1]
        - Move gamma LUT write inside the vop2 lock

    Link to v5: https://lore.kernel.org/linux-rockchip/20241014222022.571819-4-pZ010001011111@proton.me/
    Link to v4: https://lore.kernel.org/linux-rockchip/20240815124306.189282-2-pZ010001011111@proton.me/
    Link to v3: https://lore.kernel.org/linux-rockchip/TkgKVivuaLFLILPY-n3iZo_8KF-daKdqdu-0_e0HP-5Ar_8DALDeNWog2suwWKjX7eomcbGET0KZe7DlzdhK2YM6CbLbeKeFZr-MJzJMtw0=@proton.me/
    Link to v2: https://lore.kernel.org/linux-rockchip/Hk03HDb6wSSHWtEFZHUye06HR0-9YzP5nCHx9A8_kHzWSZawDrU1o1pjEGkCOJFoRg0nTB4BWEv6V0XBOjF4-0Mj44lp2TrjaQfnytzp-Pk=@proton.me/
    Link to v1: https://lore.kernel.org/linux-rockchip/ZVMxgcrtgHui9fJpnhbN6TSPhofHbbXElh241lImrzzTUl-8WejGpaR8CPzYhBgoqe_xj7N6En8Ny7Z-gsCr0kaFs7apwjYV1MBJJLmLHxs=@proton.me/

    [1] https://lore.kernel.org/linux-rockchip/d019761504b540600d9fc7a585d6f95f@manjaro.org
    [2] https://lore.kernel.org/linux-rockchip/CAPj87rOM=j0zmuWL9frGKV1xzPbJrk=Q9ip7F_HAPYnbCqPouw@mail.gmail.com
    [3] https://lore.kernel.org/linux-rockchip/7d998e4c-e1d3-4e8b-af76-c5bc83b43647@rock-chips.com
    [4] https://lore.kernel.org/linux-rockchip/7b45f190.452f.1928e41b746.Coremail.andyshrk@163.com/
    [5] https://lore.kernel.org/linux-rockchip/CAPj87rOdQPsuH9qB_ZLfC9S=cO2noNi1mOGW0ZmQ6SHCugb9=w@mail.gmail.com/

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 189 +++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |   5 +
 2 files changed, 194 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 9873172e3fd3..6018c353e66b 100644
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
@@ -998,6 +1007,65 @@ static void vop2_disable(struct vop2 *vop2)
 	clk_disable_unprepare(vop2->hclk);
 }
 
+static bool vop2_vp_dsp_lut_is_enabled(struct vop2_video_port *vp)
+{
+	return (u32) (vop2_vp_read(vp, RK3568_VP_DSP_CTRL) & RK3568_VP_DSP_CTRL__DSP_LUT_EN) >
+	    0;
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
+static bool vop2_vp_dsp_lut_poll_disable(struct vop2_video_port *vp)
+{
+	u32 dsp_ctrl;
+	int ret = readx_poll_timeout(vop2_vp_dsp_lut_is_enabled, vp, dsp_ctrl,
+				!dsp_ctrl, 5, 30 * 1000);
+	if (ret) {
+		drm_err(vp->vop2->drm, "display LUT RAM enable timeout!\n");
+		return false;
+	}
+
+	return true;
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
+static void vop2_vp_dsp_lut_update_enable(struct vop2_video_port *vp)
+{
+	u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
+
+	dsp_ctrl |= RK3588_VP_DSP_CTRL__GAMMA_UPDATE_EN;
+	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
+}
+
+static inline bool vop2_supports_seamless_gamma_lut_update(struct vop2 *vop2)
+{
+	return (vop2->data->soc_id != 3566 && vop2->data->soc_id != 3568);
+}
+
+static bool vop2_gamma_lut_in_use(struct vop2 *vop2, struct vop2_video_port *vp)
+{
+	const int nr_vps = vop2->data->nr_vps;
+	int gamma_en_vp_id;
+	for (gamma_en_vp_id = 0; gamma_en_vp_id < nr_vps; gamma_en_vp_id++)
+		if (vop2_vp_dsp_lut_is_enabled(&vop2->vps[gamma_en_vp_id]))
+			break;
+
+	return gamma_en_vp_id != nr_vps && gamma_en_vp_id != vp->id;
+}
+
 static void vop2_crtc_atomic_disable(struct drm_crtc *crtc,
 				     struct drm_atomic_state *state)
 {
@@ -1482,6 +1550,80 @@ static bool vop2_crtc_mode_fixup(struct drm_crtc *crtc,
 	return true;
 }
 
+static void vop2_crtc_write_gamma_lut(struct vop2 *vop2, struct drm_crtc *crtc)
+{
+	const struct vop2_video_port *vp = to_vop2_video_port(crtc);
+	const struct vop2_video_port_data *vp_data = &vop2->data->vp[vp->id];
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
+static void vop2_crtc_atomic_set_gamma_seamless(struct vop2 *vop2,
+					struct vop2_video_port *vp,
+					struct drm_crtc *crtc)
+{
+	vop2_writel(vop2, RK3568_LUT_PORT_SEL, FIELD_PREP(
+		RK3588_LUT_PORT_SEL__GAMMA_AHB_WRITE_SEL,
+		vp->id));
+	vop2_vp_dsp_lut_enable(vp);
+	vop2_crtc_write_gamma_lut(vop2, crtc);
+	vop2_vp_dsp_lut_update_enable(vp);
+}
+
+static void vop2_crtc_atomic_set_gamma_rk356x(struct vop2 *vop2,
+					struct vop2_video_port *vp,
+					struct drm_crtc *crtc)
+{
+	vop2_vp_dsp_lut_disable(vp);
+	vop2_cfg_done(vp);
+	if (!vop2_vp_dsp_lut_poll_disable(vp))
+		return;
+
+	vop2_writel(vop2, RK3568_LUT_PORT_SEL, vp->id);
+	vop2_crtc_write_gamma_lut(vop2, crtc);
+	vop2_vp_dsp_lut_enable(vp);
+}
+
+static void vop2_crtc_atomic_try_set_gamma(struct vop2 *vop2,
+					struct vop2_video_port *vp,
+					struct drm_crtc *crtc,
+					struct drm_crtc_state *crtc_state)
+{
+
+	if (!vop2->lut_regs || !crtc_state->color_mgmt_changed)
+		return;
+
+	if (!crtc_state->gamma_lut) {
+		vop2_vp_dsp_lut_disable(vp);
+		return;
+	}
+
+	if (vop2_supports_seamless_gamma_lut_update(vop2))
+		vop2_crtc_atomic_set_gamma_seamless(vop2, vp, crtc);
+	else
+		vop2_crtc_atomic_set_gamma_rk356x(vop2, vp, crtc);
+}
+
+static inline void vop2_crtc_atomic_try_set_gamma_locked(struct vop2 *vop2,
+					struct vop2_video_port *vp,
+					struct drm_crtc *crtc,
+					struct drm_crtc_state *crtc_state)
+{
+	vop2_lock(vop2);
+	vop2_crtc_atomic_try_set_gamma(vop2, vp, crtc, crtc_state);
+	vop2_unlock(vop2);
+}
+
 static void vop2_dither_setup(struct drm_crtc *crtc, u32 *dsp_ctrl)
 {
 	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(crtc->state);
@@ -2057,11 +2199,40 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
 
+	vop2_crtc_atomic_try_set_gamma(vop2, vp, crtc, crtc_state);
+
 	drm_crtc_vblank_on(crtc);
 
 	vop2_unlock(vop2);
 }
 
+static int vop2_crtc_atomic_check_gamma(struct vop2_video_port *vp,
+					struct drm_crtc *crtc,
+					struct drm_atomic_state *state,
+					struct drm_crtc_state *crtc_state)
+{
+	struct vop2 *vop2 = vp->vop2;
+	unsigned int len;
+
+	if (!vp->vop2->lut_regs || !crtc_state->color_mgmt_changed ||
+	    !crtc_state->gamma_lut)
+		return 0;
+
+	len = drm_color_lut_size(crtc_state->gamma_lut);
+	if (len != crtc->gamma_size) {
+		drm_dbg(vop2->drm, "Invalid LUT size; got %d, expected %d\n",
+				      len, crtc->gamma_size);
+		return -EINVAL;
+	}
+
+	if (!vop2_supports_seamless_gamma_lut_update(vop2) && vop2_gamma_lut_in_use(vop2, vp)) {
+		drm_info(vop2->drm, "Gamma LUT can be enabled for only one CRTC at a time\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int vop2_crtc_atomic_check(struct drm_crtc *crtc,
 				  struct drm_atomic_state *state)
 {
@@ -2069,6 +2240,11 @@ static int vop2_crtc_atomic_check(struct drm_crtc *crtc,
 	struct drm_plane *plane;
 	int nplanes = 0;
 	struct drm_crtc_state *crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
+	int ret;
+
+	ret = vop2_crtc_atomic_check_gamma(vp, crtc, state, crtc_state);
+	if (ret)
+		return ret;
 
 	drm_atomic_crtc_state_for_each_plane(plane, crtc_state)
 		nplanes++;
@@ -2456,6 +2632,7 @@ static void vop2_setup_dly_for_windows(struct vop2 *vop2)
 	vop2_writel(vop2, RK3568_SMART_DLY_NUM, sdly);
 }
 
+
 static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
 				   struct drm_atomic_state *state)
 {
@@ -2487,7 +2664,14 @@ static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
 static void vop2_crtc_atomic_flush(struct drm_crtc *crtc,
 				   struct drm_atomic_state *state)
 {
+	struct drm_crtc_state *crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
 	struct vop2_video_port *vp = to_vop2_video_port(crtc);
+	struct vop2 *vop2 = vp->vop2;
+
+	// NOTE: in case of modeset gamma lut update
+	// already happened in atomic enable
+	if (!drm_atomic_crtc_needs_modeset(crtc_state))
+		vop2_crtc_atomic_try_set_gamma_locked(vop2, vp, crtc, crtc_state);
 
 	vop2_post_config(crtc);
 
@@ -2790,7 +2974,12 @@ static int vop2_create_crtcs(struct vop2 *vop2)
 		}
 
 		drm_crtc_helper_add(&vp->crtc, &vop2_crtc_helper_funcs);
+		if (vop2->lut_regs) {
+			const struct vop2_video_port_data *vp_data = &vop2_data->vp[vp->id];
 
+			drm_mode_crtc_set_gamma_size(&vp->crtc, vp_data->gamma_lut_len);
+			drm_crtc_enable_color_mgmt(&vp->crtc, 0, false, vp_data->gamma_lut_len);
+		}
 		init_completion(&vp->dsp_hold_completion);
 	}
 
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index 615a16196aff..510dda6f9092 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -394,6 +394,7 @@ enum dst_factor_mode {
 #define RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN		BIT(15)
 
 #define RK3568_VP_DSP_CTRL__STANDBY			BIT(31)
+#define RK3568_VP_DSP_CTRL__DSP_LUT_EN			BIT(28)
 #define RK3568_VP_DSP_CTRL__DITHER_DOWN_MODE		BIT(20)
 #define RK3568_VP_DSP_CTRL__DITHER_DOWN_SEL		GENMASK(19, 18)
 #define RK3568_VP_DSP_CTRL__DITHER_DOWN_EN		BIT(17)
@@ -408,6 +409,8 @@ enum dst_factor_mode {
 #define RK3568_VP_DSP_CTRL__CORE_DCLK_DIV		BIT(4)
 #define RK3568_VP_DSP_CTRL__OUT_MODE			GENMASK(3, 0)
 
+#define RK3588_VP_DSP_CTRL__GAMMA_UPDATE_EN		BIT(22)
+
 #define RK3588_VP_CLK_CTRL__DCLK_OUT_DIV		GENMASK(3, 2)
 #define RK3588_VP_CLK_CTRL__DCLK_CORE_DIV		GENMASK(1, 0)
 
@@ -460,6 +463,8 @@ enum dst_factor_mode {
 #define RK3588_DSP_IF_POL__DP1_PIN_POL			GENMASK(14, 12)
 #define RK3588_DSP_IF_POL__DP0_PIN_POL			GENMASK(10, 8)
 
+#define RK3588_LUT_PORT_SEL__GAMMA_AHB_WRITE_SEL	GENMASK(13, 12)
+
 #define RK3568_VP0_MIPI_CTRL__DCLK_DIV2_PHASE_LOCK	BIT(5)
 #define RK3568_VP0_MIPI_CTRL__DCLK_DIV2			BIT(4)
 
-- 
2.47.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
