Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D370CCFA1B
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 20:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4UsnaFIBiMG/VbOa8WpkgIOQaA2XEI283Phg8uBhkYw=; b=lQiJKNE/TKeWaw
	t15DqjpXHlMdsLlyesqKw7fx9+WVPxwk3KJ7IPzBC+rvKwVJI4EZEl1crUweAs/gAHfGErqnAlqS+
	Oe5V+EBUY55KlODG50VAjSyprawkRaKYPbIDJmByCfwY7Z5A5qvM6f7G869hPxTlSiToYfBS5vL3h
	6ue4sOg1FwbsJLELRpaGyiVSDU+yYXcH93XY3ekTAT/ewEMwjK1BLFMmbLJxwgT3oaV4eYZBP52m0
	TQcd+tl137Llv3+qPNa+4HFOGLd7IG14OcHqIXXxM/8c/DQUxYiB1V6hwI1M5Yw3mbkGu76XId43s
	WkC3D+Ns+WtaJn693mYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkbc-0000000EPM7-1eMF;
	Wed, 05 Nov 2025 20:59:48 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkba-0000000EPKR-0IZu
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 20:59:47 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-44fe45e430aso142917b6e.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 12:59:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376385; x=1762981185; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7wNcEUJwSD+iOrBQas9PpJhVaeNyMU2g+TA+o2qPBPg=;
        b=AZy2lDoCirYVJDo8ZzpYlFgyXVdDKSWtK38FTG/zweASFCyUWmjPF5Qkg2N1TAH7cn
         YQW3W+HGOf7/CIGUruB0F4XFzG/XlYNTkGZX4puWYF1weeHYjBtU1FPMTv9cvt7jLyP3
         8GnsTLs6IzBKBfO5EleAwVAf+QGxaX3rldvDVhfEkwJbVu6JECN57n07Qqm+pj/OR+GU
         F2wirK3BBsohNjvOI4PvYbzpmRtseQiP9gJ1Sc8QuCMZm9AD31yjzrlr21wv0n5KpGVW
         GESuyYc21AlHCbNDUi06GvFeJrO8hmodf+xiJ+P1efDJ749RckogBj0U/g1p0A3R9fQU
         JVHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376385; x=1762981185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7wNcEUJwSD+iOrBQas9PpJhVaeNyMU2g+TA+o2qPBPg=;
        b=oGzO1B4u987loS7RrBc8+lpa2H0ZaJTO0K7EFbRDtaDqYhI8Q54zbQ8xFRP7LME7k+
         HcjoGXuGItIZkFM2ZdywM4jr6UBK/IgJ31P3wz/f/eyeqPCQmlX+eGPaPePta8z61/ro
         hyP3WF+A1ij1F83GV/N+FV9h/0wi0sIskvd++gvfxCnkVBoNOfWx2q9so5zMT/2VOjoZ
         3OES1Crg4y0uiOMOPFDpypbpxNRiEAlGL9I+x8Qmjh9UVRN9rXXIwTtsC7ibEDrd4/sa
         7ZE6Quvrco02HpLrWmtDdwioiaJOerrTGHQUhuHjlDk0pxn/YMAWHZcTwQqK9GIsOOPA
         QezQ==
X-Gm-Message-State: AOJu0YzMCD8Yn4BL/F2wO+cLlhdydMHG/eUOlfRpZGrLCE0I82Jv8hup
	dpWLOxR7UWMGgxhfD0AJWvceDi7rjCdb7JrVZs4YNiJzxDMkMHelibtlR+raOQ==
