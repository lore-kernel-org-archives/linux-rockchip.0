Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 854F8C54EBE
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 06:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxCjIeITU4MP0k8UmNtaUvxxP4rqGRtIooF5n0E8M6E=; b=vpGnUJV3lLjMhn
	hrvYXwcOi5OY6yGuPRExY5BmDUNbZjcTCnhz/Sx1HjB6yTx2be2qvjQLEoKvtf7gU5FYxyX6TebFu
	J00E9pxMoDKkm+lbwxBi7SxLHQMbNg7CvqNK52ESobxRH4UHEjoNRFJwD6eDI+IkmG3fMwCvUEJCb
	VCrT/o031MbL6J7f3cFTlPA3sJZn1BO4CaH8qAbAAlzYfZUrOwtnvhhdo7q2ppJYZIsp/LZqt4gy9
	e4EQXHPHjzwAc2z546HEevBQ5gohaNOakynHcgdpK1X8Q+quB3wOFloJnvQ4q27yrG88/GQ8MQX89
	a5k5vR2i6A16ZfsmlkUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFUv6-009tpo-Vz; Wed, 11 Jan 2023 06:49:09 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFUux-009tkw-U7
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 06:49:01 +0000
Received: by mail-pl1-x632.google.com with SMTP id g23so214396plq.12
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 22:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7bXSluyR6+HkZvWRx0HI0+ZY45eXmi35qcMp7mPbfPQ=;
        b=HUA0c4rlA9s/oDEtfyUM//zLQjxNJ/G4WwuWx4cpNV7QunUiBAz0akFMekbjRJCkX4
         kqluhqf0XGQ9hc4fq1YE+C2pGUydAKEj/jNWJlLY1lbrwDMKjdsbo/M4u9nRabIejGvi
         tqfyIDKzhtzYuK7XHYg3jK6JJlrV0C94rTEAe7B5k/U9E9GSDnHg65fbSlGQ9EokxfDc
         3Al/Za1dqPJEx2MUhFYSa6zpSrEnVu3kCeTSbGlv/KE7NIyRvvf3Rv9M1Mp6FkzJFqD/
         +fSnC1vV2QoStP3ye8So9+P8Fgggp5le1Vwl1u70bffKL8+0CyVkhK9Q8YXb3OnekXZD
         Htpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7bXSluyR6+HkZvWRx0HI0+ZY45eXmi35qcMp7mPbfPQ=;
        b=YXNhtlLgGUprxI6f22ceLqcU/Dk37q+zGTJt76rh0c7teKEcSuX+0FXRtq7wgsyQBc
         J7FBXcQDFhh0eBQD98eL30jQ2Z3SsYN3n8A3wVNnZS5ctP5FYxbSikXHiuy3BSHkO+y1
         4a70WPam6eXzwFX64cG8qc8EwRDjnFpKpXG74xgJlV82vZ2OljAXBrOk+nCRLdQB/FLk
         npUgMy+2jrDAb0KibEnQKScI4pjJBQZSq/dXqd0QmOG2UcpmLW025JHK4yArwDDwuca1
         8sV396lcoHkhn26vLKAijq65UuOa3vDimhLgc7vAKDRxgtyQ5/n3vs8dgQD5zrlHlEi/
         euQQ==
X-Gm-Message-State: AFqh2kqiJET8f1p7VVsToG9fIA6ZK8Jj8jhqdDq0TbQNmA1y27Qx2ehe
	kgIZ9GRq0mKwAYX/DBj7yHx0qw==
X-Google-Smtp-Source: AMrXdXvFXs0kwnfQutgidNWLnKV4XCMpE4nBi/g/vsl2F1Uu5gJKKvY3R3kc60tz59/VVwIEgtyIZw==
X-Received: by 2002:a17:903:330b:b0:193:30be:d146 with SMTP id jk11-20020a170903330b00b0019330bed146mr9484332plb.63.1673419739580;
        Tue, 10 Jan 2023 22:48:59 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.15])
        by smtp.gmail.com with ESMTPSA id m2-20020a170902db0200b001930e89f5f6sm9301861plx.98.2023.01.10.22.48.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 22:48:59 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Johan Jonker <jbx6244@gmail.com>,
	Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCHv4 linux-next 2/4] ARM: dts: rockchip: rv1126: Add ethernet rgmiim1 pin-control
Date: Wed, 11 Jan 2023 06:48:37 +0000
Message-Id: <20230111064842.5322-2-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111064842.5322-1-anand@edgeble.ai>
References: <20230111064842.5322-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_224900_002837_E8C466B5 
X-CRM114-Status: GOOD (  11.05  )
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

Add ethernet pin-control for rv1126 SoC.

Signed-off-by: Anand Moon <anand@edgeble.ai>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
v4: drop Rev by Jagan: Both SoB and RoB of same person is incorrect.
    update the $subject.
v3: add Rev by and SoB Jagan Teki.
v2: drop SoB of Jagan Teki.
---
 arch/arm/boot/dts/rv1126-pinctrl.dtsi | 42 +++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
index 4bc419cc1210..b77021772781 100644
--- a/arch/arm/boot/dts/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
@@ -11,6 +11,14 @@
  * by adding changes at end of this file.
  */
 &pinctrl {
+	clk_out_ethernet {
+		/omit-if-no-ref/
+		clk_out_ethernetm1_pins: clk-out-ethernetm1-pins {
+			rockchip,pins =
+				/* clk_out_ethernet_m1 */
+				<2 RK_PC5 2 &pcfg_pull_none>;
+		};
+	};
 	emmc {
 		/omit-if-no-ref/
 		emmc_rstnout: emmc-rstnout {
@@ -61,6 +69,40 @@ i2c0_xfer: i2c0-xfer {
 				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
 		};
 	};
+	rgmii {
+		/omit-if-no-ref/
+		rgmiim1_pins: rgmiim1-pins {
+			rockchip,pins =
+				/* rgmii_mdc_m1 */
+				<2 RK_PC2 2 &pcfg_pull_none>,
+				/* rgmii_mdio_m1 */
+				<2 RK_PC1 2 &pcfg_pull_none>,
+				/* rgmii_rxclk_m1 */
+				<2 RK_PD3 2 &pcfg_pull_none>,
+				/* rgmii_rxd0_m1 */
+				<2 RK_PB5 2 &pcfg_pull_none>,
+				/* rgmii_rxd1_m1 */
+				<2 RK_PB6 2 &pcfg_pull_none>,
+				/* rgmii_rxd2_m1 */
+				<2 RK_PC7 2 &pcfg_pull_none>,
+				/* rgmii_rxd3_m1 */
+				<2 RK_PD0 2 &pcfg_pull_none>,
+				/* rgmii_rxdv_m1 */
+				<2 RK_PB4 2 &pcfg_pull_none>,
+				/* rgmii_txclk_m1 */
+				<2 RK_PD2 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd0_m1 */
+				<2 RK_PC3 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd1_m1 */
+				<2 RK_PC4 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd2_m1 */
+				<2 RK_PD1 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd3_m1 */
+				<2 RK_PA4 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txen_m1 */
+				<2 RK_PC6 2 &pcfg_pull_none_drv_level_3>;
+		};
+	};
 	sdmmc0 {
 		/omit-if-no-ref/
 		sdmmc0_bus4: sdmmc0-bus4 {
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
