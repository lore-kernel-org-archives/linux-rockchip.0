Return-Path: <SRS0=YnxI=FB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 487B3C63697
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2020 03:34:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C328021534
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2020 03:34:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="bCL+xYeF"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C328021534
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=b48H5etm8wEVFprF3RkWjWNKMjzEvaO1G1VxtT5tTwY=; b=bCL+xYeFTCUH7tZlyQbDGybK8g
	NM7FQoTn2q/tz690LxR2UvRJz+2kVi5PrsQoOn5em1yr8n0IRxpuDUg6GamjVui6TDoVUajt+kPrO
	IV/Z53Wo+UwyauZhVfn2Ux+sqZUYWD6NK/jT3VPAT4/cV1X7+oM/3qSy54nj/zrXB6ikYAKgRNuae
	uSlL184SRF4jrA89Ud5jMovRNLsmddg6zkohmqYfIs/6ja81MA5wHXJsozGUmohvrTe5HGpgaNaPo
	lvEPhYptpK7LiNyLTP0/TUCOnE26Goe9xo2e4q8WJQq2LZOS+DqN44vHO+LbqFlkXrclDPO/ldrQ/
	/l/Nlrxg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kiUX0-00044L-F0; Fri, 27 Nov 2020 03:34:46 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiUWk-0003xo-LZ; Fri, 27 Nov 2020 03:34:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 83A71200E247;
 Fri, 27 Nov 2020 11:34:25 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wS6AOETFB3Et; Fri, 27 Nov 2020 11:34:25 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 62A04200E245;
 Fri, 27 Nov 2020 11:34:25 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id 53758C01F81;
 Fri, 27 Nov 2020 11:34:25 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id CE341200756; Fri, 27 Nov 2020 11:34:24 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: 
Subject: [PATCH 1/2] phy: rockchip: set pulldown for strobe line in dts
Date: Fri, 27 Nov 2020 11:33:59 +0800
Message-Id: <20201127033359.32725-1-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201126_223430_991186_A552EC93 
X-CRM114-Status: GOOD (  13.43  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch add support to set the internal pulldown via dt property
and allow simplify the board design for the trace from emmc-phy to
the eMMC chipset.
Default to not set the pull-down.

This patch was inspired from the 4.4 tree of the
Rockchip SDK, where it is enabled unconditional.
The patch had been tested with our rk3399 customized board.

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---
 drivers/phy/rockchip/phy-rockchip-emmc.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
index 2dc19ddd120f..d9bc45828f74 100644
--- a/drivers/phy/rockchip/phy-rockchip-emmc.c
+++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
@@ -67,6 +67,10 @@
 #define PHYCTRL_OTAPDLYENA_SHIFT	0xb
 #define PHYCTRL_OTAPDLYSEL_MASK		0xf
 #define PHYCTRL_OTAPDLYSEL_SHIFT	0x7
+#define PHYCTRL_REN_STRB_DISABLE	0x0
+#define PHYCTRL_REN_STRB_ENABLE	0x1
+#define PHYCTRL_REN_STRB_MASK	0x1
+#define PHYCTRL_REN_STRB_SHIFT	0x9
 
 #define PHYCTRL_IS_CALDONE(x) \
 	((((x) >> PHYCTRL_CALDONE_SHIFT) & \
@@ -80,6 +84,7 @@ struct rockchip_emmc_phy {
 	struct regmap	*reg_base;
 	struct clk	*emmcclk;
 	unsigned int drive_impedance;
+	unsigned int enable_strobe_pulldown;
 };
 
 static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
@@ -295,6 +300,13 @@ static int rockchip_emmc_phy_power_on(struct phy *phy)
 				   PHYCTRL_OTAPDLYSEL_MASK,
 				   PHYCTRL_OTAPDLYSEL_SHIFT));
 
+	/* Internal pull-down for strobe line */
+	regmap_write(rk_phy->reg_base,
+			rk_phy->reg_offset + GRF_EMMCPHY_CON2,
+			HIWORD_UPDATE(rk_phy->enable_strobe_pulldown,
+				PHYCTRL_REN_STRB_MASK,
+				PHYCTRL_REN_STRB_SHIFT));
+
 	/* Power up emmc phy analog blocks */
 	return rockchip_emmc_phy_power(phy, PHYCTRL_PDB_PWR_ON);
 }
@@ -359,10 +371,14 @@ static int rockchip_emmc_phy_probe(struct platform_device *pdev)
 	rk_phy->reg_offset = reg_offset;
 	rk_phy->reg_base = grf;
 	rk_phy->drive_impedance = PHYCTRL_DR_50OHM;
+	rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_DISABLE;
 
 	if (!of_property_read_u32(dev->of_node, "drive-impedance-ohm", &val))
 		rk_phy->drive_impedance = convert_drive_impedance_ohm(pdev, val);
 
+	if (of_property_read_bool(dev->of_node, "enable-strobe-pulldown"))
+		rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_ENABLE;
+
 	generic_phy = devm_phy_create(dev, dev->of_node, &ops);
 	if (IS_ERR(generic_phy)) {
 		dev_err(dev, "failed to create PHY\n");
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
