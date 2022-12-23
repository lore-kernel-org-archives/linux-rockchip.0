Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4C72C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 13:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZgLO/BSY2ZwDVWLNJiul3D/v6BgWNiK6dT4VNXIVxc=; b=24W043cRY5rtav
	+BgqDNkkpyCSfkLBIxFEtHbLb3XbSuwtJWI5aJ3v1KZ/DrZyWv66MXGTkdEPVcdhk9yHtPzRtQBqH
	Hwic4JOXUSDIZ8/8V0yC7mWRx38WL50Gcub7t9zuyzr6at7SwLQvtXYukIu4T1uTQDXrTZT6x1BoU
	Kq1agys5GMLwJgmZPqfufdA/dmeaVavmDGScbQrYRtxw5cHKe0edHvslIqr4cRP2CaZH2sH8WqedU
	ed5IBAjZ9vTdPeB7Zd6VCJThwWAbzgPD9uq1bmKsn1rbCEPJq4xR0v7AUIVEbXP7THV1m9fckiQq3
	Ym1gsHfCC+gtP71zoyFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8i4D-008Nvx-Vj; Fri, 23 Dec 2022 13:26:30 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8i3i-008Nh1-Pa
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 13:26:00 +0000
Received: by mail-pj1-x102a.google.com with SMTP id o1-20020a17090a678100b00219cf69e5f0so8831997pjj.2
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Dec 2022 05:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WJOAEuTCZH9I37ZOI2Y3RZgmgEqqxJBzOZPsdbMXeRo=;
        b=LDqIJEsr5yxpLVhXH0biAGVKubl8/fkFSEUgH5qqyXu5uHrmbmbm7lr5PvDuXLZh14
         MpNpL5drGTKBvTzkBqktMbnCh/LTdYTg+/JJK+4YiC34SE/opt5WBu4EV+YvESrICkGF
         n55VDIbltxFCUaWTsB27PpMm/2guNRqRHz4EJwFgnfan9slki2geTMgsXoHpe53QfGAa
         c83ZAr++QhYpFtpZnwy6HAFe4tTWi4naRMnL2HF+5LYpsqddvT4+Ckaf5O65m/6e/zen
         WJjFB568czAQt+yQ7zyc/jL9N3+NoiJ5YTcK/m738DyPrLBx8O0czmVNh+tCM5B4OMno
         lEcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WJOAEuTCZH9I37ZOI2Y3RZgmgEqqxJBzOZPsdbMXeRo=;
        b=VAm6Nw59e7rktMikdP8kkQ1cKmwSsxWQdIgJ3UKV0sehu4mgG2Po9rSm4A5jvsN0HA
         KxgGzYNEYqm+MaBTshO6jhRo0WmMs/ObLAqgF3Bqi9jbJ+myQExAMCnidRDjCiHVVXBc
         Ds5+bbGB2A+mvoa06PAa3hegJahy6vQlC38m0dbl6iXwqrBra69vcxEnYz3ktJ+8bC2R
         DLI1/jwKq6oNmdnTY1hrgiLlFnG1UqheU1CnJWPeRi01GLwTqv0X4dayDolVuZSK7WL8
         pewEtfxAJv6vQE5w7fVXK/Cc6dHAY2YaAiGqMzwixZmal9BWtguRZb+DsqIXsvn02dHW
         Jvcw==
X-Gm-Message-State: AFqh2krqCc1d6ohlL9Lwm+qcY3Ru9JIbVPTZoPduBcGbz23AcBUuqt4f
	DBhyQCp1Bo1VVQwhVuiYVdgewQ==
