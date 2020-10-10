Return-Path: <SRS0=0Sn9=DR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42863C433DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2020 15:32:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EAE6622260
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2020 15:32:48 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xGCXlasE";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="W0oVnutJ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EAE6622260
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kwiboo.se
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:In-Reply-To:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aTGSDTx7Y0GFLeewCq9QE5Sn2V7PCl+g5Zb/00Yrg1o=; b=xGCXlasElnVsfZI8ar1fWsmbJX
	doaVz3Xt86KFSGkIhcK4IcMAMYw3WXzCfiXE1Y07wbpMzcHniSHfvrtff/SgRkZ52b03P4YY658dn
	ZrXuEBQVZsoILKJVinpvQqt6u334RhVk3utRJSBT7KNA5vEVbH4VwLNA2Jj4Fh5c0f8GGHkW0JXP+
	WjZCJCXLdThVPwZTNjPBjqDiueffCXkWbFTE4FyhDlbOvBIHWqqmQ4of37CcIhh9zVUh6Ua/Hv+Uw
	313VNgBS/0Jtd97CkEMzLCkZLE+EXs+lNSu8WCaeAfmOTSYrVVgopvzfoSsUwoy/pZ9EzQQb13dro
	ihu39WGw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kRGrV-0005Wq-3E; Sat, 10 Oct 2020 15:32:45 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRGr6-0005Op-QH
 for linux-rockchip@lists.infradead.org; Sat, 10 Oct 2020 15:32:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=z7v+PHtCfxxSYzksa8sjIkGNZO+Cebil1muBgONTycw=;
 b=W0oVnutJoRuNz5mp/ETjW03TseZjrsUsoXeM90QXo/qdUG1EtBzL3/iDOJkKnY8Xz9Ro
 P+8GU2kfwuKa4Km36KzWBTsKlE0vCbjciXufqGKBQzRGdovImyBburKt2QJYGpp9CIXaAf
 msZcIAJtVMfmfhP2LUIZ3xM8c+uOVBNpY=
Received: by filterdrecv-p3mdw1-6685f47d68-78qj6 with SMTP id
 filterdrecv-p3mdw1-6685f47d68-78qj6-18-5F81D403-32
 2020-10-10 15:32:19.538936526 +0000 UTC m=+233775.988108048
Received: from bionic.localdomain (unknown)
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP
 id nmh82tHhTdyiOk1sd1xYvA Sat, 10 Oct 2020 15:32:19.255 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 4/6] phy/rockchip: inno-hdmi: do not power on rk3328 post
 pll on reg write
Date: Sat, 10 Oct 2020 15:32:19 +0000 (UTC)
Message-Id: <20201010153214.19722-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201010153214.19722-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
 <20201010153214.19722-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h3onD66qw86ldXqOu?=
 =?us-ascii?Q?J8YOYMUoLGHsGWeoUUrZbkWIwpmdMK4Fhdgb9BS?=
 =?us-ascii?Q?1b5zzZq8k2PWp3qUyoPLNIRJ0xNRnJRsvV94L24?=
 =?us-ascii?Q?Xuc0lBwHVW9FL+kdGnfwq0FzHEezjazhHw4XX+d?=
 =?us-ascii?Q?bi8S2+o0pwQ7lpxmILzOCEPJflU3A3GoZhVmlEi?=
 =?us-ascii?Q?SPUPYsQRuSpFVSqYQmqUQ=3D=3D?=
To: Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>
X-Entity-ID: wSPGWgGSXUap++qShBI+ag==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201010_113220_918246_BDF35144 
X-CRM114-Status: GOOD (  10.97  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Huicong Xu <xhc@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Zheng Yang <zhengyang@rock-chips.com>
MIME-Version: 1.0
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
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 06db69c8373e..3a59a6da0440 100644
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
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
