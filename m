Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA37BCD1292
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 13:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tVYyywcX4ZAv0tYDVQXoWv+AVMy8CE5t2qqYV25KRK0=; b=dNbBBN5WDEY7Tg
	tFq7AsxU8hGmSg/unF8PCWxUZmwbY8WZYBBPg6Me7LjRD3zG8V7gCUUO/mKft7tFyzYyM2sZNN/tM
	3EvLNjOI0QiWkzSvz3clpTbF/5+G8KOEQGz8CcG+n+xQq/cbLCFIlz8cY+lG5Yfni1gRzQkskCFnX
	U9JVZv1heuKM3oqP9ZFszzz75Cgyb6os/6x8PP9TTdL49peLlH0gu8xNiC02PJnldnbJmpMMNuZeZ
	/Nrti0Qou9esfqiyZsGD05SDpOOogOHa9B/NA8OE80CU03KZThDAaHfIZKgQCehRcKmdrsHXLf81H
	/qzJ2pkFoMud7NcvGB7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNTf-00000002t8O-45p4;
	Thu, 04 Apr 2024 13:50:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMPA-00000002gSF-2gGl;
	Thu, 04 Apr 2024 12:41:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=tHDQDmJitbb/N0kPctu5DXR/JQJ0j5Tz7GRPxiVT2hY=; b=rZBM6otyMgWIFTin7L+Qffgx52
	CG7HOHsIN9t7n1wKWjOFLydMY5HI84fP3AOMSjEC4W3GSmlFNlpwckPTgzp7WbKleXj+XAHuNSjhS
	lG6g9LE6p+EwmU7XoyADT5gQMP/An0MvVT5V1+2md4c0K1W8icUJ9ci1FhU0QLTtffXy7FH488RaO
	2PGezmfjxjdOcQvN805B2GQH8FDwiC8g1bCKHA9NVYo76JROlQ9zPqymuh3zaenGhxPVy5aEaVHBZ
	2InYLukY+UzLmGbOgGRSXkJ+v/8XuZHFqjAxI0UJ1naR88SbdfwhUIoD4L8++OIUvGqXXa+/CioqL
	ESA2Y43A==;
Received: from sin.source.kernel.org ([145.40.73.55])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMP5-000000053Lj-0bbC;
	Thu, 04 Apr 2024 12:41:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AD8B1CE2A56;
	Thu,  4 Apr 2024 12:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4576C433C7;
	Thu,  4 Apr 2024 12:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712234468;
	bh=1+ARrgqOwE2kiq3eGjR0xYk+TKFwqS1s+JPGIlCRzrg=;
	h=From:To:Cc:Subject:Date:From;
	b=M1wILHmzWdiOAp7d8xIOgHHXhrz/7TiyaIV1N2+o2verXTbHYiqK0wiSsSsod5n86
	 YbzkiBrkwthA4pFginyMapp29V66ueImtirbBSyRioo09xy5hhd7gYbfsy25QqkVSt
	 uJODYi4DD/IJ1X0yu7ZUKpcc8qPAIjnyRgJxkD9LmBecKcvVN1Hnbao5N096v1ikp5
	 llsQNqn9J+qKXXmzj+55bcTNNXm6Kg9wv5/mBPX/7bEy9vwng9+/gxQLNZzKJLUyFE
	 0uGjsV5Ci0rgCkwpXuFYzqAgepspQCK/1lkFCHdbZvU7BSUcJD8CC2cTSM6XuF5vI6
	 9RNZ4CHYRj8lA==
From: Arnd Bergmann <arnd@kernel.org>
To: Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jani Nikula <jani.nikula@intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] drm: fix DRM_DISPLAY_DP_HELPER dependencies
Date: Thu,  4 Apr 2024 14:40:51 +0200
Message-Id: <20240404124101.2988099-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_134116_141518_FE2E29B3 
X-CRM114-Status: GOOD (  14.61  )
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

Both the exynos and rockchip drivers ran into link failures after
a Kconfig cleanup:

aarch64-linux-ld: drivers/gpu/drm/exynos/exynos_dp.o: in function `exynos_dp_resume':
exynos_dp.c:(.text+0xc0): undefined reference to `analogix_dp_resume'
aarch64-linux-ld: drivers/gpu/drm/exynos/exynos_dp.o: in function `exynos_dp_suspend':
exynos_dp.c:(.text+0xf4): undefined reference to `analogix_dp_suspend'

x86_64-linux-ld: drivers/gpu/drm/rockchip/cdn-dp-core.o: in function `cdn_dp_connector_mode_valid':
cdn-dp-core.c:(.text+0x13a): undefined reference to `drm_dp_bw_code_to_link_rate'
x86_64-linux-ld: cdn-dp-core.c:(.text+0x148): undefined reference to `drm_dp_bw_code_to_link_rate'
x86_64-linux-ld: drivers/gpu/drm/rockchip/cdn-dp-core.o: in function `cdn_dp_check_link_status':
cdn-dp-core.c:(.text+0x1396): undefined reference to `drm_dp_channel_eq_ok'

In both cases, the problem is that ROCKCHIP_CDN_DP and DRM_EXYNOS_DP
are 'bool' symbols that depend on the the 'tristate' DRM_DISPLAY_HELPER
symbol, but end up not working when the SoC specific part is built-in
but the helper is in a loadable module.

Use the same trick that DRM_ROCKCHIP already uses for the EXTCON
dependency and disallow DP support when it would not work.

Fixes: 0323287de87d ("drm: Switch DRM_DISPLAY_DP_HELPER to depends on")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/exynos/Kconfig   | 2 +-
 drivers/gpu/drm/rockchip/Kconfig | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/exynos/Kconfig b/drivers/gpu/drm/exynos/Kconfig
index 6a26a0b8eff2..58cd77220741 100644
--- a/drivers/gpu/drm/exynos/Kconfig
+++ b/drivers/gpu/drm/exynos/Kconfig
@@ -68,7 +68,7 @@ config DRM_EXYNOS_DP
 	bool "Exynos specific extensions for Analogix DP driver"
 	depends on DRM_EXYNOS_FIMD || DRM_EXYNOS7_DECON
 	depends on DRM_DISPLAY_DP_HELPER
-	depends on DRM_DISPLAY_HELPER
+	depends on DRM_DISPLAY_HELPER=y || (DRM_DISPLAY_HELPER=m && DRM_EXYNOS=m)
 	select DRM_ANALOGIX_DP
 	default DRM_EXYNOS
 	select DRM_PANEL
diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 4b49a14758fe..4b4ad75032fd 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -46,7 +46,7 @@ config ROCKCHIP_ANALOGIX_DP
 config ROCKCHIP_CDN_DP
 	bool "Rockchip cdn DP"
 	depends on DRM_DISPLAY_DP_HELPER
-	depends on DRM_DISPLAY_HELPER
+	depends on DRM_DISPLAY_HELPER=y || (DRM_DISPLAY_HELPER=m && DRM_ROCKCHIP=m)
 	depends on EXTCON=y || (EXTCON=m && DRM_ROCKCHIP=m)
 	help
 	  This selects support for Rockchip SoC specific extensions
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
