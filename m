Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B46B2C19F2D
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Aug 2022 11:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mPgezM1JpJK3f3+zrW+9oq7COkA0bObc63ZWdIBysJs=; b=0HKr80Qf0WSLIx
	BZ22cRHBc9uUi2dqk0rTT27gKn6DwCYc4g1uB4GRzcXLWa72vgmbEY9BsN0JVDg07t1X+H0xghHXv
	ZtxH0lsa1anX+77YvicY+nQM/wEyqwbqJ0FnDe3UL4rTXPV1jjIrgAu6lzzwHuHN1ZyLf4OumdOF/
	iIrWqqKptBh/pa28sOYbyIxqfvSjRhZhWISL/bE4ha4nMIvPLhH424K7Zmf0l+QZHZ2TQ+QGa2Jyu
	1+wCNCNHCJi2zXYVEMaQAqBNcU1GNcABff94Bkj7Vtoz2783Eb0CcjSS6v21ZfoSERnH9ramHzlv6
	KMTbb6raGdjRBR/j/3fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLNlh-003hbc-AO; Tue, 09 Aug 2022 11:51:29 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLNl1-003hMX-La
	for linux-rockchip@lists.infradead.org; Tue, 09 Aug 2022 11:50:49 +0000
Received: by mail-pj1-x1030.google.com with SMTP id q9-20020a17090a2dc900b001f58bcaca95so10577219pjm.3
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Aug 2022 04:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=kOOdMCqFf2vHQIse3uLmGH4VNLU9Ww6hckbBKMi+bEA=;
        b=pVeoR7wqc1FYj6Cs2MjB8QDRTf+bQeOlo7HZd21fLYhnpgtelarQvPIsU86jFgGTuM
         vkEh7AfsnY9mhbIrMGiZUy9gLICLmds6l5/TOFXzQARlUAhgawFY0Y5xSxNqANVGY9Fh
         FVnxENTcQwfreMmPTP2EYO9vnuG+dir1trWFg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=kOOdMCqFf2vHQIse3uLmGH4VNLU9Ww6hckbBKMi+bEA=;
        b=oaTuQwylMp2Xa261trmSVG6LagXNnpdeswdQQMzG8pji5Wz6xTcEktCgEGhIZ8/jQg
         AVCGHQYZ8Rghemv3WCx+czh1h9c/CwXFothZvQP80Tr4d4SSt1dHum8RgLxC8bOg+vLE
         hyrQKZrV9e0j1mISELRByDdyBxZzgQAHwN/88zPNif0rcC3ZNLws/AEjrJWLByrgGleb
         Z+XVpeSIc44W8s4l5GjN576uyGr6MCORs0QSrMfT5FSmQS+uhv0tk4uLy3GHN0Ea7mox
         zphLwFkct9mEKitwSuvNchnjj5qiJK+q96nUVSExwChfxv5lsHNA9MXuDmWbzrGMcN/o
         fbMw==
X-Gm-Message-State: ACgBeo0f8LY0RfdDj64NeKpd7LKClakupP/2XYi8JQy9mWn3Z9m40YwC
	ntY5PH+BE9buVPbN0scPiz3jpA==
X-Google-Smtp-Source: AA6agR5sgZW7V6P2n37l3umSHwRMu16Lrj/LUpnhjp2+CmUc1eJTUjhPRwTlg3uULnQKGKj/NhM/6g==
X-Received: by 2002:a17:90b:3e86:b0:1f5:2b4f:7460 with SMTP id rj6-20020a17090b3e8600b001f52b4f7460mr34379547pjb.97.1660045845130;
        Tue, 09 Aug 2022 04:50:45 -0700 (PDT)
Received: from localhost.localdomain ([183.83.136.224])
        by smtp.gmail.com with ESMTPSA id a10-20020a1709027d8a00b00170a757a191sm4516096plm.9.2022.08.09.04.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 04:50:44 -0700 (PDT)
From: Suniel Mahesh <sunil@amarulasolutions.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Kumar Gala <galak@codeaurora.org>,
	Will Deacon <will@kernel.org>,
	Michael Trimarchi <michael@amarulasolutions.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	shawn.guo@linaro.org,
	Maxime Ripard <maxime@cerno.tech>,
	Mark Rutland <mark.rutland@arm.com>,
	Mark Brown <broonie@kernel.org>,
	Pawel Moll <pawel.moll@arm.com>
