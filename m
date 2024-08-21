Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D45BC531DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 08:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjsW1yylbVQTAbGLCAEtB6emhUQjd5g5lqQlrz+hL4Q=; b=ra2MEdfm022JLT
	kEjA7Yh4Qsno/c6qGdzP+EDRcS8U2slQq4In28ntQWEXT/3IHoCOLI8vo1XGWrxLKfKDxISfcJJDV
	pisNLEi0lfuHKzDIDpVUuo7HkCObISCTRH7SZTTEU/3aUbPfy6kJ+cjnG75fN7j71xQlQMQWh+Z/p
	ipmrC28RxGM+Ykt375CoUSFx+1GHrctV9w81i1FTrwSOa2V2xmXtnoCicpBLqbcROvf5m+tMOX1cc
	b+U+odk0yIGJuwdkUlmoP93UvTxEOQ/2Zj2Rxid84hsFfXN3gjfFzMR4xZgwYLSMnfjwa0BBpEpuB
	KEyhM2VUoH6QTPufVMXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggm2-00000008590-0pxZ;
	Wed, 21 Aug 2024 08:32:58 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggf8-000000083Ij-0csn
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 08:25:51 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id D221A26018E;
	Wed, 21 Aug 2024 10:25:47 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id w4rYTOBLJoK3; Wed, 21 Aug 2024 10:25:46 +0200 (CEST)
Received: from puchatek.local (79.186.29.241.ipv4.supernova.orange.pl [79.186.29.241])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id BF3B3260983;
	Wed, 21 Aug 2024 10:25:45 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Wed, 21 Aug 2024 10:25:30 +0200
Subject: [PATCH v2 1/6] arm64: dts: rockchip: enable USB 2.0 on NanoPC-T6
 LTS
MIME-Version: 1.0
Message-Id: <20240821-friendlyelec-nanopc-t6-lts-v2-1-e0138bb10042@linaro.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org>
In-Reply-To: <20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_012550_377824_ECC84660 
X-CRM114-Status: UNSURE (   9.74  )
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

FriendlyELEC introduced new version of NanoPC-T6 SBC.

MiniPCIe slot got removed and USB 2.0 configuration has changed.
There are two external accessible ports and two ports on internal
header.

There is on-board USB hub which provides:
- one external connector (bottom one)
- two internal ports on pin header
- m.2 E port

Top USB 2.0 connector comes directly from SoC.

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 35 +++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index ad8e36a339dc..bf2c4427ad74 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -182,6 +182,20 @@ vdd_4g_3v3: vdd-4g-3v3-regulator {
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vcc5v0_usb20_host: vcc5v0-usb20-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&usb20_host_pwren>;
+		pinctrl-names = "default";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-max-microvolt = <5000000>;
+		regulator-min-microvolt = <5000000>;
+		regulator-name = "vcc5v0_usb20_host";
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &combphy0_ps {
@@ -535,6 +549,10 @@ typec5v_pwren: typec5v-pwren {
 			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
+		usb20_host_pwren: usb20-host-pwren {
+			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		usbc0_int: usbc0-int {
 			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
@@ -911,6 +929,14 @@ &uart2 {
 	status = "okay";
 };
 
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	status = "okay";
+};
+
 &u2phy2_host {
 	phy-supply = <&vdd_4g_3v3>;
 	status = "okay";
@@ -928,6 +954,10 @@ &u2phy3 {
 	status = "okay";
 };
 
+&usbdp_phy1 {
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -943,3 +973,8 @@ &usb_host1_ehci {
 &usb_host1_ohci {
 	status = "okay";
 };
+
+&usb_host1_xhci {
+	dr_mode = "host";
+	status = "okay";
+};

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
