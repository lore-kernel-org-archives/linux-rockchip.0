Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D42D9D2D0F9
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 13:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yDzley+miimsh2xMDMIub0u/h7oqw2cJnRyzyKLXNvM=; b=YXQZsNKzwif5cw
	jZeuNNLyYyx0OmD3uTXm6HPhWHtmR7wOVok3ARd+vvSn5rLb8ydfQbe4Yg/8MYsHIUbpYFrv8yXmn
	MzMZacebtYEg0eihw4N+ukQimo9qHjunRYleDPRvY6UnqnoFccIiRL6NzStGWxEPPHftbB68bqa00
	ByvFeJCNUMM3rHLXKfsA14mvyhYXFfQYtIDzBuoeVy89BdN6iVt09yyZ+qwwupTVGNn7Jte4OSb9w
	iguJsYDIKzB51mvXv9B2hWhPW7UuyZG9AmjXlDFWi+eZg6FYrZdnR3KLLeIBb/XIeCAQhP8RIaUdl
	ZNsPKHON8WYr3EpDjrvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfeEo-00000007975-38sq;
	Tue, 13 Jan 2026 13:15:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfeEn-0000000796p-0fRQ;
	Tue, 13 Jan 2026 13:15:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 20E396000A;
	Tue, 13 Jan 2026 13:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C887C116C6;
	Tue, 13 Jan 2026 13:15:04 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Sandy Huang <hjc@rock-chips.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] drm/rockchip: DRM_ROCKCHIP should depend on ARCH_ROCKCHIP
Date: Tue, 13 Jan 2026 14:15:01 +0100
Message-ID: <5db192d31cc51f027f107c01c01a353a0569ebf4.1768310045.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

Rockchip display hardware is only available on Rockchip SoCs.  Hence add
a dependency on ARCH_ROCKCHIP, to prevent asking the user about this
driver when configuring a kernel without Rockchip platform support.

Before, this dependency was implicit through a hard dependency on
ROCKCHIP_IOMMU.

Fixes: 0244539f9a4f3b56 ("drm/rockchip: Drop ROCKCHIP_IOMMU depend for DRM_ROCKCHIP")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/gpu/drm/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 025bd770f499e6ed..1479b8c4ed40ad16 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -2,6 +2,7 @@
 config DRM_ROCKCHIP
 	tristate "DRM Support for Rockchip"
 	depends on DRM
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	depends on ROCKCHIP_IOMMU || !ROCKCHIP_IOMMU
 	depends on OF
 	select DRM_CLIENT_SELECTION
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
