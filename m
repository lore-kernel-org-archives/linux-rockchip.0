Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A99C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 10:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=832FAG1qN+rIm/CoEsIfjPfmKtJmM5qpMMTabThjU6o=; b=m7EVKx9HolAl6R
	Ud7egdb43M19b9J7ZNYkDmmdzOWN1RlFqFmS5/VcW6nSysvcFz0vQwnS+5wcLEBmqxqRayjJ+0MZj
	VrDXTba3331KQYC1mCrFJN35W+u2TTmDtj1sXtQcEbImPtMhEolNzpaIN2ny6w6FLDnAXNGVFt/TF
	cW/wHgerIwkIDpB7TtvikQPxlkFWXi0vXYG3ukEoTVTAdpY7FUER6Ul/wHs2nNRIh1Yjf1JMPZDBv
	8h285w1STVy7NczsFyV72Mg5drSLNHTXxv4qiteAQdwNz3D1Rt/wouTsUL8IZI5wGPl5/LhtBVbYk
	G+oZU9VsOfmCHnZkMT7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHjt4-00H7CJ-Ej; Wed, 09 Feb 2022 10:07:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjg5-00H07Q-Km
 for linux-rockchip@bombadil.infradead.org; Wed, 09 Feb 2022 09:54:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=11P47DV2wy8fIMX3AF2aY4bujdUf6uzwjITtT9f/0zM=; b=LgrUGK4B13/HsoLRzzWU0mDz+I
 dDAAPgxjZ5VNfZ9+XY3wmyYjs24C6xYm7yezrCWSy/16SWYq25J8S8qe95xNA/L56FaRD1YhB8SpL
 j2SU71zkUIsu0EqE5HZknd4SFpxTypLMPAS9s4+hMtDG7mmnls9Y2xdcq4dmQ9zfwl0tHXfhu4PHC
 6IgDKT2ACgHX9WhPK8yGPO+b7xHnrRNGPS/+EtQvf2k5DhuDXJ0MFiZa1hUEfl/klhLUCKc9oRMZR
 BojgUpsIvJnlIausxsSqiYLC/H/V5RS/JwkJg11A381TyQw2H9DIU6aIX78Jov33u78K8ledgA5ix
 lCXpC+SA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjfv-008Nr4-Pg
 for linux-rockchip@lists.infradead.org; Wed, 09 Feb 2022 09:54:20 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHjfm-0002P7-Iv; Wed, 09 Feb 2022 10:54:02 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nHjfg-008qbO-87; Wed, 09 Feb 2022 10:53:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v5 21/23] drm/rockchip: Make VOP driver optional
Date: Wed,  9 Feb 2022 10:53:48 +0100
Message-Id: <20220209095350.2104049-22-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220209095350.2104049-1-s.hauer@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_095411_880340_6FAC77B6 
X-CRM114-Status: GOOD (  14.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

With upcoming VOP2 support VOP won't be the only choice anymore, so make
the VOP driver optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/Kconfig            | 8 ++++++++
 drivers/gpu/drm/rockchip/Makefile           | 3 ++-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
 3 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 9f1ecefc3933..b9b156308460 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -21,8 +21,16 @@ config DRM_ROCKCHIP
 
 if DRM_ROCKCHIP
 
+config ROCKCHIP_VOP
+	bool "Rockchip VOP driver"
+	default y
+	help
+	  This selects support for the VOP driver. You should enable it
+	  on all older SoCs up to RK3399.
+
 config ROCKCHIP_ANALOGIX_DP
 	bool "Rockchip specific extensions for Analogix DP driver"
+	depends on ROCKCHIP_VOP
 	help
 	  This selects support for Rockchip SoC specific extensions
 	  for the Analogix Core DP driver. If you want to enable DP
diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip/Makefile
index 1a56f696558c..dfc5512fdb9f 100644
--- a/drivers/gpu/drm/rockchip/Makefile
+++ b/drivers/gpu/drm/rockchip/Makefile
@@ -4,8 +4,9 @@
 # Direct Rendering Infrastructure (DRI) in XFree86 4.1.0 and higher.
 
 rockchipdrm-y := rockchip_drm_drv.o rockchip_drm_fb.o \
-		rockchip_drm_gem.o rockchip_drm_vop.o rockchip_vop_reg.o
+		rockchip_drm_gem.o
 
+rockchipdrm-$(CONFIG_ROCKCHIP_VOP) += rockchip_drm_vop.o rockchip_vop_reg.o
 rockchipdrm-$(CONFIG_ROCKCHIP_ANALOGIX_DP) += analogix_dp-rockchip.o
 rockchipdrm-$(CONFIG_ROCKCHIP_CDN_DP) += cdn-dp-core.o cdn-dp-reg.o
 rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI) += dw_hdmi-rockchip.o
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index bec207de4544..82c8faf1fb6b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -458,7 +458,7 @@ static int __init rockchip_drm_init(void)
 	int ret;
 
 	num_rockchip_sub_drivers = 0;
-	ADD_ROCKCHIP_SUB_DRIVER(vop_platform_driver, CONFIG_DRM_ROCKCHIP);
+	ADD_ROCKCHIP_SUB_DRIVER(vop_platform_driver, CONFIG_ROCKCHIP_VOP);
 	ADD_ROCKCHIP_SUB_DRIVER(rockchip_lvds_driver,
 				CONFIG_ROCKCHIP_LVDS);
 	ADD_ROCKCHIP_SUB_DRIVER(rockchip_dp_driver,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
