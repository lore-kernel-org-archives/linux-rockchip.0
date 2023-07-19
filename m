Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 846F8C001B0
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 17:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wbtnfhX9uj/jOFGHJbRrxbG59ym+k4UE/wSqTJMJqU=; b=MKkzxjOJgfTDM8
	yquEH6dDJFl/RWZie8LLa4+Tbr3TeLqdpydYFWfPQxBxLI6znw7Q/k2bCZUozvxP9UAYwARnBTXH4
	FFc4DCuYxEahps1DlDyF4oDEio54RVKzUswrXPixHlbv6Dm8T4+kHLQnRhi+No+fFdpLj6GGLvWzM
	uEskW2GK9IwjmtZ3ZhJ90kd+PJekZ44fT0ERmxTMP89npbYscH0Aj0ozWlwgyRh7g5iCkZZhyU/Ds
	nXSfcJ1AHpQIejg9k4ehC97YiOB+H9cV9DjoJwY1MC88Nw3yNTj1U4JHvgw5MxVwi5JcWs3MzNC3k
	3YLjsbGH7460+stLdDRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMBA8-008NXp-06;
	Wed, 19 Jul 2023 17:40:32 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMBA2-008NTU-2r;
	Wed, 19 Jul 2023 17:40:28 +0000
Received: from jupiter.universe (dyndsl-091-248-208-009.ewe-ip-backbone.de [91.248.208.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 43F04660704A;
	Wed, 19 Jul 2023 18:40:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689788419;
	bh=8jqadUrLP+GDojjmPoLDIihhsoBB6VsVeLoCMFXOZXs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SgSUnYOSN8oYJy4ma5e1Y5O2G6mWv/uDrAjnCLeD0aUJ2wdovwZGOS1rPQm3xmeu1
	 +AORNA0+ywiUSTqtaoG5N1IizNlnMnbzMOH3H+qxikyYW6BIopmyu7JllkgPTiL4RY
	 SCfs8Oj/Ud/YSfmDZFARbOT0keb+yQc0NcQ7c4lqB1H3MylBkvxoYKsWBnut1msXkF
	 BpIqMzuoN1q7yv2WG9uSi7ea3c5iTJApmpbz143/34AMXCNkVe4MOGQbW1ECtGZRZl
	 xmI6U0htlAIRRNBc65dtTmo3rVHIyE6dlgcNz7Srle8D8ifiQlmux/CS7V/kn+y5Xa
	 MyxVsgijPTOQQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 22496480DA9; Wed, 19 Jul 2023 19:40:17 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 2/2] arm64: dts: rockchip: rk3588s: Add USB3 host controller
Date: Wed, 19 Jul 2023 19:40:15 +0200
Message-Id: <20230719174015.68153-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230719174015.68153-1-sebastian.reichel@collabora.com>
References: <20230719174015.68153-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_104027_089772_83529D3F 
X-CRM114-Status: GOOD (  11.65  )
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

RK3588 has three USB3 controllers. One of them is host-only and uses
the naneng-combphy. The other two are dual-role and using a different
PHY that is not yet supported upstream.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 29 +++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index b9b509257aaa..416581dd3bb5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -443,6 +443,35 @@ usb_host1_ohci: usb@fc8c0000 {
 		status = "disabled";
 	};
 
+	usbhost3_0: usb@fcd00000 {
+		compatible = "rockchip,rk3588-dwc3-host", "rockchip,rk3399-dwc3";
+		clocks = <&cru REF_CLK_USB3OTG2>, <&cru SUSPEND_CLK_USB3OTG2>,
+			 <&cru ACLK_USB3OTG2>, <&cru CLK_UTMI_OTG2>,
+			 <&cru PCLK_PHP_ROOT>, <&cru CLK_PIPEPHY2_PIPE_U3_G>;
+		clock-names = "ref", "suspend", "bus", "utmi", "php", "pipe";
+		ranges;
+		resets = <&cru SRST_A_USB3OTG2>;
+		reset-names = "usb3-host";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		status = "disabled";
+
+		usbhost_dwc3_0: usb@fcd00000 {
+			compatible = "snps,dwc3";
+			reg = <0x0 0xfcd00000 0x0 0x400000>;
+			interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH 0>;
+			dr_mode = "host";
+			phys = <&combphy2_psu PHY_TYPE_USB3>;
+			phy-names = "usb3-phy";
+			phy_type = "utmi_wide";
+			snps,dis_enblslpm_quirk;
+			snps,dis-u2-freeclk-exists-quirk;
+			snps,dis-del-phy-power-chg-quirk;
+			snps,dis-tx-ipgap-linecheck-quirk;
+			snps,dis_rxdet_inp3_quirk;
+		};
+	};
+
 	sys_grf: syscon@fd58c000 {
 		compatible = "rockchip,rk3588-sys-grf", "syscon";
 		reg = <0x0 0xfd58c000 0x0 0x1000>;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
