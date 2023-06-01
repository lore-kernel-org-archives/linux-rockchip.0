Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA283C77B7A
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jun 2023 13:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6gCpXP2k8h6Cj/lDiguH3JfFggzyxdZLFo/bdxb9az0=; b=jVmMzw4T3vD+6p
	PAKdbFpTEklCmw7gRbWJzvVZEHAfThHfMUnXLesofNtTAXyILgswAaoTIbQd5SNpo2lqM/5OGcuXM
	t8JVQsG87KHvBmHInUurgsvccfSzmgENMcA5dVZDqUhNttPRImi12qRd+NqyGGv9jr0pjHeG5Aigu
	gNi782gp8DBbgcddEyjTzO76PmPjJzwWFKrgUutm7mky72p3hL1PUsFsNDX9zMe3f7Zvxn8M6z3MT
	8TQZRKEI4Z7qwL6M6Q93Iulw8clNxgCSUQM5rD3DgIUCD77cQgQm+K4b3R53JOUFK/IhZCT5trYbn
	Eysmt+T9AW/CLxTgiOLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4iJt-003gDq-1e;
	Thu, 01 Jun 2023 13:26:25 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4iJp-003gBt-0v;
	Thu, 01 Jun 2023 13:26:23 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f6dbe3c230so8705425e9.3;
        Thu, 01 Jun 2023 06:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685625977; x=1688217977;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mY4ulbNFE/jjkAM6F1KYjqgtbBRcYBjAGNE85b4mha4=;
        b=Eyrfbb4GRekIwaWBrbBJoAQ+TnpS4Wpf9ICO7qzsFvxrI9yFUyGrFRxRngKXl20JW3
         tEbx+C9qcNg2G+jhDjaxDGirdsMr/nreZgAB9LkqbAaVVfWCJFlrs3R8sFu+BsIiquMP
         lbCyVxQMJzaR1SqXubYb72QmrEP1SnkUlHjOwgYf6cZjhmdUf0SWLC5O5Ya/hRGn8rHe
         v9SzgNnKjXNQNNs/ci1y7YuRaMQWCCUzO3r6LLTJz12h5My9spUJ8CexcmAWpWSJowE8
         MspDWpWbFA3mTGmxvAt9KdlZhRjlGfdLXibIIdrUbLBeVgxKF+cZsb4pvM56w+unqb+z
         CfgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685625977; x=1688217977;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mY4ulbNFE/jjkAM6F1KYjqgtbBRcYBjAGNE85b4mha4=;
        b=kXXgsxGJg4yOO34jpqz5Q3NghV+b3YHnsJEkZ9ew9ljM7lyVz24gLqL//7ltObhMLP
         wvzTWjUgw7q/HFt2I9Qz1+9C0hjNJRTxkMMHvPVD6YE9qA+E/cKPsF0YpPNQ3N6sbwN6
         s8fpfBj7RWbxw8Hncw0C6itQ3BTc6HTJH6qP/pM1oZsKfMck/nLRxdWMNYqzeXNR5ljY
         n3kWJTfX1rC7QCCY/H4PLHoxuckcxzr/ANW9OtETqyDh3Q9Yr2yPCvil2QHwpmlulRVa
         eOYliIWk+gNOKbgRVJum3d8ShTmivwBeUXAz0kLgaBY+wEIQYqWH4wUcjtIfX1XwgFGT
         YeSA==
X-Gm-Message-State: AC+VfDxgJyEfp5+g+QrBrB7ZKEhieElUXxRF5rqWKyAJLm5Sgm3dM1tS
	LZ/H77JZJcsAwAtaKwRCmIE=
X-Google-Smtp-Source: ACHHUZ4u07oje+b/pW5QY8IISmc/7hrBKpGR8OodL8MJC5Gg23AvYMTBZe3OPWHRjosNZWA7j6ukxw==
X-Received: by 2002:a7b:ca59:0:b0:3f4:f7c2:d681 with SMTP id m25-20020a7bca59000000b003f4f7c2d681mr2294755wml.29.1685625976702;
        Thu, 01 Jun 2023 06:26:16 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id n16-20020a1c7210000000b003f60119ee08sm2396549wmc.43.2023.06.01.06.26.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jun 2023 06:26:16 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Peter Geis <pgwipeout@gmail.com>
Cc: Andrew Powers-Holmes <aholmes@omnom.net>,
	Ondrej Jirman <megi@xff.cz>,
	stable@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: rk356x: Fix PCIe register and range mappings
Date: Thu,  1 Jun 2023 15:25:16 +0200
Message-Id: <20230601132516.153934-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_062621_331086_3A5B57CF 
X-CRM114-Status: GOOD (  14.26  )
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

