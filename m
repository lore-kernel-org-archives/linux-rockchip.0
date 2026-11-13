Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF90606A334
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 14:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bjW5385N;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=0leil.net header.i=@0leil.net header.a=rsa-sha256 header.s=20231125 header.b=RR6557OX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=9FGa6zLo80piMrwoGOqp6GG1aTTDfYjPtPjR/2ChYvY=; b=bjW5385N1sRDyLch+cMv9IgaOT
	iO5JgggLDpUvCnxRxhZYCf6urYow1/XmuESw6pt0r5he1PWtrgE9SzKo1LsoJ2A3ja8mI3V5nc1Ch
	LdosycyNlysoSML6N321jnD3Al1GDObt3jb90DixP15kXskx9kG79dWchfKGGNYZ0BX/xOlQkKtcj
	93M78Jj5RZXYBil3IMpduc2eeFUivHtvtXcODUvRbsih9pLSVdaA4KnqAFgPXBsUD9jpyG2mARI1F
	0oz78dusQ2ifa+WiStnEB733S2sOBuf4bUXMB11XeKgL7LsyvVzoGMdlYNDuFnHTKqjBp0wtbyph8
	YMAjLysg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRsgt-0000000DGeq-09We;
	Fri, 13 Nov 2026 14:55:47 +0000
Received: from smtp-190d.mail.infomaniak.ch ([2001:1600:19:d548::190d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRsgo-0000000DGco-43Hu
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 14:55:45 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4jR0gK0t2CzHPN;
	Fri, 13 Nov 2026 15:55:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0leil.net;
	s=20231125; t=1794581740;
	bh=9SHVJ3ztCnSJ27zC/+zhu0OPeKjyVFzIDEXKL3ZFpaM=;
	h=From:Date:Subject:To:Cc:From;
	b=RR6557OX7nqTqnRLnpCH/gRxUYBPmETC/asPEUMkD7oDnhbpzqMxEMp3CinARlePr
	 WSrNRWdDCc0dW23DOC1GPxutrNZVYBDwFGe+UETNdKfwXnjpdp/kL4ra+fjDrsZy5J
	 r+LJvnGE7EJiiPPh+L5365SCQfahJjAfVai3T06f8pNW0pZ4qPEZJ881dPiU8akezD
	 +wsFj8GCUYi3kS4O3t+xg8rN/qQQ8T9BT6bRbVgXGudSajukI1mRc/MRJzT2e8EE+Q
	 +sNSsrx5trlCoXL606uzwnFh4E8PfyqFeq30Q4i7FMUnKuFyAoepm9s3DVTCHfzZvO
	 H0xZ04yOeMxbg==
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4jR0gH4tFTzqcg;
	Fri, 13 Nov 2026 15:55:39 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 13 Nov 2026 15:55:28 +0100
Subject: [PATCH v2] arm64: dts: rockchip: support camera module on Haikou
 Video Demo on RK3399 Puma
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261113-rk3399-puma-haikou-video-demo-cam-v2-1-e71acf307f92@cherry.de>
X-B4-Tracking: v=1; b=H4sIAAAAAAAA/5WOQQ6CMBBFr9LM2jGUKlJW3sOwKO0oI4GSFhoJ4
 e4GPIHLn7z891aIFJgiVGKFQIkj+wEqkZ8E2NYML0J2UAnIs7yQMlMYOqW0xnHuDbaGOz9jYkc
 eHfUerenRlUVDhdJGS4KTgDHQkz+H41H/dpybN9lpP96JluPkw3JEJLlz//iSRInaXLTTt1Lp5
 nq3LYWwnB1BvW3bF0/XkrbkAAAA
X-Change-ID: 20261103-rk3399-puma-haikou-video-demo-cam-d86be639a91e
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.17-dev
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_065543_301080_C9D36E94 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-21.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Quentin Schulz <quentin.schulz@cherry.de>

The Haikou Video Demo adapter has a proprietary connector for a camera
module which has an OV5675 camera sensor and a companion DW9714 focus
lens driver.

This adds support for the camera module on RK3399 Puma module fitted on
a Haikou devkit with the Haikou Video Demo adapter.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Camera only works once the ov5675 driver is adapted[1] to work with
24MHz MCLK. With the similar work done for RK3588 Tiger[2], we now have
all our modules supporting the same set of features when used in
conjunction with Haikou Video Demo.

Same request as made in [2], please only merge this once the OV5675
series[1] is merged.

[1] https://lore.kernel.org/linux-media/20261026101646.2450051-1-heiko@sntech.de/
[2] https://lore.kernel.org/linux-rockchip/20261026102027.2451025-1-heiko@sntech.de/
---
Changes in v2:
- added missing #address-cells and #size-cells to &isp1/ports,
- Link to v1: https://patch.msgid.link/20261103-rk3399-puma-haikou-video-demo-cam-v1-1-9a49d97839b5@cherry.de
---
 .../rockchip/rk3399-puma-haikou-video-demo.dtso    | 58 ++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou-video-demo.dtso b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou-video-demo.dtso
index 141a921a06e47..013920d9a3392 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou-video-demo.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou-video-demo.dtso
@@ -16,6 +16,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/media/video-interface-devices.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 
 &{/} {
@@ -100,6 +101,12 @@ &i2c1 {
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
@@ -122,6 +129,53 @@ pca9670: gpio@27 {
 		pinctrl-names = "default";
 		reset-gpios = <&gpio4 RK_PD6 GPIO_ACTIVE_LOW>;
 	};
+
+	camera@36 {
+		compatible = "ovti,ov5675";
+		reg = <0x36>;
+		assigned-clocks = <&cru SCLK_CIF_OUT>;
+		assigned-clock-rates = <24000000>;
+		clocks = <&cru SCLK_CIF_OUT>;
+		avdd-supply = <&cam_avdd_2v8>;
+		dvdd-supply = <&cam_dvdd_1v2>;
+		dovdd-supply = <&cam_dovdd_1v8>;
+		lens-focus = <&focus>;
+		orientation = <MEDIA_ORIENTATION_FRONT>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cif_clkouta>;
+		reset-gpios = <&pca9670 6 GPIO_ACTIVE_LOW>;
+		rotation = <180>;
+
+		port {
+			cam_output: endpoint {
+				data-lanes = <1 2>;
+				link-frequencies = /bits/ 64 <450000000>;
+				remote-endpoint = <&mipi_in_cam>;
+			};
+		};
+	};
+};
+
+&isp1 {
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			mipi_in_cam: endpoint@0 {
+				reg = <0>;
+				data-lanes = <1 2>;
+				link-frequencies = /bits/ 64 <450000000>;
+				remote-endpoint = <&cam_output>;
+			};
+		};
+	};
+};
+
+&isp1_mmu {
+	status = "okay";
 };
 
 &mipi_dsi {
@@ -145,6 +199,10 @@ mipi_in_panel: endpoint {
 	};
 };
 
+&mipi_dsi1 {
+	status = "okay";
+};
+
 &mipi_out {
 	mipi_out_panel: endpoint {
 		remote-endpoint = <&mipi_in_panel>;

---
base-commit: 05441d697f7f9a927264f4058cbbc6a03dfcac9d
base-tree: git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
change-id: 20261103-rk3399-puma-haikou-video-demo-cam-d86be639a91e

Best regards,
--  
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
