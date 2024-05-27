Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B1A5C25B7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 07:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DQlVSF36WVgB1xq2W2aFJtbw//1ZXQKnZY5CR0yif0=; b=gNE7zHLwr6+Ssq
	/eul/6y43Y6ccVkx/UZBAiKI8YgMsm1eKbM/XzoBfixgzlUCSalIQsp1tk3nebGJ2zcuLDM8NsF7+
	TfEZnFDOROzUk49KN4VXp5P/q6b9bor9iCbNWvcU7JA/kyEddU8egSPzyVdThmdHsGRF3278T9332
	9XxvKAb8FlbHUD41W913avwfzcFMOPAR+tmq+C5HVRNXpsIkTy3Flr5qchnQ9ug42G4afXjNFHfGo
	KHYzpAfFSeDgS89sLOqtshWZbuDXotTkb5puZvzp3c/UB5nOEQUlCPF1pNvNF+C5QkPZx4ajpNtiD
	ImkYIdQkXQGcv8ZIC3TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUdB-0000000E1rb-0Tnc;
	Mon, 27 May 2024 07:18:53 +0000
Received: from out-187.mta1.migadu.com ([95.215.58.187])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUd8-0000000E1pD-0Cwm
	for linux-rockchip@lists.infradead.org;
	Mon, 27 May 2024 07:18:51 +0000
X-Envelope-To: val@packett.cool
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1716794318;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X/HcY+X0iAsHdzRuxUa8q7blOFA1qc44VzdOT0NN0pc=;
	b=iy9ORCzh7lapaOkZMTEJsmXVG/+BIMfnecYQMWgUjZ2+sq98W3zFVnqaDLifxgDJS2XrSH
	pqXfwVLJ8PIpmhN4yufkns0BlQG4ykCgGjQLMpzlINXF14ulgAuORgPV+1j9sJRxrbebzI
	b7hnSCmVc9jO6U7KghD6m/ICuf5rLFHDJ/1JqSIec75UTBjYmG6RDXz8/46cYrxAxT0iIY
	uGtYK/+pQc+T97tX+QT8gnz6JNrWV2k88u3VWgnHklhVArsgqcKwxOaBh7LbUh0KQOfJs0
	DEBJe40GfOwFR5n90lNX2zfx1KbjYxwvL4vg0SmjWklkoAiZL/M375No+Jnq1Q==
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
Subject: [PATCH v2 1/2] drm/rockchip: vop: clear DMA stop bit upon vblank on RK3066
Date: Mon, 27 May 2024 04:16:33 -0300
Message-ID: <20240527071736.21784-1-val@packett.cool>
In-Reply-To: <2024051930-canteen-produce-1ba7@gregkh>
References: <2024051930-canteen-produce-1ba7@gregkh>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_001850_333525_39FB1082 
X-CRM114-Status: GOOD (  12.02  )
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

On the RK3066, there is a bit that must be cleared, otherwise
the picture does not show up on the display (at least for RGB).

Fixes: f4a6de8 ("drm: rockchip: vop: add rk3066 vop definitions")
Cc: stable@vger.kernel.org
Signed-off-by: Val Packett <val@packett.cool>
---
v2: doing this on vblank makes more sense; added fixes tag
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 6 ++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 1 +
 3 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index a13473b2d..2731fe2b2 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1766,6 +1766,12 @@ static void vop_handle_vblank(struct vop *vop)
 	}
 	spin_unlock(&drm->event_lock);
 
+	if (VOP_HAS_REG(vop, common, dma_stop)) {
+		spin_lock(&vop->reg_lock);
+		VOP_REG_SET(vop, common, dma_stop, 0);
+		spin_unlock(&vop->reg_lock);
+	}
+
 	if (test_and_clear_bit(VOP_PENDING_FB_UNREF, &vop->pending))
 		drm_flip_work_commit(&vop->fb_unref_work, system_unbound_wq);
 }
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
2.45.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
