Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6139CC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 19:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHGgl6igZ59tUE0jNeCmrLJ19kGCSeui3NP+inOh45o=; b=Tgr4ifJUIKFGX8
	8NWXJzUDQKvPS0+b++QxafQsIOwW2NLtvxWpYRtR3KrP6FTKLeHoJEdjJKsXtL+SOsXI9qTzzxlZN
	bfylOh1ReufxXNgpUEUOYkX0kApnuN1D6s9FzNfXRiJNt2NwxQCdNOz4EPoTvPaky8omhMynHZ5fo
	jCVD3Ncg89Ul/KYFVRlgmA2gVsmtt3mPqttxGN8WaPxJ4k54lDA5lXF+rRSi/N3KPiwoN5pszZAkX
	xP7rgS5M60DyZxrYqCuR17cLzXlpFSyOSLjXJMXSbZNhOKnUboiLbPJ4o9PNcOlTio1pvwpbu6kWk
	fp3+1iTfnypOIg0pNueA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s05Bv-00000009wqY-0n8K;
	Thu, 25 Apr 2024 19:55:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s05Bp-00000009wil-38u9;
	Thu, 25 Apr 2024 19:55:31 +0000
Received: from i53875b01.versanet.de ([83.135.91.1] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s05BX-0005vK-Kl; Thu, 25 Apr 2024 21:55:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@theobroma-systems.com,
	hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 1/2] drm/rockchip: vop2: fix rk3588 dp+dsi maxclk verification
Date: Thu, 25 Apr 2024 21:55:05 +0200
Message-Id: <20240425195506.2935955-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425195506.2935955-1-heiko@sntech.de>
References: <20240425195506.2935955-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_125529_817210_31495CF1 
X-CRM114-Status: GOOD (  13.53  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The clock is in Hz while the value checked against is in kHz, so
actual frequencies will never be able to be below to max value.
Fix this by specifying the max-value in Hz too.

Fixes: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 9bee1fd88e6a2..523880a4e8e74 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1719,7 +1719,7 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
 		else
 			dclk_out_rate = v_pixclk >> 2;
 
-		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
+		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000000);
 		if (!dclk_rate) {
 			drm_err(vop2->drm, "DP dclk_out_rate out of range, dclk_out_rate: %ld KHZ\n",
 				dclk_out_rate);
@@ -1736,7 +1736,7 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
 		 * dclk_rate = N * dclk_core_rate N = (1,2,4 ),
 		 * we get a little factor here
 		 */
-		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
+		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000000);
 		if (!dclk_rate) {
 			drm_err(vop2->drm, "MIPI dclk out of range, dclk_out_rate: %ld KHZ\n",
 				dclk_out_rate);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
