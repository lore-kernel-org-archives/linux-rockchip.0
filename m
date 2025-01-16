Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CFE5C02187
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jan 2025 14:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DayFnDAdiWrS9Manj8RS0uwz/6Mn0RWVHO4/dWapAUg=; b=GxAbIjVl7MQ1Ne
	19Q/Is/+aNjk3klI29cIIL7I+crhI2Ro9fCpwJessDV11MCdha4DX/lubJse3YLMK08EbObIuKtBd
	51kR5AfH80Mp1dHkTpLZBbSgK48uCRMXb466jQAhWkZX3zlTImGslV6KbspRdL49H3vjiwPGzsE2P
	7Zk1nlTgJkniUh33v6ZKDfU1O4VlBcjxt1IA7Vj5dMSLM3MhJFmIJPGO0YpomnF7jM+zqJ7o0cFyp
	WwVQhQ42lohjfwxOehtpr2txthYWm8DNUAloKO3CEQN1NlSdUU3/JCku4Sl/qr0PjMFsxTMnzfrW3
	bor7i4NOk32LmePlHnvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQzN-0000000FC7K-1RUq;
	Thu, 16 Jan 2025 14:36:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQzL-0000000FC4x-0Tsw
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jan 2025 14:36:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=TUSywU3i5Rzbd7ciMwbZ+KIkpi9VHuENm6E64C1nyIY=; b=aAPrWFp/WLU1gQJc0mTUb44SZ2
	ugxuYOOaUgHGgkVEZj0/TfhK0YIgDmfVIsLc1qMDrPHKegceKVx24q6rUtifIpLQdsUelorpLRqI0
	frCPsuRQsLbtThdPdyA3rul/YlXQ6+urDs0+0Yeo+Dz2wD2G4TRrm6Ua7nQv5wY9RUG/VL7zoCajz
	51o3Zrj24msCisFnu3hdaqlIs2n6qHu7R7qiaInW6TfWeB32Ztl3h4wgOUxu2GBITWUUaMpjCUAhc
	XEWO2JQuQ0YVyxDN8X5iZFNsPrWcuiBE4HXXGyIOChbEX4MBMDxEIahKIPZCHIPu5bWWSi9I6JvYe
	Ib8kXVmQ==;
