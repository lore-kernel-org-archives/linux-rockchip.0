Return-Path: <SRS0=/XqT=PP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76CD8C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 13:26:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E2ECC610A0
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 13:26:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E2ECC610A0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xshfT9Wx631fM0w7YgSCgT0sHTXl3U3LDBj2268oMV4=; b=25eUlLKY7Vorjt
	CUbIRz2CrwOvWJn4nyiXY0P+qcYONSWV1Rze+Fc7WdaGDS5av2yTT1Fm8wOLJLdo6vgdP7HXtyxjx
	qRJnkY0iIVHqxqJynulGnZb6+ityhs+r2kPFh8t/Av8MEB4XyBFjCbaVRaxBgvy9ABnkFAZkV5gtQ
	WYiQp4p7kJiDFVRrDMwd3iKr5sWZ1/4Go2KjtF/TB4MRCW0VKvlgyNnndki3dIcYyfMb6oC/WNGAc
	gW6U44MKIOjsJGYXitlcIYokGG7msLMacoroDJtgdb3FyGytzLw6mGnB4h0elDx+YwoYSwh1RyRbG
	YuIpsilElOlbfDmErH9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfiwm-004yJy-HU; Wed, 27 Oct 2021 13:26:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfiwh-004yIG-34
 for linux-rockchip@lists.infradead.org; Wed, 27 Oct 2021 13:26:25 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mfiwf-0003TD-EJ; Wed, 27 Oct 2021 15:26:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: sboyd@kernel.org, kernel@esmil.dk, linux-clk@vger.kernel.org,
 mturquette@baylibre.com, heiko@sntech.de
Subject: [PATCH 2/2] clk: rockchip: drop module parts from rk3399 and rk3568
 drivers
Date: Wed, 27 Oct 2021 15:26:16 +0200
Message-Id: <20211027132616.1039814-3-heiko@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211027132616.1039814-1-heiko@sntech.de>
References: <20211027132616.1039814-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_062623_159576_4327B11F 
X-CRM114-Status: GOOD (  14.45  )
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

Both of these drivers were converted to real drivers and got a tristate
build option. But them being builtin_platform_drivers, they only ever
should be build-in - as the name suggests.

So adapt the Kconfig symbol and drop the MODULE_* parts from the drivers.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/Kconfig      | 4 ++--
 drivers/clk/rockchip/clk-rk3399.c | 4 ----
 drivers/clk/rockchip/clk-rk3568.c | 4 ----
 3 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/rockchip/Kconfig b/drivers/clk/rockchip/Kconfig
index 2dfd6a383393..3067bdb6e119 100644
--- a/drivers/clk/rockchip/Kconfig
+++ b/drivers/clk/rockchip/Kconfig
@@ -80,14 +80,14 @@ config CLK_RK3368
 	  Build the driver for RK3368 Clock Driver.
 
 config CLK_RK3399
-	tristate "Rockchip RK3399 clock controller support"
+	bool "Rockchip RK3399 clock controller support"
 	depends on ARM64 || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK3399 Clock Driver.
 
 config CLK_RK3568
-	tristate "Rockchip RK3568 clock controller support"
+	bool "Rockchip RK3568 clock controller support"
 	depends on ARM64 || COMPILE_TEST
 	default y
 	help
diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 53ed5cca335b..306910a3a0d3 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1630,7 +1630,6 @@ static const struct of_device_id clk_rk3399_match_table[] = {
 	},
 	{ }
 };
-MODULE_DEVICE_TABLE(of, clk_rk3399_match_table);
 
 static int __init clk_rk3399_probe(struct platform_device *pdev)
 {
@@ -1657,6 +1656,3 @@ static struct platform_driver clk_rk3399_driver = {
 	},
 };
 builtin_platform_driver_probe(clk_rk3399_driver, clk_rk3399_probe);
-
-MODULE_DESCRIPTION("Rockchip RK3399 Clock Driver");
-MODULE_LICENSE("GPL");
diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 75ca855e720d..69a9e8069a48 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1693,7 +1693,6 @@ static const struct of_device_id clk_rk3568_match_table[] = {
 	},
 	{ }
 };
-MODULE_DEVICE_TABLE(of, clk_rk3568_match_table);
 
 static int __init clk_rk3568_probe(struct platform_device *pdev)
 {
@@ -1720,6 +1719,3 @@ static struct platform_driver clk_rk3568_driver = {
 	},
 };
 builtin_platform_driver_probe(clk_rk3568_driver, clk_rk3568_probe);
-
-MODULE_DESCRIPTION("Rockchip RK3568 Clock Driver");
-MODULE_LICENSE("GPL");
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
