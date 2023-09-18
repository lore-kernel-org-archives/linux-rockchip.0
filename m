Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3D1AC46CA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 14:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LxNLpzzJFgs+BpW9/5Goy1yqsjLz/7J2Y9jRDtoWC+U=; b=qEQn/R1PU9hnM2
	Efvpw+dXnvWHP9bXXCUYSI7zZotVd4tDJKfUC+tjz42O8rEykdK0G5CHx5Y4GcASmxHwJrfdCOS6A
	aSNagvycoXiuGXa9SYphGIqeNxu4eql1OeOmBGsPEXnD4LREXK40aGhotkMOw5fQXLoq601BEmeNV
	NGLKgzNB02lBTM9ZFx6OjQEXAOzxNieRwqXDn3u5BOaoVtrLoSYV/rwRDQGfeC1HpX7WPfnFUutDL
	sL0+GBgGcijhr6kn73JWcguaZX5kAd61WWa3dLaQLq806f/t8qsp4RJxAXkZAAB4UbQVoQ+SkdByZ
	ksXyqUoNvMQdic0VefQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiF1j-00FdMi-36;
	Mon, 18 Sep 2023 14:15:03 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiF1f-00FdJp-1j;
	Mon, 18 Sep 2023 14:15:00 +0000
Received: from jupiter.universe (dyndsl-091-248-188-252.ewe-ip-backbone.de [91.248.188.252])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3D6636607201;
	Mon, 18 Sep 2023 15:14:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695046498;
	bh=fexmH11W8W4v7URTCHuJ5kQTk9dY/yuzuXTeYE9KXXo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XhhNyc3UkOixPt6WBmb5KvAqCLpNDC7iKt2u3EK+tXDd9LXRG2vY81nQrnYI1mFIc
	 +NkuwFYHr8eYfLQEVo82LdWoHJyhaAQLQ5aNE6gmxMuhPVGW4ilVR3jOn2mUgP+hyZ
	 fyJ3vE9NTIOmglw56YrxTXaqDRHlLZaSgXUrT2qLeZ45XZnfQl3xHeIBQ0vZGP1dTy
	 2pYn2bVxuu2gMIzUCYhdtoL7aaT+zplfwIBCt5uF+4UcNuJuRU8YunHkluAKf+q178
	 S1NR3upNR6o/5PW2+Gaj3LMU3sJjvsXOKkc6gEpHnNgbufmFat8rpOQJqcgbWUyKfd
	 FrJnLUeLnC4Lg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8120D4800CF; Mon, 18 Sep 2023 16:14:56 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 1/3] arm64: dts: rockchip: rock-5b: add PCIe network controller
Date: Mon, 18 Sep 2023 16:14:49 +0200
Message-Id: <20230918141451.131247-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230918141451.131247-1-sebastian.reichel@collabora.com>
References: <20230918141451.131247-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_071459_704523_B35292E7 
X-CRM114-Status: GOOD (  11.32  )
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

Enable the RTL8125 network controller, which is connected via
PCIe.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 8ab60968f275..0752b0fb4b54 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -44,6 +44,15 @@ fan: pwm-fan {
 		#cooling-cells = <2>;
 	};
 
+	vcc3v3_pcie2x1l2: vcc3v3-pcie2x1l2-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie2x1l2";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
 	vcc5v0_host: vcc5v0-host-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_host";
@@ -78,6 +87,10 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
 &cpu_b0 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
 };
@@ -204,6 +217,14 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&pcie2x1l2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_2_rst>;
+	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
+	status = "okay";
+};
+
 &pinctrl {
 	hym8563 {
 		hym8563_int: hym8563-int {
@@ -217,6 +238,12 @@ hp_detect: hp-detect {
 		};
 	};
 
+	pcie2 {
+		pcie2_2_rst: pcie2-2-rst {
+			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		vcc5v0_host_en: vcc5v0-host-en {
 			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
