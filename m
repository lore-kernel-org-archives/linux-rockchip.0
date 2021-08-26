Return-Path: <SRS0=LXKC=NR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82C2C432BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 12:41:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 844C96109E
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 12:41:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 844C96109E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uh1T3zSlEi2K52INekK7DJEc1Q4+DOca2qbKCEbA0UM=; b=VuqWa4McZJZAUa
	GlbZSz/0pmnaNqOWLmomT7WlXNFfnNtJJC1XJNRYe6IFuZQ2yfM3ImRdHW/sBANv+YK5G217VsWOC
	JDBksPIV3rIbzvuuzcQExE3FZ+5AQ6qRdgpiTowawNw+fJghz83ph102NQtFJcxjehziK2DxHTr9B
	EHKV0pRR7t4lh1q8iMnqznxDcB1bbZNA5+MmGGW6xt5WYY/l3wLFFnjXVqaZC290lk4j1AIxymNkQ
	m8PneqRpNeruBAvdOyNhbaIrk3RAWdGHxyZaBYio3oq7Y2MxNdy+/jGjrwobK5slumlAfECDaTsi7
	95nw6ghwSX32GE7DvziQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJEhC-00A7uA-8o; Thu, 26 Aug 2021 12:41:26 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJEeq-00A707-J3; Thu, 26 Aug 2021 12:39:04 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 69BEBD731C;
 Thu, 26 Aug 2021 20:38:53 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32763T139761010153216S1629981525980003_; 
 Thu, 26 Aug 2021 20:38:53 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5edbae06160058b9826b59ee43e0d716>
X-RL-SENDER: yifeng.zhao@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: yifeng.zhao@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 12
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
To: heiko@sntech.de,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, vkoul@kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com, p.zabel@pengutronix.de,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: [PATCH v1 3/3] arm64: dts: rockchip: add naneng combo phy nodes for
 rk3568
Date: Thu, 26 Aug 2021 20:38:44 +0800
Message-Id: <20210826123844.8464-4-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210826123844.8464-1-yifeng.zhao@rock-chips.com>
References: <20210826123844.8464-1-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210826_053901_087092_5B212A7D 
X-CRM114-Status: UNSURE (   9.37  )
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

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 68 ++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index d89831bee1eb..b421e3d52412 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -214,11 +214,31 @@
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
 
+	pipe_phy_grf0: syscon@fdc70000 {
+		compatible = "rockchip,pipe-phy-grf", "syscon";
+		reg = <0x0 0xfdc70000 0x0 0x1000>;
+	};
+
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
@@ -862,6 +882,54 @@
 		status = "disabled";
 	};
 
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
+
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
