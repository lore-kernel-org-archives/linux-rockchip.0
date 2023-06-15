Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A759EB64DC
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jun 2023 17:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QbvtXBkNGASemakDY0d/Sll+flTS2c+NewIUBj54M20=; b=1blEo4nf5Y1TfJNBe5Ev3nLjnL
	2JfQFb8lP7NnnqrwwVb7ZKabXHTQDNV9dyyOvVeheSIFlkdkq/EVoETDMrt/i5YIvIC14ojLchfix
	rSdjq4ckwFdbmCfGN11WkeEaBKSEscjWq3IsYwhs0dPyvDmquCBFU5KrCV0vVt3RrZXW2E3B+txva
	UB2LWL9KbDB7XPrP71hAl52do8HWwebhvQNtu8KSWqLPX5J+v43H+5Z+8Suq9VyJtZBEsYXYvMczB
	ASAZS+XAC5tZFNE3a+XOHplTzUV4JSaNi5iICYYXVb36br+29Q4k1cakNorw2VRapTcHx76/ke859
	+PvtDUQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUQ-00FXK7-1y;
	Thu, 15 Jun 2023 17:10:30 +0000
Received: from s.wrqvtzvf.outbound-mail.sendgrid.net ([149.72.126.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUG-00FXAO-13
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jun 2023 17:10:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=8x78MvgAGf0Pwtnasq/3ixUfJIGr5jN/dHSd464Z2hQ=;
	b=hr5+BqzP9WVpUBezueHehavpwYTSm6bvX5IhVWo8GcAm4aa5g9wBD7lwGxMGJo38T1Yz
	sunsnIac7aTYxp6fwrNZDeY59a3etr8DvX7WnvDTNa2n+nW0V16vbidl2IcB2af15h0byP
	TXM470aTOU1vaDlqAITHGI6heDEkZBRadVoyAr6pcMyTNIkqXtXJP199ZIVGEtQ4jw0OPN
	gCrgxrwFuFNtuKcanya1YkC9zsxr5owDs2tH+LORm8MVKIP6S5vHAnE7X7DaYcm7ENlfjM
	yzzAtNbi/fTr5xXDGDnQBo2tAeJ4K3Y67XIVBabDjGdSglMBJnmALI2QgNwlXE3g==
Received: by filterdrecv-77869f68cc-wnrh7 with SMTP id filterdrecv-77869f68cc-wnrh7-1-648B45F8-58
        2023-06-15 17:10:17.048603932 +0000 UTC m=+3087256.701033920
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-2 (SG)
	with ESMTP
	id dUuyg-PyTA26fNyKJvWdhw
	Thu, 15 Jun 2023 17:10:16.831 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 1/6] phy/rockchip: inno-hdmi: use correct vco_div_5 macro
 on rk3328
Date: Thu, 15 Jun 2023 17:10:17 +0000 (UTC)
Message-Id: <20230615171005.2251032-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615171005.2251032-1-jonas@kwiboo.se>
References: <20230615171005.2251032-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h+ZrqWCTZdFFi5nlL?=
 =?us-ascii?Q?DuP0hLMHKNwHCEmYMS2H=2FdC7+pE+Pk3R=2FVINVZo?=
 =?us-ascii?Q?OHLxCqDj40h5GYb1sEiLgsa5m5FpcuMRBQi=2FhGD?=
 =?us-ascii?Q?FFIxhpmMWs8AyKcUNm9=2F+3Ffsxop+0hz1eBzscN?=
 =?us-ascii?Q?tLV+U45dCFRwV+cZAfrfkn9NPMGI0exYx2iJ7mG?=
 =?us-ascii?Q?lrio02WVGCem2PQk9uT7Q=3D=3D?=
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Zheng Yang <zhengyang@rock-chips.com>
Cc: Alex Bee <knaerzche@gmail.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
	Kishon Vijay Abraham I <kishon@ti.com>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_101020_469924_46F9CD86 
X-CRM114-Status: GOOD (  10.65  )
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

inno_hdmi_phy_rk3328_clk_set_rate() is using the RK3228 macro
when configuring vco_div_5 on RK3328.

Fix this by using correct vco_div_5 macro for RK3328.

Fixes: 53706a116863 ("phy: add Rockchip Innosilicon hdmi phy")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v3:
- no change

 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 1e1563f5fffc..f348e5347d81 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -790,8 +790,8 @@ static int inno_hdmi_phy_rk3328_clk_set_rate(struct clk_hw *hw,
 			 RK3328_PRE_PLL_POWER_DOWN);
 
 	/* Configure pre-pll */
-	inno_update_bits(inno, 0xa0, RK3228_PCLK_VCO_DIV_5_MASK,
-			 RK3228_PCLK_VCO_DIV_5(cfg->vco_div_5_en));
+	inno_update_bits(inno, 0xa0, RK3328_PCLK_VCO_DIV_5_MASK,
+			 RK3328_PCLK_VCO_DIV_5(cfg->vco_div_5_en));
 	inno_write(inno, 0xa1, RK3328_PRE_PLL_PRE_DIV(cfg->prediv));
 
 	val = RK3328_SPREAD_SPECTRUM_MOD_DISABLE;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
