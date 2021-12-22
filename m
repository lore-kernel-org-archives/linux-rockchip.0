Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28DEFC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 21:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdpuG7HUdRkK/eWcnmKZnx1wTtZyTmMHRxe97DCvhtg=; b=KEZl9epOCOCkrs
	AwjphBFyce0/I0aQhxMMDtN2DAZGvDwD1arO9Nr9r9yTvgQp6WL2pG8Aw98RsiMV3f/wkNs/J/6G9
	4h5RV1MzOG9uhaLMFC1BhorbfCHLbnWgIFh7PI2Tlbe/w2dbhHaVFBs06QHUXPwcoNQwV45j1c58I
	5j1if1lMWcZE0YWfJIkKpVGuo7H1bD/dBUEBqZge8Sf1ph2ijA8CN2dpj4mwiqBjluLBT9KFj/5Pj
	zHec9Lc9oakK2dVr9DlmVn2K6jGvjYzOKywt+Rzo8meFdYGOxoDgTrxXuGBCMyiSi5K12waBOYMxa
	GbeZJCmjiOf0y6KxhaKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n09DT-00BM5c-VN; Wed, 22 Dec 2021 21:32:07 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n09CD-00BLO7-JX; Wed, 22 Dec 2021 21:30:51 +0000
Received: by mail-ed1-x52d.google.com with SMTP id m21so14893889edc.0;
 Wed, 22 Dec 2021 13:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iplbSwiVf6b64+flx7Li4BU1W4Eid44TyGxCKnCRca4=;
 b=Sb6/nc3z8/Y4H0lGOPRClAe7BhwXGvn6Ac6pu54EEmRw4dXWm5WEIVyVm2EKnBFDfl
 B8fP1CVL1tV5vDrE1UtcqoLspqnD5R8JugCWEGSiK3SGydqJQVQ5cZlpxsZmq3WPbPYp
 kZ3f0eZB0IJBh/6jCrDlVlRxdmc+nd0RtQgWlEdZ1t7GfvlR3Ik8nQbFcGnzaHbsWoso
 dTt3wJrVrR7rMoHP1d8eEpqxh9EhPt+OW7TI04iYkd5lPDr07bz8wjiPBxFhS2p1WNHA
 wgJlYv4QZEWhmQT/0z241jHx6dAwC/uIU6N/kH2OA/aGSPP6T8xcUCg8m7rAm4U1FFn5
 rvCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iplbSwiVf6b64+flx7Li4BU1W4Eid44TyGxCKnCRca4=;
 b=HW6AVxaWk6AymMieE4NfPNWqFpR/90L/Re2x+F1Ct2kpnxYfeyV1n+m2UaE1WcFSZG
 gyYiCH4ajLwjVQgljcRy1aUF2g3mqIUKZ4j0ErJvQr0hACrYPREu0chqlBDfKBFgTTxp
 ZWOBvsTkD3QjWLZxowaeIBhqL2JAdIBsVc3R9UyY+mO4JWohIxyUugV1BBgvK/54QgpD
 s4PEJvcGKZ/LmC9a8JO4dupR1+b+m+/rLyad/pV53/dkFoXpDQMUWwEp9wnwabP6eZec
 slfQryC6WACN2tWrVViAt636r8Mytini9Sa81EsATi28NuVPQRcqM0DNmEUiMHM0Qr9T
 05yw==
X-Gm-Message-State: AOAM531zaPhjQ1m75wH/kJf9JnEwOILRok/fkbOZu6gfeT79yR2JMq8/
 HIXA+wEbyoU5muWz6uZT5y8=
X-Google-Smtp-Source: ABdhPJzmZ5/2Yy7zLaDSt7vWQIxgFmATyGaI1BP/pB8RJvno6F+3Daj8qabccEhxciiJ2QmlfJai2g==
X-Received: by 2002:a17:907:2d10:: with SMTP id
 gs16mr3800028ejc.489.1640208643891; 
 Wed, 22 Dec 2021 13:30:43 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ne2sm1087776ejc.108.2021.12.22.13.30.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:30:43 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 p.zabel@pengutronix.de, lee.jones@linaro.org, yifeng.zhao@rock-chips.com,
 kever.yang@rock-chips.com, cl@rock-chips.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [RFC PATCH v6 4/4] arm64: dts: rockchip: add naneng multi phy nodes
 for rk3568
