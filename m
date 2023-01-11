Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4471DC5479D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 06:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7N4chC0ibolOkj0BGtfV2dZum1ScHiE2cIUCp7UYgls=; b=RWF10iZAZQfIm3
	6KAr8JEvbtqYmE+onFdgiM/EZb229Gml4knwsGG17zd6mFkj9LR67CylnhTZu2xeGNcSl1lPl3DoA
	MyhvxZreuvSXl9HmKAgcESixTQL097KsxQJxr0Wxd6JqjQLgGh4f9GiZhs5/LhH/CStHjof4elq6A
	IhSoIYIpGTlRSM+nKqdMF7JocMeUMmV8vrVMCC/3Xu9oy9Zlq/dcp6ezUcJ8FqzPR5MXR/eYI74WS
	7h3GK2piJSKCMuamsuJjDdkzDdGxUZdAr4si6ep/VEZKe1dSmVM4jrhh0TfrhBv54eHYHUgRx58QZ
	b5xSUMUWVTjK86iO44oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFUvO-009tx3-Bg; Wed, 11 Jan 2023 06:49:26 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFUv6-009tos-Ny
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 06:49:10 +0000
Received: by mail-pj1-x1036.google.com with SMTP id b9-20020a17090a7ac900b00226ef160dcaso14339388pjl.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 22:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v6oPssMQRYRXIYCOfMp0bkJRvG7DgiHOFHZTd1dGl0E=;
        b=Ie7iNftIr1QUxuimLann2hOzWgGdQRi29/xAeDcLQWDXd2OPzSnJMNox5qtKpj7gWJ
         UqUhfEOD/RidpZqWzu2J77YeDjJFV3YJ2mXLDeMVSlcWmwIydyucxiAlFs2cBKLlYsHh
         sFKcL4c7Wq2S4SxWCMkVLiPZuVsE1ItLIAluFxcdl34xW54zqNyg0zxqAp7hGd2fkPBM
         OzI5O+/qqIYMFMGkXZU2c0suW7B0HR2Dl8kM162w96wWvYf+FLwgwXzqz+rTNwVgutCz
         8X/VXY5SD4ijNNWdPR5vAl2W5DIjIhqJ5d5grzGggKm3/9doqzDgQLRjY3ckWjFMani8
         2CEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v6oPssMQRYRXIYCOfMp0bkJRvG7DgiHOFHZTd1dGl0E=;
        b=nIkppwEf1L5YeOFG638RRFjpzymvRxFFUAiY5rogcfxoSR5ZZ02KUHbAwf5EBxKAZQ
         +WaavL7k30lV7yX/3/L2bwTtBVUbUI7bPZ1OdlHsO8MJaC9YHclRuIYPkfZFqu2Lp5VP
         y4Q36KlU55p4BmVOWhz3MFEXNpi6lN/JJjWVbEyy6A4yLq59/XN+EqRU6HlXqZoY3bNU
         M7EJm4XsW9rxOsSEFHCsB1Q3c5Lc8IMIG80jUraI8aWJUFU4JLHYeK+ZVv8QtiVX0Xaj
         A1Zvr1Lk8moZuWRnIrRAF31eNrgRZrwH6VMQQt9iCZchSz9fJT2Jz2+3BAs9AQ7uPWgx
         +rVQ==
X-Gm-Message-State: AFqh2krZrRJTrTfhAafePGpTrL85BKcZBTZuXCex8VmhZhAVVm5gC5Gn
	fjdShBF+GvqyRpgyfL7sYfCTqg==
X-Google-Smtp-Source: AMrXdXvD28Q1bpjA2TAUIObCBGuW6pqghWR4+QjFqarx4Hf7Lggo09ttNj/cyct8l1yB315Yy/LFAQ==
X-Received: by 2002:a05:6a20:c183:b0:a4:526a:3f25 with SMTP id bg3-20020a056a20c18300b000a4526a3f25mr90205897pzb.44.1673419746404;
        Tue, 10 Jan 2023 22:49:06 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.15])
        by smtp.gmail.com with ESMTPSA id m2-20020a170902db0200b001930e89f5f6sm9301861plx.98.2023.01.10.22.49.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 22:49:05 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Richard Cochran <richardcochran@gmail.com>
Cc: Johan Jonker <jbx6244@gmail.com>,
	Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCHv4 linux-next 3/4] Rockchip RV1126 has GMAC 10/100/1000M ethernet controller
Date: Wed, 11 Jan 2023 06:48:38 +0000
Message-Id: <20230111064842.5322-3-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111064842.5322-1-anand@edgeble.ai>
References: <20230111064842.5322-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_224908_798334_B1CFB631 
X-CRM114-Status: UNSURE (   9.76  )
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

Add Ethernet GMAC node for RV1126 SoC.

Signed-off-by: Anand Moon <anand@edgeble.ai>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
v4: sort the node as reg adds. update the commit message.
v3: drop the gmac_clkin_m0 & gmac_clkin_m1 fix clock node which are not
    used, Add SoB of Jagan Teki.
v2: drop SoB of Jagan Teki.
---
 arch/arm/boot/dts/rv1126.dtsi | 49 +++++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
index 1cb43147e90b..1f07d0a4fa73 100644
--- a/arch/arm/boot/dts/rv1126.dtsi
+++ b/arch/arm/boot/dts/rv1126.dtsi
@@ -332,6 +332,55 @@ timer0: timer@ff660000 {
 		clock-names = "pclk", "timer";
 	};
 
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
 	emmc: mmc@ffc50000 {
 		compatible = "rockchip,rv1126-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0xffc50000 0x4000>;
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
