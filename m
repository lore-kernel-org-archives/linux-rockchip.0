Return-Path: <SRS0=Zsw1=PI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE370C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 10:08:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D9D2611C7
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Oct 2021 10:08:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7D9D2611C7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flokli.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q1oVPObD/LcCazCVzzHsZ6h1D9WU0ADsV0FnvAQjoOo=; b=RqmydEm7pOa8Q5
	rLBu0VN6axso9eviBBq86wxC2skvWE/79WfjZjdHr8zi96vAHyrPGQP9wgXQnKcfN1CkE11771OcF
	6TbxpzJB5cO85P5Fr5BNXjEAJ9m1GssjCoIEG1s14wdh4pDMwfI5P2XqxxYM9QzIjXkt8xp4HRYZW
	EMBXKL7UHWD8nE5E+bQ8vlY2NU8YTx0Mp+jGZvtkmA+0Yi5q2Cm093I4NrinkDeQhG+uBzx14bNke
	3kRBTOSd+o40cbs1poj4bfEPBANjmuQaRuoNqVXocTRKWiKcLfyF8RKGmINrPgt7wlpT7icsod2cH
	Gv5Hh4pXp70oIPf7cyow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md8Wk-0046uf-CF; Wed, 20 Oct 2021 10:08:54 +0000
Received: from mail.zeus.flokli.de ([88.198.15.28] helo=zeus.flokli.de)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md8WO-0046px-Js; Wed, 20 Oct 2021 10:08:34 +0000
Received: from localhost (ip-84-119-226-0.unity-media.net [84.119.226.0])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: flokli@flokli.de)
 by zeus.flokli.de (Postfix) with ESMTPSA id 2F6E211D2BD9;
 Wed, 20 Oct 2021 10:00:05 +0000 (UTC)
From: Florian Klink <flokli@flokli.de>
To: Heiko Stuebner <heiko@sntech.de>,
	Aditya Prayoga <aditya@kobol.io>
Cc: Florian Klink <flokli@flokli.de>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: rockchip: Enable HDD power on helios64
Date: Wed, 20 Oct 2021 11:59:22 +0200
Message-Id: <20211020095926.735938-1-flokli@flokli.de>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_030832_812997_3751514C 
X-CRM114-Status: GOOD (  13.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This adds the hdd_{a,b}_power blocks present in the armbian helios64
dts. [1]

Without those powered up, no HDDs will appear (except one connected via
the m.2 slot).

From https://wiki.kobol.io/helios64/sata/#hdd-power:

> The power delivery of the HDDs is divided into two group:
>
>     HDD Rail A (Max. 3x Drives)
>     HDD Rail B (Max. 2x Drives)
>
> Helios64 implements a power staggering approach where HDD Rail A will be
> powered up first, then few seconds later HDD Rail B will be powered up.
> This power control scenario is performed to reduce the inrush current
> during disk spin-up.

In practice, this power staggering approach will be included in the
bootloader (not in the kernel), as we might want to boot from a SATA
drive.

From my experiments, if the bootloader doesn't implement the power
staggering, only one HDD will get recognized (probably cause the others
didn't boot due to few power).

Still, it makes sense to expose this block in the device-tree, so the
kernel can ensure both rails are on (and this can be shared with
u-boot).

[1] https://github.com/armbian/build/blob/744ea89a589d62cb6f409baab60fc6664520bc39/patch/kernel/archive/rockchip64-5.14/add-board-helios64.patch

Signed-off-by: Florian Klink <flokli@flokli.de>
---
 .../dts/rockchip/rk3399-kobol-helios64.dts    | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 738cfd21df3e..93745dcc2af6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -82,6 +82,30 @@ led-1 {
 		};
 	};
 
+	hdd_a_power: hdd-a-power {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&hdd_a_power_en>;
+		pinctrl-names = "default";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "hdd_a_power";
+		startup-delay-us = <2000000>;
+	};
+
+	hdd_b_power: hdd-b-power {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&hdd_b_power_en>;
+		pinctrl-names = "default";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "hdd_b_power";
+		startup-delay-us = <2000000>;
+	};
+
 	pcie_power: pcie-power {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -422,6 +446,14 @@ pmic_int_l: pmic-int-l {
 	};
 
 	power {
+		hdd_a_power_en: hdd-a-power-en {
+			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		hdd_b_power_en: hdd-b-power-en {
+			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		vcc5v0_usb_en: vcc5v0-usb-en {
 			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