Date: Wed, 22 Dec 2021 22:30:32 +0100
Message-Id: <20211222213032.7678-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211222213032.7678-1-jbx6244@gmail.com>
References: <20211222213032.7678-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_133049_693187_E0CAD83A 
X-CRM114-Status: GOOD (  10.11  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Yifeng Zhao <yifeng.zhao@rock-chips.com>

Add the core DT nodes for the rk3568 Naneng multi phys.

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566.dtsi |  4 ++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 23 +++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 50 ++++++++++++++++++++++++
 3 files changed, 77 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
index 3839eef5e..af442e83b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
@@ -6,6 +6,10 @@
 	compatible = "rockchip,rk3566";
 };
 
+&multiphy {
+	compatible = "rockchip,rk3566-naneng-multiphy";
+};
+
 &power {
 	power-domain@RK3568_PD_PIPE {
 		reg = <RK3568_PD_PIPE>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 2fd313a29..22bc0e85b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -8,6 +8,11 @@
 / {
 	compatible = "rockchip,rk3568";
 
+	pipe_phy_grf0: syscon@fdc70000 {
+		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
+		reg = <0x0 0xfdc70000 0x0 0x1000>;
+	};
+
 	qos_pcie3x1: qos@fe190080 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe190080 0x0 0x20>;
@@ -80,6 +85,24 @@
 	};
 };
 
+&multiphy {
+	compatible = "rockchip,rk3568-naneng-multiphy";
+
+	multiphy0: multi-phy@fe820000 {
+		reg = <0x0 0xfe820000 0x0 0x100>;
+		clocks = <&pmucru CLK_PCIEPHY0_REF>,
+			 <&cru PCLK_PIPEPHY0>,
+			 <&cru PCLK_PIPE>;
+		clock-names = "ref", "apb", "pipe";
+		assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
+		assigned-clock-rates = <100000000>;
+		resets = <&cru SRST_PIPEPHY0>;
+		rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
+		#phy-cells = <1>;
+		status = "disabled";
+	};
+};
+
 &power {
 	power-domain@RK3568_PD_PIPE {
 		reg = <RK3568_PD_PIPE>;
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 46d9552f6..32e5c8026 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -214,11 +214,26 @@
 		};
 	};
 
+	pipegrf: syscon@fdc50000 {
+		compatible = "rockchip,rk3568-pipe-grf", "syscon";
+		reg = <0x0 0xfdc50000 0x0 0x1000>;
+	};
+
 	grf: syscon@fdc60000 {
 		compatible = "rockchip,rk3568-grf", "syscon", "simple-mfd";
 		reg = <0x0 0xfdc60000 0x0 0x10000>;
 	};
 
+	pipe_phy_grf1: syscon@fdc80000 {
+		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
+		reg = <0x0 0xfdc80000 0x0 0x1000>;
+	};
+
+	pipe_phy_grf2: syscon@fdc90000 {
+		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
+		reg = <0x0 0xfdc90000 0x0 0x1000>;
+	};
+
 	pmucru: clock-controller@fdd00000 {
 		compatible = "rockchip,rk3568-pmucru";
 		reg = <0x0 0xfdd00000 0x0 0x1000>;
@@ -1077,6 +1092,41 @@
 		status = "disabled";
 	};
 
+	multiphy: multiphy {
+		rockchip,pipe-grf = <&pipegrf>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		status = "disabled";
+
+		multiphy1: multi-phy@fe830000 {
+			reg = <0x0 0xfe830000 0x0 0x100>;
+			clocks = <&pmucru CLK_PCIEPHY1_REF>,
+				 <&cru PCLK_PIPEPHY1>,
+				 <&cru PCLK_PIPE>;
+			clock-names = "ref", "apb", "pipe";
+			assigned-clocks = <&pmucru CLK_PCIEPHY1_REF>;
+			assigned-clock-rates = <100000000>;
+			resets = <&cru SRST_PIPEPHY1>;
+			rockchip,pipe-phy-grf = <&pipe_phy_grf1>;
+			#phy-cells = <1>;
+			status = "disabled";
+		};
+
+		multiphy2: multi-phy@fe840000 {
+			reg = <0x0 0xfe840000 0x0 0x100>;
+			clocks = <&pmucru CLK_PCIEPHY2_REF>,
+				 <&cru PCLK_PIPEPHY2>,
+				 <&cru PCLK_PIPE>;
+			clock-names = "ref", "apb", "pipe";
+			assigned-clocks = <&pmucru CLK_PCIEPHY2_REF>;
+			assigned-clock-rates = <100000000>;
+			resets = <&cru SRST_PIPEPHY2>;
+			rockchip,pipe-phy-grf = <&pipe_phy_grf2>;
+			#phy-cells = <1>;
+			status = "disabled";
+		};
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3568-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
