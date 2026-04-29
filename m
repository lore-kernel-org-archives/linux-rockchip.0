Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D294CCFA13
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 04:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZkh4M0RT/BAHw7hx3+WgIpxAlPI9l0R9+k14Mho7QY=; b=Ikmx+XncmlXkcD
	f2BQm4zVUJSPKfL2KQsUx+8ai3uqrmjLx2aQ43lJfcbj1HyQhzdF+EfAd5DsVOBu50ABBEQIJQJKm
	P1l9KeNGE+pcbvmvlCJHBD9+TlHJfS+dVhVOqfzzExM+Gea7rYAaa1VvcxM8BGd+a3L5Sa3kR30+Q
	wQt03LPaArc4FWH0WLpJmgl9eiFYAVgj06VLrDNFXx2JfWhtanFOWXiEseeNlH1lCSVvjNuUDh33j
	SC0K26XeVt1Wvr8XpKVeFJYDS12hPN2tvt2ae9uskr5wJM9yvjoh49ENqJ6R5h1ESB5gzSP7H4Yod
	JDV5HjvorIPYENOCFeoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHwKv-00000002uH7-0gUY;
	Wed, 29 Apr 2026 04:15:45 +0000
Received: from mail-oo1-xc61.google.com ([2607:f8b0:4864:20::c61])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHwKp-00000002uE3-1tEc
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 04:15:40 +0000
Received: by mail-oo1-xc61.google.com with SMTP id 006d021491bc7-694891f8f75so5383860eaf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 21:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1777436138; x=1778040938; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x93/l1w2YfvuQmLZ4l2/nRL+2Tpf+p0vaW0AsgHcapU=;
        b=YaKjHNHXYxbuCfyi2S502woQIPSQqvHJP5383FXG0EQEQiIaGVclXDnuohwqnV/zZp
         R+G4osOk5R1LLUEedHe+7NhCriOhrPlKxIOVZhhbQ0AD+bN0Ab0+Z7N1ZvMERmVgLfOK
         +Akr9wmo5bdiGEz4H7GHIigWgnvVFMrEs6WXBvwYM/lFAqUGEj7cMj9rcFu4Qdc1I+KQ
         OlQUOylPQAmEG0b5mj7v8V0J4SfruuX/WLIMot0bicuvRG6H3H64pvVMMcYtCIzZe1p3
         wzVcQ1Qn8/72eZJQkyTvwumOcBkYVJZ3lo5lo0Uc6o7cPz5wMKkewFYPpLS/hf40nyzX
         cQgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777436138; x=1778040938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=x93/l1w2YfvuQmLZ4l2/nRL+2Tpf+p0vaW0AsgHcapU=;
        b=ZtS/9ekZhBI+sOTsUm2kVZqwvanpmTN9PcYKYphdmwdXnJpnkuByO9urfHbU99eC3u
         VRyzwkVNpHgdc7COa9opjUztsNecga6CZXOkensTCHi4NcFvS4kbWwdiT6fy+yHeEmkv
         vg8M1GrIQd3sKggSkvERiABctgZmbyQrCNHa/8wqFqVSZ/ZdPVTeUQpyqlN6UTB0GBwO
         BDqHLXZC9hCekE/iZjTpiTquYCWJJlnIqUtIUZmif/xdXo9WjxDOAgWgFWdXQdzOA+nK
         oQNLvX2kqMLkZr/RpvkIDWX26lv6EHRefIkZ+YH5k+uX1FZsXd7Y95STJkY+LPStG6eu
         u1qQ==
X-Forwarded-Encrypted: i=1; AFNElJ8YtKHhL6TmtB1KAoBMk0Ive0rIseApYMl7vXVCY5SlaVObxd+9YU/4Od077fFZF5TekJqRuujYRIHHZ3vuhw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwNyE6errGoCIWBcIsTPq6t61SuCH4bQ9cFDry1V1VAMHBa1XyJ
	8ZnTwXd8RrNF65t2tXM7SfYXi9rUHcVOFEiWHtzdyIRWIf7+9TCL4joTw3KKwJljxUXi2x39gOo
	Bu94uXdITD2qsYCH2OvXqY34jw+Vjr4WOYAF8
X-Gm-Gg: AeBDietE3F23YDN3zq2HZmbv/evJPnpWb5aKCXBTFdWcp/OnnnmUw6oVB/V77ztzQ7n
	xpDAAIPmysXTdpy0iB1cwd/wi4JGBlXVGP/VAg2LKnCjoZzJqUrUBv6yI5VFhwEonMT/pZfeUyU
	2MdlYZ06pHg13Wg9ZL08H9EvFV9Yn4zyX+8Tvdep9Y/b/PbMKKCSdVeeY3c9GtyKlnr/L6wcpO7
	lxOnl+JVazgJ7sbnYonIiV5L/uXrIFpexfLjgXct/b5I85Vg8zwng6tRpHLJjnbw/Q1CTHzKnTH
	tn4xYpw0+j/PSYnaNtGlWVgNB+Al5TI60nP2xIl1a286DM1dcTcjOVrgWz71FeKqeJwxPQtsgoo
	kwXqyiRqy59RfNkiWnkmldwOIXVRLWI8jFUBrTJDBevIMiXHr61JrmvI=
