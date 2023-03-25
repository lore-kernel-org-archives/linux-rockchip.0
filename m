Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF8C6C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Mar 2023 07:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fVI3XlEfSdj7IKDbU+q50qlBzhH3NAQjXzVSMt4h8g=; b=Hi3CJRtNFH8eKP
	9LfP4xrF68ZqQH/5M3pgrN1VPd3YPzdRMXo/Jx4n6OqoGxR1wrY7eP0jj1jVyKNXICN/fcEev/8JF
	W3gTf+IMbomZNta/t9GYVsss5HO9Vdio3dV/+Kvdn5T0RwvvQflehbQI0KLPDw1zn71/p2TIqm9TT
	2GKebXQqOkfuYJwjImQDFKWTqw7iPYe7Yz/5U/LC3iYFiKm1VwlyiezL+XOveseWXqhTZgjCx6uxJ
	n8e5ZCT7LfuUEgOgp0AZg8ruWTDyZTyhC49AMx+kMhSXUb5pdOvrx70wNUbk6/AeTJu/oxn+jxjGp
	FoL3vIpk3o/C8oecZJuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfyW1-006NVF-1I;
	Sat, 25 Mar 2023 07:40:41 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfyVq-006NQV-0p;
	Sat, 25 Mar 2023 07:40:31 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id i7so4899100ybt.0;
        Sat, 25 Mar 2023 00:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679730029;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eOjM89dV+f1cFPNk0j8IHVhvMB89HUV+FlvJghSUjlQ=;
        b=gfRyBqIuHNtuwisQ4ZSxroEKvFZoJbr3nas9/f7xD74gwOPMMD6Xvf204czxNB20Xv
         Tja2SvkYzR002rDfUvE94qoNlZHiXFXwhvWjfEq+GhEuMMGjF4F9zkWCFPK4Teyia7Z+
         xOSa9ujsTkL0zAKj2i1lrWLeyD9Ai6nCsXHH85j3FdQXMah0lY45iFdRdSjxnyy69Jkm
         fUN2TTiJnCLmnzIeSbGwPZHJdlbsbllJNDqH5zRL0ID4Oq690uz2L6vt/VNOB+cvvXei
         SoM3x1UgGz8/2F7+Ju8oj1P+zfqELz43wzXZEHCUwjPsGp9cDqJM811Nx48yUNtbStrd
         yV1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679730029;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eOjM89dV+f1cFPNk0j8IHVhvMB89HUV+FlvJghSUjlQ=;
        b=mlkZevFP/gZLIlupUXXindyfZRDs54s9LiuQf6nFuP9hZ+LR8/HaxjjlJw+RW7Hb/F
         daLATEpm8+XwoD/PPVDy3SOHqGHBkEfSqqvsAMuNXIMNjwf4HOrgm6paSq0wUIpsHaVa
         PsT+bfgnKqoGy0vJmglOT807HSGnLiYCCkgxzEYMBLJkV/4HR5CaPvy60kZI0A1NzzXg
         aqVN9wIDFU+rPLv9ecxvp2/whkXKFbXuClz37QngU4q2jV65UaTzyvjcIaveWiXyRg8h
         tkIu4jLJNd1qspsjftkQCOGyNGfTde8uGLEKXEfQlJtmhVaURNr7BCM5z9RuB4v14K4U
         tDSA==
X-Gm-Message-State: AAQBX9dxivwy2b0rwlllELNk9hBCwhXoCZWjIp+PdQXyzxDoJDbSgfz1
	THuo6VTPt9sn2SztOB10Kgo=
X-Google-Smtp-Source: AKy350bKgQHX0o/LdQ5YecW3frRWq3nWQ5rIjUiyBiF+dynqiC4j/ODd0gT0jo7b766gNsbVe/fwHQ==
X-Received: by 2002:a05:6902:154f:b0:b72:571d:f6cc with SMTP id r15-20020a056902154f00b00b72571df6ccmr926484ybu.4.1679730028858;
        Sat, 25 Mar 2023 00:40:28 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id w20-20020a25c714000000b00b7767ca7498sm969629ybe.53.2023.03.25.00.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 00:40:28 -0700 (PDT)
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
Subject: [PATCH v2 2/4] arm64: dts: rockchip: Add FriendlyARM NanoPi R2C
Date: Sat, 25 Mar 2023 15:40:20 +0800
Message-Id: <20230325074022.9818-3-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230325074022.9818-1-cnsztl@gmail.com>
References: <20230325074022.9818-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_004030_291264_A990CB79 
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
