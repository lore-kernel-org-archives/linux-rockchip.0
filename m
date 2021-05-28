Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5749EC2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 17:02:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 13D916117A
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 17:02:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 13D916117A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ar4zoXkIiZAdxhkIvu80ezP+F+oNl8ZcjdOt3YGYk+k=; b=viQY8mUd0N0Gmq
	wRECecHqjhAsZDYDSmNPSBNDsdpXp3HAVdx4BZL+mTtfkFr95gJOD+CVzO6td2vCSlNrD1TES072w
	nZ0Arx+gBY6lQSRS7CV2QT6cL6f5Ws/zocZFXvru9270q6MSrcYwXYPISMZEqqAPQGE9Y/TfI41Ec
	v+MJD51Hr4LUUgrlWhzu+CV79Z8WA8B2lejUxpEQU+kMRizPn1lYlzadW0H2dKPX3isRI5irHhF5l
	wMRYIODy4Ousjy8m8RI1YUe2I7XhlYndmo3qo3G+rJGKjkcnQK652khRi9eqHnig0kXCe7U7zNJYQ
	GSdnTco46aNB9YI16RCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmfsc-00HG0Q-IP; Fri, 28 May 2021 17:02:38 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmfqb-00HEn0-Im; Fri, 28 May 2021 17:00:35 +0000
Received: by mail-oo1-xc29.google.com with SMTP id
 e27-20020a056820061bb029020da48eed5cso1084161oow.10; 
 Fri, 28 May 2021 10:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uJX8HLDLP+grudGO8lui3FYdUhkElsxdNXSKpjcPZ5M=;
 b=iUey+jW9/QRn06HHmeU3bximenj0J8+XCL9fszizk0Oy9+EvMyitV+LvnVqHAM3RbY
 99cnP+l3kLF6Rbvz4rh04NPX0jgSZVbMc4ogqOAtudQUyrrFdelCODYnCuNQmeHWSrvZ
 FJ0flZ+w7MsZuDE6euUxm3cfal4eip40zxInFDuTmNpokq34Z8psZx7RdJ3EJ2C2tkD/
 NNnd8M4TPyNvPbBzZxnUP4yZuriNVdf0eoDyTIg3Bntkyb04VciMt6UA1SVPqINB0M6R
 qBcI+14C4FVuQxik55aMBY5sgyJWZ5LxxuUcnOqqZCgACn4YR0w+fxCzOVa9/dYblEGZ
 L/WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uJX8HLDLP+grudGO8lui3FYdUhkElsxdNXSKpjcPZ5M=;
 b=sQrDrk2rYdXtfQG8nx8o6Ynw2JnDi2Zsb/k3cqH+wms2SnOphTwtbsn3dRp23EpqE2
 EJXffwtVmSED8gwyTQc8jPjxG/90aG4FWqyjeXRLj8mxPtsfEcCO2Q4e6EK4xSMUbX9M
 LoN9ozgpSHUUoLQdPO9WvQQBLNZ+SSv+juyLnf66OO6iInEFA2bL0Xx8gb1FoImZxsOk
 3hWAJOte6Ro8BYahzsH47upqcNWgYRtLWjt4fDuEXxmC+KFgQyi6dkE/Qb6zvNA7y3Ke
 SrA68Sj0YuBQpfpBEGG4l4q4YUuIuHg4IMX4lUh/Oh97jq6GBoG9bF/VDH8SGEHRm2tl
 Ga2g==
X-Gm-Message-State: AOAM530q9xovo6mSRs6i9XX/RG0L1UDok6oglH7L+Fldczs1nG1SyDrc
 QotlVdzpylTU/MV0jn3yK9epHxaXhZ0=
X-Google-Smtp-Source: ABdhPJxtfQESyCKeS/dyAz0YKkAw2PrNfRD1qbFcgYhr6Ud8lVmwCVH3D0XGxIhyfnCul8820uMv7w==
X-Received: by 2002:a4a:d349:: with SMTP id d9mr7781567oos.76.1622221232375;
 Fri, 28 May 2021 10:00:32 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id r7sm1219084oom.46.2021.05.28.10.00.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 May 2021 10:00:31 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-mtd@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org, andy.yan@rock-chips.com,
 yifeng.zhao@rock-chips.com, sugar.zhang@rock-chips.com,
 tudor.ambarus@microchip.com, michael@walle.cc, p.yadav@ti.com,
 heiko@sntech.de, robh+dt@kernel.org, vigneshr@ti.com, richard@nod.at,
 miquel.raynal@bootlin.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: Add SFC to PX30
Date: Fri, 28 May 2021 12:00:19 -0500
Message-Id: <20210528170020.26219-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210528170020.26219-1-macroalpha82@gmail.com>
References: <20210528170020.26219-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_100033_676761_9F44E73E 
X-CRM114-Status: UNSURE (   9.96  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add a devicetree entry for the Rockchip SFC for the PX30 SOC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 38 ++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 09baa8a167ce..36fdfa06e83e 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -966,6 +966,18 @@ emmc: mmc@ff390000 {
 		status = "disabled";
 	};
 
+	sfc: spi@ff3a0000 {
+		compatible = "rockchip,px30-sfc","rockchip,sfc";
+		reg = <0x0 0xff3a0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		clock-names = "clk-sfc", "clk-hsfc";
+		pinctrl-names = "default";
+		pinctrl-0 = <&sfc_clk &sfc_cs &sfc_bus4>;
+		power-domains = <&power PX30_PD_MMC_NAND>;
+		status = "disabled";
+	};
+
 	nfc: nand-controller@ff3b0000 {
 		compatible = "rockchip,px30-nfc";
 		reg = <0x0 0xff3b0000 0x0 0x4000>;
@@ -1967,6 +1979,32 @@ flash_bus8: flash-bus8 {
 			};
 		};
 
+		serial_flash {
+			sfc_bus4: sfc-bus4 {
+				rockchip,pins =
+					<1 RK_PA0 3 &pcfg_pull_none>,
+					<1 RK_PA1 3 &pcfg_pull_none>,
+					<1 RK_PA2 3 &pcfg_pull_none>,
+					<1 RK_PA3 3 &pcfg_pull_none>;
+			};
+
+			sfc_bus2: sfc-bus2 {
+				rockchip,pins =
+					<1 RK_PA0 3 &pcfg_pull_none>,
+					<1 RK_PA1 3 &pcfg_pull_none>;
+			};
+
+			sfc_cs: sfc-cs {
+				rockchip,pins =
+					<1 RK_PA4 3 &pcfg_pull_none>;
+			};
+
+			sfc_clk: sfc-clk {
+				rockchip,pins =
+					<1 RK_PB1 3 &pcfg_pull_none>;
+			};
+		};
+
 		lcdc {
 			lcdc_rgb_dclk_pin: lcdc-rgb-dclk-pin {
 				rockchip,pins =
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
