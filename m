Return-Path: <SRS0=C2RB=CM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 658D8C433E2
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 06:32:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 32D0A206EB
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 06:32:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZFRbunp1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 32D0A206EB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yp86S55WlsbtXWrPmOBXj2P7ctPZoHYG/3TDCvm8p2w=; b=ZFRbunp1QkCLBZpEOpIo4RHulz
	8PyI5IfhGA+Nn3G4lQwew9IR8SWmbluf/LLc3x40xNZ57IkcWY0ttxjgrNS7MdTBV+vehuhJ2Vkow
	SDYYMjb485iP7QztV0vvm7c+6BWGBhOYBBNyHuFQ21Ozg9V3G0QRodA9EvHXOJkguHyidmrDDFETT
	PjlqWNxwQjotz6Pcisc3uTIcmD3KRlgzS4mhVuRGB5o8twbzbZhzSDU/czEvin/+LhuosIp4yXs+I
	EPEwTMTy+XpRC9rI4PnuJ25RdAja7fsbs99C1s6mwLC0DYEPL4kNWavp60nwi7gymTgcF7q6dluL3
	7UDWRJkQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDinc-0005Ol-8Z; Thu, 03 Sep 2020 06:32:44 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDinZ-0005Md-Am
 for linux-rockchip@lists.infradead.org; Thu, 03 Sep 2020 06:32:42 +0000
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id 44257ED62A;
 Thu,  3 Sep 2020 14:32:37 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P29633T140716441319168S1599114756148900_; 
 Thu, 03 Sep 2020 14:32:37 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f97d728069991bec97f975f10c0dab4d>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 6/6] clk: rockchip: rk3399: Support module build
Date: Thu,  3 Sep 2020 14:32:34 +0800
Message-Id: <20200903063234.10639-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200903063147.10237-1-zhangqing@rock-chips.com>
References: <20200903063147.10237-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200903_023241_643884_89F1BF07 
X-CRM114-Status: GOOD (  15.22  )
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, sboyd@kernel.org,
 mturquette@baylibre.com, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 xxx@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

support CLK_OF_DECLARE and builtin_platform_driver_probe
double clk init method.
add module author, description and license to support building
Soc Rk3399 clock driver as module.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk-rk3399.c | 55 +++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index ce1d2446f142..40ff17aee5b6 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -5,9 +5,11 @@
  */
 
 #include <linux/clk-provider.h>
+#include <linux/module.h>
 #include <linux/io.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <dt-bindings/clock/rk3399-cru.h>
@@ -1600,3 +1602,56 @@ static void __init rk3399_pmu_clk_init(struct device_node *np)
 	rockchip_clk_of_add_provider(np, ctx);
 }
 CLK_OF_DECLARE(rk3399_cru_pmu, "rockchip,rk3399-pmucru", rk3399_pmu_clk_init);
+
+struct clk_rk3399_inits {
+		void (*inits)(struct device_node *np);
+};
+
+static const struct clk_rk3399_inits clk_rk3399_pmucru_init = {
+	.inits = rk3399_pmu_clk_init,
+};
+
+static const struct clk_rk3399_inits clk_rk3399_cru_init = {
+	.inits = rk3399_clk_init,
+};
+
+static const struct of_device_id clk_rk3399_match_table[] = {
+	{
+		.compatible = "rockchip,rk3399-cru",
+		.data = &clk_rk3399_cru_init,
+	},  {
+		.compatible = "rockchip,rk3399-pmucru",
+		.data = &clk_rk3399_pmucru_init,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, clk_rk3399_match_table);
+
+static int __init clk_rk3399_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	const struct of_device_id *match;
+	const struct clk_rk3399_inits *init_data;
+
+	match = of_match_device(clk_rk3399_match_table, &pdev->dev);
+	if (!match || !match->data)
+		return -EINVAL;
+
+	init_data = match->data;
+	if (init_data->inits)
+		init_data->inits(np);
+
+	return 0;
+}
+
+static struct platform_driver clk_rk3399_driver = {
+	.driver		= {
+		.name	= "clk-rk3399",
+		.of_match_table = clk_rk3399_match_table,
+	},
+};
+builtin_platform_driver_probe(clk_rk3399_driver, clk_rk3399_probe);
+
+MODULE_DESCRIPTION("Rockchip RK3399 Clock Driver");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:clk-rk3399");
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
