Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6DDAC00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 18:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jp6+i2dsu+wpSyf2LQ/txbAp2h9u36jJI1uid8C0e5c=; b=Bjk3AAOIElWYIv
	lqjt0GGHTruhJftZx/aGNXQhhpLhTY4yQdWtf8PhpYHPszEYMFEWT+VaGFrbLqi0qAQxry758EsPZ
	qfhVdBInQmQfi+28GsYvZJmNhxwkk0xzs8TXubNUTsUC145prhtXkOp1QIKfu+qGzUaaoZW8Lu6Mj
	4Afc/1YHt+aTMxdBZyDhIpf644gQk5JXMt4Ub/TtOEfDtV/kGrnqDkbjZjng4DytzXXYhszGASbAK
	s62RSBxrohandJpv4LcCu0gJQ/chrShaNy/A9LjgjzYC4Giw8xSSxYMg7O7Of05/k3zEpOIPFbJk6
	0kJMlqkvFD9ddNyixoNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIDIU-00EmEk-BU; Sun, 31 Jul 2022 18:04:14 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID3X-00EeYL-63
	for linux-rockchip@bombadil.infradead.org; Sun, 31 Jul 2022 17:48:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=T5qIQxVEju30WosSEjk0bNR5g7IUwmKa4qiYT7O6JNs=; b=oPbwOLIfZfIugNDdKuu4Ffgdle
	6BWHC9irSx4wjrGE+dOu2GW7yl7tO8XFaPW53Ed5PDc1hmpMoTVinufs8AwJsPskQpxymHmayGqbk
	aD3teLXazUHMTbhktbrTcblq2ycqxekrisRfzsBH4GdNuShnrxIMfV+Rg12r9WuQBF+ODk5tzGx9M
	NDZsf+gmBhZ2QEl4MPFDc6LA2ptqnPpkqcmpetlYG1MhBZGDXvjUxV03eE4ZrTLILZk9ku4QvAbwU
	3tpheiL2I/i5KS6aJVKvK+KqdOWAdzvRxFDHtjos8DDhT/vUwyiE0QxJ4Pk+cniHLbH4TyImysM5w
	73utJtbg==;
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID3O-002Dd2-0q
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:48:43 +0000
Received: by mail-pg1-x52a.google.com with SMTP id r186so7820832pgr.2
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=T5qIQxVEju30WosSEjk0bNR5g7IUwmKa4qiYT7O6JNs=;
        b=jrWkmb5krCh2aYW//eKasPJ32yQ0BmURE/LzVKPg74PM+yKWHGkcvUG+HazryEOrYN
         UEFNhZXPbsH2Nqd2PZMvJgkNR0EN+++rA2rMmF+8hASpi0Ucwr2fQ+QpfWPYXN+gQ9jB
         dBLAzLvl8oL47aYLGafCN0bUS0XxwCbTwZoRxtOXGiUNcV5e+Kxb9mGtsJqR92XoXZwO
         Sxcl8YED1wOtSmnFI31r/kcgrv/MwEo7ryXCBnR4G4t2c/ss95whXL9UVL7AzPxGNXKb
         huSjuashOhX7PMz3Ml4zb6agnxQZ8f+UPiyvghHhfXa2SySAyZnbJ9Y2f7sOQyZvS7wA
         3EEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=T5qIQxVEju30WosSEjk0bNR5g7IUwmKa4qiYT7O6JNs=;
        b=iBWM8hI/eGzrePzHqb8abUW28+QGckgXDUHXj9d3pvrKLQXB1FQgEh5mlA8wRLRghx
         e+fALIRykxa8Vw+bTFhn9omjc32czp3xtE79A8pjF1jQA5qr8MRuYUeztAXD9oAgIP0H
         W6kmMmC1+pHcRUp2qSQU03PA6QioV45cg8vx/30DOxthSToWgjNZFJZd9qjuqXKeM7DZ
         Igqg/tcBwBNVbne+iybjifygV80Jo4B7uBw2HD8mq6GdyoTUUm0JF5PXEMBxHioh2I+D
         QaR83OzSAyAq5mtVYho3xT3+wxLNq5IPMo2rFflHhr8bg8sGO4dpNKeLuPCj76geS7dV
         ETBA==
