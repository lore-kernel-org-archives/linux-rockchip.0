Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 590FBF3382A
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 09:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXQKzHlq+eCm+50BGPkn+vSo+a6m1dDVDbW0GaSP2Ac=; b=k0iN9NJC7icB7M
	VdGSdlONnQofLIQF237Ft1V/hVwR53WHUwtIKFD7RL6H3nEfZp1wy1yEhNjr3jkJvzSfYq8gb3yve
	5X5wjD7361qnoeHEw8/k4XKe2oZP7ow0HUR7RlbIDvhzIvHO/YyED3m+VPSxl2ru3HEDF4074pYql
	l46eR98ZqDwZ0zIg4WpqMISflJXx2mQP7GARtJFUmKgsX0rOTtCbGf7YcbYsrgUKbhTV5dnG2RcAB
	Rske1GeRRPIYTsxlupjh5y+l4whcOOR1meQggwn4H4qnMph4ScWA8BQPAN8kvFVUvQlj4eMGtqFKL
	Zom3xSUMQGEz6TkkNwBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2QnD-00000005tC8-2EfM;
	Tue, 17 Mar 2026 09:32:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Qmv-00000005sn8-2kFJ;
	Tue, 17 Mar 2026 09:32:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Reply-To:Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Content-ID:Content-Description;
	bh=h+S3SzQBfxK/AZd6N/8t5SBxhEzmjmD/sESrzL2hGQI=; b=CdOxOD7gYIspmTVw56BRaDvvPS
	mfXy+xn/SpCEuid0CzMUb/k37hWDllhzi1DCynvIuK5OYhbQEFSwnjmOOLgzOFaqlNgDNO1vO+GnY
	eekbfWkVVBU2fOUvUq/rQCXBigYk5yECor8J+N53LreJ5geZ3kk6uU0U1ZpADh0MCoFovyk3vVFjt
	b/goNLOYZQyeEAdHYCpO1BWgu5BrPS5C5QJgS2fG8S74NOgVk/RSxqPKAOQl0fkMXKG7SBHS0RwR9
	TUNusxfLbatpoNXdOh27aK6ulKb7HD/e+8sWvTTN32anOluKnH4dVDyTV0subz7LcUDCT2pkev/e4
	LEQe/17w==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Qmq-00000008Y0t-0Hek;
	Tue, 17 Mar 2026 09:32:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9974844193;
	Tue, 17 Mar 2026 09:32:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6419FC2BCB1;
	Tue, 17 Mar 2026 09:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773739944;
	bh=E+FPszRdejhinX/+jcYrzyDGa/sSKmQREurkfVw07l0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=BMaLkznEgdJAHgH6vdLDg85V8SPx1JqSYJFfVeoZzR4Dwl0NIbXCl4LGxQP3nbPbk
	 aHcRD/IsmLiJx84LGfW3N2/KyhGOWYsL2ZQBxEN8cOBR7CRRemCNGKYQeYqSuVrLd3
	 ngdHfTvXjAc61w6soaTzuTC5eMV5dUsZR/9pEfmqr833w//G9drA8tcX7zT0MpJjK5
	 7XYtGKbWPcWI0kDjeeAB5U/dUZYyd144teL4/VTiykRI6hp+E+bI6AvbVW5PqPHQ2C
	 Bf6zkTY+mme3sXbz5GxpZ7gYVHSS74az9OonccLTizh4rdDZ58Zdv7BCcG6SUoAeG2
	 SdTpS/RpkLMEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 575DBF3382A;
	Tue, 17 Mar 2026 09:32:24 +0000 (UTC)
From: Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>
Date: Tue, 17 Mar 2026 10:32:26 +0100
Subject: [PATCH v2 8/9] arm64: dts: rockchip: add radxa camera 4k on rock
 5b+ cam1
MIME-Version: 1.0
Message-Id: <20250430-rk3588-vicap-v2-8-77de5ee9048e@collabora.com>
References: <20250430-rk3588-vicap-v2-0-77de5ee9048e@collabora.com>
In-Reply-To: <20250430-rk3588-vicap-v2-0-77de5ee9048e@collabora.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 =?utf-8?q?=D0=9A=D1=83=D0=B7=D0=BD=D0=B5=D1=86=D0=BE=D0=B2_=D0=9C=D0=B8=D1=85=D0=B0=D0=B8=D0=BB?= <mai.kuznetsov.misha@gmail.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Collabora Kernel Team <kernel@collabora.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Michael Riesch <michael.riesch@collabora.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773739942; l=3967;
 i=michael.riesch@collabora.com; s=20250410; h=from:subject:message-id;
 bh=/xz9Ovdx8s36O++AwAB8xnz6JsWAcvoIzDlRdwqiUzw=;
 b=k70GfUEwfQXAxmBZBbhrYlw6Q2J4Gj6ZtvJ5mdxNWq6jLN+ynr+onqXffiwsu20Im2vdI02ZY
 EMzIgP/gFONDXGHFrlGU2R4vzB1xdIKsgFlanm5/1BBhawxpuSGcF6H
