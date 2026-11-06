Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66590606A326
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2026 06:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4kUXmpUw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=GRDvGh1D
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=YB+Lgc0xkioAXiidA3mG07A1Ul5CB8RTti2fpm0aQNY=; b=4kUXmpUwXfjAHnBkjZATM2yuEg
	hH3Pgh28yJopeiISi09za34q3+Szmjer63gJ8e2qwQerkpJhN+9SbGknIenH5wu705SREQn5F4nL9
	0mkPcdmqkYSThDeZHrRCKz0K2gxEbhq0+ZXVncbUvs4vjYzPDmnh9TafZDvPnO+tPVoJ7NUO89p8n
	rSfu8gR9f3HEnQK5yWrHNGSowWxYNZxBMCh+E+iqnlDrnxCOAO5LPUCgOX5kHMTKpD3plkBANLnUV
	UPhx28VtG0uBn4Asf541oWdOAuIa9BdDbnbCOLBH016W5VYNLnE8eV4gO7eY/lZrRj8FbhSgWVS84
	LFu8akWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPDHm-0000000BL6w-23Ld;
	Fri, 06 Nov 2026 06:18:50 +0000
Received: from mail-dl1-x122e.google.com ([2607:f8b0:4864:20::122e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPDHk-0000000BL6H-0o0v
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Nov 2026 06:18:49 +0000
Received: by mail-dl1-x122e.google.com with SMTP id a92af1059eb24-1ae18eb9b69so428051c88.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 22:18:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793945927; x=1794550727; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=NMTw4oTDCJyIKE8BV8ip+57Dn/aXQGYoxWAp8K3eAUM=;
        b=GRDvGh1DnWkEaSKhjd13vShYTc6Bhs8fM2jAnfppwLMikt1gD45L2nJC+SEvagQQkt
         chtd21Csgn9tThOPE1xCiFil1YjabsqU++gQDgR4BsGsJW3rxlQXQC0+src/2YHUxVp/
         aJvDWPhJCq+l5o6Irx81BEpCor9iCRrbIFAmDAUYTt/ZwTcjMbnrSXOM08rrSH+eQmPC
         9p6Q/aLPHIw8sRiTKgVzTjE+MrbyHt5xOqlJxWH68lpz/i1vG0MxkzWUY2N/esZrX0P/
         RvfHpuBZxLdBJMo43+6HlvKYLiPzAKNKRBqs3wzyOSFCztRHf3Lkg5xz2eaAP0ZJXjkP
         Rk6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793945927; x=1794550727;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NMTw4oTDCJyIKE8BV8ip+57Dn/aXQGYoxWAp8K3eAUM=;
        b=ZVrp98j8GATb5ocbaEvo1bNAiEN6i03K68hl0/UqZtYIWBrBNYGJ5nhm+n0Awy9kjv
         Oo0oNYDCJSlVTkMrtagft2f5ys472cdl5u0DX3mGACLojcbKkbO8DM/kMBZpOSaa0uXn
         lKxj7SNCFJO1eMZPU9HU96s8kTBL8njr4AlYG2qZynhxm/WWmZvE0NrtbNDjY8PioZzH
         7kjk7o5TcL/2PW7au9hRCbhOr1mG7s1CG4xhBUl2DCtajk3W9dZQbnfM17MaxCfkWLcb
         0jXCQ8KAcCSo1FhBUYfD84S3e9zyox86sOkeTurVRh1EFtfoBDgqWqFJ8VLy0B4pfgyk
         UIKQ==
X-Forwarded-Encrypted: i=1; AKwUvBxVIf9YqmJq4sRmt/1xqHv9bCFfnIASwWjys35vFxV9Fww1yibcZrhEM9c0ovHJNB7EmU+wJ8fQuw+4uE7Lyw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+eeNhD1rvh8jYoR8yIQPRIuT8XLeX2s+peWtmG6Ws0e1NWWyiW
	Ee04LbZC0vgF3FrpKXG89LbhrXxca76ciVDvknHd3Vv/AsqqE6JF2Jeh
X-Gm-Gg: AYBFou3sjAmqHHjhwM53D2QB5lcAwdeP+sDLfBnjMPOMVb/o2qtaihIRTqJqQcs1RqW
	DMWkszcT61vtShgd9jiCOBAENJ6FjvLYn4I5eFGJ0aQmzilNxm8GHUXPiHTJyoVqlDRHX98nM+Z
	jE7idcY3cOUIrTvJAtDqFD78WFs19gkzsjOLvv8qfZTqVVcA8Cr/IRV0ls1T9zajEsY8bxNYtML
	7iidiQdvdRpaXMXv1++U1W0vGpOd829+e+Zb0IikCD4vZ22+Lnq49aMj3ype8ubRJhFFK6j1beS
	qeBpmExGR3XX/KcRwOoqrPaPJysL906ZZKvC+fMoyoE1o57JPqpXhFUeRd3YwRL+do6oI0xQlAy
	SiGbJp14Xejt0N3B7DrYq6mT4N1YawjGKZagyij2KTa74jiyP1Py+a3pckUSRTdhhG9yejpcjBu
	cxGlCw1L19r5UEJHbfnPSVjfl70OUVnWRIWx0zgE5SeC1zlpG+XIoDdbqr9IsW3VSl8XYT3y7Qg
	uCS8ByzIsc5BHqLV1dyYz3ARGE3TzIy+5P749SZhu7YNUaA1xyefrmiiM5Jc6ZuogL4jLUdrWrq
	tI9dympInblpvxeLFZWe9iBMIEfldHtj6Xs8uzgCibeB
X-Received: by 2002:a05:701b:2318:b0:15b:afce:62c2 with SMTP id a92af1059eb24-1b25d359e6cmr2423409c88.41.1793945927182;
        Thu, 05 Nov 2026 22:18:47 -0800 (PST)
Received: from aaron-m75q ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b25e4b4aa7sm2675521c88.13.2026.11.05.22.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 22:18:46 -0800 (PST)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [PATCH v3] arm64: dts: rockchip: enable SD UHS-I on Firefly-RK3399
Date: Fri,  6 Nov 2026 14:18:35 +0800
Message-ID: <20261106061835.1316-1-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_221848_260262_FA691788 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Contrary to its name, vcc_sdio is the IO supply of the SD card slot: the
schematics route it to SDMMC0_VDD. It is listed as the vmmc-supply
of the WiFi SDIO node instead, and that consumer keeps the rail from
switching to 1.8V.

The WiFi module's main VBAT input comes from vcc3v3_sys, and its IO
supply stays vcc1v8_s3. The card slot itself is fed from vcc3v3_sys
through a switch enabled by GPIO4_D6, which the vendor device tree calls
vcc_sd.

Fix the supplies of sdio0 and sdmmc accordingly, describe vcc_sd, and
enable SDR104, which now becomes possible.

With UHS enabled, sequential read from a 64GB SDXC card goes from
22 MB/s to 60 MB/s. WiFi remained associated at 5 GHz, with no WiFi
errors.

Assisted-by: LLM
Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
Changes in v3:
- Describe the slot's own supply, vcc_sd, and use it as the sdmmc
  vmmc-supply (Heiko). It is fed from vcc3v3_sys, and GPIO4_D6 controls
  the slot power switch: holding the pin low leaves the card unpowered.
  This is the same arrangement as vcc3v0_sd on the ROC-PC. The existing,
  unreferenced lcd_panel_reset pinctrl entry also names GPIO4_D6; the
  vendor tree uses the pin only for vcc_sd.
- Link to v2: https://lore.kernel.org/all/20261105102556.1365-1-yaozhonguwl@gmail.com/

Changes in v2:
- Point the sdio0 vmmc-supply at vcc3v3_sys, the WiFi module's VBAT input,
  instead of dropping it (Heiko)
- Rewrite the commit message (Heiko)
- Link to v1: https://lore.kernel.org/all/20260922055011.14972-1-yaozhonguwl@gmail.com/

On the boot-time issue described in v2: with the vmmc-supply in place
the sdmmc controller now probes after the GRF io-domain here, and a card
present at boot came up in SDR104 in 5 of 5 warm boots, against 0 of 8
before. That is a change in probe order rather than a fix for the
ordering problem itself.

 .../boot/dts/rockchip/rk3399-firefly.dts      | 24 ++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 0568dfa..03858a4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -233,6 +233,19 @@ vcc5v0_typec: regulator-vcc5v0-typec {
 		vin-supply = <&vcc_sys>;
 	};
 
+	vcc_sd: regulator-vcc-sd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc_sd_en>;
+		regulator-name = "vcc_sd";
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
 	vcc_sys: regulator-vcc-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
@@ -731,6 +744,12 @@ wifi_enable_h: wifi-enable-h {
 		};
 	};
 
+	sdmmc {
+		vcc_sd_en: vcc-sd-en {
+			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb-typec {
 		vcc5v0_typec_en: vcc5v0_typec_en {
 			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -777,7 +796,7 @@ &sdio0 {
 
 	/* Power supply */
 	vqmmc-supply = <&vcc1v8_s3>;	/* IO line */
-	vmmc-supply = <&vcc_sdio>;	/* card's power */
+	vmmc-supply = <&vcc3v3_sys>;	/* card's power */
 
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -804,6 +823,9 @@ &sdmmc {
 	max-frequency = <150000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_sd>;
+	vqmmc-supply = <&vcc_sdio>;
 	status = "okay";
 };
 

base-commit: 940de590b839f71d6dc846160534bf202401b8b7
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
