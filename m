Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5F16C0015E
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jul 2023 16:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=csCgFfvvnaeqR/6H+L9HxmyHmpz7/AeCnHEu4VqRxcw=; b=FkdqNskMqLtt6I
	kxOw3yFdf+T5QY0EeMmXPGbpasNXfQQ0AmoeJMP7XHracQJTRKaCpigTTjA6xXbbAPUzkU2Ei40YG
	f/DNlt98q2/H+pYsb/h4AR2+CRSsXdpHaxxH53W1fsUabkNAfaHbk81ZBzp9HB5TjuCghDi6sXRjt
	viyN1j0a5QbXkbUQ57OIJuqg++Dqsc1TUzO+sOCknwFN0NFP+m/+dF67OqOYBNZT+GzKH8KVctWcl
	QuuvlPZ/q6Yw3AYZInaDjFy8sl6TMaj+RPV4kwKu9GZh7AftIcIEFlFO4eD23geCXD6Zfj/lBy4Y7
	hLNmorN+WvouGIoyTBxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJd5I-000f2s-1E;
	Wed, 12 Jul 2023 16:53:00 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJd57-000euW-2d;
	Wed, 12 Jul 2023 16:52:52 +0000
Received: from jupiter.universe (dyndsl-091-248-191-111.ewe-ip-backbone.de [91.248.191.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 14E4E660702E;
	Wed, 12 Jul 2023 17:52:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689180765;
	bh=2VVwOOwLYFVfiLx9s3vRhudNAVz3rkLWFj9+rMW24Lo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KEwnWd1nCvePb64/F4kDhtsNX+nq0clMGpQs+SvEyr5qzPZjA+nyifqkgDmDB6qud
	 KtE+Mi6DiOhATsh+678XONtgoBdNptGj2sJrugSjrXmVPYS5K5tHVMCaSRwJulvx54
	 D4EMgkwQE1Ns6Dn5qksLD1+fiWPqRrWBanI/liB1kAQnZGf5rQu29+D9IPz1ZeQtEk
	 tQO0V+icVV3HagTU9eC9gG22Fd//gV1OmwnTXn1sQp10speFgzqKKwjeNRVAGjbRoN
	 pkQtdxmVCKcklodUIpDmTz2qHkeQggtyT3w2H0aU4731TDxkg9fhucc2sEsTK9ZSLn
	 FvdTIi/Flqb0w==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1CD914805A0; Wed, 12 Jul 2023 18:52:43 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 4/4] arm64: dts: rockchip: rk3588s-rock5a: add USB2
Date: Wed, 12 Jul 2023 18:51:06 +0200
Message-Id: <20230712165106.65603-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230712165106.65603-1-sebastian.reichel@collabora.com>
References: <20230712165106.65603-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_095250_018324_BF56C69E 
X-CRM114-Status: GOOD (  12.75  )
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

Enable USB2 (EHCI and OCHI mode) support for the Radxa ROCK 5 Model A.
This adds USB support for the on-board WLAN/BT chip, the two USB2
ports, the USB available from the 2x20 connector and the lower USB3
port (in USB2 mode).

The upper USB3 (further away from the PCB) uses the RK3588S USB TypeC
OTG controller for USB2 and USB3 and thus is not supported at all at
the moment.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index a6dff117b459..66eab281c2c9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -64,6 +64,20 @@ vcc12v_dcin: vcc12v-dcin-regulator {
 		regulator-max-microvolt = <12000000>;
 	};
 
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_host";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc5v0_sys: vcc5v0-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -292,6 +306,34 @@ rtl8211f_rst: rtl8211f-rst {
 			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	usb {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wifibt {
+		wl_reset: wl-reset {
+			rockchip,pins = <0 RK_PD0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		wl_dis: wl-dis {
+			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_output_high>;
+		};
+
+		wl_wake_host: wl-wake-host {
+			rockchip,pins = <0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		bt_dis: bt-dis {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_output_high>;
+		};
+
+		bt_wake_host: bt-wake-host {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &pwm3 {
@@ -650,7 +692,43 @@ regulator-state-mem {
 	};
 };
 
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	status = "okay";
+	phy-supply = <&vcc5v0_host>;
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
 };
+
+&usb_host0_ehci {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&wl_reset &wl_dis &wl_wake_host &bt_dis &bt_wake_host>;
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