X-Gm-Message-State: AJIora9AEnbSUAYjQe/fN9jfmNlLJEGNRTGuX28ZfnKYfkVR+sVy1ifx
	JISmS0xwgcYXhcfI0gZXIcY7kLTPC+j+01VeuaV5bA==
X-Google-Smtp-Source: AGRyM1s8VQ8p1VO3e5hRtUTDm+GqaAuYeELGJp7dbSngZvIi6zHakKf/5xPLoAZ6iGorYsaMSoNPdQ==
X-Received: by 2002:a05:6a00:2307:b0:52a:d2aa:2a9c with SMTP id h7-20020a056a00230700b0052ad2aa2a9cmr12747668pfh.11.1659289714371;
        Sun, 31 Jul 2022 10:48:34 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:34 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 15/20] ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
Date: Sun, 31 Jul 2022 23:17:21 +0530
Message-Id: <20220731174726.72631-16-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_184840_264682_99537BC6 
X-CRM114-Status: GOOD (  17.24  )
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

Add pinctrl definitions for Rockchip RV1126 and the pinctrl
conf's are included it from arm64 rockchip devicetree path.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- spilt pinctrl as separate patch 

 MAINTAINERS                           |   2 +-
 arch/arm/boot/dts/rv1126-pinctrl.dtsi | 302 ++++++++++++++++++++++++++
 2 files changed, 303 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi

diff --git a/MAINTAINERS b/MAINTAINERS
index f679152bdbad..124247f95787 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2646,7 +2646,7 @@ F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
 F:	Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
 F:	Documentation/devicetree/bindings/spi/spi-rockchip.yaml
 F:	arch/arm/boot/dts/rk3*
