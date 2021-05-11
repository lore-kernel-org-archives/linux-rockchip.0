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
	by smtp.lore.kernel.org (Postfix) with ESMTP id B642DC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 22:59:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 21C5461285
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 22:59:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 21C5461285
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=POR/p28IUcmg1Cuhr+Z0UCWDwpKKoJxomYrYunoS4pA=; b=q8MNNUdBuomFxig2WAJs8MNXLW
	4dwW08f5RkJj2v7tSqEFJkV6DEqNqdmbFjo/UevevehQlQzEN4jDVIKnuCn2Rt7t4l0mWTMNgZwaR
	4WK0C67iUAnknzQ0YhmWu/Xuh3cQ36apRRH5QjtKS0V4J4JyHMKMYzd4dxahQv+idFdZbTCs4g7lC
	SbjoZejjQSwcR6EBljbS9xSiA8PMB3HvX2eAmKmv/fME0qIVR/+J+V87qxHLLpRrGtJl30s+2Mvfb
	2VDHJkXW/e24A2Jn5FTAhsQLyJauTH3N8lZxyv5SC2BPKyN5LklOZct+FcpKwZA4DI+w3qp8PRz0h
	iyiupMsw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgbLa-001Teg-K8; Tue, 11 May 2021 22:59:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgbLW-001TeG-Vr
 for linux-rockchip@desiato.infradead.org; Tue, 11 May 2021 22:59:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=zIhPXLlFIfi7x+16X/rcVq/+DBuEAWSYMuS7Kv6syAE=; b=oTuImcWWiz4HTovP/4woiQdc9G
 E+yzvJujISHA+W66cpFgCcIiOOi3/igO3OXtiKpc4KTu01ce4KOcE91kDjNobmk/IEtw65DV5i05r
 8IPotT7XswbPBMSeXxtIWkYyWB05H1tg0PFWIcwRTDOdy2F5Ti25tbHxikQo4yEzD6Ar9dxcL+z9g
 WQ9ETuROZ1yBB8eSvARwS9Nmc5tcK4nKO1EOPHtOurBFedgbQrFei3Zc2B5Q8N9FNMM7IYbtrXcYT
 YWwrIw3+dhfXvCD/KYAcldm1+Ydi9ecU968amXxcYpp6Ujuii8YulYEtE2r9k4xQKlnPaRTE0DJ3v
 ERhDtC1g==;
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgbLT-009yEA-3b
 for linux-rockchip@lists.infradead.org; Tue, 11 May 2021 22:59:20 +0000
Received: by mail-qk1-x72f.google.com with SMTP id a2so20493010qkh.11
 for <linux-rockchip@lists.infradead.org>; Tue, 11 May 2021 15:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zIhPXLlFIfi7x+16X/rcVq/+DBuEAWSYMuS7Kv6syAE=;
 b=OnhYPgRZBl8D6pX3UPsh3ZvHXH6gC/p3RU7Yr7dkzYXvnyx6i+6SJaP1dgZj2v7oIa
 scw4DNrujyZBLBAxXdx+OTjpTI0hHx9silDcxVTW/dK20zTlKRKifj5xcEEhpbpaH07L
 WLkzIsy2r+RD7rexCRYj6YK+HlJgIvAyPWNUq9/WDOyJAIjeKOIH+ycQjIypFMexD0eC
 +YnDkePEEV/JBU5wa5yD5NQe/Rm/rWFIyHL6TyFrvha4lS32XV/oIoLKgZQI9vIOt2fS
 wJcb3DWUut4pqVzf8EIA98Ai59DsGMa2OgyrnOV2S5FnMQ1SyWGmgbnt5srutBbH3Arh
 x0eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zIhPXLlFIfi7x+16X/rcVq/+DBuEAWSYMuS7Kv6syAE=;
 b=D2f8/RobUlpW8XvzjQqiu9XlsTA8CFuatXVVD/PUYNAnLMBBIsRFaArFJ3YahmIUr0
 OvK8iA3gTrs0Ehl2vWe59UmzZoSUOXYIzz5t4qm1SEDwCUlKMLzELk+rFGcg1j1KxHcn
 K/LBkB3OJ20oTZq/yvQLSm5RLFVc3BhP8Kem4F/igg3cNgw6QOpoVP9sba78sc9uxuf7
 Yfr7P9RDCJIEplirK5DTXcsDVLylvxozBnGTy4ggl1USKEXMJ5iTEKnuoezXFuoZ7uql
 XosN4AAnUL2DOGrhNEMqzzDvgpymeurzVjRP2xAyw9eyNhRQazKd7oi43VzY+M0VGMxW
 dqig==
X-Gm-Message-State: AOAM532LU/X+sJFGu8ep9TA0uI5Tp4FzLNNA8V+xv6cSTv+LQtQ8IbZG
 KNDuovByo+9dDLbXMthvzp0=
X-Google-Smtp-Source: ABdhPJxDPfMiMA+7RUHRgdPIRvMxKuUHTo07lpk4YegTL+cGeFCG06MDib3Q5G/BnOYU6hL+xrvuSA==
X-Received: by 2002:a05:620a:40ce:: with SMTP id
 g14mr9495703qko.149.1620773957869; 
 Tue, 11 May 2021 15:59:17 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:f9ba:6614:640b:eee1])
 by smtp.gmail.com with ESMTPSA id m10sm13459172qtq.83.2021.05.11.15.59.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 May 2021 15:59:17 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v2] net: phy: add driver for Motorcomm yt8511 phy
Date: Tue, 11 May 2021 18:59:13 -0400
Message-Id: <20210511225913.2951922-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_155919_172531_F8933F5F 
X-CRM114-Status: GOOD (  18.41  )
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
Changes v2:
- Change to __phy_modify
- Handle return errors
- Remove unnecessary &

 MAINTAINERS                 |  6 +++
 drivers/net/phy/Kconfig     |  6 +++
 drivers/net/phy/Makefile    |  1 +
 drivers/net/phy/motorcomm.c | 87 +++++++++++++++++++++++++++++++++++++
 4 files changed, 100 insertions(+)
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
index 000000000000..580926f25dfc
--- /dev/null
+++ b/drivers/net/phy/motorcomm.c
@@ -0,0 +1,87 @@
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
+	int ret, oldpage;
+
+	/* set clock mode to 125mhz */
+	oldpage = phy_select_page(phydev, YT8511_EXT_CLK_GATE);
+	if (oldpage < 0)
+		goto err_restore_page;
+
+	ret = __phy_modify(phydev, YT8511_PAGE, 0, YT8511_CLK_125M);
+	if (ret < 0)
+		goto err_restore_page;
+
+	/* disable auto sleep */
+	ret = __phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_SLEEP_CTRL);
+	if (ret < 0)
+		goto err_restore_page;
+	ret = __phy_modify(phydev, YT8511_PAGE, BIT(15), 0);
+	if (ret < 0)
+		goto err_restore_page;
+
+err_restore_page:
+	return phy_restore_page(phydev, oldpage, ret);
+}
+
+static struct phy_driver motorcomm_phy_drvs[] = {
+	{
+		PHY_ID_MATCH_EXACT(PHY_ID_YT8511),
+		.name		= "YT8511 Gigabit Ethernet",
+		.config_init	= yt8511_config_init,
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
