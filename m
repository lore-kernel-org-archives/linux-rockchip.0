Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 665A1C46467
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9cYX/3D6FDPndp0eHZqyLt1JYos3AjOAaIVQnLxmjT4=; b=mLiej7WjG7/Go/
	PjweaJjbCKLOA2VJtaW98CgR/Vwvmyx3oVFgQEpfo7zUxboafZO3mXIDOuF3yJI/EXx/arQfR1AV0
	Hy0iEVAObz2vwr+nSJjwvibeDxRNgr13FSE4M+h0uk31BLvDFLQ8uKyEy/e3XqTbR+gO4zcquTvke
	/+I3tYha873iKoM1Ic4arroOvh1rvjCv7l8HJzo38U5B2ZsZ6pln/jWyEDrk70Y24es91L9urBmeV
	Ofncz9SwYMC9wTRk/KN831hLEELkxneyMsYQhSS03bXtyh69mf/xUc2cOaB9QPRxKv4HmlMSHFDb6
	v+SxctHxgErn6tT1ipKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFerC-00COma-0p; Wed, 11 Jan 2023 17:25:46 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFeqW-00COSF-1V
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 17:25:05 +0000
Received: by mail-pj1-x102f.google.com with SMTP id o1-20020a17090a678100b00219cf69e5f0so20785971pjj.2
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jan 2023 09:25:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NByx23y/6WTDoeQQrsJysazVpw5VoP9tpFdnTA2g30g=;
        b=KKINuB57md1UtsZPCKcATf+egXFYsn+AioXnK8YTrnnhcF4rRNoV4hRgAe/xHVg4HB
         QkoujQ+l86IfIpIhwWxnzdSdAlRi8pcuqgNuPOH6Hg4FpC0KsI+GIQJacJRMpVLUnlm5
         AgGMuIOwoL7q+kfvUTXOFhDaxB3xS5R9ZAOoHzdUfZEunC6dNkiOem0H1Qk9kZ0sLZYi
         rBK071pbaLtE2lYDJEHXm0h4kqPicKP8YDud3534Y2TbfZUtsPb3qmcUtWDqGBeBpdO6
         Tu0qGps8XvNdLqyHjT9cWXBqD0QUt7fjMGGMneHd3l7X5YbVOwuLAGDjSmEJA7rI5+kD
         wtsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NByx23y/6WTDoeQQrsJysazVpw5VoP9tpFdnTA2g30g=;
        b=qRJ8oUkptFISL2t1e6rE45EG/aFBIDztHIq2fFACH9gMqP4rwbBJGLUHSoT0TIvmV0
         Tn2sHebk2nFW9V6/CgkI33HTvV+Pv/q9QF7nkeAUhB4z6kCJP3RnzOQnz/xcFCy80kx1
         hYVLOgEIsiEgS/74ljMc6SExQc4QDTF4uetaUFE/7WkWFc2T6TzbEbOfiveQu5yxG1Ug
         yjWBv7txwEHAp3QMqwUzzm11YF9WtKKWALTtp95Wg7PHN8RpHq1PIpJ6FZdcaLKfycw7
         9maGK9PIob+sejPT26P65ixgk38G2FRYWyYvVDXRt4vAzfK73QkiDolH/PLqwksF9c9G
         Ka0A==
X-Gm-Message-State: AFqh2kpfdaZRaBV1/jQE/32YmuW3YNCcDeIOxPHKQtvnTpvVnhVCxs1I
	5RUcqn0h6q8K1PnQObeZXLJTHQ==
X-Google-Smtp-Source: AMrXdXs33kCf5RuQM2En+SqY72OhTdwdHD9V2SE7l3q/Ih0SILfsTXt+N4b+SgAUQBEppvrNGbWVig==
X-Received: by 2002:a17:90b:264d:b0:213:18f3:68d1 with SMTP id pa13-20020a17090b264d00b0021318f368d1mr74169906pjb.29.1673457900181;
        Wed, 11 Jan 2023 09:25:00 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.15])
        by smtp.gmail.com with ESMTPSA id rm14-20020a17090b3ece00b00218fa115f83sm11110722pjb.57.2023.01.11.09.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 09:24:59 -0800 (PST)
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
Subject: [PATCH v5 linux-next 3/4] ARM: dts: Add Ethernet GMAC node for RV1126 SoC
Date: Wed, 11 Jan 2023 17:24:33 +0000
Message-Id: <20230111172437.5295-3-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111172437.5295-1-anand@edgeble.ai>
References: <20230111172437.5295-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_092504_114224_ABF50ADE 
X-CRM114-Status: GOOD (  10.37  )
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

Co-Developed-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Anand Moon <anand@edgeble.ai>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
v5: Fix the $subject and add CoD of Jagan
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