-F:	arch/arm/boot/dts/rv1108*
+F:	arch/arm/boot/dts/rv11*
 F:	arch/arm/mach-rockchip/
 F:	drivers/*/*/*rockchip*
 F:	drivers/*/*rockchip*
diff --git a/arch/arm/boot/dts/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
new file mode 100644
index 000000000000..1c46c5042221
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
@@ -0,0 +1,302 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <arm64/rockchip/rockchip-pinconf.dtsi>
+
+/*
+ * This file is auto generated by pin2dts tool, please keep these code
+ * by adding changes at end of this file.
+ */
+&pinctrl {
+	emmc {
+		/omit-if-no-ref/
+		emmc_rstnout: emmc-rstnout {
+			rockchip,pins =
+				/* emmc_rstn */
+				<1 RK_PA3 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		emmc_bus8: emmc-bus8 {
+			rockchip,pins =
+				/* emmc_d0 */
+				<0 RK_PC4 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d1 */
+				<0 RK_PC5 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d2 */
+				<0 RK_PC6 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d3 */
+				<0 RK_PC7 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d4 */
+				<0 RK_PD0 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d5 */
+				<0 RK_PD1 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d6 */
+				<0 RK_PD2 2 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d7 */
+				<0 RK_PD3 2 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		emmc_clk: emmc-clk {
+			rockchip,pins =
+				/* emmc_clko */
+				<0 RK_PD7 2 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		emmc_cmd: emmc-cmd {
+			rockchip,pins =
+				/* emmc_cmd */
+				<0 RK_PD5 2 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+	i2c0 {
+		/omit-if-no-ref/
+		i2c0_xfer: i2c0-xfer {
+			rockchip,pins =
+				/* i2c0_scl */
+				<0 RK_PB4 1 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c0_sda */
+				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
+		};
+	};
+	i2c1 {
+		/omit-if-no-ref/
+		i2c1_xfer: i2c1-xfer {
+			rockchip,pins =
+				/* i2c1_scl */
+				<1 RK_PD3 1 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c1_sda */
+				<1 RK_PD2 1 &pcfg_pull_none_drv_level_0_smt>;
+		};
+	};
+	i2c2 {
+		/omit-if-no-ref/
+		i2c2_xfer: i2c2-xfer {
+			rockchip,pins =
+				/* i2c2_scl */
+				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c2_sda */
+				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
+		};
+	};
+	i2c3 {
+		/omit-if-no-ref/
+		i2c3m0_xfer: i2c3m0-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m0 */
+				<3 RK_PA4 5 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c3_sda_m0 */
+				<3 RK_PA5 5 &pcfg_pull_none_drv_level_0_smt>;
+		};
+		/omit-if-no-ref/
+		i2c3m1_xfer: i2c3m1-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m1 */
+				<2 RK_PD4 7 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c3_sda_m1 */
+				<2 RK_PD5 7 &pcfg_pull_none_drv_level_0_smt>;
+		};
+		/omit-if-no-ref/
+		i2c3m2_xfer: i2c3m2-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m2 */
+				<1 RK_PD6 3 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c3_sda_m2 */
+				<1 RK_PD7 3 &pcfg_pull_none_drv_level_0_smt>;
+		};
+	};
+	i2c4 {
+		/omit-if-no-ref/
+		i2c4m0_xfer: i2c4m0-xfer {
+			rockchip,pins =
+				/* i2c4_scl_m0 */
+				<3 RK_PA0 7 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c4_sda_m0 */
+				<3 RK_PA1 7 &pcfg_pull_none_drv_level_0_smt>;
+		};
+		/omit-if-no-ref/
+		i2c4m1_xfer: i2c4m1-xfer {
+			rockchip,pins =
+				/* i2c4_scl_m1 */
+				<4 RK_PA0 4 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c4_sda_m1 */
+				<4 RK_PA1 4 &pcfg_pull_none_drv_level_0_smt>;
+		};
+	};
+	i2c5 {
+		/omit-if-no-ref/
+		i2c5m0_xfer: i2c5m0-xfer {
+			rockchip,pins =
+				/* i2c5_scl_m0 */
+				<2 RK_PA5 7 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c5_sda_m0 */
+				<2 RK_PB3 7 &pcfg_pull_none_drv_level_0_smt>;
+		};
+		/omit-if-no-ref/
+		i2c5m1_xfer: i2c5m1-xfer {
+			rockchip,pins =
+				/* i2c5_scl_m1 */
+				<3 RK_PB0 5 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c5_sda_m1 */
+				<3 RK_PB1 5 &pcfg_pull_none_drv_level_0_smt>;
+		};
+		/omit-if-no-ref/
+		i2c5m2_xfer: i2c5m2-xfer {
+			rockchip,pins =
+				/* i2c5_scl_m2 */
+				<1 RK_PD0 4 &pcfg_pull_none_drv_level_0_smt>,
+				/* i2c5_sda_m2 */
+				<1 RK_PD1 4 &pcfg_pull_none_drv_level_0_smt>;
+		};
+	};
+	sdmmc0 {
+		/omit-if-no-ref/
+		sdmmc0_bus4: sdmmc0-bus4 {
+			rockchip,pins =
+				/* sdmmc0_d0 */
+				<1 RK_PA4 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc0_d1 */
+				<1 RK_PA5 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc0_d2 */
+				<1 RK_PA6 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc0_d3 */
+				<1 RK_PA7 1 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		sdmmc0_clk: sdmmc0-clk {
+			rockchip,pins =
+				/* sdmmc0_clk */
+				<1 RK_PB0 1 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		sdmmc0_cmd: sdmmc0-cmd {
+			rockchip,pins =
+				/* sdmmc0_cmd */
+				<1 RK_PB1 1 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		sdmmc0_det: sdmmc0-det {
+			rockchip,pins =
+				<0 RK_PA3 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sdmmc0_pwr: sdmmc0-pwr {
+			rockchip,pins =
+				<0 RK_PC0 1 &pcfg_pull_none>;
+		};
+	};
+	sdmmc1 {
+		/omit-if-no-ref/
+		sdmmc1_bus4: sdmmc1-bus4 {
+			rockchip,pins =
+				/* sdmmc1_d0 */
+				<1 RK_PB4 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d1 */
+				<1 RK_PB5 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d2 */
+				<1 RK_PB6 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d3 */
+				<1 RK_PB7 1 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		sdmmc1_clk: sdmmc1-clk {
+			rockchip,pins =
+				/* sdmmc1_clk */
+				<1 RK_PB2 1 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		sdmmc1_cmd: sdmmc1-cmd {
+			rockchip,pins =
+				/* sdmmc1_cmd */
+				<1 RK_PB3 1 &pcfg_pull_up_drv_level_2>;
+		};
+		/omit-if-no-ref/
+		sdmmc1_det: sdmmc1-det {
+			rockchip,pins =
+				<1 RK_PD0 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		sdmmc1_pwr: sdmmc1-pwr {
+			rockchip,pins =
+				<1 RK_PD1 2 &pcfg_pull_none>;
+		};
+	};
+	uart0 {
+		/omit-if-no-ref/
+		uart0_xfer: uart0-xfer {
+			rockchip,pins =
+				/* uart0_rx */
+				<1 RK_PC2 1 &pcfg_pull_up>,
+				/* uart0_tx */
+				<1 RK_PC3 1 &pcfg_pull_up>;
+		};
+		/omit-if-no-ref/
+		uart0_ctsn: uart0-ctsn {
+			rockchip,pins =
+				<1 RK_PC1 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart0_rtsn: uart0-rtsn {
+			rockchip,pins =
+				<1 RK_PC0 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart0_rtsn_gpio: uart0-rts-pin {
+			rockchip,pins =
+				<1 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+	uart1 {
+		/omit-if-no-ref/
+		uart1m0_xfer: uart1m0-xfer {
+			rockchip,pins =
+				/* uart1_rx_m0 */
+				<0 RK_PB7 2 &pcfg_pull_up>,
+				/* uart1_tx_m0 */
+				<0 RK_PB6 2 &pcfg_pull_up>;
+		};
+	};
+	uart2 {
+		/omit-if-no-ref/
+		uart2m1_xfer: uart2m1-xfer {
+			rockchip,pins =
+				/* uart2_rx_m1 */
+				<3 RK_PA3 1 &pcfg_pull_up>,
+				/* uart2_tx_m1 */
+				<3 RK_PA2 1 &pcfg_pull_up>;
+		};
+	};
+	uart3 {
+		/omit-if-no-ref/
+		uart3m0_xfer: uart3m0-xfer {
+			rockchip,pins =
+				/* uart3_rx_m0 */
+				<3 RK_PC7 4 &pcfg_pull_up>,
+				/* uart3_tx_m0 */
+				<3 RK_PC6 4 &pcfg_pull_up>;
+		};
+	};
+	uart4 {
+		/omit-if-no-ref/
+		uart4m0_xfer: uart4m0-xfer {
+			rockchip,pins =
+				/* uart4_rx_m0 */
+				<3 RK_PA5 4 &pcfg_pull_up>,
+				/* uart4_tx_m0 */
+				<3 RK_PA4 4 &pcfg_pull_up>;
+		};
+	};
+	uart5 {
+		/omit-if-no-ref/
+		uart5m0_xfer: uart5m0-xfer {
+			rockchip,pins =
+				/* uart5_rx_m0 */
+				<3 RK_PA7 4 &pcfg_pull_up>,
+				/* uart5_tx_m0 */
+				<3 RK_PA6 4 &pcfg_pull_up>;
+		};
+	};
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
