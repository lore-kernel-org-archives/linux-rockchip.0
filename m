Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F519C76195
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Mar 2023 12:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fVI3XlEfSdj7IKDbU+q50qlBzhH3NAQjXzVSMt4h8g=; b=Kwn0SAf2W5u7lX
	dzdW+BJVEk7rBY/bgx4zf4kY0oIc5LGN64bJzHl0CF5aoIX32OOFBVgZ9OU4f6FaRtTRqQLP7GTzp
	O3SH3zc3LY2GMiqETw8AiigE4S0Bi4GKsXgA3WeRXTloOHZuXP4xKRrLb0zSPs0/6t35rthHDtPZo
	w3qjiP2qd9u+Uhz/VJwlSfgthMtfYMQqb3EBxUdcnTH4U5qmcVC2mFGRhOIyPzeoJNr444ByX9Fgo
	/fck9bh38FhxHcUYeSZqzSo/J/rxzWMowrRB+BhUHrQCR7OJEK0IhfkoHVrCgo4VnLQDBncneZGMG
	8XVZWLvbeno3ZtEUvTfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKD7-001wM9-0V;
	Thu, 23 Mar 2023 12:38:29 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKCz-001wFv-0F;
	Thu, 23 Mar 2023 12:38:22 +0000
Received: by mail-io1-xd30.google.com with SMTP id bl9so3424810iob.8;
        Thu, 23 Mar 2023 05:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679575095;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eOjM89dV+f1cFPNk0j8IHVhvMB89HUV+FlvJghSUjlQ=;
        b=oDrfA7Heo6Vii3zxTD9VbIKYMRnBixv6HAELcEcGLMpFGeAoZH9vdFffAgj20IE0Cm
         JdyQaJsBpjRACmOt7cGpDQ9ak8eIsM21e+iUUk57AYhfjF8fDHMC975KoxQhH/f61Xsj
         hINIucw99ESCNrZZ8q/a8tRz/oVzaCa7M8zScJ6G8TCrE/W8HrEpoeO3MDmmlmU0oznQ
         N3gvJs5hXYStRNmzcJe6H7H7SzuOdrJFLjo1UotAOHRWhfMssbongPqHjFobM4ng+D8Q
         TWD5xJP7Mry1dHTfJ1XvrW6aOYiDgivIxtISxvfu1VT0uuhv6buQ1GcGLSVy9yaz0zYT
         eAZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679575095;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eOjM89dV+f1cFPNk0j8IHVhvMB89HUV+FlvJghSUjlQ=;
        b=BuNbmSD9piA/vT0W1/nnHaEyumuRFAqV5+pmkSFiVE9G1oBROZj0nV26T5D2NY6akF
         wCupEO0JkaQU2yMxjGHEojk+/yRSxdaLYJb+2RUlPTyHYck36McI9JdFAboDRTXNHBH6
         gra+rYhu7AkWXGoXVrnzNTTNkRxHDGA5zPzbUO7OJ14/M1+BtdU6UzqMN9OMxitTPDgR
         IOypsIXZ6BqyV++dYA50qknsZdXSeHpbVa7yAusgS7NS+EomeE5TV9eLY8K6IxEr0KTN
         PdYj6Ml/4IeoGpHYfupy4ax+Qii5B5QccjMctRkWBKX3a87GuXpdIcvdZfZvbt957Vs7
         JZNg==
X-Gm-Message-State: AO0yUKVYSXfdULiW5HMypAA8jaipOn/OZ9qjvkDxefc31Z18TnSoB3/z
	1sfPhUzd46+OdCE4q2zb3PE=
X-Google-Smtp-Source: AK7set/emyrbUtQ4ilsKCyUOhtWp+dPiXfrcqXwi6fGfLTvcANPirMisjAWHgkNVsSJSdpJfqH5FxQ==
X-Received: by 2002:a5d:894b:0:b0:74c:9df4:5c2a with SMTP id b11-20020a5d894b000000b0074c9df45c2amr6030449iot.12.1679575095047;
        Thu, 23 Mar 2023 05:38:15 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id n11-20020a6bed0b000000b00758993500f3sm1307608iog.7.2023.03.23.05.38.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 05:38:14 -0700 (PDT)
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
	Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] arm64: dts: rockchip: Add FriendlyARM NanoPi R2C
Date: Thu, 23 Mar 2023 20:38:05 +0800
Message-Id: <20230323123807.11882-3-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230323123807.11882-1-cnsztl@gmail.com>
References: <20230323123807.11882-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_053821_113065_E905CCF1 
X-CRM114-Status: GOOD (  14.72  )
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

The NanoPi R2C is a minor variant of NanoPi R2S with the on-board NIC
chip changed from rtl8211e to yt8521s, and otherwise identical to R2S.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3328-nanopi-r2c.dts   | 40 +++++++++++++++++++
 2 files changed, 41 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index a315a8117b0f..0bdcddd221f8 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -14,6 +14,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2-v11.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go3.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c.dts
new file mode 100644
index 000000000000..a07a26b944a0
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c.dts
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2021 FriendlyElec Computer Tech. Co., Ltd.
+ * (http://www.friendlyarm.com)
+ *
+ * Copyright (c) 2021-2023 Tianling Shen <cnsztl@gmail.com>
+ */
+
+/dts-v1/;
+#include "rk3328-nanopi-r2s.dts"
+
+/ {
+	model = "FriendlyElec NanoPi R2C";
+	compatible = "friendlyarm,nanopi-r2c", "rockchip,rk3328";
+};
+
+&gmac2io {
+	phy-handle = <&yt8521s>;
+	tx_delay = <0x22>;
+	rx_delay = <0x12>;
+
+	mdio {
+		/delete-node/ ethernet-phy@1;
+
+		yt8521s: ethernet-phy@3 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <3>;
+
+			motorcomm,clk-out-frequency-hz = <125000000>;
+			motorcomm,keep-pll-enabled;
+			motorcomm,auto-sleep-disabled;
+
+			pinctrl-0 = <&eth_phy_reset_pin>;
+			pinctrl-names = "default";
+			reset-assert-us = <10000>;
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
