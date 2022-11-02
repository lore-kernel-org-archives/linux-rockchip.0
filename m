Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5DD3C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Nov 2022 12:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xamId2JebZ0z1sXxS/7PJcEVnAy4na52kqCjxRk7Sys=; b=jCVoYPeDwRb7Zw
	KsaesDb3EZYskSEpyymkVVa7DIVhtpAaXLOEF5qBLjt1K8yI5oMoFf0QK+YTudwikgMyFOHcKMjVN
	jnzaT5lVXJ1oo/mDYatZw7pzAuG3rzJQ9A3IkkDLmWeUrCora7nsCWeaLDVjeI1NsHQd3VFb53kFD
	DNMbYQ3u87h/3N+Dl5Nf4EAv1ZnHVLNzo4bBcOhjdnNn3DGn8pfsW+zsshqUc+jx1L0UijGH3hk1v
	EI8GCeC1cgLkbY6/z/JwZmRagzvUTwFsvaU094N5lPydC6pfcEjqc0HHECrn1CU1xQpEq8CD/w/bJ
	JBFV039/+xNFpcyEh97g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqD8X-00B2rT-Dk; Wed, 02 Nov 2022 12:46:29 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqD8T-00B2ou-EH
	for linux-rockchip@lists.infradead.org; Wed, 02 Nov 2022 12:46:27 +0000
Received: by mail-pl1-x629.google.com with SMTP id y4so16479867plb.2
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Nov 2022 05:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kO6+CnIeDGV1TT1m2dtttHbeeP5ee+5E/D067fCY9pY=;
        b=R4ymprkNzMdWNSWjsnePOPgdNqr6+axbObfeBWm1bPoRpdjHwSePgIJie3HD9Yt5gv
         YIKJSpthX4N1wHY0ml6jMTt6c0uzfkd2tuEbIiwQ4jxzwlsmKqB3h3njmZ0PHakYZKaz
         bfcf6/vAsDzWI+5kUgZ2PShznNBlPPIcwC4JGQBOqFlEpQV3oE4Gkwe6f7Zkd1pzXSIX
         LvAvc02wugHtm+hVLGxWY2GNBwCN78y0512idxABnuBtB0b8iMvSE+kMvYabaIBKNGBU
         1R4yQXZFpm/2j0T5+t1HkfaZVFyyepdVuCc2+u3rgzvTC8Ia+7+VtWU86t4cwA5MeSAA
         azrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kO6+CnIeDGV1TT1m2dtttHbeeP5ee+5E/D067fCY9pY=;
        b=mlJJTLh0C60deWHEe7bDJgAhv7U4U+UCANfw1yjapshPMsdayMTofKQAU6d/BmEq1l
         YbahAqDbBykL7Zo1YFPfew8h7eMVer8c9vNjwZPDOX9OHxYSc0eIxnAeSeYnpsOoE9XT
         94Gfb70xqDJEVY4J0EwyGT2znjaK/C92lwoIRmACnPQTD5iOFu0LWh3UE7sgBl3u7y83
         nPipJm0KQOyKfaOk8i2fHcErYr12HuThv8N7Q5sEGorxoXjF2BPGRWF/hsYAUR3auR/n
         4mE7bgywLehX4utYdLT0XRcPl3eAu06LQ42ElfLeWQOAIcQLbD8x4uI7WN0/gqMhddxZ
         fvxQ==
X-Gm-Message-State: ACrzQf2pa1GP7Ui8l5Fx/1QJtUlezM7UT4sKL1IOpDzpTCIWXHjSEpmk
	YCUxN8TJvTV11U8usFfm8t8gpA==
X-Google-Smtp-Source: AMsMyM7f5o5dkoKkL/hBc8xki/YP7nnqiLXIbcFkCsswbgmL4XwXxC3F40mRTJA4kDIaJigHz5z/rg==
X-Received: by 2002:a17:902:7485:b0:17d:5176:fe6e with SMTP id h5-20020a170902748500b0017d5176fe6emr24850640pll.147.1667393181426;
        Wed, 02 Nov 2022 05:46:21 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a809:aeff:563:9036:6729])
        by smtp.gmail.com with ESMTPSA id g31-20020a63565f000000b00460fbe0d75esm7549533pgm.31.2022.11.02.05.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 05:46:21 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v6 1/6] ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
Date: Wed,  2 Nov 2022 18:16:02 +0530
Message-Id: <20221102124607.297083-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_054625_761545_A6CDEFEE 
X-CRM114-Status: GOOD (  17.92  )
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

Add pinctrl definitions for Rockchip RV1126.

From RK3568 on-wards pinctrl configurations are maintained
in common conf file rockchip-pinconf.dtsi and it is available
in arm64 path (arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi).

So, include the same conf file to RV1126 pinctrl from arm64 path.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v6:
- updated commit message
Changes for v5:
- none
Changes for v4:
- update i2c pins
- rebase on -next
Changes for v3:
- none
Changes for v2:
- spilt pinctrl as separate patch 

 MAINTAINERS                           |   2 +-
 arch/arm/boot/dts/rv1126-pinctrl.dtsi | 212 ++++++++++++++++++++++++++
 2 files changed, 213 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi

diff --git a/MAINTAINERS b/MAINTAINERS
index 5f66378dcfb0..4fd0fa773209 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2750,7 +2750,7 @@ F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
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
index 000000000000..8d660d7c81ba
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
@@ -0,0 +1,212 @@
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
