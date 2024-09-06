Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AE74E6FE3B
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 17:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVz3cVQMIjTgYpD8Rk3wMbPcSqEaNTWP+9bY07ssyuU=; b=drVTtaFKbKgxfn
	XWv/V49wn8VWgjhWJyJNCdFGeQ79tQakihl9XDrsxLNGtMteg5VYPVgynQ+Qq2P+Jk8PFuk9bzrBD
	wZ9zRGoKUSfmbHxPGyiXkY8CYW0QBx0iWWGu8GtGjrjdS2CpTGTyK6hdSt6/CYzW9ynVpi6ZEyBQf
	XrG7bXOJzQ50jYYiNdcPByUuQSt8C0+9Ia2KI7EvvEk6sxgi81qodJIYi5cwW1sC8TLdse1Rw9kI1
	y60eZL+NcaWrtAXD+PpXz3todxjmxDHcUi1DL9sMGDQjpGeaJ4cycoHiPWct8ygfpeFs7GEmV479L
	ACLbZ8cZFmiF2tA67y7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smd7q-0000000DAbO-1Ak6;
	Fri, 06 Sep 2024 17:52:02 +0000
Received: from mail-40133.protonmail.ch ([185.70.40.133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smd6c-0000000DAI0-3NHr
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Sep 2024 17:50:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1725645041; x=1725904241;
	bh=c6uEbkcohf3ucYhL6tKjBC7+SOWgapOzdFEqRfu2C7Y=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=dNb2WYicA5wChC1je5j68QZci7UlEHK4+v2tWDbbx+Xgz645IVE2j4BhMVNe0Dmlr
	 eV2tKPL6tlK/IExBvfTKGVlolkMgFnhsRYg9U4Wfu/km6OXYUDb+F2wEVAhXQN+Ird
	 tSUCLuvlSviQS9I1SIHzOTeq8uXQ5a6ZhOCe/MWH7PLju34Dx0+O2S7uyU7xIypj5E
	 amsfjOMom7xmoPRd24TTQUtjR35pwRRHeRt2QmrYmSnhQkZHX7VwAZMqbGF1sW7QbR
	 abbCxuUdIYTtLSqstMeph52k1x1LEYwFzq78Lx7cxMtG++7qWHPOlGQsdMJqzqgFTb
	 RdvI1qFkxg/KQ==
Date: Fri, 06 Sep 2024 17:50:36 +0000
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: Piotr Zalewski <pZ010001011111@proton.me>, Daniel Stone <daniel@fooishbar.org>, Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v4] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <Pn-SxLyO78OXrKgkMG8Skwa69PG6oAG_UACHHy_VQqbNRbs1VHW9VV1feGos-zrtrTTi7RDOjERu_fmx9QYPXxI8SXqL_nOKuv0P6z-z6NI=@proton.me>
In-Reply-To: <20240815124306.189282-2-pZ010001011111@proton.me>
References: <20240815124306.189282-2-pZ010001011111@proton.me>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: aad2cd532d71b8c356243e076b6e061492935d66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_105047_076080_38E0D116 
X-CRM114-Status: GOOD (  27.62  )
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

Hi Daniel,

Can you comment on or review this? This version of the patch was based on
your suggestions and it has been stuck for some time now.

I appreciate your time and help :)

Best Regards, Piotr Zalewski

On Thursday, August 15th, 2024 at 2:46 PM, Piotr Zalewski <pZ010001011111@proton.me> wrote:

> Add support for gamma LUT in VOP2 driver. The implementation was inspired
> by one found in VOP1 driver. Blue and red channels in gamma LUT register
> write were swapped with respect to how gamma LUT values are written in
> VOP1. If the current SoC is RK3566 or RK3568 and gamma LUT is to be
> written, full modeset is triggered to synchronize disable, write, enable
> process and hint userspace that it is not seamless transition[1]. If the
> current SoC is RK3588 full modeset isn't triggered because gamma LUT need
> not to be disabled before the LUT write[1]. In case of RK356x as well as
> RK3588 respective LUT port sel register write was added before the LUT
> write[2]. In case of RK3588, gamma update enable bit is set after setting
> gamma LUT enable bit[2]. Gamma size is set and drm color management is
> enabled for each video port's CRTC except ones which have no associated
> device. Tested on RK3566 (Pinetab2).
> 
> [1] https://lore.kernel.org/linux-rockchip/CAPj87rOM=j0zmuWL9frGKV1xzPbJrk=Q9ip7F_HAPYnbCqPouw@mail.gmail.com/
> [2] https://lore.kernel.org/linux-rockchip/7d998e4c-e1d3-4e8b-af76-c5bc83b43647@rock-chips.com/
> 
> Helped-by: Daniel Stone daniel@fooishbar.org
> 
> Helped-by: Dragan Simic dsimic@manjaro.org
> 
> Helped-by: Diederik de Haas didi.debian@cknow.org
> 
> Helped-by: Andy Yan andy.yan@rock-chips.com
> 
> Signed-off-by: Piotr Zalewski pZ010001011111@proton.me
> 
> ---
> 
> Notes:
> WASN'T tested on RK3588.
> 
> Changes in v4:
> - rework the implementation to better utilize DRM atomic updates[2]
> - handle the RK3588 case[2][3]
> 
> Changes in v3:
> - v3 is patch v2 "resend", by mistake the incremental patch was
> sent in v2
> 
> Changes in v2:
> - Apply code styling corrections[1]
> - Move gamma LUT write inside the vop2 lock
> 
> Link to v3: https://lore.kernel.org/linux-rockchip/TkgKVivuaLFLILPY-n3iZo_8KF-daKdqdu-0_e0HP-5Ar_8DALDeNWog2suwWKjX7eomcbGET0KZe7DlzdhK2YM6CbLbeKeFZr-MJzJMtw0=@proton.me/
> Link to v2: https://lore.kernel.org/linux-rockchip/Hk03HDb6wSSHWtEFZHUye06HR0-9YzP5nCHx9A8_kHzWSZawDrU1o1pjEGkCOJFoRg0nTB4BWEv6V0XBOjF4-0Mj44lp2TrjaQfnytzp-Pk=@proton.me/T/#u
> Link to v1: https://lore.kernel.org/linux-rockchip/9736eadf6a9d8e97eef919c6b3d88828@manjaro.org/T/#t
> 
> [1] https://lore.kernel.org/linux-rockchip/d019761504b540600d9fc7a585d6f95f@manjaro.org
> [2] https://lore.kernel.org/linux-rockchip/CAPj87rOM=j0zmuWL9frGKV1xzPbJrk=Q9ip7F_HAPYnbCqPouw@mail.gmail.com
> [3] https://lore.kernel.org/linux-rockchip/7d998e4c-e1d3-4e8b-af76-c5bc83b43647@rock-chips.com
> 
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 148 +++++++++++++++++++
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.h | 5 +
> 2 files changed, 153 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 9873172e3fd3..fe7657984909 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -278,6 +278,15 @@ static u32 vop2_readl(struct vop2 *vop2, u32 offset)
> return val;
> }
> 
> +static u32 vop2_vp_read(struct vop2_video_port *vp, u32 offset)
> +{
> + u32 val;
> +
> + regmap_read(vp->vop2->map, vp->data->offset + offset, &val);
> 
> +
> + return val;
> +}
> +
> static void vop2_win_write(const struct vop2_win *win, unsigned int reg, u32 v)
> {
> regmap_field_write(win->reg[reg], v);
> 
> @@ -998,6 +1007,30 @@ static void vop2_disable(struct vop2 *vop2)
> clk_disable_unprepare(vop2->hclk);
> 
> }
> 
> +static void vop2_vp_dsp_lut_disable(struct vop2_video_port *vp)
> +{
> + u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
> +
> + dsp_ctrl &= ~RK3568_VP_DSP_CTRL__DSP_LUT_EN;
> + vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
> +}
> +
> +static void vop2_vp_dsp_lut_enable(struct vop2_video_port *vp)
> +{
> + u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
> +
> + dsp_ctrl |= RK3568_VP_DSP_CTRL__DSP_LUT_EN;
> + vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
> +}
> +
> +static void vop2_vp_dsp_lut_update_enable(struct vop2_video_port *vp)
> +{
> + u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
> +
> + dsp_ctrl |= RK3588_VP_DSP_CTRL__GAMMA_UPDATE_EN;
> + vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
> +}
> +
> static void vop2_crtc_atomic_disable(struct drm_crtc *crtc,
> struct drm_atomic_state *state)
> {
> @@ -1482,6 +1515,24 @@ static bool vop2_crtc_mode_fixup(struct drm_crtc *crtc,
> return true;
> }
> 
> +static void vop2_crtc_write_gamma_lut(struct vop2 *vop2, struct drm_crtc *crtc)
> +{
> + const struct vop2_video_port *vp = to_vop2_video_port(crtc);
> + const struct vop2_video_port_data *vp_data = &vop2->data->vp[vp->id];
> 
> +
> + struct drm_color_lut *lut = crtc->state->gamma_lut->data;
> 
> + unsigned int i, bpc = ilog2(vp_data->gamma_lut_len);
> 
> + u32 word;
> +
> + for (i = 0; i < crtc->gamma_size; i++) {
> 
> + word = (drm_color_lut_extract(lut[i].blue, bpc) << (2 * bpc)) |
> + (drm_color_lut_extract(lut[i].green, bpc) << bpc) |
> + drm_color_lut_extract(lut[i].red, bpc);
> +
> + writel(word, vop2->lut_regs + i * 4);
> 
> + }
> +}
> +
> static void vop2_dither_setup(struct drm_crtc *crtc, u32 *dsp_ctrl)
> {
> struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(crtc->state);
> 
> @@ -2062,6 +2113,42 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
> vop2_unlock(vop2);
> }
> 
> +static int vop2_crtc_atomic_check_gamma(struct vop2_video_port *vp,
> + struct drm_crtc *crtc,
> + struct drm_atomic_state *state,
> + struct drm_crtc_state *crtc_state)
> +{
> + struct vop2 *vop2 = vp->vop2;
> 
> + unsigned int len;
> +
> + if (!vp->vop2->lut_regs || !crtc_state->color_mgmt_changed ||
> 
> + !crtc_state->gamma_lut)
> 
> + return 0;
> +
> + len = drm_color_lut_size(crtc_state->gamma_lut);
> 
> + if (len != crtc->gamma_size) {
> 
> + DRM_DEBUG_KMS("Invalid LUT size; got %d, expected %d\n",
> + len, crtc->gamma_size);
> 
> + return -EINVAL;
> + }
> +
> + // trigger full modeset only when SoC is 356x
> + if (!crtc_state->mode_changed && (vop2->data->soc_id == 3566 ||
> 
> + vop2->data->soc_id == 3568)) {
> 
> + int ret;
> +
> + crtc_state->mode_changed = true;
> 
> + state->allow_modeset = true;
> 
> +
> + ret = drm_atomic_helper_check_modeset(crtc->dev,
> 
> + crtc_state->state);
> 
> + if (ret)
> + return ret;
> + }
> +
> + return 0;
> +}
> +
> static int vop2_crtc_atomic_check(struct drm_crtc *crtc,
> struct drm_atomic_state *state)
> {
> @@ -2069,6 +2156,11 @@ static int vop2_crtc_atomic_check(struct drm_crtc *crtc,
> struct drm_plane *plane;
> int nplanes = 0;
> struct drm_crtc_state *crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
> + int ret;
> +
> + ret = vop2_crtc_atomic_check_gamma(vp, crtc, state, crtc_state);
> + if (ret)
> + return ret;
> 
> drm_atomic_crtc_state_for_each_plane(plane, crtc_state)
> nplanes++;
> @@ -2456,9 +2548,32 @@ static void vop2_setup_dly_for_windows(struct vop2 *vop2)
> vop2_writel(vop2, RK3568_SMART_DLY_NUM, sdly);
> }
> 
> +static void vop2_crtc_atomic_begin_gamma(struct vop2 *vop2,
> + struct vop2_video_port *vp,
> + struct drm_crtc *crtc,
> + struct drm_crtc_state *crtc_state)
> +{
> + if (vop2->lut_regs && crtc_state->color_mgmt_changed &&
> 
> + crtc_state->gamma_lut) {
> 
> + vop2_lock(vop2);
> + if (vop2->data->soc_id == 3566 || vop2->data->soc_id == 3568) {
> 
> + vop2_writel(vop2, RK3568_LUT_PORT_SEL, vp->id);
> 
> + } else {
> + vop2_writel(vop2, RK3568_LUT_PORT_SEL, FIELD_PREP(
> + RK3588_LUT_PORT_SEL__GAMMA_AHB_WRITE_SEL,
> + vp->id));
> 
> + }
> + vop2_crtc_write_gamma_lut(vop2, crtc);
> +
> + vop2_unlock(vop2);
> + }
> +}
> +
> static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
> struct drm_atomic_state *state)
> {
> + struct drm_crtc_state *crtc_state =
> + drm_atomic_get_new_crtc_state(state, crtc);
> struct vop2_video_port *vp = to_vop2_video_port(crtc);
> struct vop2 *vop2 = vp->vop2;
> 
> struct drm_plane *plane;
> @@ -2482,13 +2597,39 @@ static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
> vop2_setup_layer_mixer(vp);
> vop2_setup_alpha(vp);
> vop2_setup_dly_for_windows(vop2);
> +
> + vop2_crtc_atomic_begin_gamma(vop2, vp, crtc, crtc_state);
> +}
> +
> +static void vop2_crtc_atomic_flush_gamma(struct vop2 *vop2,
> + struct vop2_video_port *vp,
> + struct drm_crtc_state *crtc_state)
> +{
> + if (vop2->lut_regs && crtc_state->color_mgmt_changed) {
> 
> + vop2_lock(vop2);
> +
> + if (crtc_state->gamma_lut) {
> 
> + vop2_vp_dsp_lut_enable(vp);
> + if (vop2->data->soc_id != 3566 &&
> 
> + vop2->data->soc_id != 3568)
> 
> + vop2_vp_dsp_lut_update_enable(vp);
> +
> + } else
> + vop2_vp_dsp_lut_disable(vp);
> +
> + vop2_unlock(vop2);
> + }
> }
> 
> static void vop2_crtc_atomic_flush(struct drm_crtc *crtc,
> struct drm_atomic_state *state)
> {
> + struct drm_crtc_state *crtc_state =
> + drm_atomic_get_new_crtc_state(state, crtc);
> struct vop2_video_port *vp = to_vop2_video_port(crtc);
> 
> + vop2_crtc_atomic_flush_gamma(vp->vop2, vp, crtc_state);
> 
> +
> vop2_post_config(crtc);
> 
> vop2_cfg_done(vp);
> @@ -2791,6 +2932,13 @@ static int vop2_create_crtcs(struct vop2 *vop2)
> 
> drm_crtc_helper_add(&vp->crtc, &vop2_crtc_helper_funcs);
> 
> 
> + if (vop2->lut_regs && vp->crtc.dev != NULL) {
> 
> + const struct vop2_video_port_data *vp_data = &vop2_data->vp[vp->id];
> 
> +
> + drm_mode_crtc_set_gamma_size(&vp->crtc, vp_data->gamma_lut_len);
> 
> + drm_crtc_enable_color_mgmt(&vp->crtc, 0, false,
> 
> + vp_data->gamma_lut_len);
> 
> + }
> init_completion(&vp->dsp_hold_completion);
> 
> }
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> index 615a16196aff..510dda6f9092 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> @@ -394,6 +394,7 @@ enum dst_factor_mode {
> #define RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN BIT(15)
> 
> #define RK3568_VP_DSP_CTRL__STANDBY BIT(31)
> +#define RK3568_VP_DSP_CTRL__DSP_LUT_EN BIT(28)
> #define RK3568_VP_DSP_CTRL__DITHER_DOWN_MODE BIT(20)
> #define RK3568_VP_DSP_CTRL__DITHER_DOWN_SEL GENMASK(19, 18)
> #define RK3568_VP_DSP_CTRL__DITHER_DOWN_EN BIT(17)
> @@ -408,6 +409,8 @@ enum dst_factor_mode {
> #define RK3568_VP_DSP_CTRL__CORE_DCLK_DIV BIT(4)
> #define RK3568_VP_DSP_CTRL__OUT_MODE GENMASK(3, 0)
> 
> +#define RK3588_VP_DSP_CTRL__GAMMA_UPDATE_EN BIT(22)
> +
> #define RK3588_VP_CLK_CTRL__DCLK_OUT_DIV GENMASK(3, 2)
> #define RK3588_VP_CLK_CTRL__DCLK_CORE_DIV GENMASK(1, 0)
> 
> @@ -460,6 +463,8 @@ enum dst_factor_mode {
> #define RK3588_DSP_IF_POL__DP1_PIN_POL GENMASK(14, 12)
> #define RK3588_DSP_IF_POL__DP0_PIN_POL GENMASK(10, 8)
> 
> +#define RK3588_LUT_PORT_SEL__GAMMA_AHB_WRITE_SEL GENMASK(13, 12)
> +
> #define RK3568_VP0_MIPI_CTRL__DCLK_DIV2_PHASE_LOCK BIT(5)
> #define RK3568_VP0_MIPI_CTRL__DCLK_DIV2 BIT(4)
> 
> --
> 2.46.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