From: Andrew Powers-Holmes <aholmes@omnom.net>

The register and range mappings for the PCIe controller in Rockchip's
RK356x SoCs are incorrect. Replace them with corrected values from the
vendor BSP sources, updated to match current DT schema.

These values are also used in u-boot.

Fixes: 66b51ea7d70f ("arm64: dts: rockchip: Add rk3568 PCIe2x1 controller")
Cc: stable@vger.kernel.org
Signed-off-by: Andrew Powers-Holmes <aholmes@omnom.net>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---

Since nobody else was gonna submit this fix on a fix, I decided
to do it myself, based on the u-boot patch Jonas Karlman wrote.

Please test that this does not break the PCIe 3 controller on
RK3568 hardware, I don't have the right setup to easily test it
on there.

Changes since v1:
 - Fix copy-paste error on second reg property from 0xf2000000
   to 0xf0000000

 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 14 ++++++++------
 arch/arm64/boot/dts/rockchip/rk356x.dtsi |  7 ++++---
 2 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index ba67b58f05b7..f1be76a54ceb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -94,9 +94,10 @@ pcie3x1: pcie@fe270000 {
 		power-domains = <&power RK3568_PD_PIPE>;
 		reg = <0x3 0xc0400000 0x0 0x00400000>,
 		      <0x0 0xfe270000 0x0 0x00010000>,
-		      <0x3 0x7f000000 0x0 0x01000000>;
-		ranges = <0x01000000 0x0 0x3ef00000 0x3 0x7ef00000 0x0 0x00100000>,
-			 <0x02000000 0x0 0x00000000 0x3 0x40000000 0x0 0x3ef00000>;
+		      <0x0 0xf2000000 0x0 0x00100000>;
+		ranges = <0x01000000 0x0 0xf2100000 0x0 0xf2100000 0x0 0x00100000>,
+			 <0x02000000 0x0 0xf2200000 0x0 0xf2200000 0x0 0x01e00000>,
+			 <0x03000000 0x0 0x40000000 0x3 0x40000000 0x0 0x40000000>;
 		reg-names = "dbi", "apb", "config";
 		resets = <&cru SRST_PCIE30X1_POWERUP>;
 		reset-names = "pipe";
@@ -146,9 +147,10 @@ pcie3x2: pcie@fe280000 {
 		power-domains = <&power RK3568_PD_PIPE>;
 		reg = <0x3 0xc0800000 0x0 0x00400000>,
 		      <0x0 0xfe280000 0x0 0x00010000>,
-		      <0x3 0xbf000000 0x0 0x01000000>;
-		ranges = <0x01000000 0x0 0x3ef00000 0x3 0xbef00000 0x0 0x00100000>,
-			 <0x02000000 0x0 0x00000000 0x3 0x80000000 0x0 0x3ef00000>;
+		      <0x0 0xf0000000 0x0 0x00100000>;
+		ranges = <0x01000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x00100000>,
+			 <0x02000000 0x0 0xf0200000 0x0 0xf0200000 0x0 0x01e00000>,
+			 <0x03000000 0x0 0x40000000 0x3 0x80000000 0x0 0x40000000>;
 		reg-names = "dbi", "apb", "config";
 		resets = <&cru SRST_PCIE30X2_POWERUP>;
 		reset-names = "pipe";
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index f62e0fd881a9..61680c7ac489 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -952,7 +952,7 @@ pcie2x1: pcie@fe260000 {
 		compatible = "rockchip,rk3568-pcie";
 		reg = <0x3 0xc0000000 0x0 0x00400000>,
 		      <0x0 0xfe260000 0x0 0x00010000>,
-		      <0x3 0x3f000000 0x0 0x01000000>;
+		      <0x0 0xf4000000 0x0 0x00100000>;
 		reg-names = "dbi", "apb", "config";
 		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
@@ -982,8 +982,9 @@ pcie2x1: pcie@fe260000 {
 		phys = <&combphy2 PHY_TYPE_PCIE>;
 		phy-names = "pcie-phy";
 		power-domains = <&power RK3568_PD_PIPE>;
-		ranges = <0x01000000 0x0 0x3ef00000 0x3 0x3ef00000 0x0 0x00100000
-			  0x02000000 0x0 0x00000000 0x3 0x00000000 0x0 0x3ef00000>;
+		ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
+			 <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x01e00000>,
+			 <0x03000000 0x0 0x40000000 0x3 0x00000000 0x0 0x40000000>;
 		resets = <&cru SRST_PCIE20_POWERUP>;
 		reset-names = "pipe";
 		#address-cells = <3>;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
