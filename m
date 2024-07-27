Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F8F5C3DA61
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jul 2024 17:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wx6/ViplrVJ3ln2ZvpXMno2lTCaQVIxpkSjGNxsn6cY=; b=RklgVEpdQ7L6Ub
	/bNoUAKCERMvMGjhq1bJ31NE2lK9n2dL3frFl+HR3KjSU9UU21UbF7OJkUTCPB7jJ1A/9r8ULtizP
	0tP8yWdyAGvKMz8YnW68Wjwuzo/O4sp3VZspRisSjM0Gyq+pM+jNx3Qtovi1RJMjI+pm+MkNyLOMA
	1GWXdldSOQ1N5mXsQXuy10T0DA7oh8roQEfYyY5SN0P7QFgI0rEyCblwxdvEjP0/f6qnLX8PJwQr0
	lKc7fokq2Pa4HAOmGLOt2OFtesYWfSfOtVGVBnhbT1U5rYGUylQKpTkZVnPvbAgrcp7yqy9l0V3BR
	mKXE8cTFsqQVZzkkipnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXlTn-000000073xC-2Llv;
	Sat, 27 Jul 2024 17:45:15 +0000
Received: from mail-43167.protonmail.ch ([185.70.43.167])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXlTM-000000073tK-0sxL;
	Sat, 27 Jul 2024 17:44:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=wqr2p5rnn5hlrfu7vbs3syfx2q.protonmail; t=1722102285; x=1722361485;
	bh=QhVLypATs6LoKzU1QSk1WY58Mm3TF8AwxlQoMqadsB8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=mMd8LMcyPdwjZAtYcbghoMoubpEkd7vxpG4QArBO40+EOT2QksUvQmUuFHMj2n5Ty
	 wSm208Mf+B2b4an/E/7AFNFeLQkenYUeCIaScGZ1Ad54FRy441WhFs5AawjyM1EnSC
	 H5X5I53QIiNWMXivkm52lpPDrLL33Dlh6vFpaXXXBWhB81sl345hWARtumYQ1+wLBs
	 yJSbTex/ugdzpcFLhJLT2S9Oc5A0PxIE3XzF7+qXK/1DyCocAiuEa5NqZ4gN/OPNzT
	 EuJWxyOLzUPHfGEjPZWPz/cuK6SKKQJlPT07pcJKuItMMbrnImbsplkDwhvzLRgoSR
	 YfED785bCSUnw==
Date: Sat, 27 Jul 2024 17:44:39 +0000
To: Daniel Stone <daniel@fooishbar.org>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: "airlied@gmail.com" <airlied@gmail.com>, "andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "heiko@sntech.de" <heiko@sntech.de>, "hjc@rock-chips.com" <hjc@rock-chips.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "mripard@kernel.org" <mripard@kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>
Subject: Re: [PATCH v3] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <iK93HIUOzw25uDw1H2qJ2uwmrUfdjSNKoK3JTPnPmye49SOdN7H_XAZIT-mFZpx1wc9nVJ_bIASP5PbXBIbovsRdEMW80QJX-lnkyvViWFI=@proton.me>
In-Reply-To: <CAPj87rOM=j0zmuWL9frGKV1xzPbJrk=Q9ip7F_HAPYnbCqPouw@mail.gmail.com>
References: <TkgKVivuaLFLILPY-n3iZo_8KF-daKdqdu-0_e0HP-5Ar_8DALDeNWog2suwWKjX7eomcbGET0KZe7DlzdhK2YM6CbLbeKeFZr-MJzJMtw0=@proton.me> <CAPj87rPwJ-vRTsjM1rWRj1gyjbJM_ryrkTiPRBF3ZF1D7TVDYw@mail.gmail.com> <PGDz1uKmBh2U_yB-ut5xcahPHdmxgrIRAwALnJzsEHFuYssmMhQUz8jbHpEyUDBMjVbmQCjlP3K4gbzw3zZ53HhXUsXufBb5YzptnC58aeQ=@proton.me> <CAPj87rOM=j0zmuWL9frGKV1xzPbJrk=Q9ip7F_HAPYnbCqPouw@mail.gmail.com>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: ff9273a8a210d1cf69f9f0e3f33f30657d70a104
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240727_104448_722097_9016B74A 
X-CRM114-Status: GOOD (  25.82  )
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

On Friday, July 26th, 2024 at 1:31 PM, Daniel Stone <daniel@fooishbar.org> wrote:

