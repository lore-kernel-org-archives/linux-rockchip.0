Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37C4FC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Apr 2022 19:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d271MCtlAWPr/FZ8vWTp8Rso5OI0Q2mDUOMqN83uris=; b=kdlIDzq6kLqHEH
	jupQTMCS+Le/bQpwrDXCxZeEbclib3biBfLTWBIv/1tVVNKbYMKkJVWq9sn8IZzW8WlyTYEUQToxP
	c8m+0HCKT/aVu5XEUvsvl06I8ztcLygb0s2nijfdGhw62mKk1EOqmgUsDANF9B2yQ6LeONl8Yy6l3
	NBEJ8K5oduwrvyR1hKzphdejBT5l5d801glI9d0ESbU0ImVHsweskIcPBkNSzESRhtMOvgVxyYyP5
	wUKzTsRXFa6GHex+VDV9Am20ct4p/K4Ewk0V0PV9frc6VsPCXbzPAugM6IywDPv60vAUBKZW4J+oh
	xhMZbkPSyhLY0/kQFLzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neLsF-00FYea-L2; Tue, 12 Apr 2022 19:08:23 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neLsC-00FYdj-LK; Tue, 12 Apr 2022 19:08:21 +0000
Received: by mail-qk1-x730.google.com with SMTP id j6so14533647qkp.9;
 Tue, 12 Apr 2022 12:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0umzI7dcNqCPGkKM4AfkCdjqy62DU/Gn3M5wYOh27O8=;
 b=BS9UHDc5tsLhhX7P38/FennKlpIGYY4fhtlUvZszeQQGPjjzaAsOkA9UGTBxGWqb2y
 NFAPCwEiFRVXkPGnMo7d9WoxNdijn6lOVyEluMXxHPpDm6K8JdF9bqPs4bBK9Ar+JcnC
 8GMMbp+WY5csg1hsZ7tmAyNfxN6E3V20a4qiHuAT384N6SROWBKIMR92vqVkSKK+8fLn
 a0/OR83LclGGfzeRsNCMsn0S3nWDrOHZ5OqBhrVJV3GnYLJUPin3xTY3EbV/Dri8z0Kt
 Z1ocBwg4XjUYqNw4RHUFFyJ/Eo6poELQvfy6tGn5suWphfQEqUJH3+O9HeRKKsuam44e
 ysfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0umzI7dcNqCPGkKM4AfkCdjqy62DU/Gn3M5wYOh27O8=;
 b=WztR6sEgNdKrCaj/jTQhBSVfK5GhGy2EbMb2RVm8zJE09Q2701AzXrnWMR6NQ0S0fV
 EXH9Op4v4cE+TUtNizFpgXyTNxHYiT7CUATLCDpRst41Naw8OKPvt4qDMV0wJZZlK/FP
 uEjr0tRabmr9kJpXvt6ahwJDGOsXM3KJZxvc3Cxhoid45JHhAZ8eZCXhCEDzYH4AOiPV
 KEwBhmf4xv6GoWdSvQTtsEe8A181XEBIbfoH+E8PcWPsAMSE/Hs7+7TirLQ/IC2t+P3I
 DDrfraZ354abxOIDQEZm1NkCYuDlaep2JrP0ExgaPdkxwODsvyc/tcN2UAGYFCBI0C7+
 wfHA==
X-Gm-Message-State: AOAM5308ZYjq+ScVlAEAs6zmne42txrqR7XR+e0gTViWLanz7MEzIJXB
 kjO5fsug9Hisaj3aKYvbgvY=
X-Google-Smtp-Source: ABdhPJxP6Mf1uHRMVsZYVU2fInVooyZ6O5LlrdzZ+GFqe7O1/ZgwrXNug0QaCiwEMXUXXkUk20SUsA==
X-Received: by 2002:a37:9c7:0:b0:69c:1c7b:6053 with SMTP id
 190-20020a3709c7000000b0069c1c7b6053mr4478132qkj.682.1649790499567; 
 Tue, 12 Apr 2022 12:08:19 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 u5-20020a05622a198500b002ee933faf83sm5032929qtc.73.2022.04.12.12.08.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 12:08:19 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: add rk356x sfc support
Date: Tue, 12 Apr 2022 15:08:17 -0400
Message-Id: <20220412190817.125886-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_120820_752565_A22C6B80 
X-CRM114-Status: GOOD (  11.11  )
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

Add the sfc node to the rk356x device tree.
The sfc node on rk356x can function as a boot device and supports four
lanes of receive data and one lane of transmit data for supported
SPI-NOR chips.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index d5131f5aaf73..b52edcdbbe7d 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -812,6 +812,17 @@ sdmmc1: mmc@fe2c0000 {
 		status = "disabled";
 	};
 
+	sfc: spi@fe300000 {
+		compatible = "rockchip,sfc";
+		reg = <0x0 0xfe300000 0x0 0x4000>;
+		interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		pinctrl-0 = <&fspi_pins>;
+		pinctrl-names = "default";
+		status = "disabled";
+	};
+
 	sdhci: mmc@fe310000 {
 		compatible = "rockchip,rk3568-dwcmshc";
 		reg = <0x0 0xfe310000 0x0 0x10000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
