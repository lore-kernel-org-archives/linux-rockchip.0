Return-Path: <SRS0=iF3C=NL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5097C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 20:39:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7C5456113B
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 20:39:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7C5456113B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qMcwq9FoP8R6lPenetRWowkMRKBAlVEMezdcS2Q5jGw=; b=bxARH+idVVnWQ+
	7ZG+820mmQP9S/4A+ZitRUpwTckYt1tNVyApzG+ODnmHL85qKBX/LeWHg8mVdAZqK0xMSqhr6t4YX
	F1RoEZijRBR1SQL7sIZlzuIJzcGRMaabLB9lSeWUeGT00W794lCzobKVmWCMcpVjZiBR25HGBUmnh
	j/ygOOim5rP00SOZlpBsdUfx6AAS5IqeqgfYSB4+MrJUQgqaG8APk9Qu12NqXBRq+5X57XFp1PLxy
	nY/bQlfq8H5dIMNxF1emuM9t/D0q8K3p+Tw35cbWDRHwZbaJ03+0DavOz//gbZbdswpdE4x8ipbt7
	ILjYD9mtHj0l2wOVB0+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHBIF-00C5Ft-49; Fri, 20 Aug 2021 20:39:11 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHBHz-00C5E3-CH
 for linux-rockchip@lists.infradead.org; Fri, 20 Aug 2021 20:38:59 +0000
Received: by mail-pj1-x1029.google.com with SMTP id
 qe12-20020a17090b4f8c00b00179321cbae7so8117008pjb.2
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Aug 2021 13:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3Y3InmxhpoYm0EqzJmyqf4YlfP1zDRs0XYYkt2TgkvM=;
 b=hv4DtvS/OHwCV6bvqRoipVam5+aL/92SEmRA16aPth6cOL+Pm3gdWuNUbsCg0nKGeI
 Y8T0wh1aW5WX54zH9pDZHGh2IdM7u6FPC8XaTzM8GD2ARnd+9uQ8tAfVPtwPp/8SaxcH
 d5vHqs1FmqnKPPiLNLAc50w95TmxKyPzZZkPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3Y3InmxhpoYm0EqzJmyqf4YlfP1zDRs0XYYkt2TgkvM=;
 b=B/oYM/7i3VHbG0EicoBWOtKcPJqmNyFmM+RcXRHbeqCahVZaAxtfAIL4GLe8bXBMb/
 LXmTKRI3VpNIxNIdTDSiI4XkuISiZfK0FUkbublmvJB1uzcFfLV9YfuKkFEM5V8LVB3C
 x2wINvtdm9e00ktgKT0MlxcXpxog/FZ09NrKyjHKaELEPjtlK/TS6RQxUhaV+m71h19Y
 UHIlIb538INv3Om332Q4ATfRse0s4u0zTwHql4xSCBcdnJ22a7ZT1XFfdKhYsINbvqh0
 jHtIxqQOW/DQw/9WdB8cEGwz907elKFrHAGLq6Tx9RrUUx0zfJnUfKh8X8i5YIv4g9VY
 G/9Q==
X-Gm-Message-State: AOAM532AtrGcQwPN96ZVJ1PdSTA7mZYemkSVxkfBrx11TJ3wC45Nb+dC
 n4PI9bspgr+1VwkOnrBQw/H6MA==
X-Google-Smtp-Source: ABdhPJxrQzbsRBaNc9QyvYCGYzZnK/vRO7AW7HVMqxcDBV6N96brDzCEUE7I1E7nfkqN9IDBarsdIQ==
X-Received: by 2002:a17:90a:8b81:: with SMTP id
 z1mr6382419pjn.82.1629491933445; 
 Fri, 20 Aug 2021 13:38:53 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:201:b547:9806:eff8:54ae])
 by smtp.gmail.com with ESMTPSA id b1sm7749715pfv.151.2021.08.20.13.38.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Aug 2021 13:38:52 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH] arm64: dts: rockchip: add RK3399 Gru gpio-line-names
