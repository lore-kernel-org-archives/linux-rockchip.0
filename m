Return-Path: <SRS0=uHDa=PB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E488FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 11:33:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B442560EE9
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 11:33:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B442560EE9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5VEVSsMxm7sjAg2BC+LNlOl1+vZd6P07eAL2qpwHYc=; b=g9+utQJ1v0LQ9L
	s5uqVPjOKQ3XO0lJqebAlw4oRGIOcgqUbCrdfqxljx1g9scYs7P1qxTYsP4QItrnQAIGE0tp3dXyM
	mx7dfLQRM+aphIL4MbYppyYax3XKqSiiXLA41OoePJ59tsL4d82+/d0LKS/k8UqxXwfOQAX14bW7f
	yilfp5TntzVCyp0D+pIL0MlfGvUluw+z65q4+M5aADXHrG11Q7TDJm0rL1tKj6gdq8o9tAxd7cG7t
	0WcrB04W4fy4uZkkvwC1ZLq3pCo2nQvSeLnnFGm2OQW3/ExwDQ9f/m8szeOwGhXbYQ5g9/YpUzFMy
	dnrdLNtCmJ0octZYAj4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1macVz-00GKeO-LM; Wed, 13 Oct 2021 11:33:43 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mabMa-00Fxi5-G3; Wed, 13 Oct 2021 10:19:58 +0000
Received: from localhost (unknown [192.168.167.225])
 by lucky1.263xmail.com (Postfix) with ESMTP id 86DAAD6FAC;
 Wed, 13 Oct 2021 18:19:50 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26701T140614792369920S1634120379732571_; 
 Wed, 13 Oct 2021 18:19:49 +0800 (CST)
X-IP-DOMAINF: 1
X-RL-SENDER: zyf@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: zyf@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 12
X-LOCAL-RCPT-COUNT: 1
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-UNIQUE-TAG: <9ff736094915ea880529a8f6649e4dc5>
X-System-Flag: 0
From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
To: heiko@sntech.de,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, vkoul@kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com, p.zabel@pengutronix.de,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: add naneng combo phy nodes for
 rk3568
Date: Wed, 13 Oct 2021 18:19:38 +0800
Message-Id: <20211013101938.28061-4-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211013101938.28061-1-yifeng.zhao@rock-chips.com>
References: <20211013101938.28061-1-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_031957_030458_D814EF54 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the core dt-node for the rk3568's naneng combo phys.

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
---

Changes in v2:
- Move phy0 to rk3568.dtsi

 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 21 +++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 47 ++++++++++++++++++++++++
 2 files changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 2fd313a295f8..4db5d3c2a04e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -8,6 +8,11 @@
 / {
 	compatible = "rockchip,rk3568";
 
+	pipe_phy_grf0: syscon@fdc70000 {
+		compatible = "rockchip,pipe-phy-grf", "syscon";
+		reg = <0x0 0xfdc70000 0x0 0x1000>;
+	};
+
 	qos_pcie3x1: qos@fe190080 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe190080 0x0 0x20>;
@@ -71,6 +76,22 @@
 			queue0 {};
 		};
 	};
+
+	combphy0_us: phy@fe820000 {
+		compatible = "rockchip,rk3568-naneng-combphy";
+		reg = <0x0 0xfe820000 0x0 0x100>;
+		#phy-cells = <1>;
+		clocks = <&pmucru CLK_PCIEPHY0_REF>, <&cru PCLK_PIPEPHY0>,
+			 <&cru PCLK_PIPE>;
+		clock-names = "ref", "apb", "pipe";
+		assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
+		assigned-clock-rates = <100000000>;
+		resets = <&cru SRST_P_PIPEPHY0>, <&cru SRST_PIPEPHY0>;
+		reset-names = "combphy-apb", "combphy";
+		rockchip,pipe-grf = <&pipegrf>;
+		rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
+		status = "disabled";
+	};
 };
 
 &cpu0_opp_table {
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index b721a34ffa8c..2397daf46385 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -214,11 +214,26 @@
 		};
 	};
 
+	pipegrf: syscon@fdc50000 {
+		compatible = "rockchip,rk3568-pipegrf", "syscon";
+		reg = <0x0 0xfdc50000 0x0 0x1000>;
+	};
+
 	grf: syscon@fdc60000 {
 		compatible = "rockchip,rk3568-grf", "syscon", "simple-mfd";
 		reg = <0x0 0xfdc60000 0x0 0x10000>;
 	};
 
+	pipe_phy_grf1: syscon@fdc80000 {
+		compatible = "rockchip,pipe-phy-grf", "syscon";
+		reg = <0x0 0xfdc80000 0x0 0x1000>;
+	};
+
+	pipe_phy_grf2: syscon@fdc90000 {
+		compatible = "rockchip,pipe-phy-grf", "syscon";
+		reg = <0x0 0xfdc90000 0x0 0x1000>;
+	};
+
 	pmucru: clock-controller@fdd00000 {
 		compatible = "rockchip,rk3568-pmucru";
 		reg = <0x0 0xfdd00000 0x0 0x1000>;
@@ -1039,6 +1054,38 @@
 		status = "disabled";
 	};
 
+	combphy1_usq: phy@fe830000 {
+		compatible = "rockchip,rk3568-naneng-combphy";
+		reg = <0x0 0xfe830000 0x0 0x100>;
+		#phy-cells = <1>;
+		clocks = <&pmucru CLK_PCIEPHY1_REF>, <&cru PCLK_PIPEPHY1>,
+			 <&cru PCLK_PIPE>;
+		clock-names = "ref", "apb", "pipe";
+		assigned-clocks = <&pmucru CLK_PCIEPHY1_REF>;
+		assigned-clock-rates = <100000000>;
+		resets = <&cru SRST_P_PIPEPHY1>, <&cru SRST_PIPEPHY1>;
+		reset-names = "combphy-apb", "combphy";
+		rockchip,pipe-grf = <&pipegrf>;
+		rockchip,pipe-phy-grf = <&pipe_phy_grf1>;
+		status = "disabled";
+	};
+
+	combphy2_psq: phy@fe840000 {
+		compatible = "rockchip,rk3568-naneng-combphy";
+		reg = <0x0 0xfe840000 0x0 0x100>;
+		#phy-cells = <1>;
+		clocks = <&pmucru CLK_PCIEPHY2_REF>, <&cru PCLK_PIPEPHY2>,
+			 <&cru PCLK_PIPE>;
+		clock-names = "ref", "apb", "pipe";
+		assigned-clocks = <&pmucru CLK_PCIEPHY2_REF>;
+		assigned-clock-rates = <100000000>;
+		resets = <&cru SRST_P_PIPEPHY2>, <&cru SRST_PIPEPHY2>;
+		reset-names = "combphy-apb", "combphy";
+		rockchip,pipe-grf = <&pipegrf>;
+		rockchip,pipe-phy-grf = <&pipe_phy_grf2>;
+		status = "disabled";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3568-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
