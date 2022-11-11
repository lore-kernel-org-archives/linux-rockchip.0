Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E040AC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Nov 2022 02:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jeMzXPeEgLpFUhP5+oYU/nDy26hj+PEPyP+VneefF0Y=; b=f1dNZc4mZ5r0Av
	nAZyqr3d18+hjFiVNYKb7A/VUSYIGmM981WwIeUQcnUWtADsKwiFhZbixJgT9i1AAZ34v3uUEVNXB
	X8PakQ2O1pdUAw450rL/8JEjvzSp2uKVZ9pdI3uwTgjCq/xYJEKK6cDQh3A01gp6biZqxNBSbHH2A
	TlLMpwIntulJrKQ6l3h1ZPMJiCVfiIvFZDN8p3gza/Xr+NRxK6SyvaiU03TKsSp+jfMtdHoGYfw84
	OkhBPnJlkv58RjeNwszO8kwAYZPGixBZKZzBbPhmwxfOMQuW5jARMeopUiUaEIx3A3+Oay0+t4rWB
	bSlj5H9TrKd4/uUHS4Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otJs4-00C8Bf-FK; Fri, 11 Nov 2022 02:34:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otJrj-00C83g-Vr; Fri, 11 Nov 2022 02:34:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3FC7261E85;
	Fri, 11 Nov 2022 02:33:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91820C433B5;
	Fri, 11 Nov 2022 02:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668134037;
	bh=L9LEH3BsZlnsIKqkJQyyudYrCpgnyFcbsQzEgaFeCIc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZSccu8H8vHOOl1VWUTvc4fJcwnLKsY0YZZX/9qBRPd1Q57prLHyGqKdJxbvST0slc
	 RxoqBEQZX1Ov7qrSfvJwfVw9xWnCY5rK3FtEIs0iVM9CsfhCb49Y97JWumKvjIlldk
	 Gz1PXGQFWxU7UziqmzwAgr03L1unDR+hN10dtP1lCklnWn2ZOMRqooKsFIbqLrGQKm
	 nL5sBwhjCmp6QWf5eVE5IRJkPJxnQQaHHYWXTk2p9YCDG7a8f46O9HMJzkTVnLoQ6p
	 yP5Z+fkGeVgXUBrwYKTeGUDri9vFqV9pNN5ey8FM1iPc0k03WY39Fn+KZxtVr2F2yy
	 4Y87GlWmLLIhQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Michael Tretter <m.tretter@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	hjc@rock-chips.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.0 08/30] drm/rockchip: vop2: disable planes when disabling the crtc
Date: Thu, 10 Nov 2022 21:33:16 -0500
Message-Id: <20221111023340.227279-8-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221111023340.227279-1-sashal@kernel.org>
References: <20221111023340.227279-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_183400_084219_219AECB5 
X-CRM114-Status: GOOD (  13.67  )
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

From: Michael Tretter <m.tretter@pengutronix.de>

[ Upstream commit 447fb14bf07905b880c9ed1ea92c53d6dd0649d7 ]

The vop2 driver needs to explicitly disable the planes if the crtc is
disabled. Unless the planes are explicitly disabled, the address of the
last framebuffer is kept in the registers of the VOP2. When re-enabling
the encoder after it has been disabled by the driver, the VOP2 will
start and read the framebuffer that has been freed but is still pointed
to by the register. The iommu will catch these read accesses and print
errors.

Explicitly disable the planes when the crtc is disabled to reset the
registers.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Link: https://patchwork.freedesktop.org/patch/msgid/20221028095206.2136601-3-m.tretter@pengutronix.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index bf9c3e92e1cd..1fc04019dfd8 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -878,10 +878,14 @@ static void vop2_crtc_atomic_disable(struct drm_crtc *crtc,
 {
 	struct vop2_video_port *vp = to_vop2_video_port(crtc);
 	struct vop2 *vop2 = vp->vop2;
+	struct drm_crtc_state *old_crtc_state;
 	int ret;
 
 	vop2_lock(vop2);
 
+	old_crtc_state = drm_atomic_get_old_crtc_state(state, crtc);
+	drm_atomic_helper_disable_planes_on_crtc(old_crtc_state, false);
+
 	drm_crtc_vblank_off(crtc);
 
 	/*
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
