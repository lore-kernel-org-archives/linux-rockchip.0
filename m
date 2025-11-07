Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45B3ACCFA05
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Nov 2025 13:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZeJ6YUOOkI3K12ks08K7Qw64PWQFhbDKY0wXmIptruc=; b=BgsCMKJCaEaPW/
	9xo9uoU8R853f1ARZiV8aviDZlCARF6KwhuYQcccIYzwYvA2KcgBoObQC51qr0HkkRwurm/aENv+q
	QJpfqFlgU+u6WtFncru80CoB35F/934ut6sgBNaGm2UroUh/9/OXo73+mKDaz+itgdbydfP2bI+9F
	V4s2+YwZYP2iwZdlhiYnJQvbGsOZzwykwviGMlj8hyVH9JnAWPTtiTmuORMsGT1m/RNSWuuql9GNI
	QOjWFnWoMzgOt700+0Zttcjd+35vwawWhnqDqx0W06Wd/TNtDN3g0GZF9doOMAgEpK2RB0S4E5NYo
	uxCNwuivzSsdH+dnD+oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHMfy-0000000HQAv-1YUf;
	Fri, 07 Nov 2025 13:38:50 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHMfw-0000000HQAY-3hoA
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 13:38:50 +0000
Received: by mail-pj1-x1041.google.com with SMTP id 98e67ed59e1d1-34101107cc8so606660a91.0
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Nov 2025 05:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762522728; x=1763127528; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jJ6i5QFZLIXUsCrEe0mdSHfsDvzDf4P+mBRrC8poWsg=;
        b=na54mZDo12h9OR807ppE5WHviZE9Og2O/zERwSzHp787/abrlAvQfNXD3hOz9rcAYp
         kIH5Fo4k5uAx9alyCMiPJxx38usm5qMiHMbd9sIPdBHO4KxsO91wX0KagKKxMrG6vg3H
         0CXqnk1h4BTSfiSPI9R5eqnHKs4wKjkPk+LdEPHzrUTLo7iG+JMJIRSoo/fEjb6GPRTV
         W+7FhaeN2155TR60IdtCapITpkc9NC8sGj7wyfEVL73VHZp6gSyj/TVCHB4xrg2tJq3j
         mxJsz8svg4B8n2s4P6MI+33AHipQBHUn8DZbx9eyv2s8xOKmFEeU3j74a15iLY8FiVNs
         5ugA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762522728; x=1763127528;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jJ6i5QFZLIXUsCrEe0mdSHfsDvzDf4P+mBRrC8poWsg=;
        b=bETd3XmLBw4dKcYjFbhzqKI/7Hpx/NArLFCbcxvSS4+1U6/xLwuoGmr+Kd5Hd2kxiM
         2o/MYjAuqgb2Hq5GlRpOUledII7qrKFr6X4C+fpUERtD59hZCKbcRAWei9kVBZv6JDiB
         CK5IX/kaTXEckXVqnoIYmipO7TewmWqEiM5D9Ikz1Y5PiVbONNjvMeRLtby8jm02AuVD
         G014xsU1i/WQUovRNhwY11X9QYcZ1MKkKvLMiJPIc9jRSTAqT6Df245BNUOWZYJ4GnwE
         LqyKuKBSN1zRi+ZL/2CI0m8Z54vxOFLDOkKhMsfvfqxIS0tUf3k1dPeUM4/VvFQZK6aT
         3xHQ==
X-Gm-Message-State: AOJu0YzEbQWTfRsozFOt0NZ8kxXixTBigNJOAyI+L/ejfIS3Ah00vjbF
	lymRRebcef27XaQw/KCodhTSDy4eMVqmRWRGfyKiuA9PXK/631IijxZNfba4e4mTXfg=
