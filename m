Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D845C83F10
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 13:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eWDevfEEdiOnBCjyjZSDrFCK1Jnp0c+PVHdEmTnYCZs=; b=CTd4ELGYSnSnys
	bzyWAdfpuF5z0VMSNQUpjF/e3TnpHAzLcqYKOaPFVMCOpHXZZApYU8S5sYNMsIdG392nRChtqOovN
	C3K/TBTG2E3fhRNZ8A5vy2wpfbKfhGSQR5WRKhBY/fnRxiFgaGi4Mq1Q++bjUfiygF1wngFXuW6U9
	0FTAaCXjqy3lHMp6MFurieBWyduNf1E1cEKhL3D5z1kCdlvPIGLhm8D5HYMFC4ESjIkM6Q2v99uyZ
	OzTPwj4SfPG8n9OtLqA/Q4h7Hb9dYznRzSVmWObNO/FSocra1yUVKByvDbLxKiSlqICzC5Uswm/TF
	pFf58vcVVxDgNx9nbwsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZUjl-00000008lWr-1ttE;
	Wed, 09 Jul 2025 13:21:25 +0000
Received: from out-189.mta0.migadu.com ([2001:41d0:1004:224b::bd])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZSUQ-00000008Oit-0AF2
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Jul 2025 10:57:27 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1752058643;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=C6I02oAO5O9n+NqOYPD+dGaxhuaskJQMZV+WpCzJXCs=;
	b=AP+BQZNGoaJmYJygNM/cNI4+L4nhRS9+v7XJ5tpNOmB/nZd++qTbTBwNo/O+1votD3hpuU
	d2fuhHU756K8GgwfWy5GeCU+ivd/FYXqqwRXiEltwXyM1sIBCAstixjodvc8CRFhKokd9C
	D233PemB7tVZu576E/LMMtVGOZwXHMeojtpVXR0Oe95O3l2xINtDlkzqFhZu/ViPAV4tlg
	RoqiV6pYcLWjXPQiU5cgM9aynKpPtCaCZhYcr5KlrnJHgZbK1qqS4OM8w/0SRYQ28ywlrZ
	ZP9psoJFX7TlIMTbxfojeVfvI4+uBHyTdUhs5VXjS3WhmW7noKCQeEJsRKtiEA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] arm64: dts: rockchip: Add reset button to NanoPi R5S
Date: Wed,  9 Jul 2025 12:57:08 +0200
Message-ID: <20250709105715.119771-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_035726_406012_B61CE9E9 
X-CRM114-Status: UNSURE (   9.28  )
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

The NanoPi R5S LTS version has a reset button, which is connected via
GPIO. Note that the non-LTS version does not have the reset button and
therefore on page 19 of the schematic version 2204 it is marked 'NC',
but it is connected on the LTS version.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 .../boot/dts/rockchip/rk3568-nanopi-r5s.dts   | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
index 3b31f0dd8f3b..4eaedb321914 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
@@ -17,6 +17,19 @@ aliases {
 		ethernet0 = &gmac0;
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&gpio4_a0_k1>;
+		pinctrl-names = "default";
+
+		button-reset {
+			debounce-interval = <50>;
+			gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+			label = "RESET";
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
 	gpio-leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -127,6 +140,12 @@ eth_phy0_reset_pin: eth-phy0-reset-pin {
 		};
 	};
 
+	gpio-keys {
+		gpio4_a0_k1: gpio4-a0-k1 {
+			rockchip,pins = <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	gpio-leds {
 		lan1_led_pin: lan1-led-pin {
 			rockchip,pins = <3 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
