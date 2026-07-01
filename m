Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51AE5C43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 18:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jq3YBkpt7jG1xYySS1SYbuEGqWHqg1rIvKOYxNOJI00=; b=h/RV39K1UaBBh+
	qS0v80hrfEVXaxBAd1JIrFVzPxSI38h8vBVHv1JQ3V2uhvOfHDOJ369FGnFDh/yIZG3vw98bs0mrH
	8YelxJW5h5QBhjozgT0NK5/1peK1amEnMpb+t+YsuOSLbee/OsYwI2PXSDUOfMVt8HpM1Ck7WQyDL
	oD6lCiYqL/pD486+PYgXN8W3Q0UQTQHsi0Wby24TtU+SUDfT2qBph9lmQ92qaKKDaq1rjeHxpsELs
	fHN/Y3mHalud0DZhKcU5QcNbJ2iZja/pJbNuz2fj+NEoHrHn7KVQURtfuu9n5r1D4PQWzIhXGu13F
	krRSiV7LnDy7bdQlw/aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf083-00000002s1r-0lOZ;
	Wed, 01 Jul 2026 18:57:47 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf081-00000002s1V-1yOO
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 18:57:46 +0000
Received: by mail-pj2-x00.google.com with SMTP id d9443c01a7336-2c9dc2dafeaso3472925ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 01 Jul 2026 11:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782932264; x=1783537064; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DGzU+Kdxs/bDIK7sn0qzmTZSoK/NatWbELETWz34JKY=;
        b=asHJyg5BO9Zg1Dn5ggdKPXwW7z/mEz7sDDtosByWzSifmQCu/W90mJDbeYYg5g/Zt9
         m3hy9u6wkjpRZjL6df22VNgmskF5KPhsNPzTzM8as6KAaIfoGaC4c6efy4KFZAr8XXUt
         /PipxSsuaW9k1g9DQNWCg7wHGYfWZLMz52/oPUwXmV9qUuzOOQBmKHOynGNnPhBEN36i
         xkZ5SdhHQANsxIc9tfG8XbMiffHVhG3fEpFXkt2o6c8WvIVmKfrqqizm/FcrjS9prOa5
         calGUH4f2EzIL5Nih/tiMI50ZmnMQ0EIK4eBLv6J/bbhPd/rSTCKHZ5ua5eBOJvOvMEi
         QEQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782932264; x=1783537064;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DGzU+Kdxs/bDIK7sn0qzmTZSoK/NatWbELETWz34JKY=;
        b=EkbkZZGCPA5hNbIBs4QIPM7nl95G35eKfI7vl1V6U4AFay+fym31zeamlcLGNLJLiE
         BsY332zAWMONsqn8KYck8EkOvogxALs0FYT6dwLnP9vH+kPVj9gU546KdeTTdqv1XVCy
         abdH+5r7e+pZ4a+BMpcP6lobjAjet8Ml+kpYLdklapObP2DH44gsmL2L7uctleJ1TodD
         7Lt8EZbgQMtfM90rammMw2eP/KwRB1pbh8VjhMHYqXMjGcptQTHPnFQ54WKwgQoDbxqd
         rRAru7wXU7mU7u/n24NRLeH6N9IqScWkDsBOoE2BSLMzQGFvqkHMec/CYS5Fzlx73Xhb
         h/qQ==
X-Gm-Message-State: AOJu0Yxa5GshGwOQycCZSM/D8dcOwaSpm3v92JO20/8i/DIoARklibVb
	VKaXhyVdtSkIEQJwIiFaBgr5zmIdAp0PqeukOBzpf/nhBOxb589YZVBZ
X-Gm-Gg: AfdE7cnwBidmtqPeMMZhSJhrXhjACRdV1pBPO/m+lfuJYoqJXyPk1i+tfFpQBzCq/Nv
	IWfcoTzyATtdjLNCtZkjTilFILLgegzhV8u6dCypAkWmoVqD779PvTbs406XIXwCpb2MV3dSAXa
	PUDK7QnWCDtgCEV1QKp1xMy7ttKSsESf3pX04jfPxxN6gG6bzwyS2yBaL4yyUwX5QKHI2f/Znlp
	sfXf+/j/eCz8wRmCtKeSw/iEDwb/GZIFGLZJPEmsmRqvDVS2eoF4U3rdhQoCOYoDd9G4goKva7O
	eRm3EISVYv8MOSXSDFaB9ZdjMMV9qjAW24F8VC7zvrTYxY7c3cz5XvTkJ3fz3M4IiOke4ijjxz9
	/PSsjqqe9E3OlhgL4PcYVK+PcgRrCJShIF7H7uF5eMb5CLt/rlYyce0RYsZb4opJkSbHU6FZCf0
	CWNRC5b4qP4LzLrGrhQqmYLw==
