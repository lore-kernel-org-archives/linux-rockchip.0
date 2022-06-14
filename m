Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8CBBC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 01:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VS9VpGw3pVA2zzkMOtj92lCz2LmB6LCpnIGf5YvvpzU=; b=i7t3zNOOnbZv76
	wHbjdza++Xon1X5k/LOS+ahSwFdauvx3gP9IccUgO9VUvWIqdlEIFzQ2LoUy+Y0CRTR9yq5yDC/ed
	+WHYq0IgKGo0IfZksF92JjY7c0Fm9MTvdNNF3dKJBACQnoA5niWV2zEPvfsafx6MkGE0TbvNqI/E/
	OyEaYMi2u7NRVowPnPsT9T4y3UVAfg2uvMipetHIaH8B3XxYAG4xquIM2NGWz5bf6BQh0np/56WLe
	WFyppIYMy886zFm33x3UKzO4yXtqkgO3c+4BFtbdd9RFa/dtqfcLiRxvaDauZqo9ykspFxJY8sDNV
	kULaHZHPPnWG78WBYHfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0vTo-006awZ-CS; Tue, 14 Jun 2022 01:36:28 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0vTm-006avL-Aa
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 01:36:27 +0000
Received: by mail-pg1-x535.google.com with SMTP id e66so7157062pgc.8
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jun 2022 18:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vr3fX45ywehvFPMvVsgjiEhDYk6zSPz1Xs7VmBa3RB0=;
        b=LGa6nEeSyttuoLknR2c4ecMPP3TPyj6tCthui57qYgw/9fGxHzpcnjdS273kViIUw/
         JMXLrGiNmzTblwp1WrKeNUlFe89PfzQVWDK1QGw1SlbAnRNMAoxdAepoKzXKGYxX7QOh
         MphoTdoxRuC+0D+5YiEJ2JUgELuChbgGPcMw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vr3fX45ywehvFPMvVsgjiEhDYk6zSPz1Xs7VmBa3RB0=;
        b=ekfaPOfGbpIjLe5YrjTEClVH/D47j7TuTvz9FlCQ+/o9FszZOShWuH8gJnw9aPwJ8b
         ciOFNyM24886f5OBtxOpwWwQlI6ZR/CYTNlhDTdQmd+qh+BcfiLARfwqr2XK9FAVT/XW
         OAf+acIvL3y6jn0Aon6nz9z/d9bHrrYQKDdTIhKosRBDGE7E4Ht4VYqfnhVeoNKZ82/C
         UHv08/acGkswGN3unloeIxoqCZSYMyV8+6Xvq5f7QOivOmO0Pxn/Z0N/QQiyi5eUrqeF
         XqUMSbFGmbgrwF4Eap8nn1LpN2M0VPD2LkBkLTRJd7p+D5F3TQ3t3JnpRufgVdSkt3KO
         QzLg==
X-Gm-Message-State: AOAM530FWOAyCmd6FAjBAiCwysl+bTES55TuUhqSdo7ntNatIFn5pZR3
	n+kQf5g6MeEpLHwquOE1cUinF5W5m/++Rw==
X-Google-Smtp-Source: ABdhPJzfoL5dT43VZDaBfP2Fy3VDED2naoP7v9bNzu2D2llcrm9KDkbvSNS3WSdcYmyGG8N1LyIebQ==
X-Received: by 2002:a63:1c2:0:b0:3fd:3458:5dd4 with SMTP id 185-20020a6301c2000000b003fd34585dd4mr2236115pgb.87.1655170582435;
        Mon, 13 Jun 2022 18:36:22 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:ceef:e68b:2670:64f3])
        by smtp.gmail.com with UTF8SMTPSA id o12-20020a63a80c000000b00407e25d4527sm3487782pgf.22.2022.06.13.18.36.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 18:36:21 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Caesar Wang <wxt@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	Brian Norris <briannorris@chromium.org>
Subject: [RFC PATCH] Revert "arm64: dts: rockchip: add SdioAudio pd control for rk3399"
Date: Mon, 13 Jun 2022 18:36:17 -0700
Message-Id: <20220613183556.RFC.1.I9ca71105e505f024d53b7e0ba4462230813ebb8d@changeid>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_183626_423480_B3D3CDE5 
X-CRM114-Status: GOOD (  17.73  )
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