Date: Fri, 20 Aug 2021 13:38:35 -0700
Message-Id: <20210820133829.1.Ica46f428de8c3beb600760dbcd63cf879ec24baf@changeid>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_133855_447899_3B39232C 
X-CRM114-Status: GOOD (  10.39  )
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

It's convenient to get nice names for GPIOs. In particular, Chrome OS
tooling looks for "AP_FLASH_WP" and "AP_FLASH_WP_L". The rest are
provided for convenience.

Gru-Bob and Gru-Kevin share the gru-chromebook.dtsi, and for the most
part they share pin meanings. I omitted a few areas where components
were available only on one or the other.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 .../dts/rockchip/rk3399-gru-chromebook.dtsi   | 176 +++++++++++++++++
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 180 ++++++++++++++++++
 2 files changed, 356 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 1384dabbdf40..9b2c679f5eca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -251,6 +251,182 @@ edp_out_panel: endpoint@0 {
 	};
 };
 
+&gpio0 {
+	gpio-line-names = /* GPIO0 A 0-7 */
+			  "AP_RTC_CLK_IN",
+			  "EC_AP_INT_L",
+			  "PP1800_AUDIO_EN",
+			  "BT_HOST_WAKE_L",
+			  "WLAN_MODULE_PD_L",
+			  "H1_INT_OD_L",
+			  "CENTERLOGIC_DVS_PWM",
+			  "",
+
+			  /* GPIO0 B 0-4 */
+			  "WIFI_HOST_WAKE_L",
+			  "PMUIO2_33_18_L",
+			  "PP1500_EN",
+			  "AP_EC_WARM_RESET_REQ",
+			  "PP3000_EN";
+};
+
+&gpio1 {
+	gpio-line-names = /* GPIO1 A 0-7 */
+			  "",
+			  "",
+			  "SPK_PA_EN",
+			  "",
+			  "TRACKPAD_INT_L",
+			  "AP_EC_S3_S0_L",
+			  "AP_EC_OVERTEMP",
+			  "AP_SPI_FLASH_MISO",
+
+			  /* GPIO1 B 0-7 */
+			  "AP_SPI_FLASH_MOSI_R",
+			  "AP_SPI_FLASH_CLK_R",
+			  "AP_SPI_FLASH_CS_L_R",
+			  "WLAN_MODULE_RESET_L",
+			  "WIFI_DISABLE_L",
+			  "MIC_INT",
+			  "",
+			  "AP_I2C_DVS_SDA",
+
+			  /* GPIO1 C 0-7 */
+			  "AP_I2C_DVS_SCL",
+			  "AP_BL_EN",
+			  /*
+			   * AP_FLASH_WP is crossystem ABI. Schematics call it
+			   * AP_FW_WP or CPU1_FW_WP, depending on the variant.
+			   */
+			  "AP_FLASH_WP",
+			  "LITCPU_DVS_PWM",
+			  "AP_I2C_AUDIO_SDA",
+			  "AP_I2C_AUDIO_SCL",
+			  "",
+			  "HEADSET_INT_L";
+};
+
+&gpio2 {
+	gpio-line-names = /* GPIO2 A 0-7 */
+			  "",
+			  "",
+			  "SD_IO_PWR_EN",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  /* GPIO2 B 0-7 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  /* GPIO2 C 0-7 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "AP_SPI_EC_MISO",
+			  "AP_SPI_EC_MOSI",
+			  "AP_SPI_EC_CLK",
+			  "AP_SPI_EC_CS_L",
+
+			  /* GPIO2 D 0-4 */
+			  "BT_DEV_WAKE_L",
+			  "",
+			  "WIFI_PCIE_CLKREQ_L",
+			  "WIFI_PERST_L",
+			  "SD_PWR_3000_1800_L";
+};
+
+&gpio3 {
+	gpio-line-names = /* GPIO3 A 0-7 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "AP_SPI_TPM_MISO",
+			  "AP_SPI_TPM_MOSI_R",
+			  "AP_SPI_TPM_CLK_R",
+			  "AP_SPI_TPM_CS_L_R",
+
+			  /* GPIO3 B 0-7 */
+			  "EC_IN_RW",
+			  "",
+			  "AP_I2C_TP_SDA",
+			  "AP_I2C_TP_SCL",
+			  "AP_I2C_TP_PU_EN",
+			  "TOUCH_INT_L",
+			  "",
+			  "",
+
+			  /* GPIO3 C 0-7 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  /* GPIO3 D 0-7 */
+			  "I2S0_SCLK",
+			  "I2S0_LRCK_RX",
+			  "I2S0_LRCK_TX",
+			  "I2S0_SDI_0",
+			  "I2S0_SDI_1",
+			  "",
+			  "I2S0_SDO_1",
+			  "I2S0_SDO_0";
+};
+
+&gpio4 {
+	gpio-line-names = /* GPIO4 A 0-7 */
+			  "I2S_MCLK",
+			  "AP_I2C_MIC_SDA",
+			  "AP_I2C_MIC_SCL",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  /* GPIO4 B 0-7 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  /* GPIO4 C 0-7 */
+			  "AP_I2C_TS_SDA",
+			  "AP_I2C_TS_SCL",
+			  "GPU_DVS_PWM",
+			  "UART_DBG_TX_AP_RX",
+			  "UART_AP_TX_DBG_RX",
+			  "",
+			  "BIGCPU_DVS_PWM",
+			  "EDP_HPD_3V0",
+
+			  /* GPIO4 D 0-5 */
+			  "SD_CARD_DET_L",
+			  "USB_DP_HPD",
+			  "TOUCH_RESET_L",
+			  "PP3300_DISP_EN",
+			  "",
+			  "SD_SLOT_PWR_EN";
+};
+
 ap_i2c_mic: &i2c1 {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 5d7a9d96d163..61afb5f0f15b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -389,6 +389,186 @@ &cru {
 		<400000000>;
 };
 
+&gpio0 {
+	gpio-line-names = /* GPIO0 A 0-7 */
+			  "CLK_32K_AP",
+			  "EC_IN_RW_OD",
+			  "SPK_PA_EN",
+			  "WLAN_PERST_1V8_L",
+			  "WLAN_PD_1V8_L",
+			  "WLAN_RF_KILL_1V8_L",
+			  "BIGCPU_DVS_PWM",
+			  "SD_CD_L_JTAG_EN",
+
+			  /* GPIO0 B 0-5 */
+			  "BT_EN_BT_RF_KILL_1V8_L",
+			  "PMUIO2_33_18_L_PP3300_S0_EN",
+			  "TOUCH_RESET_L",
+			  "AP_EC_WARM_RESET_REQ",
+			  "PEN_RESET_L",
+			  /*
+			   * AP_FLASH_WP_L is crossystem ABI. Schematics call
+			   * it AP_FLASH_WP_R_ODL.
+			   */
+			  "AP_FLASH_WP_L";
+};
+
+&gpio1 {
+	gpio-line-names = /* GPIO1 A 0-7 */
+			  "PEN_INT_ODL",
+			  "PEN_EJECT_ODL",
+			  "BT_HOST_WAKE_1V8_L",
+			  "WLAN_HOST_WAKE_1V8_L",
+			  "TOUCH_INT_ODL",
+			  "AP_EC_S3_S0_L",
+			  "AP_EC_OVERTEMP",
+			  "AP_SPI_FLASH_MISO",
+
+			  /* GPIO1 B 0-7 */
+			  "AP_SPI_FLASH_MOSI_R",
+			  "AP_SPI_FLASH_CLK_R",
+			  "AP_SPI_FLASH_CS_L_R",
+			  "SD_CARD_DET_ODL",
+			  "",
+			  "AP_EXPANSION_IO1",
+			  "AP_EXPANSION_IO2",
+			  "AP_I2C_DISP_SDA",
+
+			  /* GPIO1 C 0-7 */
+			  "AP_I2C_DISP_SCL",
+			  "H1_INT_ODL",
+			  "EC_AP_INT_ODL",
+			  "LITCPU_DVS_PWM",
+			  "AP_I2C_AUDIO_SDA",
+			  "AP_I2C_AUDIO_SCL",
+			  "AP_EXPANSION_IO3",
+			  "HEADSET_INT_ODL",
+
+			  /* GPIO1 D0 */
+			  "AP_EXPANSION_IO4";
+};
+
+&gpio2 {
+	gpio-line-names = /* GPIO2 A 0-7 */
+			  "AP_I2C_PEN_SDA",
+			  "AP_I2C_PEN_SCL",
+			  "SD_IO_PWR_EN",
+			  "UCAM_RST_L",
+			  "PP1250_CAM_EN",
+			  "WCAM_RST_L",
+			  "AP_EXPANSION_IO5",
+			  "AP_I2C_CAM_SDA",
+
+			  /* GPIO2 B 0-7 */
+			  "AP_I2C_CAM_SCL",
+			  "AP_H1_SPI_MISO",
+			  "AP_H1_SPI_MOSI",
+			  "AP_H1_SPI_CLK",
+			  "AP_H1_SPI_CS_L",
+			  "",
+			  "",
+			  "",
+
+			  /* GPIO2 C 0-7 */
+			  "UART_EXPANSION_TX_AP_RX",
+			  "UART_AP_TX_EXPANSION_RX",
+			  "UART_EXPANSION_RTS_AP_CTS",
+			  "UART_AP_RTS_EXPANSION_CTS",
+			  "AP_SPI_EC_MISO",
+			  "AP_SPI_EC_MOSI",
+			  "AP_SPI_EC_CLK",
+			  "AP_SPI_EC_CS_L",
+
+			  /* GPIO2 D 0-4 */
+			  "PP2800_CAM_EN",
+			  "CLK_24M_CAM",
+			  "WLAN_PCIE_CLKREQ_1V8_L",
+			  "",
+			  "SD_PWR_3000_1800_L";
+};
+
+&gpio3 {
+	gpio-line-names = /* GPIO3 A 0-7 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  /* GPIO3 B 0-7 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  /* GPIO3 C 0-7 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  /* GPIO3 D 0-7 */
+			  "I2S0_SCLK",
+			  "I2S0_LRCK_RX",
+			  "I2S0_LRCK_TX",
+			  "I2S0_SDI_0",
+			  "STRAP_LCDBIAS_L",
+			  "STRAP_FEATURE_1",
+			  "STRAP_FEATURE_2",
+			  "I2S0_SDO_0";
+};
+
+&gpio4 {
+	gpio-line-names = /* GPIO4 A 0-7 */
+			  "I2S_MCLK",
+			  "AP_I2C_EXPANSION_SDA",
+			  "AP_I2C_EXPANSION_SCL",
+			  "DMIC_EN",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  /* GPIO4 B 0-7 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  /* GPIO4 C 0-7 */
+			  "AP_I2C_TS_SDA",
+			  "AP_I2C_TS_SCL",
+			  "GPU_DVS_PWM",
+			  "UART_DBG_TX_AP_RX",
+			  "UART_AP_TX_DBG_RX",
+			  "BL_EN",
+			  "BL_PWM",
+			  "",
+
+			  /* GPIO4 D 0-5 */
+			  "",
+			  "DISPLAY_RST_L",
+			  "",
+			  "PPVARP_LCD_EN",
+			  "PPVARN_LCD_EN",
+			  "SD_SLOT_PWR_EN";
+};
+
 &i2c_tunnel {
 	google,remote-bus = <0>;
 };
-- 
2.33.0.rc2.250.ged5fa647cd-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