X-Gm-Gg: ASbGnctq5s/3L9gaMvMdIfj2Q407uBe+S//l8m7GEi5vG4R0X0dVTXxQK26uIal2l8t
	1FBfSS6oAhYSPeo508ec51VQ6cwOL70YFQl7+xgTYvBsmw9VHs5jgAE3usHF3gpUZwFNqKhxBFE
	EvwaC9l71H8FfthuXv578+zArYtELGW8TxVVjzX7Xqn9+X9A5vFQSa5Boo7FaL9vleFkfH/XAuv
	Ost5cgAWmZxoZVmxsGm5W9L7pS8N6PSt1fhllEcsd8MXIyK4twSCeQL8E2C7esalO75o5g5ap91
	LCHjHlwISWqKLsPkfaKpPaSSmWs+Zlm0u0anJAU+4a3bY9vBxECXD4dgZnvOXKKtOffdtNXdDXK
	eKpmMXh3oKTuIgg1/3QxAfj50sDEPToPJWDCPR52/aEqlJpgCopxkBJxUlcUDhMrZFExsrAo8ew
	==
X-Google-Smtp-Source: AGHT+IHn7SXqxNTTbdXxRe+rHhYmZqRs/v4Ng2JSdZ/2Ojfv+Jm6HVfnvlwmgduMPx/ntMCFswq0lA==
X-Received: by 2002:a05:6808:4497:b0:44d:c185:f816 with SMTP id 5614622812f47-44fed427e58mr2467732b6e.34.1762376384869;
        Wed, 05 Nov 2025 12:59:44 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c5713288sm160312eaf.5.2025.11.05.12.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:59:44 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/5] arm64: dts: rockchip: Add Additional pinctrl defs for Indiedroid Nova
Date: Wed,  5 Nov 2025 14:57:05 -0600
Message-ID: <20251105205708.732125-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105205708.732125-1-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_125946_118501_E50F7A65 
X-CRM114-Status: GOOD (  11.17  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Define the pinctrl nodes for the WiFi interrupts, correct the pinctrl
for the ethernet according to the schematic, and add the clk32k_in
control for the RTC. Add the correct regulator mapping for the PCIE
too.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 43 ++++++++++++-------
 1 file changed, 28 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index debab7732b71..f40782b6c7db 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -406,7 +406,7 @@ rtc_hym8563: rtc@51 {
 		clock-output-names = "hym8563";
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-0 = <&hym8563_int>;
+		pinctrl-0 = <&hym8563_int>, <&clk32k_in>;
 		pinctrl-names = "default";
 		wakeup-source;
 	};
@@ -459,8 +459,11 @@ &i2s5_8ch {
 };
 
 &pcie2x1l2 {
-	pinctrl-0 = <&rtl8111_perstb>;
+	pinctrl-0 = <&pcie20x1m0_perstn>, <&pcie20x1m0_clkreqn>,
+		    <&pcie20x1m0_waken>;
 	pinctrl-names = "default";
+	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc_3v3_s3>;
 	status = "okay";
 };
 
@@ -486,12 +489,6 @@ bt_wake_host: bt-wake-host {
 		};
 	};
 
-	ethernet-pins {
-		rtl8111_perstb: rtl8111-perstb {
-			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
-
 	hym8563 {
 
 		hym8563_int: hym8563-int {
@@ -500,13 +497,6 @@ hym8563_int: hym8563-int {
 		};
 	};
 
-	sdio-pwrseq {
-		wifi_enable_h: wifi-enable-h {
-			rockchip,pins =
-				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	usb-typec {
 		usbc0_int: usbc0-int {
 			rockchip,pins =
@@ -518,6 +508,18 @@ typec5v_pwren: typec5v-pwren {
 				<4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	wifi {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins =
+				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_host_wake_irq: wifi-host-wake-irq {
+			rockchip,pins =
+				<0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
 };
 
 &saradc {
@@ -538,6 +540,7 @@ &sdhci {
 };
 
 &sdio {
+	#address-cells = <1>;
 	bus-width = <4>;
 	cap-sd-highspeed;
 	cap-sdio-irq;
@@ -549,9 +552,19 @@ &sdio {
 	no-sd;
 	non-removable;
 	sd-uhs-sdr104;
+	#size-cells = <0>;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vcc_1v8_s3>;
 	status = "okay";
+
+	sdio_wifi: wifi@1 {
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA0 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "host-wake";
+		pinctrl-0 = <&wifi_host_wake_irq>;
+		pinctrl-names = "default";
+	};
 };
 
 &sdmmc {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