> Hi Piotr,

Hi Daniel, sorry for delayed response.

>
> > static void vop2_dither_setup(struct drm_crtc *crtc, u32 *dsp_ctrl)
> > @@ -2152,6 +2127,9 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
> >
> > vop2_post_config(crtc);
> >
> > + if (crtc->state->gamma_lut)
> > + vop2_crtc_gamma_set(vop2, crtc, old_state, &dsp_ctrl);
>
>
> I think this call should be unconditional, so that we correctly
> program LUT_DIS if there is no LUT set up during enable.
>

Noted

> > @@ -2599,8 +2575,17 @@ static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
> > vop2_setup_alpha(vp);
> > vop2_setup_dly_for_windows(vop2);
> >
> > - if (crtc_state->color_mgmt_changed && !crtc_state->active_changed)
> > - vop2_crtc_gamma_set(vop2, crtc, old_crtc_state);
> > + if (crtc_state->color_mgmt_changed && !crtc_state->active_changed) {
> > + u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);;
> > +
> > + vop2_lock(vop2);
> > +
> > + vop2_crtc_gamma_set(vop2, crtc, old_crtc_state, &dsp_ctrl);
> > +
> > + vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
> > + vop2_cfg_done(vp);
> > + vop2_unlock(vop2);
> > + }
>
>
> Calling lock/set/write/done/unlock here seems like an anti-pattern;
> the cfg_done is already written in atomic_flush, so at least that part
> is not necessary.

Right sorry for sending such code. I wanted to demonstrate the idea.

> On platforms like RK3588, it looks like the new LUT can just be
> written directly from atomic_begin without needing to program
> DSP_CTRL, take locks, or synchronise against anything, so that should
> be an easy straight-line path.
>
> On platforms like RK3568, it would probably be better to set
> mode_changed when the colour management configuration changes. That
> will give you a good point to synchronise the cross-VOP dependencies
> (i.e. claim or release the shared LUT when it is being
> enabled/disabled), and also a hint to userspace that it is not going
> to be a seamless transition as the LUT is disabled, programmed, then
> re-enabled.
>
> I think this would end up in a net reduction of LoC as well as a net
> reduction of code weirdness.

Okay so if I understood you correctly you suggest setting mode_changed in 
order to trigger full modeset (check->begin->flush->enable) to cleanly 
handle the RK356x case and for RK3588 just write the LUT in begin and 
don't do anything more.

I tried to do this but couldn't get the thing to work. It seems like 
setting the mode_changed manually in atomic_check, messes something up 
with the CRTC states. Namely, the retrieved new state in subsequent 
atomic_begin call isn't the same state (as a result, flags 
color_mgmt_changed and mode_changed are both false when they are checked 
in atomic_begin which stops further gamma LUT reconfiguration). Below is 
how I reworked this (included only parts which changed).

As already mentioned, in atomic check the mode_changed flag is set, then in 
atomic begin gamma LUT is disabled and DSP_LUT_EN bit unset (or gamma LUT 
is written directly based on if it's RK356x or not). Then in atomic_flush 
video port is selected and gamma LUT is written. Gamma LUT is enabled in 
atomic_enable.

Perhaps I'm missing something important, if so please hint what exactly. 

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 9873172e3fd3..9c5ee2d85a58 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2051,6 +2092,13 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	clk_set_rate(vp->dclk, clock);
 
+	/**
+	 * Enable gamma LUT in atomic enable
+	 */
+	if (crtc_state->gamma_lut && (vop2->data->soc_id == 3566 ||
+				      vop2->data->soc_id == 3568))
+		dsp_ctrl |= RK3568_VP_DSP_CTRL__DSP_LUT_EN;
+
 	vop2_post_config(crtc);
 
 	vop2_cfg_done(vp);
@@ -2062,6 +2110,39 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 	vop2_unlock(vop2);
 }
 
