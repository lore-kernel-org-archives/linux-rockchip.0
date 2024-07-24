Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 778ABC3DA63
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jul 2024 19:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:From:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SG6d9N/6gIgcHLmyue4UsZ8p6TdMBQ3eRq9/Xfz0wVk=; b=wrePLssRQHP6+s
	um6A8KUdJUb/Dh66JLumie12M9oBxFFTdOMTg7rcnYzgExpvkxGPfecshQULs8+EmgdMmR0XI5Utl
	GSG1IwWCux8d9lOM1zIMCQWJG3ww5dlagkHg4ESJenlauWEfvkZGBlE1EJT5cjRVahqx5rLbRubBV
	EDe/TXIVuoxhpMB1edhhHu57yH98nt4NbNhakdGPRlieMCB4F5LQqCABCaZfYtALRqafy1vEUbVPT
	zT1USCDEGqknIwMW7n9fbFzFL3zwYw/TYCa+d+7ND2G4uy0vcAdbjjvQiFUMhH/UpwueX2csG59tC
	S55jx4IlVm4K6T12kcMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWhJy-0000000GHn5-2nFa;
	Wed, 24 Jul 2024 19:06:42 +0000
Received: from mail-40130.protonmail.ch ([185.70.40.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWhJf-0000000GHiu-1PUY
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jul 2024 19:06:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1721847972; x=1722107172;
	bh=xXyqPAWiPGTlRuUl6Au8Vf9PuxCMIzRAhei2a3kfeEc=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=SXHfdTkirkEZ7voqfB1b9hCVgNVFDCeiog1HpomvahB/1qkgF/apiVYgqfMBlNNLX
	 ibac/UXQF/TynZ5If8hwimNQaDS+i/pGgl9bpmstV+AAr1eNbzDFjz1EGOA8KwCnMm
	 I3p0Tj/4sjm6mJ8KslR1bgdYMTCjfVFaE43oK+aLmzM4XEMjf/8e3BDTgfP125e29N
	 oz9vncaAOwRbr9WxYFNtORrtN4BDBJqR/U3jmrQ+hqbEVejnSuFmncEgcQMnTVZDAu
	 lnP8LvcOxQz0tKnHGZ1NqLBJ6dvK8no3vkkte3/hiUiq2udoFv3FvnPMqj2+vfwxx1
	 73KoCFUrOPhtg==
Date: Wed, 24 Jul 2024 19:06:01 +0000
To: "airlied@gmail.com" <airlied@gmail.com>, "andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "heiko@sntech.de" <heiko@sntech.de>, "hjc@rock-chips.com" <hjc@rock-chips.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "mripard@kernel.org" <mripard@kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>
From: Piotr Zalewski <pZ010001011111@proton.me>
Subject: [PATCH v2] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <Hk03HDb6wSSHWtEFZHUye06HR0-9YzP5nCHx9A8_kHzWSZawDrU1o1pjEGkCOJFoRg0nTB4BWEv6V0XBOjF4-0Mj44lp2TrjaQfnytzp-Pk=@proton.me>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 2763f33b849810a95c08efa9a15f31ec8564793e
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_120623_527088_8C5A5396 
X-CRM114-Status: UNSURE (   7.35  )
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

Add support for gamma LUT in VOP2 driver. The implementation is based on
the one found in VOP driver and modified to be compatible with VOP2. Blue
and red channels in gamma LUT register write were swapped with respect to
how gamma LUT values are written in VOP. Write of the current video port id
to VOP2_SYS_LUT_PORT_SEL register was added before the write of DSP_LUT_EN
bit. Gamma size is set and drm color management is enabled for each video
port's CRTC except ones which have no associated device. Tested on RK3566
(Pinetab2).

Helped-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Piotr Zalewski <pZ010001011111@proton.me>
---

Notes:
    Changes in v2:
        - Apply code styling corrections [1]
        - Move gamma LUT write inside the vop2 lock
    
    Link to v1: https://lore.kernel.org/linux-rockchip/9736eadf6a9d8e97eef919c6b3d88828@manjaro.org/T/#t
    
    [1] https://lore.kernel.org/linux-rockchip/d019761504b540600d9fc7a585d6f95f@manjaro.org/

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 16abdc4a59a8..37fcf544a5fd 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1515,9 +1515,8 @@ static void vop2_vp_dsp_lut_disable(struct vop2_video_port *vp)
 
 static void vop2_crtc_write_gamma_lut(struct vop2 *vop2, struct drm_crtc *crtc)
 {
-	const struct vop2_data *vop2_data = vop2->data;
 	const struct vop2_video_port *vp = to_vop2_video_port(crtc);
-	const struct vop2_video_port_data *vp_data = &vop2_data->vp[vp->id];
+	const struct vop2_video_port_data *vp_data = &vop2->data->vp[vp->id];
 
 	struct drm_color_lut *lut = crtc->state->gamma_lut->data;
 	unsigned int i, bpc = ilog2(vp_data->gamma_lut_len);
@@ -1558,9 +1557,8 @@ static void vop2_crtc_gamma_set(struct vop2 *vop2, struct drm_crtc *crtc,
 		 * In order to write the LUT to the internal memory,
 		 * we need to first make sure the dsp_lut_en bit is cleared.
 		 */
-		ret =
-		    readx_poll_timeout(vop2_vp_dsp_lut_is_enabled, vp, dsp_ctrl, !dsp_ctrl, 5,
-				       30 * 1000);
+		ret = readx_poll_timeout(vop2_vp_dsp_lut_is_enabled, vp, dsp_ctrl,
+				!dsp_ctrl, 5, 30 * 1000);
 
 		if (ret) {
 			DRM_DEV_ERROR(vop2->dev, "display LUT RAM enable timeout!\n");
@@ -1571,9 +1569,9 @@ static void vop2_crtc_gamma_set(struct vop2 *vop2, struct drm_crtc *crtc,
 			return;
 	}
 
-	vop2_crtc_write_gamma_lut(vop2, crtc);
 
 	vop2_lock(vop2);
+	vop2_crtc_write_gamma_lut(vop2, crtc);
 	vop2_writel(vp->vop2, RK3568_LUT_PORT_SEL, vp->id);
 
 	vop2_vp_dsp_lut_enable(vp);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
