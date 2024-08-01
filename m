Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5286CC3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 18:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yd0ESJhrFdHDLFlWWLcEzpj6fwcE1DyxPChzguRS3cE=; b=S3L1jbtUd3lhle
	kF7gz6atu6yijGleENio9iOkzrJqhT1jSda3OeTNSMKTPmR45DYamRDgfTls62Tp5rmNTfMZi2jLd
	5INoqJmpKaY/k1sRyCnp3wvcccr3tgRSlNfzkyyye+cMzeay6LncChKT0e4SUDq+RFTe1pOycXdUE
	GQK1oZbhOcGTvH0ee2+xGPQX4ZxB7lleJtPVWfco9/W0rWTv/KRKQUdw5+kzz1jk00NUkzC64Mkhf
	kA9i+9psSwHr4++WBtPJpSzGZxk6+pNkMvClW612k9QuGYRfH2CRMxDN37erGtijeTFSwkGumVNZz
	EuAeRheRf5vcS30VGV/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZa5u-00000006KYB-2xUi;
	Thu, 01 Aug 2024 18:00:06 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZa4v-00000006KKI-0X20;
	Thu, 01 Aug 2024 17:59:06 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id A660F40460CD; Thu,  1 Aug 2024 17:58:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su A660F40460CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1722535090;
	bh=JbmVol+m2/+t5o5qhdXnygoxInat8B0PE4SRRzzcJGY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BniVt1rf6y9Q4y5stTxHkq8c56aaUL8fdLqEeEG4KLMC604HpzbKfoTvzGOJTd/HD
	 0YGpianEaLogTjQSssUTx0Yk39VkuYHIB9rEmymFZq/bwxSgtwX9Ybhwocv33Vmz0p
	 TQ8PPVviSOjItJJTTRy7D2k1cKlVLQ9ansZHqHo8Mh5/KTTbS6XAqtFTdPPXLUtrK1
	 wTiJof9B3nvl5RP8iMJOwKu9/j8RSifWdOP9UAWVPpByXuEHUmPRcBS+tV/fhfdz/o
	 h4s7vTqaYim8lVD4ufnrvqDf/fjktbc2/8jhqORIhZQy3cYbHau4rL6RAYZPLeQJUu
	 hok/rsxsLRr8g==
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
Subject: [PATCH V2 1/2 RESEND] arm64: dts: rockchip: Add DTS for FriendlyARM NanoPi R2S Plus
Date: Thu,  1 Aug 2024 17:57:35 +0000
Message-Id: <20240801175736.16591-2-jin@mediatomb.cc>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20240801175736.16591-1-jin@mediatomb.cc>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
 <20240801175736.16591-1-jin@mediatomb.cc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_105905_241383_64B0F85F 
X-CRM114-Status: GOOD (  13.42  )
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
