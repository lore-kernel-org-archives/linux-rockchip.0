Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D74DAC678D5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=feLxwNauAjxfTHkJuTbmkgT1937iA/tturjUzbsobqQ=; b=dASomwMqp9TEoI
	YrZ9lWgxVPnpgIv+KN2chwBbMNpnw1zQWjKdYQJVqrmC9peh2UJpzPo2J3SIek3q++VM1UXlwCREj
	tFib5i0lhCwER/NBnvZJipcd8AHmFfrtexuvslJoXnNEqNtfAhCcd1geSthv4AwI1MLOD4zuElrMd
	WY8anIvxudj6saKr+Cvfi/7SkycxUdzsZnBikNAGSpOH7OJuaq1SxCRNSF/Cl3zw4L8KHG5/IUGW1
	cX6exE3nOAWREDwFa8vJ1TsRDYi25LucMvCg731uvJ5boTWnc1C970ctqNHaUUkhossgKGIHiYorB
	Fw9eYs07EMcAQhqYqGMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZU36-00H4j1-HL; Tue, 07 Mar 2023 09:56:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZU2d-00H4RU-1N; Tue, 07 Mar 2023 09:55:32 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pZU2X-0003zp-Ke; Tue, 07 Mar 2023 10:55:25 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	briannorris@chromium.org,
	dianders@chromium.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: Add mmc aliases for rk3288-veyron devices
Date: Tue,  7 Mar 2023 10:55:16 +0100
Message-Id: <20230307095516.4116827-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_015531_107542_A181209F 
X-CRM114-Status: GOOD (  11.59  )
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

All of them have an internal emmc that becomes mmc0 and
devices including the sdmmc snippet get mmc1 for the external
sd slot on suitable devices.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi | 6 ++++++
 arch/arm/boot/dts/rk3288-veyron.dtsi       | 4 ++++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi b/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
index 27fb06ce907e..8b58773e592e 100644
--- a/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
@@ -5,6 +5,12 @@
  * Copyright 2015 Google, Inc
  */
 
+/ {
+	aliases {
+		mmc1 = &sdmmc;
+	};
+};
+
 &io_domains {
 	sdcard-supply = <&vccio_sd>;
 };
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index e406c8c7c7e5..d838bf0d5d9a 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -10,6 +10,10 @@
 #include "rk3288.dtsi"
 
 / {
+	aliases {
+		mmc0 = &emmc;
+	};
+
 	chosen {
 		stdout-path = "serial2:115200n8";
 	};
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
