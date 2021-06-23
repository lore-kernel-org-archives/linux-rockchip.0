Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05FCEC4743C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 12:00:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BD14E6102A
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 12:00:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BD14E6102A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xih6CpXFh+HIwbrSSxk6wT6aUl9DxHxByvHFvTJ7htU=; b=HqkVpK8G4MU2hZ
	33YniNmj5ZBqn79EA5Ih0tcBz/eqzC0L+bAeO4xlu8u/iugOFGmz39RKaZenurt9v2CcdsYGUTBIz
	MMGDjRxxFEuu4PP8pL7htez7nDQmmV3nBosUW+TKlUZxtCnVwzUcvMzoWoqRnmTGqyJjv/3HaMjFW
	ZDvzIowRs8ibiGzW5kCw/r1/CsVVTOb+hxXXAL0coR6hvJu1fbiHte0nRjhcEeTxw07b0WRvWbiWn
	PJTZmmrSsuofYKdwHiScJuZAOHuHIeMhzbtvhPU5vl7m3vbQClTvnbZHve8/IhmYuneVzbTVwJvqr
	oFN413pnvz+/RkgFu3iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw1YL-00AXte-L5; Wed, 23 Jun 2021 12:00:21 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw1Y6-00AXoj-N2; Wed, 23 Jun 2021 12:00:08 +0000
Received: by mail-wr1-x432.google.com with SMTP id l12so1620994wrt.3;
 Wed, 23 Jun 2021 05:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eJZITneZK2pFfehw2W3mpmQwKfsEafjynuMXLav/Q64=;
 b=RSRTZL+7yEON+42CSpXCS2ZRdRKBpmmq72uqvVtJBaDX3QuE7tbiRTixuPVK3Q28r3
 boMLUjmnhkk4HH48WoC6ClKZ/HAhEkVDZkviSYDWnP7KbFHfCMFnm5gDuCSai7a23tzf
 HsBNDQzfqi5YiwBlOAhjQSbq1gUZmiKzlxaGpsTgGGYiPuw/7+YC4uEnwFtve3FeTdJ6
 d1OqvQL46F1hB4EGtR66C6BE6hPx948e+WE5i9jXVoGFZflrvO1P1xvnwCGhC4/5eGZi
 VjxOnG9g0q9yUkv8Tkg7LejN/8ZQAidlLxzSReXTKWpjIQhnar8Kjg65Kfyltm+wLYmQ
 M9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eJZITneZK2pFfehw2W3mpmQwKfsEafjynuMXLav/Q64=;
 b=WD1ezeBtCDXjBHZhPSRzE5zeRVc+Witx6LP5R8ssz0H2CITxIMsVyTTcrj8rcBJSuS
 /+U2H7zoeDJu8UeLXMSL9IkKsAm9qwy1ENyyykAvKAFUVFz0Z6Qfx0Dzif/5eEijpCGb
 ufAzEZJhMzbG/ysnFtS+niRIFjZgC4iiaJ6pfAUjKGK/jEQ5/qGB7fKrGH/newPJfO9n
 YdJi3WAoPzPMzSgZySpwcN6HoXcSec65kzYXTi+MpmeN/OOsDFFOscz5Vdg7/kqgBOzw
 bfI3uMuNXpRSZkpioDVVycTQRvHHyu9ZU2xMM4l4POm92eaiKViNbBiMqIJ4FlZWJyYU
 melw==
X-Gm-Message-State: AOAM533NlP8IyV8dbTOec+ZrDkppbADY0qt6r0YL7VBGzGUnZHB5TGuh
 3XQXtLoBP7pTOfmlVqHuVA==
X-Google-Smtp-Source: ABdhPJxp2pV1Cwiio1m4yUGYVArQ7yQtoI2cifSaqMW73mMQPqvJNyrgsvNNrAOPg4u2yFDam2cYTg==
X-Received: by 2002:a5d:6502:: with SMTP id x2mr10729320wru.327.1624449605446; 
 Wed, 23 Jun 2021 05:00:05 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id y189sm5666157wmg.6.2021.06.23.05.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jun 2021 05:00:05 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add sdmmc_ext for RK3328
Date: Wed, 23 Jun 2021 14:00:01 +0200
Message-Id: <20210623120001.164920-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_050006_799699_707656D3 
X-CRM114-Status: GOOD (  11.99  )
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

RK3328 SoC has a fourth mmc controller called SDMMC_EXT. Some
boards have sdio wifi connected to it. In order to use it
one would have to add the pinctrls from sdmmc0ext group which
is done on board level.

While at that also add the reset controls for the other mmc
controllers.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index da84be6f4715..c13fa2f3f4cd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -858,6 +858,8 @@ sdmmc: mmc@ff500000 {
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
+		resets = <&cru SRST_MMC0>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
@@ -870,6 +872,8 @@ sdio: mmc@ff510000 {
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
+		resets = <&cru SRST_SDIO>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
@@ -882,6 +886,8 @@ emmc: mmc@ff520000 {
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
+		resets = <&cru SRST_EMMC>;
+		reset-names = "reset";
 		status = "disabled";
 	};
 
@@ -980,6 +986,20 @@ usb_host0_ohci: usb@ff5d0000 {
 		status = "disabled";
 	};
 
+	sdmmc_ext: dwmmc@ff5f0000 {
+		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x0 0xff5f0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_SDMMC_EXT>, <&cru SCLK_SDMMC_EXT>,
+			 <&cru SCLK_SDMMC_EXT_DRV>, <&cru SCLK_SDMMC_EXT_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <150000000>;
+		resets = <&cru SRST_SDMMCEXT>;
+		reset-names = "reset";
+		status = "disabled";
+	};
+
 	usbdrd3: usb@ff600000 {
 		compatible = "rockchip,rk3328-dwc3", "snps,dwc3";
 		reg = <0x0 0xff600000 0x0 0x100000>;
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