X-Developer-Key: i=michael.riesch@collabora.com; a=ed25519;
 pk=+MWX1fffLFZtTPG/I6XdYm/+OSvpRE8D9evQaWbiN04=
X-Endpoint-Received: by B4 Relay for michael.riesch@collabora.com/20250410
 with auth_id=371
X-Original-From: Michael Riesch <michael.riesch@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_093228_679708_7D154C41 
X-CRM114-Status: GOOD (  14.34  )
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
Reply-To: michael.riesch@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Michael Riesch <michael.riesch@collabora.com>

Add device tree overlay for the Radxa Camera 4K (featuring the
Sony IMX415 image sensor) to applied on the Radxa ROCK 5B+
CAM1 port.

Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
---
 arch/arm64/boot/dts/rockchip/Makefile              |  4 +-
 .../rk3588-rock-5b-plus-radxa-cam4k-cam1.dtso      | 89 ++++++++++++++++++++++
 2 files changed, 92 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 77c587f43dda..191666821a80 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -200,6 +200,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-plus-radxa-cam4k-cam0.dtbo
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-plus-radxa-cam4k-cam1.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5t.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou-video-demo.dtbo
@@ -301,7 +302,8 @@ rk3588-rock-5b-pcie-srns-dtbs := rk3588-rock-5b.dtb \
 
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-plus-radxa-4k-cam.dtb
 rk3588-rock-5b-plus-radxa-4k-cam-dtbs := rk3588-rock-5b-plus.dtb \
-	rk3588-rock-5b-plus-radxa-cam4k-cam0.dtbo
+	rk3588-rock-5b-plus-radxa-cam4k-cam0.dtbo \
+	rk3588-rock-5b-plus-radxa-cam4k-cam1.dtbo
 
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou-haikou-video-demo.dtb
 rk3588-tiger-haikou-haikou-video-demo-dtbs := rk3588-tiger-haikou.dtb \
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus-radxa-cam4k-cam1.dtso b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus-radxa-cam4k-cam1.dtso
new file mode 100644
index 000000000000..8e586950d0c0
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus-radxa-cam4k-cam1.dtso
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device tree overlay for the Radxa Camera 4K attached to the CAM1 port of
+ * the Radxa ROCK 5B+.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/clock/rockchip,rk3588-cru.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+&{/} {
+	vcc_cam1: regulator-vcc-cam1 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio2 RK_PA6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cam1_power0_en>;
+		regulator-name = "vcc_cam1";
+		vin-supply = <&vcc_3v3_s3>;
+	};
+};
+
+&i2c4 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	cam1_imx415: camera-sensor@1a {
+		compatible = "sony,imx415";
+		reg = <0x1a>;
+		assigned-clocks = <&cru CLK_MIPI_CAMARAOUT_M4>;
+		assigned-clock-rates = <37125000>;
+		avdd-supply = <&vcc_cam1>;
+		clocks = <&cru CLK_MIPI_CAMARAOUT_M4>;
+		dvdd-supply = <&vcc_cam1>;
+		orientation = <2>; /* External */
+		ovdd-supply = <&vcc_cam1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cam1_rstn &mipim0_camera4_clk>;
+		reset-gpios = <&gpio2 RK_PB0 GPIO_ACTIVE_LOW>;
+
+		port {
+			cam1_imx415_output: endpoint {
+				data-lanes = <1 2 3 4>;
+				link-frequencies = /bits/ 64 <445500000>;
+				remote-endpoint = <&csi4_input>;
+			};
+		};
+	};
+};
+
+&pinctrl {
+	cam1 {
+		cam1_power0_en: cam1-power0-en-pinctrl {
+			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		cam1_rstn: cam1-rstn-pinctrl {
+			rockchip,pins = <2 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&csi4 {
+	status = "okay";
+};
+
+&csi4_in {
+	csi4_input: endpoint {
+		data-lanes = <1 2 3 4>;
+		link-frequencies = /bits/ 64 <445500000>;
+		remote-endpoint = <&cam1_imx415_output>;
+	};
+};
+
+&csi_dphy1 {
+	status = "okay";
+};
+
+&vicap {
+	status = "okay";
+};
+
+&vicap_mmu {
+	status = "okay";
+};

-- 
2.39.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
