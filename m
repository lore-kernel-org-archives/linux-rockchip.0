Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37E16C00528
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 20:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z+zeUOIU7tdlZSrg90pdLd0WGhdoPIWWzOrLadnV/yM=; b=kgEPUA5YSCx3DT
	kGlOZDjjIVitlQQn8LkttOspmE/pBk7K80pmiKnPlGZ3a9gesbn/Ed6A2dmpnMyhOdfrUhAjGOgR4
	e0/GWrY7GV7krtzh5xQ0oClYJ0jAcvP4JMZdXOy+Ji0oRhFeZoVWOR5VPGmHnwCrZQP5kYz8Soooa
	S1AkoC76UMJPeZI9sW9vx0lMGnpLzn18BvQ2AXayLojovel9WUGSniv7hEVyVuWQrXcHX6SFgyxMt
	eGfT17Hn8szj3DpkkxpVvUC3PVDhogso4M28oB9+2daWPQjq71FbNKT08Moydj1STuyNIOzWWbgSl
	8JvkHOZiENF6Yk2XOs1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQZ9k-00HC7I-2h;
	Mon, 31 Jul 2023 20:06:16 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQZ9h-00HC5B-1d
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 20:06:14 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-686b91c2744so3511276b3a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 13:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690833969; x=1691438769;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e+bzMK/6v3kQ234bXLjTvjuJbaRaWNWJVQGO1WXCCOs=;
        b=V6lgEVtJ0Ffu/WcC+8I6SLiTaQmcX6w3zawv13rGmmi1+oLJl446dTnPF9mmhkL7HK
         j6VKIPP5tUyOkozr8JuY0ifkrVlC6UtKJ2vnS0Q7KfV2qHX6rgJBQ9vRfPfEM08KxT+W
         mlxl5umJRmhAMV+QAmA8MqykB73rtAAyi75jkirqqy8SsAha+3viPYB8IRLvdhN+81Xu
         vY8G0Zd6QXOUSkJr7tmbAlWtbz3O0MVtm1SmdccYsJigswW4uG5gBbxSiv9yUjN211zh
         zWNe6JX8mPh9ekC30oMQFt2xdya99zqqdQAgI4yfUl4BaDyUi01ODcxygBhnzUV+7XWV
         M3gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690833969; x=1691438769;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e+bzMK/6v3kQ234bXLjTvjuJbaRaWNWJVQGO1WXCCOs=;
        b=QCGacwcRIyatrljCdebCXuNHxtI6eHhLwlpinUhcOnk+Fqr7FXZL6JrsVchuNXkZT6
         SViMp3//MW9ZyCytGtH2z0bQrLu/p6FxxXS+g0oxdiNNTVVPoMi/D4Wjjv4r7oLytIx9
         gQkaeOTPN7fDZCFHo7q8+9cBSuYlzGZ9+RFC/O+fFYuL/8WWsYi2QJvTvl0erRkwahHe
         Am1FH+TCsPlYjmw7uXYg4QfsN4uFKls3C6/1sD5rjPnUgYZuxLOBATVv6aGNWYUEz4ne
         Y3wEPL0pLQWw5NkJVT0NiKBBPJl7AvVRaIw2PBJUTz2C5zoZDy/YTqxbJkNfOg8SJROo
         BXpg==
X-Gm-Message-State: ABy/qLY5OkVz4ycKGoymGfLWAq8qqKSmdZzzbnzhIdbdmzbTKNQP+vkP
	/QwrFZ1LLidSozUblLczq35bQg==
X-Google-Smtp-Source: APBJJlGuHubKXNWPNG6P5I/hWLi8vcJ7Wb2ptATFW/Z4xG5/BvYy8Mq5qVSN5Lt64tPBoHmQLivTyA==
X-Received: by 2002:a05:6a00:39a8:b0:682:713e:e520 with SMTP id fi40-20020a056a0039a800b00682713ee520mr12074824pfb.8.1690833969645;
        Mon, 31 Jul 2023 13:06:09 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:acc9:2620:699c:d7da])
        by smtp.gmail.com with ESMTPSA id c12-20020aa781cc000000b00668821499c3sm7938990pfn.156.2023.07.31.13.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 13:06:09 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 1/3] arm64: dts: rockchip: Add Radxa ROCK 4C+ DSI DT-overlay
Date: Tue,  1 Aug 2023 01:35:57 +0530
Message-Id: <20230731200559.635629-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_130613_546090_088219B4 
X-CRM114-Status: GOOD (  14.50  )
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

Add DSI pipeline for Radxa ROCK 4C+ board via DT-overlay.

The DSI connector in Radxa ROCK 4C+ board support different
resolution panels and those compatible is added in another
DT-overlay.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../rk3399-rock-4c-plus-mipi-dsi.dtso         | 69 +++++++++++++++++++
 2 files changed, 70 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 1ebbb3e9c2f9..3a4c4cd769eb 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -58,6 +58,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus-mipi-dsi.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4se.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a-plus.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
new file mode 100644
index 000000000000..271717040b6c
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Radxa Computer Co., Ltd.
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ *
+ * DT-overlay for Radxa ROCK 4C+ DSI Connector.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+&{/} {
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm2 0 25000 0>;
+	};
+};
+
+&mipi_dsi {
+	clock-master;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		mipi_out: port@1 {
+			reg = <1>;
+
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+
+	panel: panel@0 {
+		/* different resolution panels are used, compatibles are in DTO */
+		reg = <0>;
+		backlight = <&backlight>;
+		vdd-supply = <&lcd_3v3>;
+		vccio-supply = <&vcc_1v8_s0>;
+		reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_panel_reset>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&pinctrl {
+	lcd {
+		lcd_panel_reset: lcd-panel-reset {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pwm2 {
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
