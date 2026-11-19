Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112A6606A320
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 15:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=r8CGmLsj;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.a=rsa-sha256 header.s=fe-e1b5cab7be header.b=goJwVZNE;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=forwardemail.net header.i=@forwardemail.net header.a=rsa-sha256 header.s=default header.b=byohcRb9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AgcFUtKkW838AzQfgLXeyvfg2IuTFzA8hRWZvG/oPVk=; b=r8CGmLsjUBW5C+vnlJ8SLCQG5b
	omB4bOBpJFui6wxwIoZUZX94MLjEbpsZ73w7Egv8L2P/P/lEthF2E5j12lStEu68ERF6PElPtobxk
	ryrThOlR418lFwrK5mYStCLMAujUwaztiyJPK/W2+NUN9NWnLJP9YMPbI6F5H+8hbJ1Q96U8ZmYu0
	H4P1hiEUrZBP9sVVPWsjlk5Q4S7V9wqjry5OyCrARdF9UodFWkq2jbp4SwG1eED5s+kXo5mksBcPR
	T3kyUFtOub66wjlaB9Uagf3DQtEBGkslYI993df5AcVXvbAvi97qyROw9JkTfeEs9i1j+Nj31L44G
	r9ZuAtmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU3xK-0000000CQ3f-0SM5;
	Thu, 19 Nov 2026 15:21:46 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU3wz-0000000CPmc-1GEl
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Nov 2026 15:21:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID;
 q=dns/txt; s=fe-e1b5cab7be; t=1795101684;
 bh=+BMI6JJbtEPc14NSQH7+PKHWzfP93bpxfX8QAil2H3o=;
 b=goJwVZNEThLYm0oRt6/j/76foV9+Ub0N9pjk6u1u1r2nlc+uvL/oExu+lAwttpM6jPY60H8nx
 4ZHdf2BMxXdVBrNF0yLlY7PZcPIwrSWq8E+Rc13DxMU2mkPUE0BGtIz8nojRLccEVAfKFo1wZ5q
 3BuAEwhTfhUmjQdXJTw72HDqyIRyIb8zUS8eYRcF2Q1OTzjX3OZTIqDsnNMVpYdbuK20uIPO80S
 VKGApTVartqBBfJuzmW5ZsA30TxfHP1Vmih2l0vcNj0jqQoOUpWiL7s7QRTAXSkX1qf8Sisa3AQ
 6W+8cWl698lG3WNrcAn1HIl4e+Xrf+2Acg7yPAMbj09Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forwardemail.net;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID;
 q=dns/txt; s=default; t=1795101684;
 bh=+BMI6JJbtEPc14NSQH7+PKHWzfP93bpxfX8QAil2H3o=;
 b=byohcRb96idEw8CUjvtC1NyHAWTu3kJAC51TeWjkt/xyP/GZv0EQv/emgj15aMf415KI1mInD
 quj2kdnUTPPLpUULypzy25cELALWBF3K9WxY4KNqahMUNOW//ySwOVQmEh3rzdCisA2MA8ApO7a
 uux5uCLsq7deZN/VV/Obgcw=
CFBL-Feedback-ID: 6aff13ef83f3cb488062bad2:efb0545eef45a9e10f36c57d020a1bc7
CFBL-Address: abuse@forwardemail.net; report=arf
X-Forward-Email-ID: 6aff13ef83f3cb488062bad2
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.19.33
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 6/8] ARM: dts: rockchip: Add Luckfox Lyra Ultra board
Date: Thu, 19 Nov 2026 15:20:49 +0000
Message-ID: <20261119152055.556266-7-jonas@kwiboo.se>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261119152055.556266-1-jonas@kwiboo.se>
References: <20261119152055.556266-1-jonas@kwiboo.se>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_072125_345516_A877CCCC 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -2.0 (--)
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Luckfox Lyra Ultra is powered by the Rockchip RK3506B SoC, which
integrates three Cortex-A7 cores and one Cortex-M0 core. It includes
512 MB of DDR3 memory, 8 GB of eMMC storage, MIPI DSI, Ethernet, and
IO expansion interfaces.

Link: https://wiki.luckfox.com/Luckfox-Lyra/Luckfox-Lyra-Ultra
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
As mentioned in cover letter, unclear if this should use
rockchip,rk3506b instead of rockchip,rk3506.
---
 arch/arm/boot/dts/rockchip/Makefile           |   3 +-
 .../rockchip/rk3506b-luckfox-lyra-ultra.dts   |  31 ++++++
 .../dts/rockchip/rk3506b-luckfox-lyra.dtsi    | 100 ++++++++++++++++++
 3 files changed, 133 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/rockchip/rk3506b-luckfox-lyra-ultra.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rk3506b-luckfox-lyra.dtsi

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index df620116bb2d..9a699bb8fc5a 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -47,4 +47,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3288-veyron-tiger.dtb \
 	rk3288-vyasa.dtb \
 	rk3506-luckfox-lyra-plus.dtb \
-	rk3506-luckfox-lyra.dtb
+	rk3506-luckfox-lyra.dtb \
+	rk3506b-luckfox-lyra-ultra.dtb
diff --git a/arch/arm/boot/dts/rockchip/rk3506b-luckfox-lyra-ultra.dts b/arch/arm/boot/dts/rockchip/rk3506b-luckfox-lyra-ultra.dts
new file mode 100644
index 000000000000..5a3eb35eb70e
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rk3506b-luckfox-lyra-ultra.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include "rk3506b-luckfox-lyra.dtsi"
+
+/ {
+	model = "Luckfox Lyra Ultra";
+	compatible = "luckfox,lyra-ultra", "rockchip,rk3506";
+
+	aliases {
+		ethernet0 = &gmac1;
+	};
+};
+
+&gmac1 {
+	assigned-clocks = <&cru CLK_MAC1>;
+	assigned-clock-rates = <50000000>;
+	phy-handle = <&rmii_phy1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&eth_rmii1_miim>, <&eth_rmii1_tx_bus2>,
+		    <&eth_rmii1_rx_bus2>, <&eth_rmii1_clk>;
+	clock_in_out = "output";
+	status = "okay";
+};
+
+&mdio1 {
+	rmii_phy1: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <1>;
+	};
+};
diff --git a/arch/arm/boot/dts/rockchip/rk3506b-luckfox-lyra.dtsi b/arch/arm/boot/dts/rockchip/rk3506b-luckfox-lyra.dtsi
new file mode 100644
index 000000000000..c422053c1262
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rk3506b-luckfox-lyra.dtsi
@@ -0,0 +1,100 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include "rk3506.dtsi"
+
+/ {
+	aliases {
+		mmc0 = &sdmmc;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:1500000n8";
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-recovery {
+			label = "Recovery";
+			press-threshold-microvolt = <0>;
+			linux,code = <KEY_VENDOR>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&led1>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	vcc_1v8: regulator-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_3v3>;
+	};
+
+	vcc_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v0_sys: regulator-5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+};
+
+&pinctrl {
+	leds {
+		/omit-if-no-ref/
+		led1: led1 {
+			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdmmc {
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	no-sdio;
+	vmmc-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
-- 
2.56.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
