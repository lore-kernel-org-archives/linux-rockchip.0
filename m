Return-Path: <SRS0=2pai=KG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505E5C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 21:46:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 76FFE61628
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 21:46:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 76FFE61628
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FK8iZ3EKzksSqW7wBmNnknDkRmy5cnrH6E9KrzdhdjI=; b=gv8wChRnSraEc1FaSWeZuYPzdi
	1y9TogF6nh3qOD1KDcZKGUdHI0aMMCY6xfpVoSMqRbdaNXi6ayP8YGVien1YUGwJLhbgUAqzG7dRC
	4XaNoGsqnW2KY10EiiiiLwqDDQ25ricbiJorYZ06ZywFfTK5w/43yMAjSUyuGz39WpywgpVcG0oRD
	WXi+hNk5+oDoEYryr1C+qGuGJXUsTHfFEi7QKJkm8XzYV/xT0FPApFnLjAKbwCTaa+WS9qGqS/7Fj
	90Onb0hg5pPbVFOik5gz78bMYXwx8lBo1uxMyYOIbiE7gfZZrwHxfUlVq09GxODOfczdxdfAwtNVS
	6mJCt/4A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgaDF-001MvT-Hk; Tue, 11 May 2021 21:46:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgaDD-001Muz-FJ
 for linux-rockchip@desiato.infradead.org; Tue, 11 May 2021 21:46:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=CI7rDEDtz1d2fQifqo/5S6PRjTuydn46pxGEr7OVTEE=; b=WoDxbtnkK/p/6mS+XZZaEKjiGI
 jlstpFn8YV1E6sk45rTdpzBgP12Jviip3TRNIdQGQPs17qufl+askb2ZWUPsl4qhIDDzMCjAbGCia
 zrTQ4bFEppsWxawv5RGNH01dX5fZGGQ9mW4snqsDVklRoGmusFEDRio37LRa1KrJN+Dc4FOETJeFj
 DJCsubSrQ8yUOi+XZn1GxcujjFZRRHxmcMpTJ8456Povr1nhOvVIkzFuOMa/CYR5nd7G+ydnp0J4O
 A9EEvIbz7X4eJ14AsXGU/wtiQ26Z9KRE5KFGWyvZcahzpj16WXyJ/yviBnt9tbp0XBkVuNyy/262h
 Q73SMgdQ==;
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgaDA-009w2n-Km
 for linux-rockchip@lists.infradead.org; Tue, 11 May 2021 21:46:42 +0000
Received: by mail-qt1-x836.google.com with SMTP id t7so15848721qtn.3
 for <linux-rockchip@lists.infradead.org>; Tue, 11 May 2021 14:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CI7rDEDtz1d2fQifqo/5S6PRjTuydn46pxGEr7OVTEE=;
 b=noq13ruScaFSKVE89dykL7FiOcjU24r7t49tfQR3Ym18qhyxV5bBWQXewkwX1Tml/G
 hJGfA6fcbX5HV5RHQMIv/lTA0YNVU+m1jDET/VE0qDoqSQdq7vwRXT3ulNTHxBz58jZE
 PmiFjnQyV4ZNyxvJCiLeSOj3HZB9Jzj9l3P/XRIZ9cuqzdy/d5VFLS0WJcrbX8f98rrs
 lH2HOiJK7u0/xFUZRV3XFe8CbJ76KMTB5+lt3XGJBhNQhjQLjBUWhLoICBt+82OTfCNT
 3/iy/aaORkZJLKSltmTDI1sY/HgSvHtqFKFgIMYa8Y3EwPt+y2sQCwPZQQhTmEx2+Psj
 Mokg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CI7rDEDtz1d2fQifqo/5S6PRjTuydn46pxGEr7OVTEE=;
 b=sHDLLKArJT5tfGoNB6iZGTGq33O+gbPlqJHO7TrSpc9k/ZF87d1beygP8v9MuV6Jea
 aYJO2Q+C5wAwdOtBgshbU1bNaWD9Tmgl6kMVzETb2aUqfbDPVyL3yJAFdC9xJDRhF+F8
 u0FbH+92Uk6SHSlCCN6nFe+S/Z8SzI4kqSX3ngjbHIrTo7oD2kY0ve9Ua2gqTIkvgjLv
 W+c7cBRfYf+simhn454G7HwU+Ou9kbfuKuayDMTe7HPkhxamTIn1IUAF+sP2O3jRFMYY
 evIJZMRoTmZ9JaKuf8bvzcunQ493pvKGW55rLRJHWuYSY6vZFoo4a+Y/oJG2pn9Q8sI+
 C9vg==
X-Gm-Message-State: AOAM5314pnP4ztWzoybv8QhX/QISElM/hbQmdvVs0fLLuxN14RAacmJh
 G0xa1VvpCROUDzBR72nbimc=
X-Google-Smtp-Source: ABdhPJzhyX2eb++sGrkD6pl7DL2WFr91ZhoKaLvQLeYUgVjIiB8wRIMLr7X+0Pvc1bi4g3QpV1iNFA==
X-Received: by 2002:ac8:5cd2:: with SMTP id s18mr14368907qta.223.1620769597616; 
 Tue, 11 May 2021 14:46:37 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:f9ba:6614:640b:eee1])
 by smtp.gmail.com with ESMTPSA id l10sm16413093qtn.28.2021.05.11.14.46.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 May 2021 14:46:37 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH] net: phy: add driver for Motorcomm yt8511 phy
Date: Tue, 11 May 2021 17:46:06 -0400
Message-Id: <20210511214605.2937099-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_144640_745792_AF672901 
X-CRM114-Status: GOOD (  18.29  )
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