Received: from i53875b2c.versanet.de ([83.135.91.44] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tYQzI-0002va-4U; Thu, 16 Jan 2025 15:36:48 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: vicencb@gmail.com
Cc: jbx6244@gmail.com,
	linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: fix fixed-regulator renames on rk3399-gru devices
Date: Thu, 16 Jan 2025 15:36:31 +0100
Message-ID: <20250116143631.3650469-1-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <CAAMcf8A3Ehi=krZirpuFVpVuQ4T_wwQ5Ss29_o4-BiTaQqsoFw@mail.gmail.com>
References: <CAAMcf8A3Ehi=krZirpuFVpVuQ4T_wwQ5Ss29_o4-BiTaQqsoFw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_063651_183220_C7B99C5E 
X-CRM114-Status: GOOD (  12.77  )
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

rk3399-gru chromebooks have a regulator chains where one named regulator
supplies multiple regulators pp900-usb pp900_pcie that supply
the named peripherals.

The dtsi used somewhat creative structure to describe that in creating
the base node 3 times with different phandles and describing the EC
dependency in a comment.

This didn't register in the recent regulator-node renaming, as the
additional nodes were empty, so adapt the missing node names for now.

Fixes: 5c96e6330197 ("arm64: dts: rockchip: adapt regulator nodenames to preferred form")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
Hi Vicente,

in theory, this should fix your issue?

While we may want to restructure those regulators in some way,
this below should be the smaller change to include as a fix.


Heiko

 .../dts/rockchip/rk3399-gru-chromebook.dtsi   |  8 +++----
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi |  6 ++---
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi  | 22 +++++++++----------
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 988e6ca32fac..a9ea4b0daa04 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -22,11 +22,11 @@ pp900_ap: regulator-pp900-ap {
 	};
 
 	/* EC turns on w/ pp900_usb_en */
-	pp900_usb: pp900-ap {
+	pp900_usb: regulator-pp900-ap {
 	};
 
 	/* EC turns on w/ pp900_pcie_en */
-	pp900_pcie: pp900-ap {
+	pp900_pcie: regulator-pp900-ap {
 	};
 
 	pp3000: regulator-pp3000 {
@@ -126,7 +126,7 @@ pp1800_pcie: regulator-pp1800-pcie {
 	};
 
 	/* Always on; plain and simple */
-	pp3000_ap: pp3000_emmc: pp3000 {
+	pp3000_ap: pp3000_emmc: regulator-pp3000 {
 	};
 
 	pp1500_ap_io: regulator-pp1500-ap-io {
@@ -160,7 +160,7 @@ pp3300_disp: regulator-pp3300-disp {
 	};
 
 	/* EC turns on w/ pp3300_usb_en_l */
-	pp3300_usb: pp3300 {
+	pp3300_usb: regulator-pp3300 {
 	};
 
 	/* gpio is shared with pp1800_pcie and pinctrl is set there */
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 19b23b438965..5e068377a0a2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -92,7 +92,7 @@ pp900_s3: regulator-pp900-s3 {
 	};
 
 	/* EC turns on pp1800_s3_en */
-	pp1800_s3: pp1800 {
+	pp1800_s3: regulator-pp1800 {
 	};
 
 	/* pp3300 children, sorted by name */
@@ -109,11 +109,11 @@ pp2800_cam: regulator-pp2800-avdd {
 	};
 
 	/* EC turns on pp3300_s0_en */
-	pp3300_s0: pp3300 {
+	pp3300_s0: regulator-pp3300 {
 	};
 
 	/* EC turns on pp3300_s3_en */
-	pp3300_s3: pp3300 {
+	pp3300_s3: regulator-pp3300 {
 	};
 
 	/*
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 6d9e60b01225..7eca1da78cff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -189,39 +189,39 @@ ppvar_gpu: ppvar-gpu {
 	};
 
 	/* EC turns on w/ pp900_ddrpll_en */
-	pp900_ddrpll: pp900-ap {
+	pp900_ddrpll: regulator-pp900-ap {
 	};
 
 	/* EC turns on w/ pp900_pll_en */
-	pp900_pll: pp900-ap {
+	pp900_pll: regulator-pp900-ap {
 	};
 
 	/* EC turns on w/ pp900_pmu_en */
-	pp900_pmu: pp900-ap {
+	pp900_pmu: regulator-pp900-ap {
 	};
 
 	/* EC turns on w/ pp1800_s0_en_l */
-	pp1800_ap_io: pp1800_emmc: pp1800_nfc: pp1800_s0: pp1800 {
+	pp1800_ap_io: pp1800_emmc: pp1800_nfc: pp1800_s0: regulator-pp1800 {
 	};
 
 	/* EC turns on w/ pp1800_avdd_en_l */
-	pp1800_avdd: pp1800 {
+	pp1800_avdd: regulator-pp1800 {
 	};
 
 	/* EC turns on w/ pp1800_lid_en_l */
-	pp1800_lid: pp1800_mic: pp1800 {
+	pp1800_lid: pp1800_mic: regulator-pp1800 {
 	};
 
 	/* EC turns on w/ lpddr_pwr_en */
-	pp1800_lpddr: pp1800 {
+	pp1800_lpddr: regulator-pp1800 {
 	};
 
 	/* EC turns on w/ pp1800_pmu_en_l */
-	pp1800_pmu: pp1800 {
+	pp1800_pmu: regulator-pp1800 {
 	};
 
 	/* EC turns on w/ pp1800_usb_en_l */
-	pp1800_usb: pp1800 {
+	pp1800_usb: regulator-pp1800 {
 	};
 
 	pp3000_sd_slot: regulator-pp3000-sd-slot {
@@ -259,11 +259,11 @@ ppvar_sd_card_io: ppvar-sd-card-io {
 	};
 
 	/* EC turns on w/ pp3300_trackpad_en_l */
-	pp3300_trackpad: pp3300-trackpad {
+	pp3300_trackpad: regulator-pp3300-trackpad {
 	};
 
 	/* EC turns on w/ usb_a_en */
-	pp5000_usb_a_vbus: pp5000 {
+	pp5000_usb_a_vbus: regulator-pp5000 {
 	};
 
 	ap_rtc_clk: ap-rtc-clk {
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
