Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B4DAC44514
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 01:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZLzU/YlxrUedtn6pCZenjVwrp2Agduj8EwRrWdcXo0=; b=GdGqdz3xpFDtUz
	iJaYbyJeCQfGfrIbJ/CRCWzqUfxe4kWp/QtldWCKqqSJVMH0ifMa5nSSo8b7BkRuiNqbUXCSLqVis
	OcF6UqMUeWgku74ZIoR3OGN7navYNeb2vxhOdq785Jcih8iZYqxbWvf7es++HCZpeiQGR27ahTws0
	fY/TEFK2uHXyIna24OPQ5sxCNOrLfFDtZdsENfXioXxC9t7EvWm7wSNGxfayOcuWen+j17x+FzI3Z
	lS0t8ZivJrSxNfOliasBXegU0uoNKOOyNgATQmOtTLpMpjy6JGUt4S8Q+tyzOjydK78ifIEKdPbSB
	Zmrm9dxFFqwb4QJss5yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkX3R-00000000sNe-43hZ;
	Fri, 17 Jul 2026 01:07:53 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkX3P-00000000sLt-0qTd
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 01:07:52 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-80e24970f1dso31501027b3.0
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 18:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784250470; x=1784855270; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WPT39dJ1gtwLyIatxoxDgA9qUwXYidynUbaVwKzanpk=;
        b=T5dP4/2t0KYEbp8aBu7x7QJCzmac7U387n9l05hzPEhx1KR2VzaA2U9ihJnV4beEdY
         JCXCQUws4kDzVFd/2isZFymsKQN4CmCQBVSdv577O8DJ/1M3W+6tycXxJeIpNmI7xXZ7
         azopaWuad30dOVj9FUdFYUh5ewAwEqu3StG35j8GV92xpuZtJIBtM1uIFH657dcu0e+e
         a3kPEEBipVAdhsjuq+C+80fzehm6ceFqMemZ2wxiGzbwiegziXWdFSOPBue2/2Fi8/2q
         oJBG/DuV87Jwh2Ha48YUpg3nczRo1odT85fJUAUriuJjwe9xZ+wiq58XYWjM3eekwRih
         elQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784250470; x=1784855270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WPT39dJ1gtwLyIatxoxDgA9qUwXYidynUbaVwKzanpk=;
        b=PpnB6x/zIltnsnOTkRA5tCgf33DHpChbhO453I6X1SKo7PvDG9cadbza1fGg4UbYbz
         mz9RdIT+vjIXO9oox5k1HXug2eF8T6zJFYqX0FMgTSWbnJGz3XpEsRSA79GOC/g4DMig
         dEgXhCUenzl5DBBLPijcqV7KIvFPf0zsp93WoYavODfg/9gZkmO8QtWVxKYWNGdCpV5g
         Dbm8tvKf6HNQxKsC3Gv5Ed61oIdGguvJWyd0aYW2KmMdFtBILNMKQH/SHc5W6Z2Kx29K
         2zyIsOnykAAOg2SNhIrfjGzELHPk77/hWpK2ICdO9XkosVshPnnBL+jha1SgtTl65Mb5
         l+zA==
X-Forwarded-Encrypted: i=1; AHgh+RrSC/i4ANDNWjuvInfyo8XzF/bSZCXtwjTHTqy0vFz+VM42DVIqgDPxT46oUVSl0xN3kZ85iRRVdRHd4CeWoA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6JpKcAu4/iMgdOLG4bvff1rudg7OloPz+bep0cMMbu50r7sDK
	C1jxPNLfjYizlo14V0r2U3Gy+XTIOUVyVKAffSVXv8UTNHevaoz4jBAM
X-Gm-Gg: AfdE7clz9sWpBci5dHzVQWELLtZ9ylmEsFyaHhKL+VZy9nui3RKGKHxaZ8rXpJyvT7I
	xvYu4J1IuKAuMKFfgU/HugNygVx9fZTZ3+jJTXpZCZ0DE3XBZgpa53mSan23uXT/H+/eEX/82WX
	VQli38i0lY1S2b4nJc8XygttD7j49E82GGFqEavjpYr2TjKDToHZu1KNxdhjViWbdLQqzFgmmF1
	5TKOV2XioLtBWyUNF8tOaDWNQ6DgtqVvOHqvCncIPvABRQ27hFWURbYRR8u4val6D9CBMerKaBn
	DjHbu4Cs5C6kx5HB5mkDKeg3DgZscaGVGC0AuHyO25CrHRjqXpQAuWG9paNaswfnNrwmtRcwhUB
	Hpa6bycdP2tidTHvmrQlM42mHNm1r0iNfpKogJeVvNG1C/k21LuQ1Si4ZfJfora50MLjQAAETQi
	vAtxyc6cgMfLXwFX/wVGIFgeU+ZY284biYczI8ToHshlsLlwY=
X-Received: by 2002:a05:690c:c0b:b0:80c:85e5:8744 with SMTP id 00721157ae682-81ef2611f04mr442457b3.66.1784250470113;
        Thu, 16 Jul 2026 18:07:50 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a801:a24:e2d1:829c:ccde:e84f])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81e8f4c5d3csm159095057b3.15.2026.07.16.18.07.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 18:07:48 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: Enable wireless on rk3399-roc-pc-plus
Date: Thu, 16 Jul 2026 22:07:35 -0300
Message-ID: <20260717010736.578419-2-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260717010736.578419-1-festevam@gmail.com>
References: <20260717010736.578419-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_180751_258578_A957FEEF 
X-CRM114-Status: GOOD (  10.76  )
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

From: Fabio Estevam <festevam@nabladev.com>

The rk3399-roc-pc-plus board has an Ampak AP6256 Wi-Fi/Bluetooth
module.

Describe the Wi-Fi function on SDIO0 and the Bluetooth function on
UART0. Add the Bluetooth wake and shutdown pinctrl entries, enable
SDIO0 as a non-removable SDIO device, and add the power sequencing
delays needed by the module.

The module uses the RK808 CLKOUT2 output as its 32 kHz low-power
clock. Drop the duplicate HYM8563 clock-output-names property and
remove the same clock from the SDIO power sequencer so the Bluetooth
node can request the shared LPO clock directly.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 .../boot/dts/rockchip/rk3399-roc-pc-plus.dts  | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
index f6d62ee51f1b..f87bc7b6afc1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
@@ -123,6 +123,10 @@ es8388: es8388@11 {
 	};
 };
 
+&hym8563 {
+	/delete-property/ clock-output-names;
+};
+
 /* <4 RK_PA0 1 &pcfg_pull_none> is used as i2s_8ch_mclk_pin */
 &i2s0_8ch_bus {
 	rockchip,pins =
@@ -157,6 +161,20 @@ &i2s1 {
 };
 
 &pinctrl {
+	bt {
+		bt_enable_h: bt-enable-h {
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_l: bt-wake-l {
+			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	es8388 {
 		ear_ctl_pin: ear-ctl-pin {
 			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_output_high>;
@@ -180,6 +198,28 @@ i2s_8ch_mclk_pin: i2s-8ch-mclk-pin {
 	};
 };
 
+&sdio_pwrseq {
+	/delete-property/ clocks;
+	/delete-property/ clock-names;
+	post-power-on-delay-ms = <100>;
+	power-off-delay-us = <500000>;
+};
+
+&sdio0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
 &u2phy0 {
 	status = "okay";
 
@@ -212,6 +252,17 @@ &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
 	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+	};
 };
 
 &usbdrd_dwc3_0 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
