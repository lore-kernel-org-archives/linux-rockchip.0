Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BA3EE77173
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Dec 2024 19:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:From
	:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BVoTlD3b1rKy2ixVmyF9+ykEhoUev5pbqpS5O2IEKZQ=; b=Ihtz+G3kFiqzOt
	R+NQ9G1iTbziq30HAOnUBQNoPhw18xOIwYt9tVYt+B8TxJeaH3iSNyvgvAuzNT6HUdMmyOIuLnrV2
	k1SPMGchf56K3GT3dUXg9AQW3fiIgAiVZ+IUuw+uXWWLzX1Jwt0tCuePmT0Apdxx9qnMQPDhZR6rn
	srcvJBKDcesLDKDt5E0/mGLWPIOPcD0wjqq0/N3qRTucRum0UlV9HUVRf8BnEHJznGvi3ALjvM9OP
	5xwkr7AvM+0bs8x9EHL9n+b3aFXjxtLPu6bPIo9r5mAT5514zb/G8/Qxh5RComyV0mG9f1r7cSmR4
	Tc1jAl8exJW+rfC+ekLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJdz5-00000002Y78-1lWC;
	Fri, 06 Dec 2024 19:27:27 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJdy1-00000002XwQ-28pD;
	Fri, 06 Dec 2024 19:26:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1733513176; x=1733772376;
	bh=X8JUvZDF8pZ0yrFE3tmHbXwwXfZImzkkNaXc3mj/tqA=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector:
	 List-Unsubscribe:List-Unsubscribe-Post;
	b=TgMB9PJiYp1AurePQcKDKKRhb5iu7GXqi7HXbRGra+wqFlXoUGGHvGPUG4I8EzHCf
	 38EZb0oX8K8OOhPCN4JxOEvRaHBabV/nh+bAmgtOaYnwjW7K5p1scQueIbixupVC5H
	 VUlhfcSyz/U8Kty3kKByJkbOUWkTGYIrcO1H3QI0FbuRidUd3yr6+ItKsqlPqydlTQ
	 nLok/LZDKd4/3MCaC9ICWJt5kavTRXGtjt0Sh1r6Ksb87k2amfohwKGNr6ZtsfQcEe
	 pfCYLGTLQlQAT0yQlrqSLzC5CBhMKMmJtWcJrEVNr5tCtfrDgsbBgmzhfDJ08byBhh
	 pbK1JdFAXvUmQ==
Date: Fri, 06 Dec 2024 19:26:10 +0000
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: Piotr Zalewski <pZ010001011111@proton.me>
Subject: [PATCH drm-misc-next] rockchip/drm: vop2: don't check color_mgmt_changed in atomic_enable
Message-ID: <20241206192013.342692-3-pZ010001011111@proton.me>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: eb3005eed4d313c0c579f9dbf9bb42fd9ad30527
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_112622_280737_663D52C8 
X-CRM114-Status: UNSURE (   8.17  )
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

Remove color_mgmt_changed check from vop2_crtc_atomic_try_set_gamma to
allow gamma LUT rewrite during modeset when coming out of suspend. Add
a check for color_mgmt_changed directly in vop2_crtc_atomic_flush.

This patch fixes the patch adding gamma LUT support for vop2 [1].

[1] https://lore.kernel.org/linux-rockchip/20241101185545.559090-3-pZ010001011111@proton.me/

Suggested-by: Andy Yan <andy.yan@rock-chips.com>
Signed-off-by: Piotr Zalewski <pZ010001011111@proton.me>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 0c8ec7220fbe..d259f1c6571d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1601,7 +1601,7 @@ static void vop2_crtc_atomic_try_set_gamma(struct vop2 *vop2,
 					   struct drm_crtc *crtc,
 					   struct drm_crtc_state *crtc_state)
 {
-	if (!vop2->lut_regs || !crtc_state->color_mgmt_changed)
+	if (!vop2->lut_regs)
 		return;
 
 	if (!crtc_state->gamma_lut) {
@@ -2669,7 +2669,7 @@ static void vop2_crtc_atomic_flush(struct drm_crtc *crtc,
 	struct vop2 *vop2 = vp->vop2;
 
 	/* In case of modeset, gamma lut update already happened in atomic enable */
-	if (!drm_atomic_crtc_needs_modeset(crtc_state))
+	if (!drm_atomic_crtc_needs_modeset(crtc_state) && crtc_state->color_mgmt_changed)
 		vop2_crtc_atomic_try_set_gamma_locked(vop2, vp, crtc, crtc_state);
 
 	vop2_post_config(crtc);
-- 
2.47.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
