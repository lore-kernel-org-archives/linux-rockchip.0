Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57B66CD11C2
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 14:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ehhcqqkWhh1evMeud/ShY7rwwa0o1uPIAN09ERGuzso=; b=GzNfmP/zVuvN5+
	057U4G9UyBg0KSpgR9i74W0RMSn5xGlAPFyuurvUHqKOC7v3z3K+E3HwBi/P63N5pE9m6wlSjLT60
	02j2dJHpEiA3kYh9NbvixCEZOyV/dmska8NwmtsxlKJOhv09BvqawIl7ZOoUJpRmjEYbabJ0VBG3s
	Gkr0aVJnxlt3fba5EUCpBwQI7UN5RFCGkGpxdSoWuWU/EJo7WFCekBjKKoV89bf0HzsTdPg2+S1Un
	FcLtCF/UFeTg7hGVnNepm82Y3s4k80XAXOaJRoaXq2TgBg7KfMkVmgQfFVeKKoJ4aC8uYqa7S/Odu
	jxtrSna7BykDcS8v+TiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskfU-00000007V62-35Fk;
	Fri, 05 Apr 2024 14:35:48 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskfO-00000007V0g-0ohu;
	Fri, 05 Apr 2024 14:35:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0225ECE37A7;
	Fri,  5 Apr 2024 14:35:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECF1AC433F1;
	Fri,  5 Apr 2024 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712327738;
	bh=cGx3XcSUmG/0NU34vSZ8SB13pSwI3CCc+82+Mw41W9Y=;
	h=From:To:Cc:Subject:Date:From;
	b=W4GTJkF2NoHt9XnqwQTLKq4IfPLYruS80XBlIFbwaXdAYK8fqr/VHKS7YVA5vx25+
	 vRTkeeAUYy0PCg3sQQrm7bCMbNMHJTT6tWJVqOAlmDWYsoeRgNPFrqGxGD83G4JdXM
	 8W5nXj5IpcSI9MrityPDDT7CBfKbnrSFaGu23tSa9YMISN1ijWdOV+Beq4tKCup76Q
	 g0w1K6TVjfZexJCTgD2AyW44LaqCtGeYBc24AlTBOi2PRPQETbR5si/J/cKfWR80sb
	 S/YCAT8OftsftIV0sq3t3aC0uP8bucZ4cTaGqoR97Uz3RlX1tSzlE/ZbEc/Ygt4EfD
	 nd2nOl7qplRtQ==
From: Arnd Bergmann <arnd@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Jani Nikula <jani.nikula@intel.com>,
	Lucas De Marchi <lucas.demarchi@intel.com>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] drm: fix DRM_DISPLAY_DP_HELPER dependencies, part 2
Date: Fri,  5 Apr 2024 16:35:10 +0200
Message-Id: <20240405143531.925589-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_073542_660560_8E39BAE6 
X-CRM114-Status: GOOD (  13.60  )
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

From: Arnd Bergmann <arnd@arndb.de>

After my fix yesterday, I ran into another problem of the same kind:

aarch64-linux-ld: drivers/gpu/drm/bridge/analogix/analogix_dp_core.o: in function `drm_dp_dpcd_readb':
analogix_dp_core.c:(.text+0x194): undefined reference to `drm_dp_dpcd_read'
aarch64-linux-ld: drivers/gpu/drm/bridge/analogix/analogix_dp_core.o: in function `drm_dp_dpcd_writeb':
analogix_dp_core.c:(.text+0x214): undefined reference to `drm_dp_dpcd_write'
aarch64-linux-ld: drivers/gpu/drm/bridge/analogix/analogix_dp_core.o: in function `analogix_dp_stop_crc':
analogix_dp_core.c:(.text+0x4b0): undefined reference to `drm_dp_stop_crc'
aarch64-linux-ld: drivers/gpu/drm/bridge/analogix/analogix_dp_core.o: in function `analogix_dp_start_crc':
analogix_dp_core.c:(.text+0xbe8): undefined reference to `drm_dp_start_crc'

Add the same dependency again to ROCKCHIP_ANALOGIX_DP after checking that
nothing else selects the analogix driver. Also add a dependency to
DRM_ANALOGIX_DP to make it easier to identifier future problems of
this type when they get introduced.

Fixes: 0323287de87d ("drm: Switch DRM_DISPLAY_DP_HELPER to depends on")
Fixes: d1ef8fc18be6 ("drm: fix DRM_DISPLAY_DP_HELPER dependencies")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/bridge/analogix/Kconfig | 2 +-
 drivers/gpu/drm/rockchip/Kconfig        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/Kconfig b/drivers/gpu/drm/bridge/analogix/Kconfig
index 12bfea53bf24..5b564fded6d6 100644
--- a/drivers/gpu/drm/bridge/analogix/Kconfig
+++ b/drivers/gpu/drm/bridge/analogix/Kconfig
@@ -28,7 +28,7 @@ config DRM_ANALOGIX_ANX78XX
 
 config DRM_ANALOGIX_DP
 	tristate
-	depends on DRM
+	depends on DRM_DISPLAY_HELPER
 
 config DRM_ANALOGIX_ANX7625
 	tristate "Analogix Anx7625 MIPI to DP interface support"
diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 4b4ad75032fd..4c7072e6e34e 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -36,7 +36,7 @@ config ROCKCHIP_VOP2
 config ROCKCHIP_ANALOGIX_DP
 	bool "Rockchip specific extensions for Analogix DP driver"
 	depends on DRM_DISPLAY_DP_HELPER
-	depends on DRM_DISPLAY_HELPER
+	depends on DRM_DISPLAY_HELPER=y || (DRM_DISPLAY_HELPER=m && DRM_ROCKCHIP=m)
 	depends on ROCKCHIP_VOP
 	help
 	  This selects support for Rockchip SoC specific extensions
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
