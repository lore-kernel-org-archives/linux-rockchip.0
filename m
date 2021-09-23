Return-Path: <SRS0=OM03=ON=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B2AC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Sep 2021 02:51:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5F347610D1
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Sep 2021 02:51:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5F347610D1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baidu.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c3Z6DhzEl5wYXmeXA1esIZbg/l99BSxIY1oFczIomag=; b=qCcvNUVlbal/+k
	HKrlzm9TXg22IH06sg2zZHca68UaXwIzRohmGmMeA2K3POw2hjM/RdLhSBd/uUvjHAk55Mrg8qH69
	01Fu4ZfetOm7Ro3iC3580Diilcw44MPIlsGrN8n5NL9TLWHNLdg3ZK3AjllU4AjPXxIv1Wvy0+V1H
	3PHDUOXapKjP/NH6gYpq8HSuXOkKx6uQs+n6X37pTkEVtBEnWVyhQES1oUh0rU+LDEGY0NMWu1Ef8
	9vmJoTZM+Y/laYbDt+BrbdhT0Jwp9guo53hv78QtLIK8Fh4Io31GYpOv01SB4olq1kY8ziiIW7i8g
	dwQBuNb6hljC/XTJ0Zyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTEpN-00A7Rd-PY; Thu, 23 Sep 2021 02:51:13 +0000
Received: from mx24.baidu.com ([111.206.215.185] helo=baidu.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTEp9-00A7Oa-Cd; Thu, 23 Sep 2021 02:51:00 +0000
Received: from BC-Mail-Ex24.internal.baidu.com (unknown [172.31.51.18])
 by Forcepoint Email with ESMTPS id 12C8927A6B80D3209585;
 Thu, 23 Sep 2021 10:50:58 +0800 (CST)
Received: from BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) by
 BC-Mail-Ex24.internal.baidu.com (172.31.51.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2242.12; Thu, 23 Sep 2021 10:50:57 +0800
Received: from LAPTOP-UKSR4ENP.internal.baidu.com (172.31.63.8) by
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Thu, 23 Sep 2021 10:50:57 +0800
From: Cai Huoqing <caihuoqing@baidu.com>
To: <caihuoqing@baidu.com>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, <linux-phy@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] phy: rockchip: Kconfig: Add configuration menu for Rockchip
 phy drivers
Date: Thu, 23 Sep 2021 10:50:50 +0800
Message-ID: <20210923025051.454-1-caihuoqing@baidu.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [172.31.63.8]
X-ClientProxiedBy: BC-Mail-Ex31.internal.baidu.com (172.31.51.25) To
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_195059_684171_2D5FE960 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
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

Adding a configuration menu to hold many Rockchip phy drivers
helps to make the menu display more concise.

Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
---
 drivers/phy/rockchip/Kconfig | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index e812adad7242..8b6dd594f43e 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -2,16 +2,18 @@
 #
 # Phy drivers for Rockchip platforms
 #
+menu "PHY drivers for Rockchip platforms"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+
 config PHY_ROCKCHIP_DP
 	tristate "Rockchip Display Port PHY Driver"
-	depends on ARCH_ROCKCHIP && OF
+	depends on OF
 	select GENERIC_PHY
 	help
 	  Enable this to support the Rockchip Display Port PHY.
 
 config PHY_ROCKCHIP_DPHY_RX0
 	tristate "Rockchip MIPI Synopsys DPHY RX0 driver"
-	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	select GENERIC_PHY_MIPI_DPHY
 	select GENERIC_PHY
 	help
@@ -23,14 +25,14 @@ config PHY_ROCKCHIP_DPHY_RX0
 
 config PHY_ROCKCHIP_EMMC
 	tristate "Rockchip EMMC PHY Driver"
-	depends on ARCH_ROCKCHIP && OF
+	depends on OF
 	select GENERIC_PHY
 	help
 	  Enable this to support the Rockchip EMMC PHY.
 
 config PHY_ROCKCHIP_INNO_HDMI
 	tristate "Rockchip INNO HDMI PHY Driver"
-	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
+	depends on OF
 	depends on COMMON_CLK
 	depends on HAS_IOMEM
 	select GENERIC_PHY
@@ -39,7 +41,7 @@ config PHY_ROCKCHIP_INNO_HDMI
 
 config PHY_ROCKCHIP_INNO_USB2
 	tristate "Rockchip INNO USB2PHY Driver"
-	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
+	depends on OF
 	depends on COMMON_CLK
 	depends on EXTCON
 	depends on USB_SUPPORT
@@ -50,7 +52,7 @@ config PHY_ROCKCHIP_INNO_USB2
 
 config PHY_ROCKCHIP_INNO_CSIDPHY
 	tristate "Rockchip Innosilicon MIPI CSI PHY driver"
-	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
+	depends on OF
 	select GENERIC_PHY
 	select GENERIC_PHY_MIPI_DPHY
 	help
@@ -59,7 +61,7 @@ config PHY_ROCKCHIP_INNO_CSIDPHY
 
 config PHY_ROCKCHIP_INNO_DSIDPHY
 	tristate "Rockchip Innosilicon MIPI/LVDS/TTL PHY driver"
-	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
+	depends on OF
 	select GENERIC_PHY
 	select GENERIC_PHY_MIPI_DPHY
 	help
@@ -68,7 +70,7 @@ config PHY_ROCKCHIP_INNO_DSIDPHY
 
 config PHY_ROCKCHIP_PCIE
 	tristate "Rockchip PCIe PHY Driver"
-	depends on (ARCH_ROCKCHIP && OF) || COMPILE_TEST
+	depends on OF
 	depends on HAS_IOMEM
 	select GENERIC_PHY
 	select MFD_SYSCON
@@ -77,7 +79,7 @@ config PHY_ROCKCHIP_PCIE
 
 config PHY_ROCKCHIP_TYPEC
 	tristate "Rockchip TYPEC PHY Driver"
-	depends on OF && (ARCH_ROCKCHIP || COMPILE_TEST)
+	depends on OF
 	select EXTCON
 	select GENERIC_PHY
 	select RESET_CONTROLLER
@@ -86,7 +88,9 @@ config PHY_ROCKCHIP_TYPEC
 
 config PHY_ROCKCHIP_USB
 	tristate "Rockchip USB2 PHY Driver"
-	depends on ARCH_ROCKCHIP && OF
+	depends on OF
 	select GENERIC_PHY
 	help
 	  Enable this to support the Rockchip USB 2.0 PHY.
+
+endmenu
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
