Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED10AC3600C
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 03:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jM/l+8NMgJtUuFFDpIYozLUywa8QZbiC1cZUWJoKY3c=; b=mT84Ye2Y9b1WpK
	evmMEZiJK168N4A4ne9lasRLjSQ2AuPARyiyrEhcpWLoIY+24LEDbwqtY7jiNMaKpskaPBeRBvpZO
	UOk51mJyScfApfqlshbRoxTFRwqYHgJT7wp1XVVzQk+Z81D7a3cUeVtO0rjaLAJ0LOUI4NA+8foaB
	BthR3TiY+TDm923hq23s1xHN4/Nvem0lglg97TeVF4F9bR7v+DqltlrLfwOBdLh/oWJS+tkysnxfu
	4/PoEkAvhpgzD8/J7BU1SDY57IfIh6Zuu9xMgOL9TH5rOdV5HUwpE9b98f+hUuOLWj1pjNeBBUTh4
	Nvn2LJ9WHMV4/adFDXNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0Xeg-0000000AgXD-0Ss2;
	Fri, 04 Apr 2025 03:23:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0XHi-0000000Ad0C-1jSh;
	Fri, 04 Apr 2025 02:59:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C9B1E5C6C11;
	Fri,  4 Apr 2025 02:57:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 508DAC4CEE3;
	Fri,  4 Apr 2025 02:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743735597;
	bh=xnnf/JMo7g8hotGpKUR0IYT07WFDf4YWzcm+WUwyUKc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=L9m4MVF+CjyKiJF4HQGUCr+TFqomiA/bqC44XWNkWA1DHlVlz11Nva+tpMBnQsZxX
	 eTghr2qdE7kh4uMtWQ2MvUFrOCocer4i0q+HiEXH8Yt9NsFAAkTbMYbobNxAg5B3lG
	 HHB/EKqho1Fxd955zmMMskUQxaJYEZ0sW4L4SQ0hth4v8pPtWW9kSY7nJbdWOg61zc
	 /3x+zwMvRp7HYKDbQcQia+tpYSJckx6QMv5w4fAf+Q6BLKjiplevqbbSxd52uFDNcV
	 +xjhIsAKGFyvY9b16zN1Ba9+p4FruKxUwWqia9z0I/HKN3uYF2G35eyAKEDXjpJG/1
	 lKJRzlS2Kq4Sw==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Thu, 03 Apr 2025 21:59:33 -0500
Subject: [PATCH 12/19] arm: dts: rockchip: Drop redundant CPU
 "clock-latency"
MIME-Version: 1.0
Message-Id: <20250403-dt-cpu-schema-v1-12-076be7171a85@kernel.org>
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
In-Reply-To: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Vincenzo Frascino <vincenzo.frascino@arm.com>, 
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com, 
 Conor Dooley <conor@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, linux-mips@vger.kernel.org, 
 imx@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-Mailer: b4 0.15-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_195958_548958_E64F9524 
X-CRM114-Status: GOOD (  12.55  )
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

The "clock-latency" property is part of the deprecated opp-v1 binding
and is redundant if the opp-v2 table has equal or larger values in any
"clock-latency-ns". Add any missing "clock-latency-ns" properties and
remove "clock-latency".

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 8 +++++++-
 arch/arm/boot/dts/rockchip/rk3188.dtsi | 1 -
 arch/arm/boot/dts/rockchip/rk322x.dtsi | 1 -
 arch/arm/boot/dts/rockchip/rk3288.dtsi | 5 +----
 arch/arm/boot/dts/rockchip/rv1108.dtsi | 1 -
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index d4572146d135..c49099954c28 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -48,7 +48,6 @@ cpu0: cpu@f00 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a7";
 			reg = <0xf00>;
-			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
 			resets = <&cru SRST_CORE0>;
 			operating-points-v2 = <&cpu_opp_table>;
