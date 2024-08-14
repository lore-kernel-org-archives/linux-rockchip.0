Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 092D4C52D7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 17:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQXozA2HEO9/OqzrEWfjxoW8qIBiB5yLE/bljTSmmZk=; b=eaikV1GOUOi7Vt
	FSzw4i8kucutgol5ZAmKMSwvbT939XfL6zEGvq32ForK81uPzZ3hwwI/Ot82JtXMpPf32nuqvTO5B
	/p/yoMmb1ydOmfdIpdAWjRHR7u3BqUGOTpFed2CH+veUrJK009t3FIv+JOL1NngwOxmX4F22Kjjh7
	Hxf/jB/SSX/JbLyyffbeF+rqBaLr0FU2+YtXPXlpeD/DwaC6/XxDRSFNknnQ/cT0/1nwdFGfwca7F
	opfwv4k8r6r1HQtCWHBX8JlnKx5bVb9TJK0PDrkzY/Dq/Q/wo6NxkU5JXefXCwn000OMnDWQ3oWb+
	z86q0tpOoZrwfG3MB98g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seHOt-00000007lUs-3O5g;
	Wed, 14 Aug 2024 17:03:07 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seHNg-00000007lC1-45qF;
	Wed, 14 Aug 2024 17:01:54 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id ADA7340460CF; Wed, 14 Aug 2024 17:01:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su ADA7340460CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1723654875;
	bh=ACf6VgbHVRXgS+SfXwLNva9kdcJ56r93s9Sim2553XU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BXrTPXh5uUagGPopLbSjTJE+04t339oOT9bQgn2PzWBtwXPg355OBnLtjR1nR+uNE
	 YtrHEk1RQm8Gd2IRYYPSClwFAxG9eI5A3fbiHXiWIRO2P774jXpR4DNT3zxa+HVI/N
	 5EfPr8JYGwC9KW9IKhZ29OnNP1N0oQTp2Zy1+8qiFQxFpRhDE6B8Yo4jzqGEsfTdUQ
	 YwTF335CQOUAV5lcjQnVrz9IgRyXyBOlODit4CLEPCMZIlC1R5MJ3w2e6cqDFjcUhN
	 3QDSkzEKscjAQ9h2YK54jS7zcsAGG4dZAK29xozr/uYYmZ+lUo6nGV+ADsKOcZ2u1f
	 nHadmjNvyMUFw==
From: Sergey Bostandzhyan <jin@mediatomb.cc>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sergey Bostandzhyan <jin@mediatomb.cc>
Subject: [PATCH v3 1/3] arm64: dts: rockchip: Add DTS for FriendlyARM NanoPi R2S Plus
Date: Wed, 14 Aug 2024 17:00:46 +0000
Message-Id: <20240814170048.23816-2-jin@mediatomb.cc>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20240814170048.23816-1-jin@mediatomb.cc>
References: <20240814170048.23816-1-jin@mediatomb.cc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_100153_077525_B1F7BB77 
X-CRM114-Status: GOOD (  13.16  )
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

The R2S Plus is basically an R2S with additional eMMC.

The eMMC configuration for the DTS has been extracted and copied from
rk3328-nanopi-r2.dts, v2017.09 branch from the friendlyarm/uboot-rockchip
repository.

Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3328-nanopi-r2s-plus.dts   | 31 +++++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index fda1b980eb4b..36258dc8dafd 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -20,6 +20,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2c-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus-lts.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
new file mode 100644
index 000000000000..12eabdbf8fe8
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * (C) Copyright 2018 FriendlyElec Computer Tech. Co., Ltd.
+ * (http://www.friendlyarm.com)
+ *
+ * (C) Copyright 2016 Rockchip Electronics Co., Ltd
+ */
+
+/dts-v1/;
+#include "rk3328-nanopi-r2s.dts"
+
+/ {
+	model = "FriendlyElec NanoPi R2S Plus";
+	compatible = "friendlyarm,nanopi-r2s-plus", "rockchip,rk3328";
+
+	aliases {
+		mmc1 = &emmc;
+	};
+};
+
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	supports-emmc;
+	disable-wp;
+	non-removable;
+	num-slots = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
+	status = "okay";
+};
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
