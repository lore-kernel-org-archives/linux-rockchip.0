Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 969F2EEB59A
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Sep 2023 06:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCsRv4l8r9gqIeR70KfDVDZ6odTtYDJD4Fve7ZxbPdM=; b=O1Ezj/6RHUL1ZI
	PZu4GuRW2ZamjCR6vrMasuYJPx38ee1ADSAhONMa52qvk2YCl0C7QGG9gSqV6PjVX4qGDKAl9nQLI
	jtf77pbip/tuP74bW0ZW+xPCHhLOW8N+CXDfSkDoQOhlMUVPIggJx0hOFWTNS/HWizsJo4uz48Nvu
	F9JhRpw+1M1vZQjw+9p6JmFY4MmQCiBbYaGCMjIeE+wRN3D4JhvUJdw7wV+0N7T91Up0gOsJ1QyFW
	isFrubsJ0x09NA/aeQ1NZ2CX++uQ302UPlIWc/ycjUw5hFfORj/QUaNRsdQjxfHC0wFdUdEsMI58A
	cd2rlrDL2R6YMOkJyqLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgJdl-004qN0-1w;
	Wed, 13 Sep 2023 06:46:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgJdk-004qMc-0h
	for linux-rockchip@bombadil.infradead.org;
	Wed, 13 Sep 2023 06:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=z28PaEZ8xF7hKW4uZ19BRSR06MdLzYORbKHcY9yokcE=; b=dRK2NuqJaV1VyriO+lrEaaiTJA
	VQyjgLzKQH5icMNcF9RyCNvCJNWdGxLizhrqiKcCCOBhMRXNZzrYYF6jgjpXiZi3XsCDNrQFXh65K
	hsfZQtjwz7no3Mo69DDwGbdCI7pJAM8OW+KiplsVZr1VNsc/w2FU6EILTX2osNoUhJwoR4b7wQwg7
	nqzGrbAruuYigBtB8xrtB6JqS7bf2s5qLP656KxCxQYO1vI0F8z93a6G2NqBSuvm0Ie3heoUiQl0N
	xie+N60FK7IQakT3HIYs3lZ3QvLUmpXrj3d6M67kGDjLBIydrzc4HeySORd51r+fSVNZ3/ergkKub
	2DMwph6A==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qgJdc-00CKXU-MS
	for linux-rockchip@lists.infradead.org; Wed, 13 Sep 2023 06:46:18 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 38D6jGWh008744;
	Wed, 13 Sep 2023 15:45:20 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de, sebastian.reichel@collabora.com,
        kever.yang@rock-chips.com
Cc: linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm: dts: rockchip: add support for SPI flash module for Radxa ROCK 5A
Date: Wed, 13 Sep 2023 15:45:05 +0900
Message-Id: <20230913064505.77393-2-naoki@radxa.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230913064505.77393-1-naoki@radxa.com>
References: <20230913064505.77393-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_074613_250860_72053C36 
X-CRM114-Status: GOOD (  12.52  )
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

this adds support for SPI flash module for Radxa ROCK 5A.
 https://docs.radxa.com/en/accessories/spi-flash-module

on ROCK 5A, only either SPI flash module or eMMC module can be used.
since SPI flash module is equipped by default and eMMC module is
optional, rk3588s-rock-5a.dts should be configured for SPI flash and
new dts file, rk3588s-rock-5a-emmc.dts is added for eMMC.

this modification may be done by device tree overlay, but for
bootloader (more specifically, U-Boot SPL), it needs to be different
dts file.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/Makefile          |  1 +
 .../boot/dts/rockchip/rk3588s-rock-5a-emmc.dts | 13 +++++++++++++
 .../boot/dts/rockchip/rk3588s-rock-5a.dts      | 18 +++++++++++++++++-
 3 files changed, 31 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a-emmc.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index e7728007fd1bd..932da827c7f02 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -105,3 +105,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-indiedroid-nova.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a-emmc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a-emmc.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a-emmc.dts
new file mode 100644
index 0000000000000..625c5bbc5cc4b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a-emmc.dts
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3588s-rock-5a.dts"
+
+&sdhci {
+	status = "okay";
+};
+
+&sfc {
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 8347adcbd0030..6182e05480d38 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -355,7 +355,7 @@ &sdhci {
 	non-removable;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
-	status = "okay";
+	status = "disabled";
 };
 
 &sdmmc {
@@ -373,6 +373,22 @@ &sdmmc {
 	status = "okay";
 };
 
+&sfc {
+	pinctrl-0 = <&fspim0_pins>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <24000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+	};
+};
+
 &spi2 {
 	status = "okay";
 	assigned-clocks = <&cru CLK_SPI2>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
