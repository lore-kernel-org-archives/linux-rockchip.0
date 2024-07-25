Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5E9FC3DA5D
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jul 2024 19:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0HT5pSxLccvs/TdHW03raJaItnP1n2a9GYU2Dc+aDHs=; b=t+ZtZrRKYHEdMD
	Ez21pj/qQk1fJotEh6w3mH+o1+MfC8d0YkLpw33eUA0ZAyp9WB/iOGSgdLwSZIGiQhoSj6TMinzCy
	vg7+KZu92H9Dvgd3xvgSmTxjQ0IFE735eY0hiwRnPlbgyJ8Qvu6Ijl9E7YhIQMaYTmc+sbeLjYRmM
	r6bGDXr90NC4tTzTBpCbWrVCxTLS9DibBbMe/JB+nj7AYZFPbhEK8hHVNbIHMQZC4AfxP+robkDWI
	naVxL7aJ0jqQDjeuyQ5FPg3BpdeaF/eY14owrXhII+XaRBdYR9l/XFc/P4r+qHR/S9zQswyspx+tN
	CUkv451uebfbDNu3emSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sX3nn-00000001rg1-0007;
	Thu, 25 Jul 2024 19:06:59 +0000
Received: from mail-43166.protonmail.ch ([185.70.43.166])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sX3nO-00000001rb5-1bYh
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Jul 2024 19:06:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1721934389; x=1722193589;
	bh=x81TfLwbeRD7LO1ywJlnBHjBlqnbvQnAgiDB8r7qObQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ku5ajV0Y0RHq30r7SirfHs6StZZSZ7OkbzbAwEYhmNyH0GvHypT0q6andmEXTILg+
	 jS2eVKbTle2HUONQfPGqzEDFLsTUaBbirmGCPhUjZiReINPATEuoXFyGcNydOvog8K
	 GQqrPYQ3vCMmGPAlE7H7Rn1As0CA0+UYB6mvKDwrCbpRBoapteifXJViyhvT9wMaQS
	 1qc8bIZ+M7xcH3XsaN5kIbUpHJsB+mvnlwIQLxFv61vaHHI0DUHRmk/7qKngg4q4cl
	 jSnlp1Zd6yUZQ6IMCJfpLqel6H5eOgsEK1Mhdmz9g7krz7LoBGrF65EcN/7g9oKQnX
	 KQ3PErfuhs+lg==
Date: Thu, 25 Jul 2024 19:06:23 +0000
To: Daniel Stone <daniel@fooishbar.org>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: "airlied@gmail.com" <airlied@gmail.com>, "andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "heiko@sntech.de" <heiko@sntech.de>, "hjc@rock-chips.com" <hjc@rock-chips.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "mripard@kernel.org" <mripard@kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>
Subject: Re: [PATCH v3] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <PGDz1uKmBh2U_yB-ut5xcahPHdmxgrIRAwALnJzsEHFuYssmMhQUz8jbHpEyUDBMjVbmQCjlP3K4gbzw3zZ53HhXUsXufBb5YzptnC58aeQ=@proton.me>
In-Reply-To: <CAPj87rPwJ-vRTsjM1rWRj1gyjbJM_ryrkTiPRBF3ZF1D7TVDYw@mail.gmail.com>
References: <TkgKVivuaLFLILPY-n3iZo_8KF-daKdqdu-0_e0HP-5Ar_8DALDeNWog2suwWKjX7eomcbGET0KZe7DlzdhK2YM6CbLbeKeFZr-MJzJMtw0=@proton.me> <CAPj87rPwJ-vRTsjM1rWRj1gyjbJM_ryrkTiPRBF3ZF1D7TVDYw@mail.gmail.com>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: e0ffaa85b1c367437802927356ee731dc03456bd
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_120634_812175_EADFE741 
X-CRM114-Status: GOOD (  13.19  )
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



On Thursday, July 25th, 2024 at 12:28 PM, Daniel Stone <daniel@fooishbar.org> wrote:

> Hi Piotr,

Hi, Daniel!

Thank you for the review.

> 
> In the atomic_enable callback, we are already holding the VOP lock,
> and waiting to set cfg_done etc - we then do it all over again here.
> This should all be atomic, so that we configure the LUT whilst doing
> the setup, and then only call cfg_done once, to avoid showing the user
> intermediate states which only later converge on the desired final
> state.
> 

I based my patch on how gamma LUT is handled in VOP. There, in atomic 
enable, gamma LUT write takes places at the end too, after the mutex was 
already first-time unlocked. I understand the concept of DRM atomic state 
updates and what you wrote makes sense.

Below is what I came up with to make it fulfill atomicity requirement. 
Frankly, the code ended up simpler. I tested it on RK3566 (Pinetab2).
Let me know what do you think.

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 37fcf544a5fd..cba92239dcbc 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1497,22 +1497,6 @@ static bool vop2_vp_dsp_lut_is_enabled(struct vop2_video_port *vp)
 	    0;
 }
 
