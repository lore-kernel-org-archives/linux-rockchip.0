Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B51FC76195
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Mar 2023 12:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPu1rHa6PHXpexYM3LOsmJlXQC40TE2Jl9lgfrizI4Q=; b=e6EYNnlZzgORH2
	lxLmB5c4CK6zY2sNqMN7tGtZUg57oujMC7VxvGRMbIBdRZyiG/KeI+JWMYr8kM/7nCGKDn+ncmdyG
	l0GvKsTKMKTyYcOWoi2qW8noQP214nVoYTx8W+QIjkzZhDqrYJI+AOOBIEpepulzt/EtJxu/WIloA
	MiC4RI19zOr+jq46GNEhJRjWXkK/zrBuX3w7o1UQk4oustOnIXqYlSHXhQ6Aq7416Jrwg7Sq5fh7x
	zOunxSuZMpqfhj8uwKE7yWa4gAuVp+QKi/81o68TFm9F+eRQYIUZoI7eVnuQVUKBD9XFApu3M6PyL
	h9SBMbuV6rhEQnRTMYEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKD8-001wNC-39;
	Thu, 23 Mar 2023 12:38:30 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKCz-001wH4-1p;
	Thu, 23 Mar 2023 12:38:23 +0000
Received: by mail-io1-xd33.google.com with SMTP id k17so9886895iob.1;
        Thu, 23 Mar 2023 05:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679575098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ENFbyVo6ntDOx+QsNQdjIvn/5kMh1BsTEjEJ3xCsmA=;
        b=gusgrPJ5tIfDMajJ9dD9H6OPD/k85/TF8VNdLZ9CSn3HKJpS2UHnT3ndA7cbj+z6Yg
         D/R40cVIC2EW/UvTz2uoeTG1q5tQ7He0Sa5cBtLuM8D8+WVssapgIT7mQoII1OtfGpwR
         snxu1+TuXy9KzPh/yCKcn/TeveiTxMy5FeJZRNq4D9g5xtgy3pY/tqGRudkE6gwk6xyI
         rOvm5US8DecYxfAy1fMcGGi/4jlTz5o4L5zY1NcmQFbitFu8GUddM11TA4qjwYCMOqFR
         QtuzEBQyQ+D72cmqVTT3+3ibT57+GI4ckVz1KExeq6c7ieHBg34I5oZi45YYlJjV4zmm
         vVDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679575098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ENFbyVo6ntDOx+QsNQdjIvn/5kMh1BsTEjEJ3xCsmA=;
        b=UYt7/c/F+hF0F30x0PJt0cach75SFAf8w+og48wTB6T+t4pNNXuHLk3V0Yg1opzPtH
         fWAyv+30fxqqz5AfQBGLpW9PfELWDkxGKqpdrB6YEVZTNK5GTrBPlsQCu37JKeHtgllw
         fxbi0N2oDbzdfGG2VjWU4CpbABipDf1TOXnXX95Mk2i7Rw+upVjelzz/ZTZJjfyM4uvC
         NJ4EAiT12BwMgPFj59MYlOlsYaLNxXl+g/gwKFsbmHInukMvDqgy3yBVoeucTaqX5HfG
         A+t1aGSUkrWTDRuDoX7x58hL6L9AvF8z8apOZw0zfXQRn3U1UL9uWOU4ggtht89/fgwD
         6P/w==
X-Gm-Message-State: AO0yUKVTtyK9O/Xt0Yaji1Xsz04eLTgXQOBkIQx9PQ4/6rwr4ry9KjyA
	CkSvZG1QOSaRMoLwTq8qbjM=
X-Google-Smtp-Source: AK7set+IaJfYgWqqcuRAkH2Km+qXS+Iwzem0q/SeHq8SA0lVnfafOdrDz9WP8FLjnAaL1C8mue4bQA==
X-Received: by 2002:a5e:9705:0:b0:758:a91a:aa82 with SMTP id w5-20020a5e9705000000b00758a91aaa82mr3711730ioj.11.1679575097662;
        Thu, 23 Mar 2023 05:38:17 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id n11-20020a6bed0b000000b00758993500f3sm1307608iog.7.2023.03.23.05.38.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 05:38:17 -0700 (PDT)
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
Subject: [PATCH 4/4] arm64: dts: rockchip: Add Xunlong OrangePi R1 Plus LTS
Date: Thu, 23 Mar 2023 20:38:07 +0800
Message-Id: <20230323123807.11882-5-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230323123807.11882-1-cnsztl@gmail.com>
References: <20230323123807.11882-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_053821_603755_6962E368 
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
