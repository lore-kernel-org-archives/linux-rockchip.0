Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07B72EB64DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jun 2023 17:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DRQHXTGiyLA4bxcozvOHypaXcXhfWIjaQMZHxGCmvyY=; b=X1irHnVZARVGiUTIg4PH8XL21d
	P769gahT3DJLHZ7i5nfymPB++PKgc+K23p9ZxbOaABX9zfBtQc0iCyE+4dQZZaGUwEFB/O/1wc3Lb
	UNarWawuFLbJ/okb7qRJV8vdBz95qC4YgKP4EfASOKIuS8D2UQNlFQY4A2vfgJoek0FpTYucLs9sE
	AFL6+l/l0zEebvJo83sfaBdaD6NgQnGtMGoq5yGnOdZ44pCsnUF/vzVAMffziAm+hGNBArGADk2/Y
	gCESdsIdZYxaGElvZ2Cwc3Psi1uLX8UA1Kut+AHiqX9PG4oucem9OH04tbjGDCUGkVstxw+9pDLqY
	rkyEfOSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUf-00FXYA-1y;
	Thu, 15 Jun 2023 17:10:45 +0000
Received: from s.wrqvtzvf.outbound-mail.sendgrid.net ([149.72.126.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUM-00FXGp-2I
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jun 2023 17:10:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=SwUrQGtfdJAfbPGuPioQpX3ZwqUQutzSyANTQ3rAAzw=;
	b=AMwf2Hpdyvkd7i69t99g+qZJ9jtyPG9rteVAsinO8lpeNRIbbOB9Y1NHTAqw1kEUboIX
	Wp2ypBdurEoTq1nzyETIhOgWse33pC7/jmORGjvT2ccuTy6Lp75x1OxW1A7sx/QfQRbKm+
	oCw26goRml136PvKzb+ClgRrs1L5xYP4J6VSE3oQpg0GkpGrVfLf7v6ygI92QAQNXu0pfn
	8QbeZFChndwjVbMh9Un6LAL77QrYTbT65UEWvmHKIupaThEQJ4uoZGTh5bQTn4gBMZ5rf+
	o1ABoCJIAhM8tpJ/LNd7zpA+FM7UtgdicRgHwt0Ht89ZepMry/kMdFRM630qEuJg==
Received: by filterdrecv-84b96456cb-6l8hp with SMTP id filterdrecv-84b96456cb-6l8hp-1-648B45FD-25
        2023-06-15 17:10:21.532681887 +0000 UTC m=+3087112.128091413
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-2 (SG)
	with ESMTP
	id A-l5S23OQY-HMDmXz1kwpQ
	Thu, 15 Jun 2023 17:10:21.207 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 4/6] phy/rockchip: inno-hdmi: do not power on rk3328 post
 pll on reg write
Date: Thu, 15 Jun 2023 17:10:21 +0000 (UTC)
Message-Id: <20230615171005.2251032-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615171005.2251032-1-jonas@kwiboo.se>
References: <20230615171005.2251032-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h444tarc9ufij5dRA?=
 =?us-ascii?Q?eI1cNBIYAT3oqUvqrtRFevHr5kMKRB2WdkvXiol?=
 =?us-ascii?Q?zFWREqpE=2FjoQJRA6K5mU0FvT1bQmfn6ebI8Fu2L?=
 =?us-ascii?Q?w5+GSCaGOu2wnwHgGXlL9=2Fp4t1mi3PnwbfQTV5=2F?=
 =?us-ascii?Q?E5sFc28G=2FKv=2F0r5Paxca7skf++7gb5wW1xpFBXQ?=
 =?us-ascii?Q?M0onZCipQIwdY3RFQ0A1w=3D=3D?=
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Zheng Yang <zhengyang@rock-chips.com>
Cc: Alex Bee <knaerzche@gmail.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
	Kishon Vijay Abraham I <kishon@ti.com>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_101026_876331_1A7A4C57 
X-CRM114-Status: GOOD (  10.56  )
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

inno_write is used to configure 0xaa reg, that also hold the
POST_PLL_POWER_DOWN bit.
When POST_PLL_REFCLK_SEL_TMDS is configured the power down bit is not
taken into consideration.

Fix this by keeping the power down bit until configuration is complete.
Also reorder the reg write order for consistency.

Fixes: 53706a116863 ("phy: add Rockchip Innosilicon hdmi phy")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v3:
- no change

 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index f027e0a2e26b..fe7fa9a43ec0 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -1020,9 +1020,10 @@ inno_hdmi_phy_rk3328_power_on(struct inno_hdmi_phy *inno,
 
 	inno_write(inno, 0xac, RK3328_POST_PLL_FB_DIV_7_0(cfg->fbdiv));
 	if (cfg->postdiv == 1) {
-		inno_write(inno, 0xaa, RK3328_POST_PLL_REFCLK_SEL_TMDS);
 		inno_write(inno, 0xab, RK3328_POST_PLL_FB_DIV_8(cfg->fbdiv) |
 			   RK3328_POST_PLL_PRE_DIV(cfg->prediv));
+		inno_write(inno, 0xaa, RK3328_POST_PLL_REFCLK_SEL_TMDS |
+			   RK3328_POST_PLL_POWER_DOWN);
 	} else {
 		v = (cfg->postdiv / 2) - 1;
 		v &= RK3328_POST_PLL_POST_DIV_MASK;
@@ -1030,7 +1031,8 @@ inno_hdmi_phy_rk3328_power_on(struct inno_hdmi_phy *inno,
 		inno_write(inno, 0xab, RK3328_POST_PLL_FB_DIV_8(cfg->fbdiv) |
 			   RK3328_POST_PLL_PRE_DIV(cfg->prediv));
 		inno_write(inno, 0xaa, RK3328_POST_PLL_POST_DIV_ENABLE |
-			   RK3328_POST_PLL_REFCLK_SEL_TMDS);
+			   RK3328_POST_PLL_REFCLK_SEL_TMDS |
+			   RK3328_POST_PLL_POWER_DOWN);
 	}
 
 	for (v = 0; v < 14; v++)
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