-static void vop2_vp_dsp_lut_enable(struct vop2_video_port *vp)
-{
-	u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
-
-	dsp_ctrl |= RK3568_VP_DSP_CTRL__DSP_LUT_EN;
-	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
-}
-
-static void vop2_vp_dsp_lut_disable(struct vop2_video_port *vp)
-{
-	u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);
-
-	dsp_ctrl &= ~RK3568_VP_DSP_CTRL__DSP_LUT_EN;
-	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
-}
-
 static void vop2_crtc_write_gamma_lut(struct vop2 *vop2, struct drm_crtc *crtc)
 {
 	const struct vop2_video_port *vp = to_vop2_video_port(crtc);
@@ -1532,11 +1516,12 @@ static void vop2_crtc_write_gamma_lut(struct vop2 *vop2, struct drm_crtc *crtc)
 }
 
 static void vop2_crtc_gamma_set(struct vop2 *vop2, struct drm_crtc *crtc,
-				struct drm_crtc_state *old_state)
+				struct drm_crtc_state *old_state,
+				u32* dsp_ctrl)
 {
 	struct drm_crtc_state *state = crtc->state;
 	struct vop2_video_port *vp = to_vop2_video_port(crtc);
-	u32 dsp_ctrl;
+	u32 _dsp_ctrl;
 	int ret;
 
 	if (!vop2->lut_regs)
@@ -1547,37 +1532,27 @@ static void vop2_crtc_gamma_set(struct vop2 *vop2, struct drm_crtc *crtc,
 		 * To disable gamma (gamma_lut is null) or to write
 		 * an update to the LUT, clear dsp_lut_en.
 		 */
-		vop2_lock(vop2);
-
-		vop2_vp_dsp_lut_disable(vp);
-
-		vop2_cfg_done(vp);
-		vop2_unlock(vop2);
-		/*
-		 * In order to write the LUT to the internal memory,
-		 * we need to first make sure the dsp_lut_en bit is cleared.
-		 */
-		ret = readx_poll_timeout(vop2_vp_dsp_lut_is_enabled, vp, dsp_ctrl,
-				!dsp_ctrl, 5, 30 * 1000);
-
-		if (ret) {
-			DRM_DEV_ERROR(vop2->dev, "display LUT RAM enable timeout!\n");
-			return;
-		}
+		*dsp_ctrl &= ~RK3568_VP_DSP_CTRL__DSP_LUT_EN;
 
 		if (!state->gamma_lut)
 			return;
 	}
 
+	/*
+	 * In order to write the LUT to the internal memory,
+	 * we need to first make sure the dsp_lut_en bit is cleared.
+	 */
+	ret = readx_poll_timeout(vop2_vp_dsp_lut_is_enabled, vp, _dsp_ctrl,
+			!_dsp_ctrl, 5, 30 * 1000);
+	if (ret) {
+		DRM_DEV_ERROR(vop2->dev, "display LUT RAM enable timeout!\n");
+		return;
+	}
 
-	vop2_lock(vop2);
 	vop2_crtc_write_gamma_lut(vop2, crtc);
 	vop2_writel(vp->vop2, RK3568_LUT_PORT_SEL, vp->id);
 
-	vop2_vp_dsp_lut_enable(vp);
-
-	vop2_cfg_done(vp);
-	vop2_unlock(vop2);
+	*dsp_ctrl |= RK3568_VP_DSP_CTRL__DSP_LUT_EN;
 }
 
 static void vop2_dither_setup(struct drm_crtc *crtc, u32 *dsp_ctrl)
@@ -2152,6 +2127,9 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	vop2_post_config(crtc);
 
+	if (crtc->state->gamma_lut)
+		vop2_crtc_gamma_set(vop2, crtc, old_state, &dsp_ctrl);
+
 	vop2_cfg_done(vp);
 
 	vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
@@ -2160,8 +2138,6 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	vop2_unlock(vop2);
 
-	if (crtc->state->gamma_lut)
-		vop2_crtc_gamma_set(vop2, crtc, old_state);
 }
 
 static int vop2_crtc_atomic_check(struct drm_crtc *crtc,
@@ -2599,8 +2575,17 @@ static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
 	vop2_setup_alpha(vp);
 	vop2_setup_dly_for_windows(vop2);
 
-	if (crtc_state->color_mgmt_changed && !crtc_state->active_changed)
-		vop2_crtc_gamma_set(vop2, crtc, old_crtc_state);
+	if (crtc_state->color_mgmt_changed && !crtc_state->active_changed) {
+		u32 dsp_ctrl = vop2_vp_read(vp, RK3568_VP_DSP_CTRL);;
+
+		vop2_lock(vop2);
+
+		vop2_crtc_gamma_set(vop2, crtc, old_crtc_state, &dsp_ctrl);
+
+		vop2_vp_write(vp, RK3568_VP_DSP_CTRL, dsp_ctrl);
+		vop2_cfg_done(vp);
+		vop2_unlock(vop2);
+	}
 }
 
 static void vop2_crtc_atomic_flush(struct drm_crtc *crtc,


Best regards, Piotr Zalewski

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
