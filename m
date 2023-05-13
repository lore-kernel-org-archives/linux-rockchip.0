Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2C01C77B7F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 13:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yuxKD6t2v6z2be6psoLVuE9MMrRTVWnGY4mZt0NH3E=; b=JisyJ8uYf1hmmb
	QzJNdOJZWuXQ1IOwzH4JTjC3WAqaGKAEtbb4Riq/2Mb1nfSgXjEnTQJuln20OGX0aI76tqy/nmnEx
	cXC8a2D5h450XO3h3OwHaG0kMAZ97QF+bnKr14D49n/b6BwtWZG5zFtVGs20qQ29tWoXbdF7Vc31D
	6KszdZUzxHs4+/CBYxZCw97PTfWnEMmQTaJT4e/3cY4sUzSh9nHolQJfCvlEkuWlSB+ii5RHcu3aR
	HXN+FR8pWsI81BjMoPkVSKNdmg1XSDU+zy3IAnJUg7fw+kgMDeMPl+SgLJEm89BApziaDQIK5PNk5
	Sl7xP8c1VwZRE3SZVIUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxpgW-00FBan-1B;
	Sat, 13 May 2023 13:53:20 +0000
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxpgP-00FBXw-27;
	Sat, 13 May 2023 13:53:15 +0000
Received: by mail-io1-xd31.google.com with SMTP id ca18e2360f4ac-76c7dfc2e8dso73644039f.0;
        Sat, 13 May 2023 06:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683985992; x=1686577992;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lF7mehPLMjL5OZaTFQl/kMEkbCLZtsVwkKNA6vrL8JU=;
        b=qdGJFPg3NqSXLFka5rKK/RMrMKXbnVsr6NcR/ogSxw0jAlCZphr2Unb6lEe90wFA1W
         tDMARM+47esPReYF2YBFh/HYNDv0WGGv03pwazRusaKGWzo18AFyuhbgWiP0biaYoxmi
         bcNwUQT/ojxu8lB31R0vKlSO2SYxKGYK9nDqHhkC8eBm1KVzmLxW2VJRxgAxc+mukg8T
         zEetRvkJV6sBX8I54INuTsTcxr/QiKJbxyf/5G3jXawxypAiLZegaLwVu5F6mMxfaIOb
         VhOP3K9WdK/yuaxkTyLVApLY0DurPI+lv4Gpdcs6AYvEgr0dJyyv+vKl59c509XlRNHQ
         HLnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683985992; x=1686577992;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lF7mehPLMjL5OZaTFQl/kMEkbCLZtsVwkKNA6vrL8JU=;
        b=is12TrtnmEMTreCbNzJbYVfMysKMQyypr23YGUwrBSxQGMVDJsFjBJLDqt9RzyomT9
         iz2cRoLvVa9Z67CNutk4Luh351cM3dPb2L0GdZMoiIatnKE+7JMNKU6ctl11bs1wtZl/
         v2X1o376djOXxha6ywsQh3vFhrGfW83nbHTeBcilTyywLqBl4+pEen7Fmssrv6jfX8Yk
         41B9Z9URQJRZusji0dzA/3cQNi0XSErJY71AtMjfYIUsELWNjKsI7Vvmm87MT60cG5Wn
         bsnE9uK+C5na8Kl2QCCunK6fCNCXp5x5w9QRDoPylflCEG2eZnMsEe/mPSVL9fm8x72u
         Lo4Q==
X-Gm-Message-State: AC+VfDx8gUzHQs0MKUKU2WZDdiYGln/EbFVJ15k8LHDI4Trr3wTJaGTk
	kNhyoTDgGKgKZVbqGziz9/E=
X-Google-Smtp-Source: ACHHUZ4HZsAhYDfynS5QZJctHJUQqMaoi49L+tG8f5On4iw+OxKku9r5jwtrTtqY0PA69aRAQhUUtg==
X-Received: by 2002:a6b:3c05:0:b0:760:ee29:5103 with SMTP id k5-20020a6b3c05000000b00760ee295103mr17995767iob.15.1683985992258;
        Sat, 13 May 2023 06:53:12 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id r15-20020a6bd90f000000b0076ca45ebfc4sm1104991ioc.14.2023.05.13.06.53.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 May 2023 06:53:11 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andrew Powers-Holmes <aholmes@omnom.net>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Add FriendlyARM NanoPi R2C Plus
Date: Sat, 13 May 2023 21:53:07 +0800
Message-Id: <20230513135307.26554-2-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230513135307.26554-1-cnsztl@gmail.com>
References: <20230513135307.26554-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_065313_727317_B4FDC991 
X-CRM114-Status: GOOD (  14.34  )
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

The NanoPi R2C Plus is a small variant of NanoPi R2C with a on-board
eMMC flash (8G) included.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---

no changes in v2

---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3328-nanopi-r2c-plus.dts   | 33 +++++++++++++++++++
 2 files changed, 34 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c-plus.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 1cf105d7407f..794da4d41f14 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -15,6 +15,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go3.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2c.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2c-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus-lts.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c-plus.dts
new file mode 100644
index 000000000000..16a1958e4572
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c-plus.dts
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2021 FriendlyElec Computer Tech. Co., Ltd.
+ * (http://www.friendlyarm.com)
+ *
+ * Copyright (c) 2023 Tianling Shen <cnsztl@gmail.com>
+ */
+
+/dts-v1/;
+#include "rk3328-nanopi-r2c.dts"
+
+/ {
+	model = "FriendlyElec NanoPi R2C Plus";
+	compatible = "friendlyarm,nanopi-r2c-plus", "rockchip,rk3328";
+
+	aliases {
+		mmc1 = &emmc;
+	};
+};
+
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	max-frequency = <150000000>;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
+	vmmc-supply = <&vcc_io_33>;
+	vqmmc-supply = <&vcc18_emmc>;
+	status = "okay";
+};
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
