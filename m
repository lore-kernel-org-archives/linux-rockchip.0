Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 075CFC0218F
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jan 2025 10:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7v0IQqXzp59EYQ+CaOFvnvs1KvfMvvprA+IfTa2ME4=; b=BSCowoVdBbvXLN
	XKfJ91jIiVw0K22r4RoW2P/rmNsYBA7QHGLnMcX4+4JUqFCSY+56Sqsm7BLnwaQd13UEhJmQ+kAHO
	ig3mnHLLJWvkDz40AW4ZJtZE2SEWa8XemA21XAM0z9Qr+2Z0aGkFph5eR9o9WNBYKZbJw1htuwvAM
	dYj5RmCPO3lY/rzKuaFdvX5xJ7FMaoOIgTEmflzbbHx5D0fsUybzqNghZYOOkVl792DpThc2kX1BU
	5ZbVfORIANIVVvuh1MkyU2PQTM5otV806RCGn5iBsQJt6cP0ioOQR5VTA3TNSxtOg8Hvebu98dX7B
	pklxcfSjxh0gSDPK1stg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdoUU-0000000AQ4D-1c0s;
	Fri, 31 Jan 2025 10:43:14 +0000
Received: from smtp-8fad.mail.infomaniak.ch ([83.166.143.173])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdoRs-0000000APYY-0i79
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Jan 2025 10:40:34 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (smtp-4-0000.mail.infomaniak.ch [10.7.10.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YksqK56yNzTnS;
	Fri, 31 Jan 2025 11:40:29 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YksqJ4msWz4JC;
	Fri, 31 Jan 2025 11:40:28 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 31 Jan 2025 11:40:15 +0100
Subject: [PATCH v4 1/4] arm64: dts: rockchip: add overlay test for
 WolfVision PF5
MIME-Version: 1.0
Message-Id: <20250131-pre-ict-jaguar-v4-1-c971e2852e8d@cherry.de>
References: <20250131-pre-ict-jaguar-v4-0-c971e2852e8d@cherry.de>
In-Reply-To: <20250131-pre-ict-jaguar-v4-0-c971e2852e8d@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jagan Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: Jonas Karlman <jonas@kwiboo.se>, Dragan Simic <dsimic@manjaro.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_024032_365137_D1BEA7E5 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
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

From: Quentin Schulz <quentin.schulz@cherry.de>

The WolfVision PF5 can have a PF5 Visualizer display and PF5 IO Expander
board connected to it. Therefore, let's generate an overlay test so the
application of the two overlays are validated against the base DTB.

Suggested-by: Michael Riesch <michael.riesch@wolfvision.net>
Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/Makefile | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index def1222c1907eb16b23cff6d540174a4e897abc9..bba9b2f1c761040545bea561878e9b63f8c29488 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -128,8 +128,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-display-vz.dtbo
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3582-radxa-e52c.dtb
@@ -170,3 +168,18 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5c.dtb
+
+# Overlays
+## To build one or more overlays, overlay application tests must be added below.
+##
+## dtb-$(CONFIG_ARCH_ROCKCHIP) += <name of overlay application test>.dtb
+## <name of overlay application test>-dtbs := <base>.dtb <overlay-1>.dtbo [<overlay-2>.dtbo ...]
+##
+## This will generate each individual DTBO listed as a dependency of
+## <name of overlay application test>.dtb **AND** make <base>.dtb keep its
+## symbols (like when DTC_FLAGS has -@ passed).
+
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-vz-2-uhd.dtb
+rk3568-wolfvision-pf5-vz-2-uhd-dtbs := rk3568-wolfvision-pf5.dtb \
+	rk3568-wolfvision-pf5-display-vz.dtbo \
+	rk3568-wolfvision-pf5-io-expander.dtbo

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
