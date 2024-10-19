Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74F83D3C902
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 10:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnlcffOG/zgz1k6rK4M8TQUKTQe1tV+1FKczV8PUJYE=; b=zhjSrtXB0Tgrge
	lxTldmlebbEDwfC6NiAj5k758PVCt4ZQpb5YfMO87OkYGAkMMbRSzLmqfpkzK8/O5mWIvsJXBlxE0
	WTU6lSOsQrnVfu+XaBPGlG699OQ6VtG3hik0PCZgeXxYedurDZdiNGPjVeGvb82BnPYXh3rp7qvJI
	k8OuXmAUc2CXj8OE4QsGvP20IEC0XH3rduhKcmzPWw8VdvrOdNgSiYHFVwPOzO9OvsMEDm5VjJA0m
	6BBy8IybvU5EZ+YB9Nng9kcI9SpIvjNeVor5IPYHuGmwNzBwcNWYXmMyNMkfHxhRz96G53KuKTuGx
	s2hy73wdOhWfVkyIK4rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t26Xk-000000032rl-1sVx;
	Sat, 19 Oct 2024 10:18:44 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t26Rx-0000000327p-31Ov;
	Sat, 19 Oct 2024 10:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729332764;
	bh=Rsn1cb69JK8bVAsgme/KNDkDYxyr1CTGotMpZS0cdGo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JIk7X4u+nz/jyHG+y0b/TAfGShrGzIz1iY/ef2SbY5WRirokQYdOJhl7xQy4lUepU
	 hZkS9ILP4cOul5Vv/g+ltvdcHgKDkYPUUraU7/z/k2oYQ1jODmlMzd6FWw2QibBcj3
	 GE+lhlDSQmRE3Y7BV48G+yNUDBvwIeZ0DPv9TYeUAlYBTFhSa7ZdIaLHJlCSYYahNt
	 5vEwVn7Y5FqK2va+9qqeHHg8OrirwuPtYlljqGgKsnxYyw27d/bR9NpeoSWJvFNiQF
	 965wZ1JLU4ubwgTliuIQznJsSTngYmx+w3vHxJ50BxpNd+mJSUFyjphzXwCIyyUM1N
	 WffRDHPWYffuw==
Received: from localhost (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CBC0117E14D5;
	Sat, 19 Oct 2024 12:12:43 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 19 Oct 2024 13:12:11 +0300
Subject: [PATCH v2 2/5] arm64: dts: rockchip: Enable HDMI0 on rock-5b
MIME-Version: 1.0
Message-Id: <20241019-rk3588-hdmi0-dt-v2-2-466cd80e8ff9@collabora.com>
References: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
In-Reply-To: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_031245_978377_715CE7AA 
X-CRM114-Status: UNSURE (   9.91  )
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

Add the necessary DT changes to enable HDMI0 on Radxa ROCK 5B.

Tested-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 47 +++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index d6fff5b86b87020f115ce64795aee90c002a2255..0c3baf74981b714eb2a1edbc3fbbb69cd688cfc2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -4,6 +4,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3588.dtsi"
 
 / {
@@ -37,6 +38,17 @@ analog-sound {
 		pinctrl-0 = <&hp_detect>;
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -192,6 +204,26 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdptxphy_hdmi0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
@@ -858,3 +890,18 @@ &usb_host1_xhci {
 &usb_host2_xhci {
 	status = "okay";
 };
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};

-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