@@ -87,31 +86,38 @@ cpu_opp_table: opp-table-0 {
 		opp-216000000 {
 			opp-hz = /bits/ 64 <216000000>;
 			opp-microvolt = <950000 950000 1325000>;
+			clock-latency-ns = <40000>;
 		};
 		opp-408000000 {
 			opp-hz = /bits/ 64 <408000000>;
 			opp-microvolt = <950000 950000 1325000>;
+			clock-latency-ns = <40000>;
 		};
 		opp-600000000 {
 			opp-hz = /bits/ 64 <600000000>;
 			opp-microvolt = <950000 950000 1325000>;
+			clock-latency-ns = <40000>;
 		};
 		opp-696000000 {
 			opp-hz = /bits/ 64 <696000000>;
 			opp-microvolt = <975000 975000 1325000>;
+			clock-latency-ns = <40000>;
 		};
 		opp-816000000 {
 			opp-hz = /bits/ 64 <816000000>;
 			opp-microvolt = <1075000 1075000 1325000>;
 			opp-suspend;
+			clock-latency-ns = <40000>;
 		};
 		opp-1008000000 {
 			opp-hz = /bits/ 64 <1008000000>;
 			opp-microvolt = <1200000 1200000 1325000>;
+			clock-latency-ns = <40000>;
 		};
 		opp-1200000000 {
 			opp-hz = /bits/ 64 <1200000000>;
 			opp-microvolt = <1325000 1325000 1325000>;
+			clock-latency-ns = <40000>;
 		};
 	};
 
diff --git a/arch/arm/boot/dts/rockchip/rk3188.dtsi b/arch/arm/boot/dts/rockchip/rk3188.dtsi
index 44b54af0bbf9..850bd6e67895 100644
--- a/arch/arm/boot/dts/rockchip/rk3188.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3188.dtsi
@@ -23,7 +23,6 @@ cpu0: cpu@0 {
 			compatible = "arm,cortex-a9";
 			next-level-cache = <&L2>;
 			reg = <0x0>;
-			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
 			operating-points-v2 = <&cpu0_opp_table>;
 			resets = <&cru SRST_CORE0>;
diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi b/arch/arm/boot/dts/rockchip/rk322x.dtsi
index 96421355c274..cd11a018105b 100644
--- a/arch/arm/boot/dts/rockchip/rk322x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk322x.dtsi
@@ -36,7 +36,6 @@ cpu0: cpu@f00 {
 			resets = <&cru SRST_CORE0>;
 			operating-points-v2 = <&cpu0_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
-			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
 			enable-method = "psci";
 		};
diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
index 3f1d640afafa..42d705b544ec 100644
--- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
@@ -70,7 +70,6 @@ cpu0: cpu@500 {
 			resets = <&cru SRST_CORE0>;
 			operating-points-v2 = <&cpu_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
-			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
 			dynamic-power-coefficient = <370>;
 		};
@@ -81,7 +80,6 @@ cpu1: cpu@501 {
 			resets = <&cru SRST_CORE1>;
 			operating-points-v2 = <&cpu_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
-			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
 			dynamic-power-coefficient = <370>;
 		};
@@ -92,7 +90,6 @@ cpu2: cpu@502 {
 			resets = <&cru SRST_CORE2>;
 			operating-points-v2 = <&cpu_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
-			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
 			dynamic-power-coefficient = <370>;
 		};
@@ -103,7 +100,6 @@ cpu3: cpu@503 {
 			resets = <&cru SRST_CORE3>;
 			operating-points-v2 = <&cpu_opp_table>;
 			#cooling-cells = <2>; /* min followed by max */
-			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
 			dynamic-power-coefficient = <370>;
 		};
@@ -116,6 +112,7 @@ cpu_opp_table: opp-table-0 {
 		opp-126000000 {
 			opp-hz = /bits/ 64 <126000000>;
 			opp-microvolt = <900000>;
+			clock-latency-ns = <40000>;
 		};
 		opp-216000000 {
 			opp-hz = /bits/ 64 <216000000>;
diff --git a/arch/arm/boot/dts/rockchip/rv1108.dtsi b/arch/arm/boot/dts/rockchip/rv1108.dtsi
index f3291f3bbc6f..42a4d72597a5 100644
--- a/arch/arm/boot/dts/rockchip/rv1108.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1108.dtsi
@@ -32,7 +32,6 @@ cpu0: cpu@f00 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a7";
 			reg = <0xf00>;
-			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <75>;

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
