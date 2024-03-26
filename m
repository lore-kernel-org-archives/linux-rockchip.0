Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56517C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 16:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k22cc+RaWNkXSRL62rDDlfK9i+2wMG+XJq/XvLliPYA=; b=G7iuAcNxw3L2Bn
	eNmbs030F9xyAXFJvvfqz63duqOVfYuayHp5ozhhvHQoOtqLZSWGBpffUIkSbB10B57KlOWmFON5G
	57lo6X3OQzctohVUEKlSeK3UXWpMEW+m3Vd02M1YqPlrRmS8ckWVQG8rO4HmHIF4Tx1Zc/dOvuebz
	ahyNf3bTfcOO+0EnSPLqzqPCAk4qgkHAZ6MO/6Lgd/ySw8ItBIffgAIrcpprEjAl+mPQ5eOLPKW9u
	f2ThG0m2fPoVBVErYiOcdre66kcHnrpLXu1NVj/42dZJO2rT/MW0L64yPZGohDz/F963bVj4RwAUG
	Xq3shgjgdMnPxU7NUIFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpA2V-00000005aGz-3jyD;
	Tue, 26 Mar 2024 16:52:43 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpA2P-00000005aDI-3P5s
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Mar 2024 16:52:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711471953;
	bh=/Nxs6FstrASPGXaLg5JYRLWZbQzXEV2qtmeifS1oC4A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Af2ob9XYNOJef4e9s4k9p7G6uhT2DJlusVGF+8U2wQ/cPZMeBoXBiDSKpRKDFp0ts
	 OXhvk5TVLkX72/LbZroeVbkdY3ZeBTpo3zYPQ2hhYLG/3SjR9fiJ/Y5z+upN0d39MC
	 +B3gPFILGwLthdXQgKJuqKk/SV2kdtgtBcGP6NpTMa1INwGPRXfzNHUqVAFIPNZOGO
	 ezaIpmxjRXf86xRywv5QE9JfAT7YaOBq6LKVJCBlQCPxlBSr2hWcb0ZRS6aPA39ESO
	 agKsNSv8KQNTAINk/7z+eV2LXASM0JBvyYtsQbVVQkqkZv46PW66gQZrBfbYzk2Lmo
	 XgdYpICPivnBQ==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 719DE37820E1;
	Tue, 26 Mar 2024 16:52:33 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 136F84800CF; Tue, 26 Mar 2024 17:52:33 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v2 2/4] arm64: dts: rockchip: rk3588: Add GPU nodes
Date: Tue, 26 Mar 2024 17:52:06 +0100
Message-ID: <20240326165232.73585-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240326165232.73585-1-sebastian.reichel@collabora.com>
References: <20240326165232.73585-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_095238_161681_91086AFE 
X-CRM114-Status: UNSURE (   9.50  )
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

From: Boris Brezillon <boris.brezillon@collabora.com>

Add Mali GPU Node to the RK3588 SoC DT including GPU clock
operating points

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 56 +++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 87b83c87bd55..89d40cff635f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -501,6 +501,62 @@ usb_host2_xhci: usb@fcd00000 {
 		status = "disabled";
 	};
 
+	gpu: gpu@fb000000 {
+		compatible = "rockchip,rk3588-mali", "arm,mali-valhall-csf";
+		reg = <0x0 0xfb000000 0x0 0x200000>;
+		#cooling-cells = <2>;
+		assigned-clocks = <&scmi_clk SCMI_CLK_GPU>;
+		assigned-clock-rates = <200000000>;
+		clocks = <&cru CLK_GPU>, <&cru CLK_GPU_COREGROUP>,
+			 <&cru CLK_GPU_STACKS>;
+		clock-names = "core", "coregroup", "stacks";
+		dynamic-power-coefficient = <2982>;
+		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "job", "mmu", "gpu";
+		operating-points-v2 = <&gpu_opp_table>;
+		power-domains = <&power RK3588_PD_GPU>;
+		status = "disabled";
+
+		gpu_opp_table: opp-table {
+			compatible = "operating-points-v2";
+
+			opp-300000000 {
+				opp-hz = /bits/ 64 <300000000>;
+				opp-microvolt = <675000 675000 850000>;
+			};
+			opp-400000000 {
+				opp-hz = /bits/ 64 <400000000>;
+				opp-microvolt = <675000 675000 850000>;
+			};
+			opp-500000000 {
+				opp-hz = /bits/ 64 <500000000>;
+				opp-microvolt = <675000 675000 850000>;
+			};
+			opp-600000000 {
+				opp-hz = /bits/ 64 <600000000>;
+				opp-microvolt = <675000 675000 850000>;
+			};
+			opp-700000000 {
+				opp-hz = /bits/ 64 <700000000>;
+				opp-microvolt = <700000 700000 850000>;
+			};
+			opp-800000000 {
+				opp-hz = /bits/ 64 <800000000>;
+				opp-microvolt = <750000 750000 850000>;
+			};
+			opp-900000000 {
+				opp-hz = /bits/ 64 <900000000>;
+				opp-microvolt = <800000 800000 850000>;
+			};
+			opp-1000000000 {
+				opp-hz = /bits/ 64 <1000000000>;
+				opp-microvolt = <850000 850000 850000>;
+			};
+		};
+	};
+
 	pmu1grf: syscon@fd58a000 {
 		compatible = "rockchip,rk3588-pmugrf", "syscon", "simple-mfd";
 		reg = <0x0 0xfd58a000 0x0 0x10000>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
