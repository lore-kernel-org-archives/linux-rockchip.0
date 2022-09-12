Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 697E8C6FA83
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Sep 2022 20:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ab1WUyFeLGfn+vBPVdDwm7xGAxwXLI89wfU7MmEd388=; b=TxOFvT7JqCH6Az
	2aaRi4daHEZwDYjrFQvy/i7cjW9a/CmcE7mWxjwlrDeIxMWc08VT40JD4Z/pcrznGhdWoVkeEbnNK
	ODcV+6S2lC3GgbI7n/O0D6QLItxUnZ4Y/tQ6jVaGIc9fs5lTw7hvBhfU7OBZQDoJ2r0pk4g2/XPIe
	/BUoO06gCD2a9KEQtiGGoH4cTgYTrLXOg5RqIV5lGnLNuxUkKiv8c6B+f0FkSM9IC3OglFCE2YyP0
	LZ2xm2bzcyM9KXOYUDzQcfk4cW3MipzHAZkyAPgoen7/9QjW4kjAyLoSWDps5pJQIunr4ZbnQfwYO
	ILUmptfnPQcZJXrJMO5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXqTj-00DrKk-DQ; Mon, 12 Sep 2022 20:56:27 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXqTX-00Dr8H-Lv; Mon, 12 Sep 2022 20:56:17 +0000
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-11eab59db71so26660429fac.11;
        Mon, 12 Sep 2022 13:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=sWRT5BEhVQS6Pr9dXQ62RZ1oRnXZDfj0TarvCCPaFKc=;
        b=IXwK7g0RnVyQhlqnrVCo3m6vgNEBem2lSifynEySgrBlUcupZce/MMKUfjBFf8WeNI
         5q0ByRDnTpRx7SOUf3fXg6iWSRvUbuVgPvq/rHygjK77cESTDhJjgRe0IfXbKHzJQK0K
         J1Wgb626AgpzCZyK/suhnpBT7XFblFU0ydCq4wdtFyQ+cv/YtJBDygofseSrTlcgzb/a
         QrmHAD4yLpp/WZjebHqq8e2O1hz+XJMmyo2c0WK4WH6uy3cqa6y+GPB1mRhZfpRc2q7m
         0r1jN2AgC8aX5/TxZTB37Okh8iS/lYVK4zxzir3gTYcw6tQg4C+xJCd7lMO5QKTAYcr3
         oWpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=sWRT5BEhVQS6Pr9dXQ62RZ1oRnXZDfj0TarvCCPaFKc=;
        b=Ng1Tzl7HFOQLprISJV6+7GBOiFx0mYwJif3oDvtuCv8E5fGqg7fTp7jUFqCSdp38s5
         kgCxhVWgPtxXJELEYny6xmnfnwh6EfelGbz5N6yAecbEkghTCJR44oT++NzjLNSgw51/
         pebObxPlpLrN1lE4gcPvL2YyJM1RIMTdwhHL7VugfawfyWY14hzPAdEU8I5DlSvotKVf
         hREoHUzii9IcqytsIs7ZSuQSjtOaCTE5kdJdH1r6Cyh5/GudF79hckxwWOWuyK7T9E9q
         7+Wn3nMD/638Z+8wAiWwC595TXX4ryhN9199kEtZO+Jbj7RJDmCoINbXMts+7rlKZ+WM
         3i1g==
X-Gm-Message-State: ACgBeo3BIYYVzLNwBjh/sYWEIbcRQYavnDAafiVu0NxZgpmqS8JrJ3At
	B1sZNYBzfEEYZ6wBLHuo5xk5G3yGdN0=
X-Google-Smtp-Source: AA6agR6QglATaiogmr06xloOOHJBBsUEPoFtCl03thx450g9eObXowaZLJY6v1t9Xa0CHOWWcykmPg==
X-Received: by 2002:a05:6808:f8f:b0:344:c3d4:775e with SMTP id o15-20020a0568080f8f00b00344c3d4775emr97086oiw.266.1663016174713;
        Mon, 12 Sep 2022 13:56:14 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id i21-20020a9d68d5000000b00639749ef262sm3385355oto.9.2022.09.12.13.56.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 13:56:14 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	cl@rock-chips.com,
	s.hauer@pengutronix.de,
	frattaroli.nicolas@gmail.com,
	michael.riesch@wolfvision.net,
	pgwipeout@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 3/3] arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x
Date: Mon, 12 Sep 2022 15:56:07 -0500
Message-Id: <20220912205607.5969-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220912205607.5969-1-macroalpha82@gmail.com>
References: <20220912205607.5969-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_135615_780211_AED8AE5B 
X-CRM114-Status: UNSURE (   9.09  )
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

From: Chris Morgan <macromorgan@hotmail.com>

This adds the DSI controller nodes and DSI-DPHY controller nodes to the
rk356x device tree.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 72 ++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 319981c3e9f7..d150568fde82 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -699,6 +699,54 @@ vop_mmu: iommu@fe043e00 {
 		status = "disabled";
 	};
 
+	dsi0: dsi@fe060000 {
+		compatible = "rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi";
+		reg = <0x00 0xfe060000 0x00 0x10000>;
+		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "pclk", "hclk";
+		clocks = <&cru PCLK_DSITX_0>, <&cru HCLK_VO>;
+		phy-names = "dphy";
+		phys = <&mipi_dphy0>;
+		power-domains = <&power RK3568_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_P_DSITX_0>;
+		rockchip,grf = <&grf>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+			};
+		};
+	};
+
+	dsi1: dsi@fe070000 {
+		compatible = "rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi";
+		reg = <0x0 0xfe070000 0x0 0x10000>;
+		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "pclk", "hclk";
+		clocks = <&cru PCLK_DSITX_1>, <&cru HCLK_VO>;
+		phy-names = "dphy";
+		phys = <&mipi_dphy1>;
+		power-domains = <&power RK3568_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_P_DSITX_1>;
+		rockchip,grf = <&grf>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+			};
+		};
+	};
+
 	hdmi: hdmi@fe0a0000 {
 		compatible = "rockchip,rk3568-dw-hdmi";
 		reg = <0x0 0xfe0a0000 0x0 0x20000>;
@@ -1594,6 +1642,30 @@ combphy2: phy@fe840000 {
 		status = "disabled";
 	};
 
+	mipi_dphy0: mipi-dphy@fe850000 {
+		compatible = "rockchip,rk3568-dsi-dphy";
+		reg = <0x0 0xfe850000 0x0 0x10000>;
+		clock-names = "ref", "pclk";
+		clocks = <&pmucru CLK_MIPIDSIPHY0_REF>, <&cru PCLK_MIPIDSIPHY0>;
+		#phy-cells = <0>;
+		power-domains = <&power RK3568_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_P_MIPIDSIPHY0>;
+		status = "disabled";
+	};
+
+	mipi_dphy1: mipi-dphy@fe860000 {
+		compatible = "rockchip,rk3568-dsi-dphy";
+		reg = <0x0 0xfe860000 0x0 0x10000>;
+		clock-names = "ref", "pclk";
+		clocks = <&pmucru CLK_MIPIDSIPHY1_REF>, <&cru PCLK_MIPIDSIPHY1>;
+		#phy-cells = <0>;
+		power-domains = <&power RK3568_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_P_MIPIDSIPHY1>;
+		status = "disabled";
+	};
+
 	usb2phy0: usb2phy@fe8a0000 {
 		compatible = "rockchip,rk3568-usb2phy";
 		reg = <0x0 0xfe8a0000 0x0 0x10000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
