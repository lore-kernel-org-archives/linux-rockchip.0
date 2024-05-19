Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03429C25B75
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 May 2024 07:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bT0W6mqen1pvQm7PglHjCOiOyM5Yf8sEDXbK3lE6w3g=; b=ot6O6xtV3fdmod
	0AfrZuzbbW6gfNHptIfl8QbhO5TWrYb0/g/RiZrzQSznXeEFxcHeqO159HDOWPvWjv5BXvTFscEvo
	f5zBhbCDwmkyd7IH7EqhZojxIlDsPXU4L3KACq4esDZXfhpYLamvD4RF3GPctFSD5Blwz0EoTi3v6
	38/mpq70mIR7rF7wn5icgi7LgW8gVLIMH+UxDEVQ6DNBBbq8561DjRNFtKQMLjxuzZMLEFDYTFEmb
	ZwjrQSutnOzfUh0f5uvqODQAnSUxiWBCksYnc8/AoOiixd1YwWweiFilXva6zdwThKrucB/of64gX
	hPJGHn+otjlvIGVh7e+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8bAo-0000000BZWI-0DlF;
	Sun, 19 May 2024 07:41:38 +0000
Received: from out-186.mta1.migadu.com ([2001:41d0:203:375::ba])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8bAk-0000000BZUH-24eS
	for linux-rockchip@lists.infradead.org;
	Sun, 19 May 2024 07:41:36 +0000
X-Envelope-To: val@packett.cool
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1716104484;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=iCzZwZj36Iz4vA1dDun7lszpPSZPxwDHKR4L5BLCjIg=;
	b=uyHLxjhMy3s5Tm8T1twQKRP6W5/3ZNw6oYwG7SQFEmrp6HRLn9yvjp+J4WS2RYr0/Xug/7
	IeOM96jyjfSeADjc5wXZsFDZ4PzL0NkAM2Hnekudu2iQACIYkoHkFHCOFZQeXs0KQi4HxY
	Qz7n9kvfBdnt6WINxFLWpbPNiVTQMrghArcTu81SSvTOh6mO29DLWYTeC6gHJwKnNw3QDj
	l0mR9Pwt6Iq2XP+guouOVkxYjVkvdwEhbxXV8CA2/ZQo//VrO1UA51+Be3fIRslylfuj3b
	CvzZt6Tv3PIRaXu12T4LcfDUSYbmP79QoZiW1g815fC0gY//CBQtKBSTSGN+YQ==
X-Envelope-To: stable@vger.kernel.org
X-Envelope-To: hjc@rock-chips.com
X-Envelope-To: heiko@sntech.de
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: maarten.lankhorst@linux.intel.com
X-Envelope-To: mripard@kernel.org
X-Envelope-To: tzimmermann@suse.de
X-Envelope-To: airlied@gmail.com
X-Envelope-To: daniel@ffwll.ch
X-Envelope-To: dri-devel@lists.freedesktop.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
To: 
Cc: Val Packett <val@packett.cool>,
	stable@vger.kernel.org,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] drm/rockchip: vop: clear DMA stop bit on flush on RK3066
Date: Sun, 19 May 2024 04:31:31 -0300
Message-ID: <20240519074019.10424-1-val@packett.cool>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240519_004134_836604_BBB05275 
X-CRM114-Status: GOOD (  14.74  )
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

On the RK3066, there is a bit that must be cleared on flush, otherwise
we do not get display output (at least for RGB).

Signed-off-by: Val Packett <val@packett.cool>
Cc: stable@vger.kernel.org
---
Hi! This was required to get display working on an old RK3066 tablet,
along with the next tiny patch in the series enabling the RGB output.

I have spent quite a lot of time banging my head against the wall debugging
that display (especially since at the same time a scaler chip is used for
LVDS encoding), but finally adding debug prints showed that RK3066_SYS_CTRL0
ended up being reset to all-zero after being written correctly upon init.
Looking at the register definitions in the vendor driver revealed that the
reason was pretty self-explanatory: "dma_stop".
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 3 +++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 1 +
 3 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index a13473b2d..d4daeba74 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1578,6 +1578,9 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
 
 	spin_lock(&vop->reg_lock);
 
+	/* If the chip has a DMA stop bit (RK3066), it must be cleared. */
+	VOP_REG_SET(vop, common, dma_stop, 0);
+
 	/* Enable AFBC if there is some AFBC window, disable otherwise. */
 	s = to_rockchip_crtc_state(crtc->state);
 	VOP_AFBC_SET(vop, enable, s->enable_afbc);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index b33e5bdc2..0cf512cc1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -122,6 +122,7 @@ struct vop_common {
 	struct vop_reg lut_buffer_index;
 	struct vop_reg gate_en;
 	struct vop_reg mmu_en;
+	struct vop_reg dma_stop;
 	struct vop_reg out_mode;
 	struct vop_reg standby;
 };
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index b9ee02061..9bcb40a64 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -466,6 +466,7 @@ static const struct vop_output rk3066_output = {
 };
 
 static const struct vop_common rk3066_common = {
+	.dma_stop = VOP_REG(RK3066_SYS_CTRL0, 0x1, 0),
 	.standby = VOP_REG(RK3066_SYS_CTRL0, 0x1, 1),
 	.out_mode = VOP_REG(RK3066_DSP_CTRL0, 0xf, 0),
 	.cfg_done = VOP_REG(RK3066_REG_CFG_DONE, 0x1, 0),
-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