X-Received: by 2002:a05:6820:2908:b0:694:92fe:54f1 with SMTP id 006d021491bc7-6966854819amr1134201eaf.54.1777436138476;
        Tue, 28 Apr 2026 21:15:38 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 006d021491bc7-6966baf952asm41557eaf.9.2026.04.28.21.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 21:15:38 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Alexey Charkov <alchark@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Peter Robinson <pbrobinson@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Dennis Gilmore <dennis@ausil.us>
Subject: [PATCH 3/3] arm64: dts: rockchip: orangepi-5-pro: Add LT8711UXD DP-to-HDMI bridge
Date: Tue, 28 Apr 2026 23:15:28 -0500
Message-ID: <20260429041528.558254-4-dennis@ausil.us>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260429041528.558254-1-dennis@ausil.us>
References: <20260429041528.558254-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_211539_529518_EC90320E 
X-CRM114-Status: GOOD (  15.35  )
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

Wire up the second HDMI port on the Orange Pi 5 Pro. It uses a Lontium
LT8711UXD high performance two lane Type-C/DP1.4 to HDMI2.0 converter,
designed to connect a USB Type-C source or a DP1.4 source to an HDMI2.0
sink. The bridge can be controlled via i2c or run as an autonomous device.

The Orange Pi 5 Pro has i2c wired up to i2c6, however there are 10k
resistors left off of R9 and R17 to enable MODE_SEL, and R27 for
I2C_ADDR resulting in MODE_SEL going to GND and the bridge let in
autonomous mode. As shipped I verified that the bridge does not show up
on the i2c bus.

Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 88 ++++++++++++++++++-
 1 file changed, 85 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
index 895d954a9f23..67363709c4ca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
@@ -14,6 +14,44 @@ aliases {
 		mmc2 = &sdio;
 	};
 
+	hdmi1-con {
+		compatible = "hdmi-connector";
+		label = "HDMI1 OUT";
+		type = "a";
+
+		port {
+			hdmi1_con_in: endpoint {
+				remote-endpoint = <&lt8711uxd_out>;
+			};
+		};
+	};
+
+	hdmi-bridge {
+		compatible = "lontium,lt8711uxd";
+		vdd-supply = <&vcc3v3_dp>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				lt8711uxd_in: endpoint {
+					remote-endpoint = <&dp0_out_con>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				lt8711uxd_out: endpoint {
+					remote-endpoint = <&hdmi1_con_in>;
+				};
+			};
+		};
+	};
+
 	analog-sound {
 		compatible = "simple-audio-card";
 		pinctrl-names = "default";
@@ -72,6 +110,19 @@ fan: pwm-fan {
 		pwms = <&pwm2 0 20000000 0>;
 	};
 
+	vcc3v3_dp: regulator-vcc3v3-dp {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&dp_bridge_en>;
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "vcc3v3_dp";
+		regulator-always-on;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
 	vcc3v3_eth: regulator-vcc3v3-eth {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -116,6 +167,24 @@ typea_con: usb-a-connector {
 	};
 };
 
+&dp0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&dp0m0_pins>;
+	status = "okay";
+};
+
+&dp0_in {
+	dp0_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_dp0>;
+	};
+};
+
+&dp0_out {
+	dp0_out_con: endpoint {
+		remote-endpoint = <&lt8711uxd_in>;
+	};
+};
+
 &i2c1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c1m4_xfer>;
@@ -217,6 +286,12 @@ bt_wake_host_irq: bt-wake-host-irq {
 		};
 	};
 
+	dp {
+		dp_bridge_en: dp-bridge-en {
+			rockchip,pins = <3 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
 	ethernet {
 		ethernet_en: ethernet-en {
 			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_down>;
@@ -350,9 +425,16 @@ &usb_host0_xhci {
 
 &usbdp_phy0 {
 	/*
-	 * The USB3 Type-A host connector is wired to PHY lanes 2/3. Lanes 0/1
-	 * are connected to the LT8711UXD DP-to-HDMI bridge on the board.
-	 * dp-lane-mux routes USB3 SuperSpeed to the correct lanes.
+	 * USBDP PHY0 is wired to a USB3 Type-A host connector via lanes 2/3.
+	 * Additionally lanes 0/1 and the aux channel are wired to the
+	 * Lontium LT8711UXD DP-to-HDMI bridge feeding the HDMI1 connector.
 	 */
 	rockchip,dp-lane-mux = <0 1>;
 };
+
+&vp1 {
+	vp1_out_dp0: endpoint@a {
+		reg = <ROCKCHIP_VOP2_EP_DP0>;
+		remote-endpoint = <&dp0_in_vp1>;
+	};
+};
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