Add a driver for the Motorcomm yt8511 phy that will be used in the
production Pine64 rk3566-quartz64 development board.
It supports gigabit transfer speeds, rgmii, and 125mhz clk output.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 MAINTAINERS                 |  6 +++
 drivers/net/phy/Kconfig     |  6 +++
 drivers/net/phy/Makefile    |  1 +
 drivers/net/phy/motorcomm.c | 85 +++++++++++++++++++++++++++++++++++++
 4 files changed, 98 insertions(+)
 create mode 100644 drivers/net/phy/motorcomm.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 601b5ae0368a..2a2e406238fc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12388,6 +12388,12 @@ F:	Documentation/userspace-api/media/drivers/meye*
 F:	drivers/media/pci/meye/
 F:	include/uapi/linux/meye.h
 
+MOTORCOMM PHY DRIVER
+M:	Peter Geis <pgwipeout@gmail.com>
+L:	netdev@vger.kernel.org
+S:	Maintained
+F:	drivers/net/phy/motorcomm.c
+
 MOXA SMARTIO/INDUSTIO/INTELLIO SERIAL CARD
 S:	Orphan
 F:	Documentation/driver-api/serial/moxa-smartio.rst
diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 288bf405ebdb..16db9f8037b5 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -229,6 +229,12 @@ config MICROSEMI_PHY
 	help
 	  Currently supports VSC8514, VSC8530, VSC8531, VSC8540 and VSC8541 PHYs
 
+config MOTORCOMM_PHY
+	tristate "Motorcomm PHYs"
+	help
+	  Enables support for Motorcomm network PHYs.
+	  Currently supports the YT8511 gigabit PHY.
+
 config NATIONAL_PHY
 	tristate "National Semiconductor PHYs"
 	help
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index bcda7ed2455d..37ffbc6e3c87 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -70,6 +70,7 @@ obj-$(CONFIG_MICREL_PHY)	+= micrel.o
 obj-$(CONFIG_MICROCHIP_PHY)	+= microchip.o
 obj-$(CONFIG_MICROCHIP_T1_PHY)	+= microchip_t1.o
 obj-$(CONFIG_MICROSEMI_PHY)	+= mscc/
+obj-$(CONFIG_MOTORCOMM_PHY)	+= motorcomm.o
 obj-$(CONFIG_NATIONAL_PHY)	+= national.o
 obj-$(CONFIG_NXP_C45_TJA11XX_PHY)	+= nxp-c45-tja11xx.o
 obj-$(CONFIG_NXP_TJA11XX_PHY)	+= nxp-tja11xx.o
diff --git a/drivers/net/phy/motorcomm.c b/drivers/net/phy/motorcomm.c
new file mode 100644
index 000000000000..c6923dcf9f8f
--- /dev/null
+++ b/drivers/net/phy/motorcomm.c
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Motorcomm PHYs
+ *
+ * Author: Peter Geis <pgwipeout@gmail.com>
+ */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/phy.h>
+
+#define PHY_ID_YT8511		0x0000010a
+
+#define YT8511_PAGE_SELECT	0x1e
+#define YT8511_PAGE		0x1f
+#define YT8511_EXT_CLK_GATE	0x0c
+#define YT8511_EXT_SLEEP_CTRL	0x27
+
+/* 2b00 25m from pll
+ * 2b01 25m from xtl *default*
+ * 2b10 62.m from pll
+ * 2b11 125m from pll
+ */
+#define YT8511_CLK_125M		(BIT(2) | BIT(1))
+
+static int yt8511_read_page(struct phy_device *phydev)
+{
+	return __phy_read(phydev, YT8511_PAGE_SELECT);
+};
+
+static int yt8511_write_page(struct phy_device *phydev, int page)
+{
+	return __phy_write(phydev, YT8511_PAGE_SELECT, page);
+};
+
+static int yt8511_config_init(struct phy_device *phydev)
+{
+	int ret, val, oldpage;
+
+	/* set clock mode to 125mhz */
+	oldpage = phy_select_page(phydev, YT8511_EXT_CLK_GATE);
+	if (oldpage < 0)
+		goto err_restore_page;
+
+	val = __phy_read(phydev, YT8511_PAGE);
+	val |= (YT8511_CLK_125M);
+	ret = __phy_write(phydev, YT8511_PAGE, val);
+
+	/* disable auto sleep */
+	ret = __phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_SLEEP_CTRL);
+	val = __phy_read(phydev, YT8511_PAGE);
+	val &= (~BIT(15));
+	ret = __phy_write(phydev, YT8511_PAGE, val);
+
+err_restore_page:
+	return phy_restore_page(phydev, oldpage, ret);
+}
+
+static struct phy_driver motorcomm_phy_drvs[] = {
+	{
+		PHY_ID_MATCH_EXACT(PHY_ID_YT8511),
+		.name		= "YT8511 Gigabit Ethernet",
+		.config_init	= &yt8511_config_init,
+		.get_features	= genphy_read_abilities,
+		.config_aneg	= genphy_config_aneg,
+		.read_status	= genphy_read_status,
+		.suspend	= genphy_suspend,
+		.resume		= genphy_resume,
+		.read_page	= yt8511_read_page,
+		.write_page	= yt8511_write_page,
+	},
+};
+
+module_phy_driver(motorcomm_phy_drvs);
+
+MODULE_DESCRIPTION("Motorcomm PHY driver");
+MODULE_AUTHOR("Peter Geis");
+MODULE_LICENSE("GPL");
+
+static const struct mdio_device_id __maybe_unused motorcomm_tbl[] = {
+	{ PHY_ID_MATCH_EXACT(PHY_ID_YT8511) },
+	{ /* sentinal */ }
+};
+
+MODULE_DEVICE_TABLE(mdio, motorcomm_tbl);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