X-Google-Smtp-Source: AMrXdXtXEFysaVAJF+CTDEiz+OWvQED5ldVWf0lcmRDBjbFVHBbTFEagf9y08uwCuoQOfLo05hH8Fg==
X-Received: by 2002:a05:6a21:998a:b0:ad:f86d:c0bc with SMTP id ve10-20020a056a21998a00b000adf86dc0bcmr14574349pzb.7.1671801958229;
        Fri, 23 Dec 2022 05:25:58 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.26])
        by smtp.gmail.com with ESMTPSA id m3-20020a635803000000b0047681fa88d1sm1308587pgb.53.2022.12.23.05.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Dec 2022 05:25:57 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Richard Cochran <richardcochran@gmail.com>
Cc: Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCHv1 linux-next 3/4] ARM: dts: rockchip: rv1126: Add GMAC node
Date: Fri, 23 Dec 2022 13:22:32 +0000
Message-Id: <20221223132235.16149-3-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221223132235.16149-1-anand@edgeble.ai>
References: <20221223132235.16149-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_052558_888631_2EB5243D 
X-CRM114-Status: UNSURE (   9.29  )
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

Rockchip RV1126 has GMAC 10/100/1000M ethernet controller
add GMAC node for RV1126 SoC.

Signed-off-by: Anand Moon <anand@edgeble.ai>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rv1126.dtsi | 63 +++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
index 1cb43147e90b..bae318c1d839 100644
--- a/arch/arm/boot/dts/rv1126.dtsi
+++ b/arch/arm/boot/dts/rv1126.dtsi
@@ -90,6 +90,69 @@ xin24m: oscillator {
 		#clock-cells = <0>;
 	};
 
+	gmac_clkin_m0: external-gmac-clockm0 {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac_rgmii_clkin_m0";
+		#clock-cells = <0>;
+	};
+
+	gmac_clkini_m1: external-gmac-clockm1 {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac_rgmii_clkin_m1";
+		#clock-cells = <0>;
+	};
+
+	gmac: ethernet@ffc40000 {
+		compatible = "rockchip,rv1126-gmac", "snps,dwmac-4.20a";
+		reg = <0xffc40000 0x4000>;
+		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "macirq", "eth_wake_irq";
+		rockchip,grf = <&grf>;
+		clocks = <&cru CLK_GMAC_SRC>, <&cru CLK_GMAC_TX_RX>,
+			 <&cru CLK_GMAC_TX_RX>, <&cru CLK_GMAC_REF>,
+			 <&cru ACLK_GMAC>, <&cru PCLK_GMAC>,
+			 <&cru CLK_GMAC_TX_RX>, <&cru CLK_GMAC_PTPREF>;
+		clock-names = "stmmaceth", "mac_clk_rx",
+			      "mac_clk_tx", "clk_mac_ref",
+			      "aclk_mac", "pclk_mac",
+			      "clk_mac_speed", "ptp_ref";
+		resets = <&cru SRST_GMAC_A>;
+		reset-names = "stmmaceth";
+
+		snps,mixed-burst;
+		snps,tso;
+
+		snps,axi-config = <&stmmac_axi_setup>;
+		snps,mtl-rx-config = <&mtl_rx_setup>;
+		snps,mtl-tx-config = <&mtl_tx_setup>;
+		status = "disabled";
+
+		mdio: mdio {
+			compatible = "snps,dwmac-mdio";
+			#address-cells = <0x1>;
+			#size-cells = <0x0>;
+		};
+
+		stmmac_axi_setup: stmmac-axi-config {
+			snps,wr_osr_lmt = <4>;
+			snps,rd_osr_lmt = <8>;
+			snps,blen = <0 0 0 0 16 8 4>;
+		};
+
+		mtl_rx_setup: rx-queues-config {
+			snps,rx-queues-to-use = <1>;
+			queue0 {};
+		};
+
+		mtl_tx_setup: tx-queues-config {
+			snps,tx-queues-to-use = <1>;
+			queue0 {};
+		};
+	};
+
 	grf: syscon@fe000000 {
 		compatible = "rockchip,rv1126-grf", "syscon", "simple-mfd";
 		reg = <0xfe000000 0x20000>;
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
