Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F290C6FD18
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Mar 2023 21:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/CeEjjkJIJK50LARpy76EXD0N79ixiqgOHIh7nHkXI=; b=yLmlFfP+Jw+x/C
	76miRSUpwKb0t+67UCDh9mVFf5/SShQulqc9PChAl995m8Te2eSye7U5n/1tsULLvqCCmB28dDI7W
	hz/Sj4M+KALV/t9ecfkqLukdGOLRTC16cERZ1MKx+uL9NMCIVq67xSZLfKw6QlNDSdbz9fzj47bVU
	X2VflpQYmm5dGwvpW4ke17TOCQwjF1UcC8PXKydy/HOaOUmhCAp51RbyeOBLjwc17FRFHaxf57FSK
	zdjNr7IxpO0T+apK44x+wZ7UjDU2HTKgWC9Wyo1mNCqSsgK1cRBP989qgw6vzsxA+gOgYL4im3TdB
	tRbh3JK1rV5/uYR/4qEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phGSK-00Fr8K-0O;
	Tue, 28 Mar 2023 21:02:12 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phGSG-00Fr6h-1u;
	Tue, 28 Mar 2023 21:02:09 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:73f6:2283:f432:3936])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8F2616603163;
	Tue, 28 Mar 2023 22:02:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680037327;
	bh=vLuPLrQ150EuvyOIDT/l5G5BueMNkQv42XadApxWJmY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WN64Tbqw7jmk/KbtubS6IeljHEBU6AyfryGC8+TB3NOddenzs7kFj0imi4dDLiykw
	 dHK4nRh7UH2grrSwZapjsiyHDUU2kbmEuQEsxEYyMM0zfzEbjQGTzQghwd6/zvSmKJ
	 cC0JbZiVJzpos0SVaKxKP7fqW9R0AcHmTyW175YE0pclc2D91aqo0O1knt9FYqag8o
	 iqS+YOJIOKM3XbZ0Rh4S4YTerP7oJIhksOAx7PSQpq7306UmuLfqmVlcgLaCKGNgsN
	 loYt/et1qztIoJMdc6zYyIcP9fRHHz9lQG55wuv81TSZpDjCGQTLkV1dXUOnV9cXE2
	 ENMd2W/2i2yAQ==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	jamie@jamieiles.com,
	heiko@sntech.de
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Enable watchdog support for RK3588
Date: Wed, 29 Mar 2023 02:30:47 +0530
Message-Id: <20230328210048.195124-2-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230328210048.195124-1-shreeya.patel@collabora.com>
References: <20230328210048.195124-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_140208_752872_77D9EF0B 
X-CRM114-Status: UNSURE (   9.08  )
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

Add DT node for watchdog support in RK3588.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 005cde61b4b2..20793f67c079 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1226,6 +1226,14 @@ i2c5: i2c@fead0000 {
 		status = "disabled";
 	};
 
+	wdt: watchdog@feaf0000 {
+		compatible = "rockchip,rk3588-wdt", "snps,dw-wdt";
+		reg = <0x0 0xfeaf0000 0x0 0x100>;
+		clocks = <&cru TCLK_WDT0>, <&cru PCLK_WDT0>;
+		clock-names = "tclk", "pclk";
+		interrupts = <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH 0>;
+	};
+
 	spi0: spi@feb00000 {
 		compatible = "rockchip,rk3588-spi", "rockchip,rk3066-spi";
 		reg = <0x0 0xfeb00000 0x0 0x1000>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
