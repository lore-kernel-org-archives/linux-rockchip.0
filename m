Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06C66CD610E
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 17:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=03P45NAiMS8HWJCsA8cbEsR+vDmyNKLNqKd/Qga30h0=; b=eAAhI4zPmSXvwD
	k4rnaVUTAEW6oLrrf0mARoT1plXVanBitrgvtaWyKiG9+IfHxonNSNEj0elgNoiOIdYytAPn+umj2
	FhYUcH0FdkM5SzQ0Pp2usdmVHjkfi5UkCJeWiOB83Pxgp3tjmVijISTPGuySUbKyRHvEv/htJdsj+
	ZB/D1Y8ad8y9+zwDpYUEHAuKMvxGnBAwSu25ZuK14wQS1Wb/JjKfwThCZt67tv2L+v3spwXQoTTQF
	luZkCKrHgw7d48x5aw1C2N+i7mjwJZ8FHwsNEULu1VMeQNkfb8dCZIg7w3TRwQGvCidnS9pFb0HZ+
	LewEsXzC75HJSGi31EZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qptww-00BHEz-2O;
	Mon, 09 Oct 2023 17:21:46 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qptwo-00BH7h-1v;
	Mon, 09 Oct 2023 17:21:42 +0000
Received: from jupiter.universe (dyndsl-091-248-211-168.ewe-ip-backbone.de [91.248.211.168])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6EAFC660716C;
	Mon,  9 Oct 2023 18:21:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696872093;
	bh=UsIbMdBkB63KIT1K+XLIc1aWT6m/RDcXwqMsI3caB1g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=j19yWOUR3vQL4YSn4IiVdvJP32EuORB71gqW3LowVX0sDvX+DuCgqPpwK+06T1vcC
	 060hbsjqpNrgDWc+QPK0NSspPMdhoDEu5Wzjppl0VRgUnc2EZ0IEjZ4hARHapxvBvC
	 yaGwJvhi1kp510oqrMRhxaPkMDBtS5hhH2A960kI9Qe5bT2jhLu0DPRvgfjtqeP8ZI
	 loAOEupY3BLCQjJybVqWgLSU1SC8sLXZxoL3s3s+Aa3xs/4LZO7CwIks369ygu355O
	 pPSzQ32jVCPBj9IO61/k8FrRggjzRQZqkVyo+tZPD6dmm1nw67Majxl1WrIpQUio9I
	 9gpLXVyhI722Q==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2067F480105; Mon,  9 Oct 2023 19:21:31 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v3 3/3] arm64: dts: rockchip: rk3588s: Add USB3 host controller
Date: Mon,  9 Oct 2023 19:20:11 +0200
Message-ID: <20231009172129.43568-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009172129.43568-1-sebastian.reichel@collabora.com>
References: <20231009172129.43568-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_102138_769125_1ED47538 
X-CRM114-Status: GOOD (  11.39  )
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

RK3588 has three USB3 controllers. This adds the host-only controller,
which is using the naneng-combphy shared with PCIe and SATA.

The other two are dual-role and using a different PHY that is not yet
supported upstream.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5544f66c6ff4..8b4c99b49798 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -443,6 +443,27 @@ usb_host1_ohci: usb@fc8c0000 {
 		status = "disabled";
 	};
 
+	usb_host2_xhci: usb@fcd00000 {
+		compatible = "rockchip,rk3588-dwc3", "snps,dwc3";
+		reg = <0x0 0xfcd00000 0x0 0x400000>;
+		interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru REF_CLK_USB3OTG2>, <&cru SUSPEND_CLK_USB3OTG2>,
+			 <&cru ACLK_USB3OTG2>, <&cru CLK_UTMI_OTG2>,
+			 <&cru CLK_PIPEPHY2_PIPE_U3_G>;
+		clock-names = "ref_clk", "suspend_clk", "bus_clk", "utmi", "pipe";
+		dr_mode = "host";
+		phys = <&combphy2_psu PHY_TYPE_USB3>;
+		phy-names = "usb3-phy";
+		phy_type = "utmi_wide";
+		resets = <&cru SRST_A_USB3OTG2>;
+		snps,dis_enblslpm_quirk;
+		snps,dis-u2-freeclk-exists-quirk;
+		snps,dis-del-phy-power-chg-quirk;
+		snps,dis-tx-ipgap-linecheck-quirk;
+		snps,dis_rxdet_inp3_quirk;
+		status = "disabled";
+	};
+
 	sys_grf: syscon@fd58c000 {
 		compatible = "rockchip,rk3588-sys-grf", "syscon";
 		reg = <0x0 0xfd58c000 0x0 0x1000>;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
