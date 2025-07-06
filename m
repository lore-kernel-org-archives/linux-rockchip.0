Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4369EC83F03
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Jul 2025 11:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nONoKP0ivmyBQ/t6/DteQ7SyK13dbT62g2X44BD/nfU=; b=RlMlSRYrRoTAgu
	QSqs8ZosGfjlfWVOQ60zxHEpOpMmOUdh11Kt9uV2Eqhem9nnIE00VJjoDfHJkUkFBMO195mNR0jtp
	ptsjgUkpq+sH1I29bJK5g4/LZp7oz05KoEKA28ot5cQ+6gsvm8kav80kbTvN2t4HoUCqMZUoPGIFP
	PB/TqtKxqrf1NQwZ87LVoaNmObJQe9SjyTIJx+tXsZNKcYAj2r3XEXVj/5y/76FBd0g8DT0TeBMt1
	9eEW4tSeeeDUkhHGPbg2GG1+Rr5fMwFhZJe9O6Afi2KoVgZDl1JYKFjHvQUT8XjlJ+VM/VYN4hNB3
	EtJ15g63o7aC4y6cwNwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYNkU-00000000C7D-3Xcm;
	Sun, 06 Jul 2025 11:41:34 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYNiA-00000000Bzi-05fw;
	Sun, 06 Jul 2025 11:39:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=Ci
	N8aT9Et5jhNJ0SP8OnU+4yqCjb+pcPmRVpPHf+LEg=; b=NO3dJ6nSfWxw/LePkm
	4FSukGXk5iZQtQKsIqKtbCb8H6tDHm23Wg7JAQ0fLSPRcFFeDRwPD8fuJPUu2F81
	5TbgU9RTPZtMTGbIF30g2MifhW4A2Kt/HfUlJCmyIvXtKFLg+rpOw+gkuuJP8l3N
	YpovnIq96OV0rM3oOWi82K234=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wB37yQ4YGpo5RCCCw--.60201S2;
	Sun, 06 Jul 2025 19:38:36 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: conor+dt@kernel.org,
	didi.debian@cknow.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: Enable mipi dsi on rk3568-evb1-v10
Date: Sun,  6 Jul 2025 19:38:24 +0800
Message-ID: <20250706113831.330799-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wB37yQ4YGpo5RCCCw--.60201S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxAr4rCr43tr1fKr48XF1kKrg_yoW5Xr17pr
	nrCw4Sgw4xurW2qw15tr1kJrn5Gan5AFWxGF17uFyIyrsFqa4vg34IqF98tFyUtF18Z3yY
	qrnxAFy29anFgaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j8txfUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEgmCXmhqWtxqyAAAsh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_043910_438529_93D33A15 
X-CRM114-Status: UNSURE (   8.19  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Enable the w552793baa 1080x1920 dsi panel on rk3568 evb1.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 66 ++++++++++++++++++-
 1 file changed, 64 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index b073a4d03e4fb..a28bb90b85bed 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -22,6 +22,15 @@ aliases {
 		mmc1 = &sdhci;
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm4 0 25000 0>;
+		brightness-levels = <20 220>;
+		num-interpolated-steps = <200>;
+		default-brightness-level = <100>;
+		power-supply = <&vcc3v3_sys>;
+	};
+
 	chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
@@ -184,6 +193,47 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
+&dsi0 {
+	status = "okay";
+	clock-master;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	panel@0 {
+		compatible = "wanchanglong,w552793baa", "raydium,rm67200";
+		reg = <0>;
+		backlight = <&backlight>;
+		vdd-supply = <&vcc3v3_lcd0_n>;
+		iovcc-supply = <&vcc3v3_lcd0_n>;
+		vsp-supply = <&vcc5v0_sys>;
+		vsn-supply = <&vcc5v0_sys>;
+		reset-gpios = <&gpio3 RK_PB5 GPIO_ACTIVE_LOW>;
+
+		port {
+			panel_in_dsi: endpoint {
+				remote-endpoint = <&dsi0_out_panel>;
+			};
+		};
+	};
+
+};
+
+&dsi0_in {
+	dsi0_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_dsi0>;
+	};
+};
+
+&dsi0_out {
+	dsi0_out_panel: endpoint {
+		remote-endpoint = <&panel_in_dsi>;
+	};
+};
+
+&dsi_dphy0 {
+	status = "okay";
+};
+
 &gmac0 {
 	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
 	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
@@ -581,6 +631,10 @@ &pmu_io_domains {
 	status = "okay";
 };
 
+&pwm4 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcca_1v8>;
 	status = "okay";
@@ -672,8 +726,9 @@ &usb2phy1_otg {
 };
 
 &vop {
-	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
-	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
+	assigned-clocks = <&cru DCLK_VOP0>, <&cru PLL_VPLL>, <&cru DCLK_VOP1>;
+	assigned-clock-parents = <&pmucru PLL_HPLL>, <&xin24m>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <0>, <132000000>, <132000000>;
 	status = "okay";
 };
 
@@ -687,3 +742,10 @@ vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi_in_vp0>;
 	};
 };
+
+&vp1 {
+	vp1_out_dsi0: endpoint@ROCKCHIP_VOP2_EP_MIPI0 {
+		reg = <ROCKCHIP_VOP2_EP_MIPI0>;
+		remote-endpoint = <&dsi0_in_vp1>;
+	};
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
