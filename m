Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A22A2C3ABC9
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 22:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jAuad7A6W7hF48v1+KYCfDivPixsTdcVoRyfTUjusQ=; b=37mqGembJSDMN0
	e3ENh2sNGIO6iPJkci+dYGUJSu41loED4D/2NxfO7RWJPW+C93Ys90ZCneqYU6ZVkAomNxlRFmRnk
	ixi8291DoIvt0w79t9rLr/WD4mrl6A/re1/gAvoNhMdUWkTNbq7tKigkaYAINPukTfwXRarf/vLfB
	C7TSS7Ukx/wpDXR++1OONL4RZQUKdvJNn5LEMac8I9/vDzL8hI58dwVQBf6V3BX0kMKosMcCHWQ/M
	4fnXIm/tDAbNmlmgA970BQNG+r35mMn5FZmClbfAdrL1zgToyjhTww9LXwXATl5srr+w2z91HW7eJ
	uED6rQcyG4Xpp/bdd3qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmxz-00000007fpM-1X5W;
	Sun, 18 May 2025 22:58:47 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmu7-00000007fRo-3UO2
	for linux-rockchip@lists.infradead.org;
	Sun, 18 May 2025 22:54:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1747608887; bh=jaXXZuk1frfcedeOEDAUivp9EQrzh8hsZwc4skzNAyM=;
 b=cgVmHOGJBjWZIPzdq0R1+y7f8tiyODhwsqanlGm90HZsYwzUHFfzFeGCgzGw8iRjAWhyLOT30
 UzMQS5CStKh9Jqpe8Lj3Gq3p+SATlMB8gIF3mt3K1ml5tR/1qV0mWhhk3H8knhE1bUJUbX1ZizT
 FFsyX0UxOyPhOecXYsdM68PX+4XZqJDqFOzsihe4T7UZNWdG8ApU+ipxBD4jpeJuQMY3m0Tm84P
 7QHB39HYh9ndcK58zBhIVGHAXEXiege/LnLvf82Vz5Mw5IeHARpjWu673hfgqQxJJ5/tcjB4g6r
 z8znVs64R1KrSO0MCKf4U/B8YssE/Y4wB4Bks2P4QW8A==
X-Forward-Email-ID: 682a6532db63046e3392f2c3
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: rockchip: Add GPU node for RK3528
Date: Sun, 18 May 2025 22:54:12 +0000
Message-ID: <20250518225418.682182-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250518225418.682182-1-jonas@kwiboo.se>
References: <20250518225418.682182-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_155447_907840_7128B98E 
X-CRM114-Status: UNSURE (   8.61  )
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

Add a GPU node and a opp-table for the Mali-450 MP2 in the RK3528 SoC.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3528.dtsi | 58 ++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
index 791cb9b1e8f1..548ac6d4793f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
@@ -96,6 +96,36 @@ scmi_clk: protocol@14 {
 		};
 	};
 
+	gpu_opp_table: opp-table-gpu {
+		compatible = "operating-points-v2";
+
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <875000 875000 1000000>;
+			opp-suspend;
+		};
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <875000 875000 1000000>;
+		};
+
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <875000 875000 1000000>;
+		};
+
+		opp-700000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			opp-microvolt = <900000 900000 1000000>;
+		};
+
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <950000 950000 1000000>;
+		};
+	};
+
 	psci {
 		compatible = "arm,psci-1.0", "arm,psci-0.2";
 		method = "smc";
@@ -433,6 +463,34 @@ power-domain@RK3528_PD_VPU {
 			};
 		};
 
+		gpu: gpu@ff700000 {
+			compatible = "rockchip,rk3528-mali", "arm,mali-450";
+			reg = <0x0 0xff700000 0x0 0x40000>;
+			assigned-clocks = <&cru ACLK_GPU_MALI>,
+					  <&scmi_clk SCMI_CLK_GPU>;
+			assigned-clock-rates = <297000000>, <300000000>;
+			clocks = <&cru ACLK_GPU_MALI>, <&scmi_clk SCMI_CLK_GPU>;
+			clock-names = "bus", "core";
+			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "gp",
+					  "gpmmu",
+					  "pp",
+					  "pp0",
+					  "ppmmu0",
+					  "pp1",
+					  "ppmmu1";
+			operating-points-v2 = <&gpu_opp_table>;
+			power-domains = <&power RK3528_PD_GPU>;
+			resets = <&cru SRST_A_GPU>;
+			status = "disabled";
+		};
+
 		uart0: serial@ff9f0000 {
 			compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
 			reg = <0x0 0xff9f0000 0x0 0x100>;
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