This reverts commit b0f2110af8475bc6812287b6598161a2c1a34c61.

(With some minor changes for context that have changed since then.)

I've found that speaker and headphone audio have issues on RK3399 Gru
Scarlet devices after commit: b0f2110af847 ("arm64: dts: rockchip: add
SdioAudio pd control for rk3399"). It's likely somehow related to the
fact that we completely reset VD_LOGIC in S3 suspend, which includes the
SDIOAUDIO domain.

Problematic test case:

1. play audio (e.g., youtube) through speakers
2. plug in headphones to 3.5mm jack (youtube remains playing)
3. suspend/resume the system (S3)
4. resume audio
5. unplug headphones (and resume audio)
6. plug headphones (youtube remains playing)

At step 4, the audio sounds like garbage through the headphones (like
every other sample is missing or stretched out, so it sounds like a
screechy version on the original track?). At step 5, the speakers are
silent. At step 6, the audio is garbage again.

These problems go away if we stop managing this power domain and instead
leave it on all the time.

Power impact should be minimal.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---
I don't really expect this patch to be merged as-is, but I want to put
it up as a form of bug report and place to point people if they somehow
have the same issue.

I've poked around at the rockchip-i2s and codec drivers in use and have
come up dry, to explain why audio breaks like this for me on kernels
with commit b0f2110af847 involved. I don't plan on spending a lot more
time on debugging this but instead am simply going to run with this
patch in my kernels. If anyone has hot tips, I may be willing to spend a
few cycles looking at alternatives though...

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index fbd0346624e6..1563e8d503f5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -296,7 +296,6 @@ sdio0: mmc@fe310000 {
 			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		fifo-depth = <0x100>;
-		power-domains = <&power RK3399_PD_SDIOAUDIO>;
 		resets = <&cru SRST_SDIO0>;
 		reset-names = "reset";
 		status = "disabled";
@@ -794,7 +793,6 @@ spi5: spi@ff200000 {
 		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi5_clk &spi5_tx &spi5_rx &spi5_cs0>;
-		power-domains = <&power RK3399_PD_SDIOAUDIO>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
@@ -1102,12 +1100,6 @@ power-domain@RK3399_PD_SD {
 				pm_qos = <&qos_sd>;
 				#power-domain-cells = <0>;
 			};
-			power-domain@RK3399_PD_SDIOAUDIO {
-				reg = <RK3399_PD_SDIOAUDIO>;
-				clocks = <&cru HCLK_SDIO>;
-				pm_qos = <&qos_sdioaudio>;
-				#power-domain-cells = <0>;
-			};
 			power-domain@RK3399_PD_TCPD0 {
 				reg = <RK3399_PD_TCPD0>;
 				clocks = <&cru SCLK_UPHY0_TCPDCORE>,
@@ -1648,7 +1640,6 @@ spdif: spdif@ff870000 {
 		clocks = <&cru SCLK_SPDIF_8CH>, <&cru HCLK_SPDIF>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&spdif_bus>;
-		power-domains = <&power RK3399_PD_SDIOAUDIO>;
 		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
@@ -1664,7 +1655,6 @@ i2s0: i2s@ff880000 {
 		clocks = <&cru SCLK_I2S0_8CH>, <&cru HCLK_I2S0_8CH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s0_8ch_bus>;
-		power-domains = <&power RK3399_PD_SDIOAUDIO>;
 		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
@@ -1679,7 +1669,6 @@ i2s1: i2s@ff890000 {
 		clocks = <&cru SCLK_I2S1_8CH>, <&cru HCLK_I2S1_8CH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s1_2ch_bus>;
-		power-domains = <&power RK3399_PD_SDIOAUDIO>;
 		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
@@ -1692,7 +1681,6 @@ i2s2: i2s@ff8a0000 {
 		dma-names = "tx", "rx";
 		clock-names = "i2s_clk", "i2s_hclk";
 		clocks = <&cru SCLK_I2S2_8CH>, <&cru HCLK_I2S2_8CH>;
-		power-domains = <&power RK3399_PD_SDIOAUDIO>;
 		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
-- 
2.36.1.476.g0c4daa206d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