X-Received: by 2002:a17:903:26d0:b0:2ca:5a0f:d0c9 with SMTP id d9443c01a7336-2ca7e8cb82cmr29597415ad.43.1782932264354;
        Wed, 01 Jul 2026 11:57:44 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca9a8dadaasm2624205ad.14.2026.07.01.11.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 11:57:43 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Add AP6275S support for 9Tripod X3568 v4
Date: Thu,  2 Jul 2026 02:56:56 +0800
Message-ID: <20260701185657.4092955-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_115745_513409_F942F397 
X-CRM114-Status: GOOD (  12.77  )
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

Add the missing Broadcom Wi-Fi and Bluetooth child nodes for the
9Tripod X3568 v4 board.

The Bluetooth subnode is attached to uart8 with hardware flow control
enabled via RTS/CTS pins.

The Wi-Fi subnode is connected via the sdmmc2 bus.

Additionally, change the status of the i2s3_2ch node to "disabled"
since the required rk3568-codec-digital driver for Bluetooth audio
is currently unavailable in the mainline tree.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../dts/rockchip/rk3568-9tripod-x3568-v4.dts  | 57 +++++++++++++++++--
 1 file changed, 53 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
index 4db00489be40f..c3ffb3fd51cd4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
@@ -582,9 +582,9 @@ &i2s1_8ch {
 	status = "okay";
 };
 
-/* used for AP6275S Bluetooth Sound */
+/* required rk3568-codec-digital for AP6275S Bluetooth Sound */
 &i2s3_2ch {
-	status = "okay";
+	status = "disabled";
 };
 
 &mdio0 {
@@ -664,6 +664,20 @@ &pdm {
 };
 
 &pinctrl {
+	bluetooth {
+		bt_reg_on_h: bt-reg-on-h {
+			rockchip,pins = <3 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_host_h: bt-wake-host-h {
+			rockchip,pins = <3 RK_PA1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		host_wake_bt_h: host-wake-bt-h {
+			rockchip,pins = <3 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		led_work_en: led_work_en {
 			rockchip,pins = <0 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -699,6 +713,12 @@ vcc3v3_pcie_en_pin: vcc3v3-pcie-en-pin {
 			rockchip,pins = <3 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	wifi-irq {
+		wifi_host_wake_irq: wifi-host-wake-irq {
+			rockchip,pins = <3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
 };
 
 &pmu_io_domains {
@@ -759,6 +779,9 @@ &sdmmc0 {
 
 /* used for AP6275S WiFi */
 &sdmmc2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
 	bus-width = <4>;
 	cap-sd-highspeed;
 	cap-sdio-irq;
@@ -771,6 +794,16 @@ &sdmmc2 {
 	vmmc-supply = <&vcc3v3_sys>;
 	vqmmc-supply = <&vcc_1v8>;
 	status = "okay";
+
+	wifi@1 {
+		compatible = "brcm,bcm43752-fmac", "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <RK_PD4 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_irq>;
+	};
 };
 
 &spdif {
@@ -798,10 +831,26 @@ &uart4 {
 	status = "okay";
 };
 
-/* used for WiFi/BT AP6275S */
+/* used for AP6275S Bluetooth */
 &uart8 {
-	pinctrl-0 = <&uart8m0_xfer &uart8m0_ctsn>;
+	dma-names = "tx", "rx";
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart8m0_xfer &uart8m0_ctsn &uart8m0_rtsn>;
+	uart-has-rtscts;
 	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk809 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio3 RK_PA2 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_reg_on_h &bt_wake_host_h &host_wake_bt_h>;
+		shutdown-gpios = <&gpio3 RK_PA0 GPIO_ACTIVE_HIGH>;
+		vddio-supply = <&vcc_1v8>;
+	};
 };
 
 &uart9 {
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
