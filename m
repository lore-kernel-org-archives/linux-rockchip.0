Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EEFCC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 07:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbGQueeWEgZX9jba2N7BZ5AN9pyqxIEUps/bUT3H6wA=; b=FAsC2M38NV7xq6
	D90azHx/ZBW/61EiHuloQmRBQx643PTtRqn1mHpXKX0BOmgM/b0bwJLMveKKdcrjnq+hc2EXJnbA7
	25PxcuOeLxu81G6k+DEybZt7swtS87ItopBbiG4lFoLYjUTmu4hGoS8XJ1R7tju1DlgAqwjJeNND8
	LDhn+b1JuhByiUDIi7V2obLigFg1zkEIXszWFhxPao9hiAOSnm7KgqvKyokR3FqR/zPrpEAD8cO9+
	OpkSp4SnlVtGILhSYxCtP1YC4AJ4o7rhUandQrS7JLbH8FpVmBgq+jg2bpnVOvudbnlNhk0CA9GJY
	dhlXLeF9JDKX343CBHMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNVU9-003l4T-CB; Fri, 25 Feb 2022 07:57:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNVOe-003i4H-Rc
 for linux-rockchip@bombadil.infradead.org; Fri, 25 Feb 2022 07:52:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=gPTPTANPIrl37WP2hqDsec7ZOebuX4K0zMJdm/m0QUU=; b=HM6wMMP1/Rs9XxMBb7HQXc3WOD
 QyHdfNR8Lbup5nGretvrRGZ1uWbwDXt/nzvYhiFbbHs2AxE49WdIrtigsiyTmQBDRpetqUs03Elk5
 7GFsfBI4RjnG7uFoGCkhfuKqiTVOuvaueXJtIl7zHQ88GAnu5E/BYv0LDNndiOL4PA8VJjX5i2OpG
 wo8fe0xndsL9CMmem++MGqGQFNls4fA8xEUjM932Xfr0aNXuA/NIcq4hPJhFJiT7NJcwt5zfeTbTT
 rSOYfpG6si1XK7veUhoEuAvgNH49CTB/CWhVzRfVKkjV1lU6MOJx0N1B+Bnff7vI30ulG+VfhmiWm
 QXD1UQgg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNVOZ-00Ctfx-Pz
 for linux-rockchip@lists.infradead.org; Fri, 25 Feb 2022 07:52:10 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNVOR-0000Pu-Ly; Fri, 25 Feb 2022 08:51:59 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nNVOL-00BSXx-5M; Fri, 25 Feb 2022 08:51:53 +0100
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
Subject: [PATCH v7 13/24] drm/rockchip: dw_hdmi: drop mode_valid hook
Date: Fri, 25 Feb 2022 08:51:39 +0100
Message-Id: <20220225075150.2729401-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220225075150.2729401-1-s.hauer@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_075207_937453_C229F511 
X-CRM114-Status: GOOD (  13.79  )
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

The driver checks if the pixel clock of the given mode matches an entry
in the mpll config table. The frequencies in the mpll table are meant as
a frequency range up to which the entry works, not as a frequency that
must match the pixel clock. The downstream Kernel also does not have
this check, so drop it to allow for more display resolutions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v3:
    - new patch

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 25 ---------------------
 1 file changed, 25 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 2f5264a7d558a..d1fe4d9299c96 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -257,26 +257,6 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 	return 0;
 }
 
-static enum drm_mode_status
-dw_hdmi_rockchip_mode_valid(struct dw_hdmi *hdmi, void *data,
-			    const struct drm_display_info *info,
-			    const struct drm_display_mode *mode)
-{
-	const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
-	int pclk = mode->clock * 1000;
-	bool valid = false;
-	int i;
-
-	for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
-		if (pclk == mpll_cfg[i].mpixelclock) {
-			valid = true;
-			break;
-		}
-	}
-
-	return (valid) ? MODE_OK : MODE_BAD;
-}
-
 static void dw_hdmi_rockchip_encoder_disable(struct drm_encoder *encoder)
 {
 }
@@ -442,7 +422,6 @@ static struct rockchip_hdmi_chip_data rk3228_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3228_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg = rockchip_mpll_cfg,
 	.cur_ctr = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
@@ -459,7 +438,6 @@ static struct rockchip_hdmi_chip_data rk3288_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3288_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg   = rockchip_mpll_cfg,
 	.cur_ctr    = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
@@ -479,7 +457,6 @@ static struct rockchip_hdmi_chip_data rk3328_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg = rockchip_mpll_cfg,
 	.cur_ctr = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
@@ -497,7 +474,6 @@ static struct rockchip_hdmi_chip_data rk3399_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg   = rockchip_mpll_cfg,
 	.cur_ctr    = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
@@ -510,7 +486,6 @@ static struct rockchip_hdmi_chip_data rk3568_chip_data = {
 };
 
 static const struct dw_hdmi_plat_data rk3568_hdmi_drv_data = {
-	.mode_valid = dw_hdmi_rockchip_mode_valid,
 	.mpll_cfg   = rockchip_mpll_cfg,
 	.cur_ctr    = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
