Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C50D6D3C906
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 10:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cAXRU9D13SkwkYlEK9qVMKCJN3yqndfA72UOQxA8fc=; b=4EeAwtBu5lP+g0
	Hh6jb6ZTqGW5cekrWT9Vhz6Jd0RfgP/Gh7WHVglvoddzKHqrqFnd0y0VOrigHsd53og9Pr73IyCXn
	0C7POSfkROZxeTgeZIYXOoV8ETVvCfGKDlTrd3hfM8/6KatywU+rWPmZoPIdmVmf/CuLuRqe9CzIv
	hmoPv1ThIAX0LwpZ1dCKxzbKxvLqgYBxCyKbCbyQcm8ScBm4/ItpSfFag/ycvNZGuacHhWGF2eCla
	y5bvNHTSG8wUEpAbPteF3QRajF3tIDepM4SzN4eKMKK75AIRMOc+ufC8Uhrd1E0FvpUCQvKkz+dq4
	OO2u5Qd919EvzDXfNFrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t26aa-00000003383-2PVH;
	Sat, 19 Oct 2024 10:21:40 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t26S0-0000000328u-1Ax4;
	Sat, 19 Oct 2024 10:12:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729332766;
	bh=bQ/pqBqAd3mTtFhL5mhMd/smH96L9EiLiAGK0FH/78Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=m3gfqr5aVc1ZmI9H+PXzf+sgN6wm+BiKPkTXnPDZ+Jj7t70ZRxa31xnEuI+CFUDI1
	 ZpqbdUgvZ/F0C0Ygwf1+QRKK6Vshw9m2j2di3eFjP4lJKeoU2w3YsBReEY4gCV6pyK
	 /OPRrTgqXHyx60ZuG/PSE+Yg1pZed56LP8zfYwEea8Mpc6RERxqh0TOukrcj9Zz+AC
	 oVpMHsM8gPuE1fp/x1yQ6hpzyncUUy/yWhimS5xwF5ZmQ/Ee6WDsOVXqGGerbGhV6/
	 kcoX0c8VyHfVusmOJpHBW3Yn5OPLkkVlXr2JLS/zlAuKie3Xm5gnrZ2/UrWVjNrEJQ
	 Od/QtfgjM15sA==
Received: from localhost (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6D7DA17E14FB;
	Sat, 19 Oct 2024 12:12:46 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 19 Oct 2024 13:12:14 +0300
Subject: [PATCH v2 5/5] arm64: dts: rockchip: Enable HDMI0 on rock-5a
MIME-Version: 1.0
Message-Id: <20241019-rk3588-hdmi0-dt-v2-5-466cd80e8ff9@collabora.com>
References: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
In-Reply-To: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_031248_557828_8E29FC50 
X-CRM114-Status: UNSURE (   9.87  )
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

Add the necessary DT changes to enable HDMI0 on Radxa ROCK 5A.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 52 ++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 87fce8d9a964cd53d179ce214ae1c0ff505a2dce..2b141af5e709b0bc2193dbfb2327e6bc1fdaa502 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -5,6 +5,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3588s.dtsi"
 
 / {
@@ -35,6 +36,17 @@ chosen {
 		stdout-path = "serial2:1500000n8";
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
@@ -296,6 +308,31 @@ &gmac1_rgmii_clk
 	status = "okay";
 };
 
+&hdmi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmim0_tx0_cec
+		     &hdmim1_tx0_hpd
+		     &hdmim0_tx0_scl
+		     &hdmim0_tx0_sda>;
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
 &mdio1 {
 	rgmii_phy1: ethernet-phy@1 {
 		/* RTL8211F */
@@ -788,3 +825,18 @@ &usb_host1_ohci {
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