X-Gm-Gg: ASbGncuDGTCof4r/WO1TDhA1awcqziYVzRaf5iyOdXF6HqwBKGPVj6j+IxHu7m0R9U/
	M4ZgkIxFlf9ylIP2VXwQGCqh4gbk8Gyeezau+k/hdQ2RE5f6PmbENuYqFZ9DJa9DlR8J78Es97B
	e63h8wcwdO3NKoUuFwGZmBe6uqPiNSPGWCUW5QY56KipS4Jka0a6MfdOO6mLDifZVe+EQ1aZRfJ
	+lFa80lw5fKovfjlDvITusb9LA0XhRaOSDcscNkpuoamZAV68tMeSkQfvTkOKlENXhWxJky4jEY
	x1PpVvF9DgnQouG/2TJFa8qGC7pGwM3XemyQuW89B7gwYcEKgk5o//E8q+W3lgPXkFjw+Yxz4qS
	lh08TzxMHXqyuzeMY4AwHTKzfckgmVoCjPqCdhCJ3dcJzQ61NS4RNn12sOyTLAZJ0mXO+4HO5kd
	oy0QAZrg==
X-Google-Smtp-Source: AGHT+IG4l7HicS3Le3aL0YFeQkU4o+7MNbGUnvh1G+o7pBk4WXRTmpELgxnyrfcV0IqYR/is61rOeQ==
X-Received: by 2002:a17:90b:17cb:b0:339:ec9c:b275 with SMTP id 98e67ed59e1d1-3434c4efc0amr3789493a91.6.1762522727993;
        Fri, 07 Nov 2025 05:38:47 -0800 (PST)
Received: from server.lan ([103.213.4.16])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3434c343107sm2705259a91.14.2025.11.07.05.38.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 05:38:47 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: clean up devicetree for 9Tripod X3568 v4
Date: Fri,  7 Nov 2025 21:38:38 +0800
Message-ID: <20251107133839.300252-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_053848_959057_007B1D69 
X-CRM114-Status: UNSURE (   9.24  )
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

Fix indentation, remove unused SDIO properties, and drop the GMAC clock
that was used for input direction. The board uses the clock as
output, so the input clock is not needed.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../dts/rockchip/rk3568-9tripod-x3568-v4.dts  | 25 +++++++------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
index 443ed7d4b..ad4d62060 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
@@ -273,11 +273,10 @@ &gmac0 {
 	clock_in_out = "output";
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac0_miim
-			&gmac0_tx_bus2
-			&gmac0_rx_bus2
-			&gmac0_rgmii_clk
-			&gmac0_rgmii_bus
-			&gmac0_clkinout>;
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_rgmii_bus>;
 	phy-handle = <&rgmii_phy0>;
 	phy-mode = "rgmii-id";
 	status = "okay";
@@ -290,11 +289,10 @@ &gmac1 {
 	clock_in_out = "output";
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac1m1_miim
-			&gmac1m1_tx_bus2
-			&gmac1m1_rx_bus2
-			&gmac1m1_rgmii_clk
-			&gmac1m1_rgmii_bus
-			&gmac1m1_clkinout>;
+		     &gmac1m1_tx_bus2
+		     &gmac1m1_rx_bus2
+		     &gmac1m1_rgmii_clk
+		     &gmac1m1_rgmii_bus>;
 	phy-handle = <&rgmii_phy1>;
 	phy-mode = "rgmii-id";
 	status = "okay";
@@ -674,8 +672,7 @@ led_work_en: led_work_en {
 
 	pmic {
 		pmic_int: pmic_int {
-			rockchip,pins =
-				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
@@ -763,7 +760,6 @@ &sdmmc0 {
 /* used for AP6275S WiFi */
 &sdmmc2 {
 	bus-width = <4>;
-	disable-wp;
 	cap-sd-highspeed;
 	cap-sdio-irq;
 	keep-power-in-suspend;
@@ -771,9 +767,6 @@ &sdmmc2 {
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_cmd &sdmmc2m0_clk>;
-	sd-uhs-sdr12;
-	sd-uhs-sdr25;
-	sd-uhs-sdr50;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc3v3_sys>;
 	vqmmc-supply = <&vcc_1v8>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
