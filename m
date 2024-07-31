Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2F66C3DA64
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 20:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yd0ESJhrFdHDLFlWWLcEzpj6fwcE1DyxPChzguRS3cE=; b=2pervC3l5jIghZ
	LkZKCP4DJTq2F80hdUusFAQqI1R/jsUESEAwIvPqM6tTcnjXRdFsCriE5ZNntnyvDwjujqldJ5ZAo
	5eCtJq4X7YMwUIH9iCLkZQzbHwq6gTampeFjIXNhl7Kt3Ctz3WcUUUxjc4wnixBsV2gHBbDZANp60
	Os1+UPWJ6JGCu8Ujo7aXIuvA8cmqjUUlKkBo7SSohkgIyZfrAAfMt8vA0K6969EBaoEr2Dh6lQOpV
	EvMhdsl8kYEkNXgFyuAEFjSODJohEjjwp0NKKO7eb++Ky8hP/uKt9X3eMPMmMsatDgQtz5OqlN4xS
	6X5VY6Gtrc55YCeoSKDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZG9Y-00000002U5u-1Zpo;
	Wed, 31 Jul 2024 20:42:32 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZG9U-00000002U3p-2Qi9
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 20:42:30 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id 55C3D40460CD; Wed, 31 Jul 2024 20:41:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su 55C3D40460CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1722458512;
	bh=JbmVol+m2/+t5o5qhdXnygoxInat8B0PE4SRRzzcJGY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ys9rWD27z0lbSwCgWUoq+OIgnIM/LdSRaIbB7z1Bs5DdcJeg623K5lemV1aLK3AEt
	 eB29lzrSsg6mzqCmL//FdCLE6VfZIbEfR3p7qv9tIYd0RwuMsux1fiIAhv0G/cT/Jm
	 AnEUdfg95p7v9Y/C59HqGHSCJz4IKwh9+d8Nmmrn+T1RfPnaYqNzTMnWKVocJaqLMT
	 XfjNzt7Ky3XleMQHvS6WF/4m1gI0OImqwa/Yxi/biNWV0RmkxKWhNJAKdUNvAJTrpQ
	 BRtGxErDbZD5kQN8OMDT+oDFvVeSyF1eWq8FqlfcmRMGvYpyNuWivM/uaLCYcjiDMR
	 l6EORDlTQ9iAQ==
From: Sergey Bostandzhyan <jin@mediatomb.cc>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	Sergey Bostandzhyan <jin@mediatomb.cc>
Subject: [PATCH 1/2] arm64: dts: rockchip: Add DTS for FriendlyARM NanoPi R2S Plus
Date: Wed, 31 Jul 2024 20:41:25 +0000
Message-Id: <20240731204126.8689-2-jin@mediatomb.cc>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20240731204126.8689-1-jin@mediatomb.cc>
References: <20240731204126.8689-1-jin@mediatomb.cc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_134228_805268_7925F9C8 
X-CRM114-Status: GOOD (  12.46  )
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
index 000000000000..7b83090a2145
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: GPL-2.0+
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
