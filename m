Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB545C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Mar 2023 07:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPu1rHa6PHXpexYM3LOsmJlXQC40TE2Jl9lgfrizI4Q=; b=OZxmob2Fg81eji
	EOp1NljS3jE6osS5/2nOX6fEUnlVHxCzxeA2+WlvMTDiDkrfHW3BNB7w5hgDFWHshw/AOOFWkVkkE
	rVFUQCOA76kdKWUQoGEbCYAaEsz0x8nn0oBKTtmBFkyNUGc7SeSOgvc5h2WOlwglOwTNAREtWqasm
	2hCBAVrqYR57VU3VQPdmSIpDmzKxeU8K1lR1cBTt2XqEsK17arWXzbC2+Y47i4t5M9Sa6KAS3GmWB
	Ip0GF2P16+DPI9lKA/kA/YTse3FR+aIM7pMKrMP79PiGbUgKvwT/Sr89ncr3vZHnaH4JkBV6hZO/K
	Xwq3kFJvW6oS4dlVn69A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfyWJ-006NcW-1V;
	Sat, 25 Mar 2023 07:40:59 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfyVt-006NRm-0D;
	Sat, 25 Mar 2023 07:40:34 +0000
Received: by mail-yb1-xb33.google.com with SMTP id r187so4844428ybr.6;
        Sat, 25 Mar 2023 00:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679730031;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ENFbyVo6ntDOx+QsNQdjIvn/5kMh1BsTEjEJ3xCsmA=;
        b=ex/GczeP++ovZupQ3HqNy/MkN7HsVMa286tPtX0GrLD7Ds+ia9eNEyltaSDKqsF86P
         87Tt9nc5bAbOzPuKG92VXQn+8gjjA2190hqm/GCuUFHhNkRQjVhsizRW8UPrd30ny8Vr
         pZ0xmsT4Iv3P7V8hAs05kwy9TcvXx0FSBoDfRS4mWyql1+IBUZ8BotngWsujRK22k5o+
         6r9XTenmqUx3Lhnw6k/+rQAPVEKlHZLj2IsSduDihxy1/FMwJAI0cttfKGxGzjyUuSy/
         2Ma0KXEjnLCbm8/SBDSIl5e98ksZ8M4Qr6J9c6GbcZF1rhOr6q3H/oDaNxiopgVf7pYS
         8vEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679730031;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ENFbyVo6ntDOx+QsNQdjIvn/5kMh1BsTEjEJ3xCsmA=;
        b=xHOg+JrNpjkVB63WoYP32N5yyfdSh2MY3uu6OkDIeNXnW6Zo3W2z0phbqF7+JqFIuU
         9isffQcufdx8m+MwJTjUiWLUQG9oRnUKoiLqCpeS3w/71UJFZ9A6K1gXrdXJJGthQN6T
         RQE3jKe3b2Q7BJTDsq1mqpMfQBahuNCqJ7NpNw0cbNFnMdGU2S8t9vD2cYiW6aoeGSE3
         vVLm5Tie9EqR9soyMLXJssB25n+L3IWrpdpa0KIndvvWkXjtuU1Av00mh2dt3d5P4C9y
         /j+POdCyqbAdLt0UF8ydwt9LolvxcLHkB6lXhTt1kE1YC9jy4s09GLmJ/zwRAh3W7TiN
         o1XA==
X-Gm-Message-State: AAQBX9c9ieS+HDiX0Wz9QOtNOvmsKrETwV3YlZ+B7Nh6BZs8YAlZwuBy
	UpELapaJi8qF962JXLZXiOU=
X-Google-Smtp-Source: AKy350aV8Slwn420heuYfAiUsnb7FYpKpCpimHVxcbyjyQTUtydCvA9ErH1v7wPW9p19HECCceqFgg==
X-Received: by 2002:a05:6902:1108:b0:aee:c71c:1845 with SMTP id o8-20020a056902110800b00aeec71c1845mr6924755ybu.19.1679730031503;
        Sat, 25 Mar 2023 00:40:31 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id w20-20020a25c714000000b00b7767ca7498sm969629ybe.53.2023.03.25.00.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 00:40:31 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Add Xunlong OrangePi R1 Plus LTS
Date: Sat, 25 Mar 2023 15:40:22 +0800
Message-Id: <20230325074022.9818-5-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230325074022.9818-1-cnsztl@gmail.com>
References: <20230325074022.9818-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_004033_114354_AF6A2540 
X-CRM114-Status: GOOD (  14.53  )
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

The OrangePi R1 Plus LTS is a minor variant of OrangePi R1 Plus with
the on-board NIC chip changed from rtl8211e to yt8531c, and otherwise
identical to OrangePi R1 Plus.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../rockchip/rk3328-orangepi-r1-plus-lts.dts  | 40 +++++++++++++++++++
 2 files changed, 41 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus-lts.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 0bdcddd221f8..2d585bbb8f3a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -17,6 +17,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus-lts.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus-lts.dts b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus-lts.dts
new file mode 100644
index 000000000000..5d7d567283e5
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus-lts.dts
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2016 Xunlong Software. Co., Ltd.
+ * (http://www.orangepi.org)
+ *
+ * Copyright (c) 2021-2023 Tianling Shen <cnsztl@gmail.com>
+ */
+
+/dts-v1/;
+#include "rk3328-orangepi-r1-plus.dts"
+
+/ {
+	model = "Xunlong Orange Pi R1 Plus LTS";
+	compatible = "xunlong,orangepi-r1-plus-lts", "rockchip,rk3328";
+};
+
+&gmac2io {
+	phy-handle = <&yt8531c>;
+	tx_delay = <0x19>;
+	rx_delay = <0x05>;
+
+	mdio {
+		/delete-node/ ethernet-phy@1;
+
+		yt8531c: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+
+			motorcomm,clk-out-frequency-hz = <125000000>;
+			motorcomm,keep-pll-enabled;
+			motorcomm,auto-sleep-disabled;
+
+			pinctrl-0 = <&eth_phy_reset_pin>;
+			pinctrl-names = "default";
+			reset-assert-us = <15000>;
+			reset-deassert-us = <50000>;
+			reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