Cc: linux-kernel@vger.kernel.org,
	linux-amarula@amarulasolutions.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: defconfig: Enable GPIO SYSCON, sync to savedefconfig
Date: Tue,  9 Aug 2022 17:20:33 +0530
Message-Id: <20220809115033.693145-1-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_045047_800263_02AC48E9 
X-CRM114-Status: GOOD (  10.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Enable driver for SYSCON-based GPIOs and sync up the defconfig to
savedefconfig output.

Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
 arch/arm64/configs/defconfig | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d5b2d2dd4904..abfb77182528 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -80,7 +80,6 @@ CONFIG_RANDOMIZE_BASE=y
 CONFIG_HIBERNATION=y
 CONFIG_WQ_POWER_EFFICIENT_DEFAULT=y
 CONFIG_ENERGY_MODEL=y
-CONFIG_ARM_CPUIDLE=y
 CONFIG_ARM_PSCI_CPUIDLE=y
 CONFIG_CPU_FREQ=y
 CONFIG_CPU_FREQ_STAT=y
@@ -178,10 +177,6 @@ CONFIG_NET_ACT_GATE=m
 CONFIG_QRTR_SMD=m
 CONFIG_QRTR_TUN=m
 CONFIG_CAN=m
-CONFIG_CAN_FLEXCAN=m
-CONFIG_CAN_RCAR=m
-CONFIG_CAN_RCAR_CANFD=m
-CONFIG_CAN_MCP251XFD=m
 CONFIG_BT=m
 CONFIG_BT_HIDP=m
 # CONFIG_BT_LE is not set
@@ -368,6 +363,10 @@ CONFIG_REALTEK_PHY=y
 CONFIG_ROCKCHIP_PHY=y
 CONFIG_DP83867_PHY=y
 CONFIG_VITESSE_PHY=y
+CONFIG_CAN_FLEXCAN=m
+CONFIG_CAN_RCAR=m
+CONFIG_CAN_RCAR_CANFD=m
+CONFIG_CAN_MCP251XFD=m
 CONFIG_MDIO_BUS_MUX_MULTIPLEXER=y
 CONFIG_MDIO_BUS_MUX_MMIOREG=y
 CONFIG_USB_PEGASUS=m
@@ -549,6 +548,7 @@ CONFIG_GPIO_MPC8XXX=y
 CONFIG_GPIO_MXC=y
 CONFIG_GPIO_PL061=y
 CONFIG_GPIO_RCAR=y
+CONFIG_GPIO_SYSCON=y
 CONFIG_GPIO_UNIPHIER=y
 CONFIG_GPIO_VISCONTI=y
 CONFIG_GPIO_WCD934X=m
@@ -612,6 +612,7 @@ CONFIG_ARM_SBSA_WATCHDOG=y
 CONFIG_S3C2410_WATCHDOG=y
 CONFIG_DW_WATCHDOG=y
 CONFIG_SUNXI_WATCHDOG=m
+CONFIG_NPCM7XX_WATCHDOG=y
 CONFIG_IMX2_WDT=y
 CONFIG_IMX_SC_WDT=m
 CONFIG_QCOM_WDT=m
@@ -624,7 +625,6 @@ CONFIG_UNIPHIER_WATCHDOG=y
 CONFIG_PM8916_WATCHDOG=m
 CONFIG_BCM2835_WDT=y
 CONFIG_BCM7038_WDT=m
-CONFIG_NPCM7XX_WATCHDOG=y
 CONFIG_MFD_ALTERA_SYSMGR=y
 CONFIG_MFD_BD9571MWV=y
 CONFIG_MFD_AXP20X_I2C=y
@@ -1032,7 +1032,6 @@ CONFIG_COMMON_CLK_FSL_SAI=y
 CONFIG_COMMON_CLK_S2MPS11=y
 CONFIG_COMMON_CLK_PWM=y
 CONFIG_COMMON_CLK_VC5=y
-CONFIG_COMMON_CLK_NPCM8XX=y
 CONFIG_COMMON_CLK_BD718XX=m
 CONFIG_CLK_RASPBERRYPI=m
 CONFIG_CLK_IMX8MM=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
