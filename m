Return-Path: <SRS0=aL02=FN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E1FEC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 02:08:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 04D1E238E5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 02:08:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 04D1E238E5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3SbYZKKfueyHubEeD8P+mwH3fxd7lLd8rneot5okWmw=; b=RLGNF6AmqjGxN2yM6c+6J4kAj/
	e5as2xNg7qbKtBMI2YW0AY80mtItVt7o9l2WzICV9SkxftXAVkb0ZxImJn2nEo3huMz1HnaHVGJiJ
	yN7pGTmvZV8H3fRuSbUC7dJNFZh5tJ2Ua1tTlosCkdG5LeqLXZyK2+XBIYw4jvsfOkt2qbjbs8hpO
	WLrs9lf5U2560oUiuk2T1Hrdxwd4hq/lXVBSvsQchbfnOgTKS+4wbbhdFgsGNkDYls7OfiQwfpHF9
	PbemSl75KcBu/7PlOrOuuba3Y3Kiz7megjTjoIpV+L1XL2bU7C9/G4Q6sixjUS6hVrSYGuGBnb3/u
	3LYOQYlg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmouB-000565-VL; Wed, 09 Dec 2020 02:08:35 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmou7-00055T-Q4; Wed, 09 Dec 2020 02:08:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id B691B200E7E0;
 Wed,  9 Dec 2020 10:08:27 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 84LiOLCf-GKu; Wed,  9 Dec 2020 10:08:27 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 946A1200E7DE;
 Wed,  9 Dec 2020 10:08:27 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id 8E911C01F98;
 Wed,  9 Dec 2020 10:08:27 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id 560AC2000CF; Wed,  9 Dec 2020 10:08:27 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v2] phy: rockchip-emmc: emmc_phy_init() always return 0
Date: Wed,  9 Dec 2020 10:07:57 +0800
Message-Id: <20201209020757.5917-1-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201208_210832_107987_488615BA 
X-CRM114-Status: GOOD (  13.11  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Chris Ruehl <chris.ruehl@gtsys.com.hk>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

rockchip_emmc_phy_init() return variable is not set with the error value
if clk_get() failed. 'emmcclk' is optional, thus use clk_get_optional()
and if the return value != NULL make error processing and set the
return code accordingly.

Fixes: 52c0624a10cce phy: rockchip-emmc: Set phyctrl_frqsel based on card clock

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---
 drivers/phy/rockchip/phy-rockchip-emmc.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
index 48e2d75b1004..a23034416481 100644
--- a/drivers/phy/rockchip/phy-rockchip-emmc.c
+++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
@@ -245,15 +245,17 @@ static int rockchip_emmc_phy_init(struct phy *phy)
 	 * - SDHCI driver to get the PHY
 	 * - SDHCI driver to init the PHY
 	 *
-	 * The clock is optional, so upon any error we just set to NULL.
+	 * The clock is optional, using clk_get_optional() to get the clock
+	 * and do error processing if the return value != NULL
 	 *
 	 * NOTE: we don't do anything special for EPROBE_DEFER here.  Given the
 	 * above expected use case, EPROBE_DEFER isn't sensible to expect, so
 	 * it's just like any other error.
 	 */
-	rk_phy->emmcclk = clk_get(&phy->dev, "emmcclk");
-	if (IS_ERR(rk_phy->emmcclk)) {
-		dev_dbg(&phy->dev, "Error getting emmcclk: %d\n", ret);
+	rk_phy->emmcclk = clk_get_optional(&phy->dev, "emmcclk");
+	if (rk_phy->emmcclk && IS_ERR(rk_phy->emmcclk)) {
+		ret = PTR_ERR(rk_phy->emmcclk);
+		dev_err(&phy->dev, "Error getting emmcclk: %d\n", ret);
 		rk_phy->emmcclk = NULL;
 	}
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
