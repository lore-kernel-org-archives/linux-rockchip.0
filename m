Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE15FC71156
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 03:10:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1661B20671
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 03:10:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TD3YoQw7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1661B20671
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RiqiZFi7ooQO5ukdwZPchQMxcoctWAKMmlYc4tg9tgY=; b=TD3YoQw7oBSX3iRVpNU65zZzJx
	sqlGnnyycioCP82X4PMOAR/xpPhrBtGJkn0dWRsYoWZPr5sfPMWX4c3giDbpT5TuJCB6wv9osYOol
	P1TAsTCzWffPZGltp3dOWuUZv23m1X6bco2STQ1XYnBt+cxnNUAf1XfHvukezF/3sIJ5oYvK6cSuO
	SY0pnrn+kCNOYOGz1G2WbxEFZKDfR10pp++8vrukdr/lrv0O/OeqIDanZUJydrfvm2rt5Eiu7QYIA
	TX4kZg9VpBV1RK0CgMeYuWfFnEK/inzyAh2xNM/mGzlrLtX5k6R3dWKdSOkn72OD1X6r2E3tFwHcj
	DN3O5ctA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjw3j-00037v-Lj; Tue, 01 Dec 2020 03:10:31 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjw3e-00035k-TK; Tue, 01 Dec 2020 03:10:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id DF2B7200D28A;
 Tue,  1 Dec 2020 11:10:21 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yRNd_2PMXOKD; Tue,  1 Dec 2020 11:10:21 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id C5B26200D287;
 Tue,  1 Dec 2020 11:10:21 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id B5F1AC019E2;
 Tue,  1 Dec 2020 11:10:21 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id 888CE200756; Tue,  1 Dec 2020 11:10:21 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: 
Subject: [PATCH] phy: rockchip-emmc: emmc_phy_init() always return 0
Date: Tue,  1 Dec 2020 11:10:14 +0800
Message-Id: <20201201031015.23314-1-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201130_221027_157357_E94DF09A 
X-CRM114-Status: GOOD (  10.28  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

rockchip_emmc_phy_init() return variable is not set with the error value
if clk_get() failed. The debug message print 0 on error and the function
always return 0.
Fix it using PTR_ERR().

Fixes: 52c0624a10cce phy: rockchip-emmc: Set phyctrl_frqsel based on card clock

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---
 drivers/phy/rockchip/phy-rockchip-emmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
index 48e2d75b1004..75faee5c0d27 100644
--- a/drivers/phy/rockchip/phy-rockchip-emmc.c
+++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
@@ -253,6 +253,7 @@ static int rockchip_emmc_phy_init(struct phy *phy)
 	 */
 	rk_phy->emmcclk = clk_get(&phy->dev, "emmcclk");
 	if (IS_ERR(rk_phy->emmcclk)) {
+		ret = PTR_ERR(rk_phy->emmcclk);
 		dev_dbg(&phy->dev, "Error getting emmcclk: %d\n", ret);
 		rk_phy->emmcclk = NULL;
 	}
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
