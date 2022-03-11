Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4090C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Mar 2022 21:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGfaCsUX4gj5YXqc+HYV1YeqOwL6/mWRpSpJYsd9t3c=; b=UpGn6m8UhRpvUT
	g5uxxucNb4pLxqUZvalrS5NpP/U1Ug9vW1wae0uAQyGBkyuyh+rXjqEMa04Y9fc95vrT8z3oeNfpL
	lavEoTUuB/CWGy35ZwJud0slhFMwBedIoSlJXTSNPrShO4OPN7/8eiI+u+nMt9FFAbHyqIXRFJbnW
	9+2EnFehCP/Tqvli1e4nsi5Ln1j70U/SqcVIpgVhvHwipHdMWnLLTnRk2sy4+W6XHT77ou7dT+1gv
	BH5qaVFOta5t4UVOMSpTBFxBKfWe0wpyTghIJ1a1Ub/ue+TfXTiHb+CTiIxOTuizZbmm4W66w/eMb
	1lrpIDbsk2QjheXrKT1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSmS9-000HdX-Sj; Fri, 11 Mar 2022 21:05:37 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSmR2-000HCe-Rd; Fri, 11 Mar 2022 21:04:31 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout4.routing.net (Postfix) with ESMTP id DC59D10095D;
 Fri, 11 Mar 2022 21:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1647032666;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oeojDkbixb+3+AqcShTPnuHWz+1GrcPznWJUJt5Sy3k=;
 b=bzTczSWREjQ3mxzMkT9keqmraAkrZQjXA4WiTGUgMPD4ZBFvK5zojoN1UDx6r6AExcHCwN
 Zujff9r9blSITJPcBNswR61/U/rzPlBk4bRJjkd8Hx+1EALJMBIsDSSOh784u0Ao51HaE6
 6K80JUJzQ7LuSRHsHjaYGmOISQJCoHI=
Received: from localhost.localdomain (fttx-pool-217.61.144.196.bambit.de
 [217.61.144.196])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id BB1EC402CA;
 Fri, 11 Mar 2022 21:04:25 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Viresh Kumar <vireshk@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
 Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v6 6/6] arm64: dts: rockchip: Add sata nodes to rk356x
Date: Fri, 11 Mar 2022 22:03:57 +0100
Message-Id: <20220311210357.222830-7-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220311210357.222830-1-linux@fw-web.de>
References: <20220311210357.222830-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: ccc3f7ef-33a7-48f7-8154-2ff8acbe060a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_130429_080279_045B3131 
X-CRM114-Status: GOOD (  10.77  )
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

From: Frank Wunderlich <frank-w@public-files.de>

RK356x supports up to 3 sata controllers which were compatible with the
existing snps,dwc-ahci binding.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
changes in v4:
 - drop newline in dts
 - re-add clock-names
 -  add soc specific compatible
changes in v3:
  - fix combphy error by moving sata0 to rk3568.dtsi
  - remove clock-names and interrupt-names
changes in v2:
  - added sata0 + 1, but have only tested sata2
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 14 ++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 28 ++++++++++++++++++++++++
 2 files changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 5b0f528d6818..3e07d9f6a2d1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -8,6 +8,20 @@
 / {
 	compatible = "rockchip,rk3568";
 
+	sata0: sata@fc000000 {
+		compatible = "rockchip,rk3568-dwc-ahci", "snps,dwc-ahci";
+		reg = <0 0xfc000000 0 0x1000>;
+		clocks = <&cru ACLK_SATA0>, <&cru CLK_SATA0_PMALIVE>,
+			 <&cru CLK_SATA0_RXOOB>;
+		clock-names = "sata", "pmalive", "rxoob";
+		interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+		phys = <&combphy0 PHY_TYPE_SATA>;
+		phy-names = "sata-phy";
+		ports-implemented = <0x1>;
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+	};
+
 	pipe_phy_grf0: syscon@fdc70000 {
 		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
 		reg = <0x0 0xfdc70000 0x0 0x1000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 7cdef800cb3c..264dd030e703 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -230,6 +230,34 @@ scmi_shmem: sram@0 {
 		};
 	};
 
+	sata1: sata@fc400000 {
+		compatible = "rockchip,rk3568-dwc-ahci", "snps,dwc-ahci";
+		reg = <0 0xfc400000 0 0x1000>;
+		clocks = <&cru ACLK_SATA1>, <&cru CLK_SATA1_PMALIVE>,
+			 <&cru CLK_SATA1_RXOOB>;
+		clock-names = "sata", "pmalive", "rxoob";
+		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
+		phys = <&combphy1 PHY_TYPE_SATA>;
+		phy-names = "sata-phy";
+		ports-implemented = <0x1>;
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+	};
+
+	sata2: sata@fc800000 {
+		compatible = "rockchip,rk3568-dwc-ahci", "snps,dwc-ahci";
+		reg = <0 0xfc800000 0 0x1000>;
+		clocks = <&cru ACLK_SATA2>, <&cru CLK_SATA2_PMALIVE>,
+			 <&cru CLK_SATA2_RXOOB>;
+		clock-names = "sata", "pmalive", "rxoob";
+		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
+		phys = <&combphy2 PHY_TYPE_SATA>;
+		phy-names = "sata-phy";
+		ports-implemented = <0x1>;
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+	};
+
 	gic: interrupt-controller@fd400000 {
 		compatible = "arm,gic-v3";
 		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
