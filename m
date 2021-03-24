Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21C35C433E1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 12:24:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 742AE61A09
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 12:24:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 742AE61A09
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aZxPJFOw+e3eMMFNFd4qsIv+RNggl/rigOXc9OvG514=; b=QzVbidxycXM81SUAfg1610yZA
	DRI/IsbD/tWmmpM3aizGIS13zEPDMBG4RnbZFN2d4YUeDJnC7BblPNRLcDZ+z+jEwba+bXhb+ze7D
	03KkA5/V5sDgiKBrKidE2NRcdkPXsDbE+X2j8rtxMEQv9MRz0++f/ujOK6LXaWZU05CJNSNtfLfkQ
	OiCP0U47dyiMieThVh634WIY/89g/dn6Nny0PP6GQ/wwBjWFKKvTkoZb64ddmFvmVpGXxYDTSOZEk
	mFjKGUURHug5/jnqfDFFrLF1+oN7//NU5JAoDlitiNK0J+X5gd2YN+YTn3BkUzAGwaBb/JSf7/gNA
	x6AiOuhpQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP2Ys-00H3vM-PP; Wed, 24 Mar 2021 12:24:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP2X3-00H3AL-Gy; Wed, 24 Mar 2021 12:22:45 +0000
Received: from [95.90.166.74] (helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lP2X1-00009P-4g; Wed, 24 Mar 2021 13:22:39 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: jagan@amarulasolutions.com, jbx6244@gmail.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, arnd@kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH 2/7] ARM: dts: rockchip: move rv1108 mmcx aliases to board dts
 files
Date: Wed, 24 Mar 2021 13:22:30 +0100
Message-Id: <20210324122235.1059292-2-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210324122235.1059292-1-heiko@sntech.de>
References: <20210324122235.1059292-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_122241_854784_7EC24841 
X-CRM114-Status: GOOD (  13.08  )
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

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

As suggested by Arnd Bergmann, mmc-aliases are supposed to be
board-specific, so move the newly added general aliases to
the board-level on rv1108-based boards.

Suggested-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm/boot/dts/rv1108-elgin-r1.dts | 4 ++++
 arch/arm/boot/dts/rv1108-evb.dts      | 4 ++++
 arch/arm/boot/dts/rv1108.dtsi         | 3 ---
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rv1108-elgin-r1.dts b/arch/arm/boot/dts/rv1108-elgin-r1.dts
index b1db924710c8..f62c9f7af79d 100644
--- a/arch/arm/boot/dts/rv1108-elgin-r1.dts
+++ b/arch/arm/boot/dts/rv1108-elgin-r1.dts
@@ -12,6 +12,10 @@ / {
 	model = "Elgin RV1108 R1 board";
 	compatible = "elgin,rv1108-r1", "rockchip,rv1108";
 
+	aliases {
+		mmc0 = &emmc;
+	};
+
 	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x08000000>;
diff --git a/arch/arm/boot/dts/rv1108-evb.dts b/arch/arm/boot/dts/rv1108-evb.dts
index 30f3d0470ad9..fe5fc9bf75c9 100644
--- a/arch/arm/boot/dts/rv1108-evb.dts
+++ b/arch/arm/boot/dts/rv1108-evb.dts
@@ -8,6 +8,10 @@ / {
 	model = "Rockchip RV1108 Evaluation board";
 	compatible = "rockchip,rv1108-evb", "rockchip,rv1108";
 
+	aliases {
+		mmc0 = &sdmmc;
+	};
+
 	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x08000000>;
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 7319a2473b80..15fa25585ea4 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -19,9 +19,6 @@ aliases {
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
 		i2c3 = &i2c3;
-		mmc0 = &emmc;
-		mmc1 = &sdio;
-		mmc2 = &sdmmc;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
