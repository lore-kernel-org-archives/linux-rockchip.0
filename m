Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDF3ACCD19F
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 02:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjDiUjrqcZttdVGUppPfosc8XWCchfAd77j6Efn7tkc=; b=XZltxlw79cftVL
	9UNXLmw0ckWGe5Tzz4kdEJvlS5B/Wt2h6u0gmq3LQJmKZqScuaN+gD8+Q3UFN5CJ8i4MkTg555tQh
	GRipy80spsfdm7nrh7zVkIAmTGGkOxCk3IZNxA9OEINL/Y+dGQE+hA2dz/0Svxar97tOwJB3tD6GS
	Q9asO/gYV0kDOs5qg8sQ7gM8bcsNVsQKdFzfunwQciRByD8VbC0DNuD8A+StkJnhSoW3ORfPgd5Vq
	w69swuBT1UmBmnq33aENdcJs8nAB+QKNTL+oLn18A8a6no1QIf3FyZEfMQEoNlP1v0Ltue/EmtZVH
	/fSejxPMMiDThTiN1IcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB2BW-0000000FaTH-1nUL;
	Tue, 21 Oct 2025 02:33:14 +0000
Received: from mail-m81243.netease.com ([47.88.81.243])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB2BT-0000000FaSQ-2d0q;
	Tue, 21 Oct 2025 02:33:13 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 269693c5a;
	Tue, 21 Oct 2025 10:33:05 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	inki.dae@samsung.com,
	sw0312.kim@samsung.com,
	kyungmin.park@samsung.com,
	krzk@kernel.org,
	alim.akhtar@samsung.com,
	jingoohan1@gmail.com,
	p.zabel@pengutronix.de,
	hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	dmitry.baryshkov@oss.qualcomm.com,
	dianders@chromium.org,
	m.szyprowski@samsung.com,
	luca.ceresoli@bootlin.com,
	jani.nikula@intel.com,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v7 02/18] drm/bridge: analogix_dp: Formalize the struct analogix_dp_device
Date: Tue, 21 Oct 2025 10:31:14 +0800
Message-Id: <20251021023130.1523707-3-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251021023130.1523707-1-damon.ding@rock-chips.com>
References: <20251021023130.1523707-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9a049cefd303a3kunm42a8e83d59a94a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhgfSlYZTU1PHUpISxhIHUtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=TzhKZYyfI6DjwNXo0ON/uuRAbgJTw/9jSJ1f5rccJEckDA9LfPL1SFMzRSLnx5++vnzKIgYGDkgBwjz2NnBylZDZorLztFDLsbOBXXPYaDhrBlv0cu7VKJ5fKkqkbEUTg45eB2rLRiqZAgeFCjJxRBalBIfekUwXiz7H8WlstEg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=wMgNU9HKWX4U88wR/qYvG3evHrpviSSz9KGW1/W263o=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_193312_205343_EC072B27 
X-CRM114-Status: UNSURE (   9.52  )
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

Use the tap instead of the space for &analogix_dp_device.aux and
&analogix_dp_device.force_hpd.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
index b86e93f30ed6..91b215c6a0cf 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
@@ -156,7 +156,7 @@ struct analogix_dp_device {
 	struct drm_device	*drm_dev;
 	struct drm_connector	connector;
 	struct drm_bridge	bridge;
-	struct drm_dp_aux       aux;
+	struct drm_dp_aux	aux;
 	struct clk		*clock;
 	unsigned int		irq;
 	void __iomem		*reg_base;
@@ -166,7 +166,7 @@ struct analogix_dp_device {
 	struct phy		*phy;
 	int			dpms_mode;
 	struct gpio_desc	*hpd_gpiod;
-	bool                    force_hpd;
+	bool			force_hpd;
 	bool			fast_train_enable;
 	bool			psr_supported;
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
