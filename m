Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15150C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 13:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MCIeCXIRKNbwqEg8v/uYOtWXHdmHtoMYReTgGUH736E=; b=S1FvBpLoEbDF0e
	hLT/Yak7QjIMW0/Az3CRmElYezwOAh3V2dKAPDwPYXLlp47RxorMMJ9UubUvaBLtNrI2TfPsL1kI0
	T3Fytx4IGff7LbVpAqBPWVjZ1BdGP36QNg6sRcJ8o88ku7BLwnqfFIyeOBUgiiIywbMmEgaNq6OgR
	mkJzFO6N7Q6nepdKRRjgnVG/OtGNhCwKMs589Cf7kIVT/G6yibIAdNFToeEK++7LMss8wX+zGtUbU
	uPR5cdDQ5ac3CBrosf6/Zab0WtwBWmRw4iN84tXqpCb+S4JWefwJPUfvya4qoTN5THuvZuRoEZ5Rp
	gBSAFD+hIle034DEhRPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8i4B-008Nty-MK; Fri, 23 Dec 2022 13:26:28 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8i3d-008Neb-KB
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 13:25:55 +0000
Received: by mail-pl1-x636.google.com with SMTP id u7so4950765plq.11
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Dec 2022 05:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jiT9KYDx3RWtZOPtEp+4OpN+KsQgOdSJKLeTP2zJWcs=;
        b=GkBa160SclbJh4m4+Uvp0lPozlPivWtIJN0Ejk04u5nAj/brwEzVRt0PVJCx0DFy4B
         cjQlwmXKnSoFJjWvq4NQZHUOL4jD+fcp680/1S2mx8RmC1R5F1noBoBbtbpPxxrjnZTF
         F2PC6MW6KblVmd3dTCn3dNBnKhSuNmHakt+b82Jm+DmgUN4Yxagsoxo9Lobf/19Bk8hS
         bT9AYYB5MqfoimYFLS/gGwVBm5h7j2ZTdoDhiTFtV4nRbrt1fCaq6Vtwr6Z7Cn/bwNsT
         2FdjeQo2h2vSxMbZc+wRSINIfsDs5tDOOGGdH08Qqk4MdDc9UJNmCHnQOidfb7RbHMZT
         atGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jiT9KYDx3RWtZOPtEp+4OpN+KsQgOdSJKLeTP2zJWcs=;
        b=3pJQO8WVry7oRbwmHG9eLBRp7gPsvbA93sBDyFr0vllYmqhcF7LHU1uTlTdgailxoO
         cjLsv/mmsGQcfA7zJgd+lroNkdkQ4QaRj3lKghQf2+rtZO0fzyUHdcpq7o9quQNRCkfA
         IoMtMDeg6xwNeHQL3piSjjHzsuFWUKTKxuZyS5/+tN1UwwFy+qASYvNMHx8klvPM2zUy
         +YlAB5y8CCjOh3SNROouLIXy4hKVXW4sBvFTw1/pHRoPAFsSSg07HJVR/xRJA5vzISiS
         RfHsU8T4cjqugRaRgUx4GRB6TNEyWYWyvr5L/BDN7FAG5+tU3QGEw0An/JaJi6iklAQh
         oa3w==
X-Gm-Message-State: AFqh2kpD3hBfDrtGn4Az3qLKVjDYf6JXG1QT4Mpi0Hk0LEaxTgRbL8VK
	RO0HOlbQO+JhOKxNxOpKdjD9OQ==
X-Google-Smtp-Source: AMrXdXti9h/NrRYG5tbJrKi6OGMy8J3N5HQuTT5LyCzyDyi8oa6oBJO6uPoipFdscTyMJ6g5+ihMgA==
X-Received: by 2002:a05:6a20:bb10:b0:ad:2c7c:9510 with SMTP id fc16-20020a056a20bb1000b000ad2c7c9510mr10966527pzb.19.1671801952092;
        Fri, 23 Dec 2022 05:25:52 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.26])
        by smtp.gmail.com with ESMTPSA id m3-20020a635803000000b0047681fa88d1sm1308587pgb.53.2022.12.23.05.25.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Dec 2022 05:25:51 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCHv1 linux-next 2/4] ARM: dts: rockchip: rv1126: Add rgmiim1 pin-control
Date: Fri, 23 Dec 2022 13:22:31 +0000
Message-Id: <20221223132235.16149-2-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221223132235.16149-1-anand@edgeble.ai>
References: <20221223132235.16149-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_052553_730282_02774BF5 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
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
