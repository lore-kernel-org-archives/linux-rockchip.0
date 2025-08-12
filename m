Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 815B9CA0EE1
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 19:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zMBzf5R0JYJ6aGhFSlW11KgzDkm9fhA0foWHQZvax14=; b=NiDxi0wofOpB8Z
	HTThiVVJYDuJdEV4d7eCTPhDG8foDp7QabWie+6g/rUHuZjr/drDHVV6xqLBYiZSZs8g5PGCe/qia
	3ljuFID15s9rM9gxK9v6BCWHpcBixnxtJhLKBKjznB0o4loLLB8/ofcLRxqcaCAadfPShn360kDoh
	jbuS0yGbnuWfnZk3oSAexpHN4fimL1RPzFTt10SHFKmtdkHjnUa9JtEmu1cj7yFWNh9Qi9D0WS7Dy
	j1A+pR1csMvazsFCsNJ0zPoVDO+VXQ9A4L0yEN8Y/Y9v1TOPtADKhy1hQwY2oo5++JSXJY9cTTctv
	uJsZCo3UXx8HIt42lU0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uluah-0000000Bmuz-3r4F;
	Tue, 12 Aug 2025 19:23:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulqW0-0000000B8gN-0aIB;
	Tue, 12 Aug 2025 15:02:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=2VkIKlblba9WFkmenTXpPIqq84rYzCyImM7Q0AHXy3k=; b=wifyCwkwUbqJZwuXlj5yaBcMH1
	2/TVBmEOOq9QpItnTrSOyY0MjmhVotrk1eRpimODPFcZDC1bjmMuIjo44t2PwbAtOw7jYOm3pwvC6
	7+CS6oidJ+xLxi6IFeQ1Sy9atvU8XHsmDNiqmwbsR6qqCVAgfqcDb2/ETKjtf30xp9KTEhqhZOWWs
	JrJu2OP/N+rejZVBlSiX9w3Uh+s3f5UCB4Lw5g/W8sK5nWcZl7UHzf5n4Zj2lgRO9NJa/YcMDZ8WB
	jbn9TrNJ+iIMj8PIEkU+0IOB9QZDj79lEMKMB+p8WaA4opNYq5bTcir8TJnAgEAIIL7lMwToMbni2
	B/tzhhzw==;
Received: from i53875a42.versanet.de ([83.135.90.66] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ulqVd-0004VY-UD; Tue, 12 Aug 2025 17:01:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: vop2: move clk-disable into its own function
Date: Tue, 12 Aug 2025 17:01:43 +0200
Message-ID: <20250812150143.1126584-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_080216_204855_50067D49 
X-CRM114-Status: GOOD (  11.36  )
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

Right now vop2_enable calls vop2_core_clks_prepare_enable to handle the
vop clocks, but vop2_disable directly disables the clocks.

Not nice from a symmetry point of view and also if we ever need to disable
the clocks elsewhere, this would become a problem, so move clock disable
into its own function as well.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 07ea2d2cf6d6..827ce440026c 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -785,6 +785,13 @@ static int vop2_core_clks_prepare_enable(struct vop2 *vop2)
 	return ret;
 }
 
+static void vop2_core_clks_disable_unprepare(struct vop2 *vop2)
+{
+	clk_disable_unprepare(vop2->pclk);
+	clk_disable_unprepare(vop2->aclk);
+	clk_disable_unprepare(vop2->hclk);
+}
+
 static void rk3588_vop2_power_domain_enable_all(struct vop2 *vop2)
 {
 	u32 pd;
@@ -867,9 +874,7 @@ static void vop2_disable(struct vop2 *vop2)
 
 	regcache_drop_region(vop2->map, 0, vop2_regmap_config.max_register);
 
-	clk_disable_unprepare(vop2->pclk);
-	clk_disable_unprepare(vop2->aclk);
-	clk_disable_unprepare(vop2->hclk);
+	vop2_core_clks_disable_unprepare(vop2);
 }
 
 static bool vop2_vp_dsp_lut_is_enabled(struct vop2_video_port *vp)
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