+static int vop2_crtc_atomic_check_gamma(struct vop2_video_port *vp,
+					struct drm_crtc *crtc,
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
+		DRM_DEBUG_KMS("Invalid LUT size; got %d, expected %d\n",
+				      len, crtc->gamma_size);
+		return -EINVAL;
+	}
+
+	if (!crtc_state->mode_changed && (vop2->data->soc_id == 3566 ||
+					  vop2->data->soc_id == 3568)) {
+		int ret;
+
+		crtc_state->mode_changed = true;
+
+		ret = drm_atomic_helper_check_modeset(crtc->dev,
+				crtc_state->state);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static int vop2_crtc_atomic_check(struct drm_crtc *crtc,
 				  struct drm_atomic_state *state)
 {
@@ -2069,6 +2150,11 @@ static int vop2_crtc_atomic_check(struct drm_crtc *crtc,
 	struct drm_plane *plane;
 	int nplanes = 0;
 	struct drm_crtc_state *crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
+	int ret;
+
+	ret = vop2_crtc_atomic_check_gamma(vp, crtc, crtc_state);
+	if (ret)
+		return ret;
 
 	drm_atomic_crtc_state_for_each_plane(plane, crtc_state)
 		nplanes++;
@@ -2456,9 +2542,36 @@ static void vop2_setup_dly_for_windows(struct vop2 *vop2)
 	vop2_writel(vop2, RK3568_SMART_DLY_NUM, sdly);
 }
 
+static void vop2_crtc_atomic_begin_gamma(struct vop2 *vop2,
+					struct drm_crtc *crtc) {
+	struct vop2_video_port *vp = to_vop2_video_port(crtc);
+	int ret;
+	u32 dsp_ctrl;
+
+	vop2_lock(vop2);
+	/**
+	 * Gamma lut always has to be disabled in both cases. When gamma
+	 * lut is enabled it needs to be disabled before writing (Applies
+	 * only to RK356x SoCs).
+	 */
+	vop2_vp_dsp_lut_disable(vp);
+
+	vop2_cfg_done(vp);
+	vop2_unlock(vop2);
+
+	ret = readx_poll_timeout(vop2_vp_dsp_lut_is_enabled, vp, dsp_ctrl,
+			!dsp_ctrl, 5, 30 * 1000);
+	if (ret) {
+		DRM_DEV_ERROR(vop2->dev,
+			"display LUT RAM enable timeout!\n");
+	}
+}
+
 static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
 				   struct drm_atomic_state *state)
 {
+	struct drm_crtc_state *crtc_state =
+		drm_atomic_get_new_crtc_state(state, crtc);
 	struct vop2_video_port *vp = to_vop2_video_port(crtc);
 	struct vop2 *vop2 = vp->vop2;
 	struct drm_plane *plane;
@@ -2482,13 +2595,50 @@ static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
 	vop2_setup_layer_mixer(vp);
 	vop2_setup_alpha(vp);
 	vop2_setup_dly_for_windows(vop2);
+
+	if (crtc_state->color_mgmt_changed && !crtc_state->active_changed) {
+		/**
+		 * When the SoC is RK356x gamma lut change always triggers
+		 * mode_changed - proceed with gamma lut disable
+		 */
+		if (crtc_state->mode_changed &&
+		    (vop2->data->soc_id == 3566 ||
+		     vop2->data->soc_id == 3568))
+			vop2_crtc_atomic_begin_gamma(vop2, crtc);
+		/**
+		 * When the Soc isn't RK356x (eg. RK3588) gamma lut can be
+		 * written directly
+		 */
+		else if (crtc_state->gamma_lut)
+			vop2_crtc_write_gamma_lut(vop2, crtc);
+	}
+}
+
+static void vop2_crtc_atomic_flush_gamma(struct vop2 *vop2, struct vop2_video_port *vp, struct drm_crtc *crtc)
+{
+	if (vop2->data->soc_id == 3566 || vop2->data->soc_id == 3568) {
+		vop2_lock(vop2);
+
+		vop2_crtc_write_gamma_lut(vop2, crtc);
+		vop2_writel(vp->vop2, RK3568_LUT_PORT_SEL, vp->id);
+
+		vop2_unlock(vop2);
+	}
 }
 
 static void vop2_crtc_atomic_flush(struct drm_crtc *crtc,
 				   struct drm_atomic_state *state)
 {
+	struct drm_crtc_state *crtc_state =
+		drm_atomic_get_new_crtc_state(state, crtc);
 	struct vop2_video_port *vp = to_vop2_video_port(crtc);
 
+	/**
+	 * Write gamma LUT in atomic flush
+	 */
+	if (crtc_state->mode_changed && crtc_state->gamma_lut)
+		vop2_crtc_atomic_flush_gamma(vp->vop2, vp, crtc);
+
 	vop2_post_config(crtc);
 
 	vop2_cfg_done(vp);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
