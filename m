Return-Path: <SRS0=uU3o=GJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2393AC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jan 2021 13:47:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B7E1F2311A
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jan 2021 13:47:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B7E1F2311A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wqudyGXFAREeb5QHWhyyRGN3JfgOnDsltvI7Ua87HZE=; b=vViWXZbgOz56E46WetJmExsoM
	Bv42SLNEKaUel65g0NQWI8h9Z3ETXy7qHWk9kZA8wjo06rXktOGmhrcPGcQKv1ppH3UGuTDtTp5f3
	Z7shIcTWQg6esfpozEPQC/g5P9GZYtxGEgU7Yu0RWHRXnbK+65Kx2AKBvKcQ4BFF9GyKt9Eh5H65o
	WH6jMQebQvTmPMrfQX2eslSGXzLHaM0fPWcAsGSwvs/zebMFtgsw/+smSEPqfszg9Z56Taewy4j47
	H7NmQxVQRzfCmLBGAOmq40KQGlyAn6o/fqX962v3cV1i+HR5VRgMkJYj8u+YDeaEhyjcyteVY/hnd
	YlJqNsIsA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kx99P-0000vN-Kd; Wed, 06 Jan 2021 13:46:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kx98t-0000gR-R3; Wed, 06 Jan 2021 13:46:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9553223121;
 Wed,  6 Jan 2021 13:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609940786;
 bh=zxCR5IPMVyUtLgw9iNAvhL1NSsx2Ep3Yv/Co5D5pP1o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WfIA1I7JwmXFyLWbQfb1NMwLZkm/cTbJZ2IDXvHEDEXQtU5mGhKhO2Djrq/abFzw7
 YNLgMAmHaFEX+YimPat/a9qBoFM5q3U9CYQzWgCTcE31H143GIHu/qnmFexPHkYvl3
 dBTijGo8jBTEe2Hl+RYxZoTHKyr2U+SCxZv1uW8RxKjsjFzIOcSUpnfmCrvOcAu1rv
 vz7HctMfKC5mjNRMUcG384HE+4kVUImguBmFej2tqrkUSRmQQea5Vb1QVRzXrSaY/L
 VSeglprmcdDyMzDubZOWYNcSqN9JlM1ChTSyoQqRNJ6QsNo9Ad4ugb3gT0j5dcmLHc
 58EPdukbI/+3w==
Received: by wens.tw (Postfix, from userid 1000)
 id 757B35FBCC; Wed,  6 Jan 2021 21:46:24 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 4/4] arm64: dts: rockchip: rk3399: Add NanoPi M4B
Date: Wed,  6 Jan 2021 21:46:17 +0800
Message-Id: <20210106134617.391-5-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210106134617.391-1-wens@kernel.org>
References: <20210106134617.391-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210106_084628_084858_23ED83C8 
X-CRM114-Status: GOOD (  16.81  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The NanoPi M4B is a minor revision of the original M4.

The differences against the original Nanopi M4 that are common with the
other M4V2 revision include:

  - microphone header removed
  - power button added
  - recovery button added

Additional changes specific to the M4B:

  - USB 3.0 hub removed; board now has 2x USB 3.0 type-A ports and 2x
    USB 2.0 ports
  - ADB toggle switch added; this changes the top USB 3.0 host port to
    a peripheral port
  - Type-C port no longer supports data or PD
  - WiFi/Bluetooth combo chip switched to AP6256, which supports BT 5.0
    but only 1T1R (down from 2T2R) for WiFi

Add a new dts file for the new board revision that shows the difference
against the original.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3399-nanopi-m4b.dts   | 52 +++++++++++++++++++
 2 files changed, 53 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 1ab55a124a87..622d320ddd13 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -33,6 +33,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-kobol-helios64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-leez-p710.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-neo4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-orangepi.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-pinebook-pro.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dts
new file mode 100644
index 000000000000..72182c58cc46
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dts
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * FriendlyElec NanoPi M4B board device tree source
+ *
+ * Copyright (c) 2020 Chen-Yu Tsai <wens@csie.org>
+ */
+
+/dts-v1/;
+#include "rk3399-nanopi-m4.dts"
+
+/ {
+	model = "FriendlyElec NanoPi M4B";
+	compatible = "friendlyarm,nanopi-m4b", "rockchip,rk3399";
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1500000>;
+		poll-interval = <100>;
+
+		recovery {
+			label = "Recovery";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <18000>;
+		};
+	};
+};
+
+/* No USB type-C PD power manager */
+/delete-node/ &fusb0;
+
+&i2c4 {
+	status = "disabled";
+};
+
+&u2phy0_host {
+	phy-supply = <&vcc5v0_usb2>;
+};
+
+&u2phy0_otg {
+	phy-supply = <&vbus_typec>;
+};
+
+&u2phy1_otg {
+	phy-supply = <&vcc5v0_usb1>;
+};
+
+&vbus_typec {
+	enable-active-high;
+	gpios = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
+};
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
