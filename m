Return-Path: <SRS0=yk8M=FG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ED0C83012
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Dec 2020 08:26:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2FF4C22206
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Dec 2020 08:26:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2FF4C22206
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pgILcNzTKty+qpxsVSTJemadNMoizMY4IaWnHGhIGvc=; b=wPE2+M2fj6OJjrwdQYsTyEj/o
	Gk8vOPsRHJ79QZqce7ByXa5WV5fOwkkm1qFBZ+UE4kZvEmWYPI9hWjL8pt9u86e+r3ShP/g8EULfB
	dR7O+SaIFRNw/jOZsCEFQCVosJLbg2xg8roEynQ5Cn2CSZ/XG/CGndlpaP5nuwbKoRAsHWuv8uCKN
	HHLbl/caWPlCS/+MDp/r2NsMmm7DrW8Qjzx6qBbR7OkTbnkOrmIk/k/wd9qlwl+ZTfCJP9RTaXwR3
	0o+qVwMFrf8XMddSbQTw/ef4hW3fUDPqYldkvYnbLWxkOwLr3Xek+cJq1hx3zXB0mxsHXCG+eeMzj
	ZzCARDHEA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kkNSa-0008Od-3P; Wed, 02 Dec 2020 08:26:00 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kkNS2-00088J-DF; Wed, 02 Dec 2020 08:25:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 9BBA620001F5;
 Wed,  2 Dec 2020 16:25:22 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4vUYZdex8rWq; Wed,  2 Dec 2020 16:25:22 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 83B19200E233;
 Wed,  2 Dec 2020 16:25:22 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id 7BBFBC019F3;
 Wed,  2 Dec 2020 16:25:22 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id 7F42E200756; Wed,  2 Dec 2020 16:25:22 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: 
Subject: [PATCH 1/2] phy: rockchip-emmc: output tap delay dt property
Date: Wed,  2 Dec 2020 16:25:06 +0800
Message-Id: <20201202082507.3536-2-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201202082507.3536-1-chris.ruehl@gtsys.com.hk>
References: <20201202082507.3536-1-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201202_032526_918131_9BE2D314 
X-CRM114-Status: GOOD (  14.88  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Chris Ruehl <chris.ruehl@gtsys.com.hk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Update the rockchip-emmc phy to set the otapdlysec register with
a dt property. This was mentioned from Brian Norris when he sent
the path to set the default value in the driver.
This patch add a dt property 'output-tapdelay-select' u32 and allow
to set the 0x0-0xf. If not set in dts, the old default 0x4 applies.

Tested with our customized rk3399 to tune the eMMC.

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---
 drivers/phy/rockchip/phy-rockchip-emmc.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
index 75faee5c0d27..3c7f8c08353c 100644
--- a/drivers/phy/rockchip/phy-rockchip-emmc.c
+++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
@@ -65,6 +65,8 @@
 #define PHYCTRL_OTAPDLYENA		0x1
 #define PHYCTRL_OTAPDLYENA_MASK		0x1
 #define PHYCTRL_OTAPDLYENA_SHIFT	0xb
+#define PHYCTRL_OTAPDLYSEL_DEFAULT	0x4
+#define PHYCTRL_OTAPDLYSEL_MAXVALUE	0xf
 #define PHYCTRL_OTAPDLYSEL_MASK		0xf
 #define PHYCTRL_OTAPDLYSEL_SHIFT	0x7
 #define PHYCTRL_REN_STRB_DISABLE	0x0
@@ -85,6 +87,7 @@ struct rockchip_emmc_phy {
 	struct clk	*emmcclk;
 	unsigned int drive_impedance;
 	unsigned int enable_strobe_pulldown;
+	unsigned int output_tapdelay_select;
 };
 
 static int rockchip_emmc_phy_power(struct phy *phy, bool on_off)
@@ -297,7 +300,7 @@ static int rockchip_emmc_phy_power_on(struct phy *phy)
 	/* Output tap delay */
 	regmap_write(rk_phy->reg_base,
 		     rk_phy->reg_offset + GRF_EMMCPHY_CON0,
-		     HIWORD_UPDATE(4,
+		     HIWORD_UPDATE(rk_phy->output_tapdelay_select,
 				   PHYCTRL_OTAPDLYSEL_MASK,
 				   PHYCTRL_OTAPDLYSEL_SHIFT));
 
@@ -373,6 +376,7 @@ static int rockchip_emmc_phy_probe(struct platform_device *pdev)
 	rk_phy->reg_base = grf;
 	rk_phy->drive_impedance = PHYCTRL_DR_50OHM;
 	rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_DISABLE;
+	rk_phy->output_tapdelay_select = PHYCTRL_OTAPDLYSEL_DEFAULT;
 
 	if (!of_property_read_u32(dev->of_node, "drive-impedance-ohm", &val))
 		rk_phy->drive_impedance = convert_drive_impedance_ohm(pdev, val);
@@ -380,6 +384,13 @@ static int rockchip_emmc_phy_probe(struct platform_device *pdev)
 	if (of_property_read_bool(dev->of_node, "enable-strobe-pulldown"))
 		rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_ENABLE;
 
+	if (!of_property_read_u32(dev->of_node, "output-tapdelay-select", &val)) {
+		if (val <= PHYCTRL_OTAPDLYSEL_MAXVALUE)
+			rk_phy->output_tapdelay_select = val;
+		else
+			dev_err(dev, "output-tapdelay-select exceeds limit, apply default\n");
+	}
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
