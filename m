Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2956DD2CDFF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 16:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=apy9WKQtaoy1S+QNcQcUy64xU7VFsI9qR1QXWGjruVU=; b=BW93f6KROtls8S
	oX5hJkgXYKcIuGufUWXwK8NIVIkqs6Y0rqN1IJxFM0YB3tbOB+LcWUwroa3CJNJWkZYLZWgQL90/D
	uxSGwln+0fPg+PrmuJeKMLBFXLUmp08ssxaFZOrJdJraWD7M3+8z4kU7D8BSoJReWDvTCtjNXs5xm
	uSJmtEBesmthHaQTefyOKKS/ibCVkZnCDo4ei9jROuUCU782WsMnKVkSM8F9qIScU6cTraBIyRycg
	+ljDOhYd9z3rMgOnpnggqhB+917PpIVJtZ9dxoMiqYChTFoXe2CDFhaCrv7Ur+frooiDdM6iqWNXm
	uvOTp76HJ90Z7QC9EXvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Hzx-0000000BWFX-3vNz;
	Tue, 22 Oct 2024 16:44:45 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3HNo-0000000BN7j-0No5;
	Tue, 22 Oct 2024 16:05:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729613117;
	bh=OynJaLzMucy3vyn4kZXuh4tD4dsnHaoATki7l4g0SmM=;
	h=From:Date:Subject:To:Cc:From;
	b=cJSPzcCWjFLx6mkYM+D4SNX8Nk0MW+obST65upmRoc37JhwJb2tiy6WNT8/TfU02O
	 KMwsLCr13ftAJt5XEkynWkHmaB7rNhgFOJZ/VWkEtCV7B5pdT0WP3FZLqPP7HYindA
	 vW0oqi8GHrUowMvqQ52EA5wX0gBiZVtGrD+S6el+jFspQZTD0iezRInZZgu/8NJis3
	 gZF7ToI/9yOs4vpzt8jUUy2c2gG9g3x2vXwGO7IXeiAZqZZteEBS4X9zuF5d+RuSn5
	 yoVrIEzcs1LFJH8FycR+s7lL+K2cONMi3ym+ezH+89t/m/g47KNJHKOKJGbzCD0psE
	 xPUKxupBP6bgg==
Received: from localhost (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C0F2717E3677;
	Tue, 22 Oct 2024 18:05:17 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 22 Oct 2024 19:04:42 +0300
Subject: [PATCH v3] arm64: dts: rockchip: Enable HDMI0 on rock-5a
MIME-Version: 1.0
Message-Id: <20241022-rk3588-hdmi0-dt-v3-1-3cc981e89afb@collabora.com>
X-B4-Tracking: v=1; b=H4sIABnNF2cC/4XNTQ7CIBCG4as0rMUM9EfoynsYF5QBS2yLgYZom
 t5d2sSNLly+XzLPLCSa4EwkbbGQYJKLzk85ykNBdK+mm6EOcxMOvGLABA33shaC9jg6oDhTplh
 ZI8CpUZbkq0cw1j138XLN3bs4+/DaHyS2rR9L/liJUaAdCsultEZpPGs/DKrzQR21H8nmJf7H4
 NmomkajACOsld/Guq5vYTSqjPYAAAA=
X-Change-ID: 20241018-rk3588-hdmi0-dt-1a135d0076af
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_090520_375143_B713F719 
X-CRM114-Status: GOOD (  11.50  )
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
Since the initial support for the RK3588 HDMI TX Controller [1] has been
merged as of next-20241018, let's enable the HDMI0 output port for the
following boards: Radxa ROCK 5A & 5B, Rockchip RK3588 EVB1 V10, Xunlong
Orange Pi 5+.

Thanks,
Cristian

[1]: https://lore.kernel.org/all/20241016-b4-rk3588-bridge-upstream-v10-0-87ef92a6d14e@collabora.com/
---
Changes in v3:
- Used the proper (i.e. micro) HDMI connector type for ROCK 5A (Jonas)
- Rebased series onto next-20241022 and dropped patches already merged
  by Heiko
- Link to v2: https://lore.kernel.org/r/20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com

Changes in v2:
- Updated descriptions for rock-5a & rock-5b patches to include Radxa,
  per Naoki's review; also collected his Tested-by on the latter
- Included Naoki's HPD pin related fix in rock-5a patch and dropped the
  UNTESTED prefix from the subject
- Link to v1: https://lore.kernel.org/r/20241019-rk3588-hdmi0-dt-v1-0-bd8f299feacd@collabora.com
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 52 ++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 5882027ab64c94066ead9a1c6cc84226968a69c8..3ca23555d90c5fedd95d4e8681c073b6523f5bf8 100644
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
+		type = "d";
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
@@ -301,6 +313,31 @@ &gmac1_rgmii_clk
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
@@ -793,3 +830,18 @@ &usb_host1_ohci {
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

---
base-commit: 7436324ebd147598f940dde1335b7979dbccc339
change-id: 20241018-rk3588-hdmi0-dt-1a135d0076af


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
