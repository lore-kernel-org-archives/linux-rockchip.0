Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 381BCECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 09:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gF1MugNfJOQLMqswzLQ+YoxfeHyplRbPvYW/VWctGm0=; b=JE7tQEhJV+IJEZ
	glm39FljvoQr0mWu7i38F9tv3X4cfl+Wwj1eY+LIoCOaz6cjg2CDeOUM25kECw0IJoppj8J4scYDG
	8V0puBR9/L2vibvYUdnNthU8Lz4/ph8SqMu84Gy5TwDZQUyi/1NPqYJjQd5ohaLQPCv+RevTnCr0c
	2fQlCreFsAtw/I6XfX+gm2TnKVtAoAYL8mH3RqZBRUA4RYB0RUrvDa32/T3fdV3QmvA89W1SARuCy
	cIWq3ylNyrSggiVJ6OvS99vxxd63Aew1C/6IUzeNbERvwLQ7+HEjIYorH09/muwfI6IKVmmu2040y
	HwmVHjYThwNwpuAlSRHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooM4w-00GSXu-Po; Fri, 28 Oct 2022 09:55:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooM2J-00GRMs-2K
	for linux-rockchip@lists.infradead.org; Fri, 28 Oct 2022 09:52:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1ooM27-0005YU-0C; Fri, 28 Oct 2022 11:52:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1ooM24-000s2G-Al; Fri, 28 Oct 2022 11:52:07 +0200
Received: from mtr by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1ooM22-008xq9-NT; Fri, 28 Oct 2022 11:52:06 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-arm-kernel@lists.infradead.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 2/2] drm/rockchip: vop2: disable planes when disabling the crtc
Date: Fri, 28 Oct 2022 11:52:06 +0200
Message-Id: <20221028095206.2136601-3-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221028095206.2136601-1-m.tretter@pengutronix.de>
References: <20221028095206.2136601-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_025223_142994_4DB4075B 
X-CRM114-Status: GOOD (  12.82  )
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
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 26f8a8489ded..105a548d0abe 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -877,10 +877,14 @@ static void vop2_crtc_atomic_disable(struct drm_crtc *crtc,
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
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
