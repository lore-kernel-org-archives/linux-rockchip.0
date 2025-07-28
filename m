Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B822DC87FC9
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jul 2025 10:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=po+0fSyRI9NlTuy5T3FLu/lVVqSBHU2ELsQN3eQCMZs=; b=Yza/KgH0ZWHT8g
	qQD0nNW0O2UsgOktBQ+/Ney+PpV7FsU8tu2daYiBFZKF8/Oq+tzTtApeOE8/UcTutfrD1PNvE70sb
	C4eDKhmis6tN3kGggpZuH48EIRSrnr5HP6t+du8G3uBVKNWX/qP8qcW/VZ3j+vYaG86KFADBE43nR
	vvtomWp0Em1HHtKaY8Bk9Y7Atjb6FLq8KSRdkNRsHmqBeA8Zjv9iJNBIMhSoccn3usaVprs8HgBwy
	Fx4bFRfXUIJuId1E21yTbwt/F40GTt2jvVb737H8mnRD0/VCcFI6FIZ1ahSnOu9Df4PTq2Ad2zlvx
	nW3YZcre+zbzcd2ib4Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugLTe-0000000EHLm-2Ljk;
	Mon, 28 Jul 2025 10:53:06 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugL9r-0000000EExu-2Ar0;
	Mon, 28 Jul 2025 10:32:40 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 5337820E30;
	Mon, 28 Jul 2025 12:32:38 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wAhAAW0WYRYv; Mon, 28 Jul 2025 12:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1753698757; bh=y5vVdmQ4dC2wsUn0JtuEjMgsKW9qhleLEj6ifOgi1pk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=P16oc+LfQNN+AmGnexdHMN9iGdC5bg5sWr5nbmaxSLEND69x5Th9IABXmJs9YUsNf
	 8rDETyRWThLtV+l8dS+0beo0trTlTS4awAnFgSgloPRsHFlVY+b1W5pHZgXd+D90jB
	 Hwga1K1yef2QWIqvkEc+XE1Q4bDrAceyjl3wlRSi5slQwIDAGgEHmvDwzw6n4vLH0+
	 06l+mtPyHY8qG/r+KatUsh/Z91zqAsJCpqXTLNruqMTx0xdSz7+76JVgP6jey9FcOX
	 kJbQKSv8IfcDiVzTl06mFn+ugV4Fn22n6wKlaeAg+DKpbbyS9YGyaEUVZMx5/ZEY6w
	 bxgNxUBc3l3gQ==
From: Yao Zi <ziyao@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 6/6] arm64: dts: rockchip: Add naneng-combphy for RK3528
Date: Mon, 28 Jul 2025 10:29:48 +0000
Message-ID: <20250728102947.38984-8-ziyao@disroot.org>
In-Reply-To: <20250728102947.38984-2-ziyao@disroot.org>
References: <20250728102947.38984-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250728_033239_735640_1102C76A 
X-CRM114-Status: UNSURE (   6.92  )
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

Rockchip RK3528 ships a naneng-combphy that is shared by PCIe and USB
3.0 controllers. Describe it and the pipe-phy grf which it depends on.

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 arch/arm64/boot/dts/rockchip/rk3528.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
index 54fa8089c4d3..58c8977249be 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
@@ -417,6 +417,11 @@ vpu_grf: syscon@ff340000 {
 			reg = <0x0 0xff340000 0x0 0x8000>;
 		};
 
+		pipe_phy_grf: syscon@ff348000 {
+			compatible = "rockchip,rk3528-pipe-phy-grf", "syscon";
+			reg = <0x0 0xff348000 0x0 0x8000>;
+		};
+
 		vo_grf: syscon@ff360000 {
 			compatible = "rockchip,rk3528-vo-grf", "syscon";
 			reg = <0x0 0xff360000 0x0 0x10000>;
@@ -1085,6 +1090,25 @@ dmac: dma-controller@ffd60000 {
 			#dma-cells = <1>;
 			arm,pl330-periph-burst;
 		};
+
+		combphy: phy@ffdc0000 {
+			compatible = "rockchip,rk3528-naneng-combphy";
+			reg = <0x0 0xffdc0000 0x0 0x10000>;
+			assigned-clocks = <&cru CLK_REF_PCIE_INNER_PHY>;
+			assigned-clock-rates = <100000000>;
+			clocks = <&cru CLK_REF_PCIE_INNER_PHY>,
+				 <&cru PCLK_PCIE_PHY>,
+				 <&cru PCLK_PIPE_GRF>;
+			clock-names = "ref", "apb", "pipe";
+			power-domains = <&power RK3528_PD_VPU>;
+			resets = <&cru SRST_PCIE_PIPE_PHY>,
+				 <&cru SRST_P_PCIE_PHY>;
+			reset-names = "phy", "apb";
+			#phy-cells = <1>;
+			rockchip,pipe-grf = <&vpu_grf>;
+			rockchip,pipe-phy-grf = <&pipe_phy_grf>;
+			status = "disabled";
+		};
 	};
 };
 
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
