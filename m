Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E160C61DB2
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 19:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9mxHwRgvFlvRK8GC1qApDBCOHycA+yuqY+vDJyvbvk=; b=dYlCtOc8XDSdeD
	P6b9AGgStS7ET0q8TPR6Vc9KMepeYppIc2MaZ30YC/pzLuKvXrt5gtnd/UjnFIdWj2okIewVuij1J
	MdkJjCiwqM1XIuYwhKSGOc6HEPr52kKGboECjpgkL1BihC93ymKzQjQZoD1ZJxydx7RmmmTPweysK
	5jEfJ9lWi4zop/Cuo6uARJ3XBrDuGWQbCBFYHMtd1VDgnhp00y6I9FPiGz3Mu2Gyem+T3ugx3NEwt
	mVc+NKymZlp6V1yNj8w2qHLSyb369HuGIN53tX+thHJpHzE2t/XJlLlZGJasby5iVYYWFjN+Q9u1e
	VgQdbmZGvEYmnMIuYvvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP4yw-00000007xoL-3Ym9;
	Tue, 10 Jun 2025 19:50:02 +0000
Received: from smtp-42ac.mail.infomaniak.ch ([2001:1600:4:17::42ac])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP1kA-00000007S5E-2i5c
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Jun 2025 16:22:37 +0000
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4bGvG03JXvznlH;
	Tue, 10 Jun 2025 18:22:32 +0200 (CEST)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4bGvFz4fyJzyLt;
	Tue, 10 Jun 2025 18:22:31 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 10 Jun 2025 18:22:18 +0200
Subject: [PATCH v2 3/3] arm64: dts: rockchip: support camera module on
 Haikou Video Demo on PX30 Ringneck
MIME-Version: 1.0
Message-Id: <20250610-ringneck-haikou-video-demo-cam-v2-3-de1bf87e0732@cherry.de>
References: <20250610-ringneck-haikou-video-demo-cam-v2-0-de1bf87e0732@cherry.de>
In-Reply-To: <20250610-ringneck-haikou-video-demo-cam-v2-0-de1bf87e0732@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_092234_830706_70D44485 
X-CRM114-Status: GOOD (  10.22  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

The Haikou Video Demo adapter has a proprietary connector for a camera
module which has an OV5675 camera sensor and a companion DW9714 focus
lens driver.

This adds support for the camera module on PX30 Ringneck module fitted
on a Haikou devkit with the Haikou Video Demo adapter.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 .../rockchip/px30-ringneck-haikou-video-demo.dtso  | 53 ++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso
index 7d9ea5aa598486680191d52e4c87af59f7b0e579..ea5ce919984f0704d88dc1f5eb02a42d5633656e 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou-video-demo.dtso
@@ -94,6 +94,15 @@ video-adapter-led {
 	};
 };
 
+&cif_clkout_m0 {
+	rockchip,pins =
+		<2 RK_PB3 1 &pcfg_pull_none_12ma>;
+};
+
+&csi_dphy {
+	status = "okay";
+};
+
 &display_subsystem {
 	status = "okay";
 };
@@ -135,6 +144,12 @@ &i2c1 {
 	/* OV5675, GT911, DW9714 are limited to 400KHz */
 	clock-frequency = <400000>;
 
+	focus: focus@c {
+		compatible = "dongwoon,dw9714";
+		reg = <0xc>;
+		vcc-supply = <&cam_afvdd_2v8>;
+	};
+
 	touchscreen@14 {
 		compatible = "goodix,gt911";
 		reg = <0x14>;
@@ -157,6 +172,44 @@ pca9670: gpio@27 {
 		pinctrl-names = "default";
 		reset-gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
 	};
+
+	camera@36 {
+		compatible = "ovti,ov5675";
+		reg = <0x36>;
+		clocks = <&cru SCLK_CIF_OUT>;
+		assigned-clocks = <&cru SCLK_CIF_OUT>;
+		/* Only parent to get exactly 19.2MHz */
+		assigned-clock-parents = <&cru USB480M>;
+		assigned-clock-rates = <19200000>;
+		avdd-supply = <&cam_avdd_2v8>;
+		dvdd-supply = <&cam_dvdd_1v2>;
+		dovdd-supply = <&cam_dovdd_1v8>;
+		lens-focus = <&focus>;
+		orientation = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cif_clkout_m0>;
+		reset-gpios = <&pca9670 6 GPIO_ACTIVE_LOW>;
+		rotation = <180>;
+
+		port {
+			cam_out: endpoint {
+				data-lanes = <1 2>;
+				link-frequencies = /bits/ 64 <450000000>;
+				remote-endpoint = <&mipi_in_cam>;
+			};
+		};
+	};
+};
+
+&isp {
+	status = "okay";
+};
+
+&isp_in {
+	mipi_in_cam: endpoint {
+		data-lanes = <1 2>;
+		remote-endpoint = <&cam_out>;
+	};
 };
 
 &pinctrl {

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
