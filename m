Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBEE8C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 02:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cg7MCRUe9VPnChM2jNQpBWUVNTfgXEhA5+AVf7vXXhc=; b=m6oJtBmZ7SMmpF
	sIARGUxKrh7Ctobta//cDiOCPNeAJDxYiGvdfeAjK9d45YmZu6CVSRqX+2p6RcUwfBpHvsQoQQu9x
	Z7egJ/Z/W6u8k9c9a+c17Bkr3bMtQybHZbDPtupDpYDT/Xd70B9UmZFdGpIdexkiDbwwjVMQl5dPo
	9dZ44Pc8RRMmgAwHF8t7nuV7R0TNUMQNRTfowIyRg40wQKACSTsaLhs47zsocHnFAZePkblBghzzi
	SqlcQubHTcjCm93CkWSi5BRTTfZVYnmX3c6Q6xpoKnNskObuvu8UTRD7jfupouifET82x2m2NfO83
	szMiOLMycrx3P5fi7ILQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4CUU-00Cxdt-1S; Thu, 23 Jun 2022 02:22:42 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4CKL-00CtK0-98
	for linux-rockchip@lists.infradead.org; Thu, 23 Jun 2022 02:12:14 +0000
Received: by mail-pj1-x102a.google.com with SMTP id go6so12699688pjb.0
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jun 2022 19:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uocW7t68W0YJxjhBkIgjPuVpgmZag9hEd+k700L7PW0=;
        b=lCcTlIWiKjUXkrJyUk1e9stAhK+rnugJsDH5d34p3ZX8gdE6a7hhDgTnBYM1ghsKpu
         V5mmNvb4JsP80lJc3toMHMeiRplCmeeqdNFwiaME/voht9idvVNite/xm3wGQXKpNyMc
         3O24lTlGFdUO7LHJHpQ3hizLigdIzWq5BPedY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uocW7t68W0YJxjhBkIgjPuVpgmZag9hEd+k700L7PW0=;
        b=lnV/0cErZ/o/RUsflpHz/ZI3AfSsfluM7GHidGGQQD6dVKvcVGmsGvowIa5VEqYANl
         aMKdAnkO2OA7NAMHpnSdeNsYBfkXh1nLMUEDThDCe+NTqEJls1wsOtzT68zRtGAFIwne
         DI/EPGhO+G4Ml33zZVRJqsTDHXuo+0J4HYw6KpFNq6VhkJ9oTOiAowoXzjmWGIkaN2Ts
         IpooKciy4pClMQE9uN2AZ+CeBCm3HDhM1S6WHKVTlCb4xDbUHA82e2oLuqX5F0vhtHf4
         FH6h6sIphaUYe0zsFcuiLw46GfpDcwmT/Rn0Bbvwov8lBXaQez3L7KDwtUI9q2yXJXTV
         Qm8g==
X-Gm-Message-State: AJIora/PTkLYw0gV2FpRKxJ9xkxxNmNe4RBA5+ImYgXQ48tGkONLWOdu
	07fj3eyr7rWA9+Os2/CGh7VFFQ==
X-Google-Smtp-Source: AGRyM1u7cntudH5RH7hwrjBvF/+Ag4+O232P+AaCLNwe0EO4Z5JrAShQmDVl52z2djpbzyGedEzgnA==
X-Received: by 2002:a17:90b:4d88:b0:1ec:aa96:ac92 with SMTP id oj8-20020a17090b4d8800b001ecaa96ac92mr1496072pjb.196.1655950332990;
        Wed, 22 Jun 2022 19:12:12 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id m6-20020a170902768600b0016196bd15f4sm6194000pll.15.2022.06.22.19.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 19:12:12 -0700 (PDT)
From: Judy Hsiao <judyhsiao@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Chen-Yu Tsai <wenst@chromium.org>,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v5 2/3] arm64: dts: rk3399: i2s: switch BCLK to GPIO
Date: Thu, 23 Jun 2022 02:11:52 +0000
Message-Id: <20220623021153.587423-3-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.0.rc0.104.g0611611a94-goog
In-Reply-To: <20220623021153.587423-1-judyhsiao@chromium.org>
References: <20220623021153.587423-1-judyhsiao@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_191213_409043_AB025EB1 
X-CRM114-Status: GOOD (  13.60  )
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

We discoverd that the state of BCLK on, LRCLK off and SD_MODE on
may cause the speaker melting issue. Removing LRCLK while BCLK
is present can cause unexpected output behavior including a large
DC output voltage as described in the Max98357a datasheet.

In order to:
  1. prevent BCLK from turning on by other component.
  2. keep BCLK and LRCLK being present at the same time

This patch adjusts the device tree to allow BCLK to switch
to GPIO func before LRCLK output, and switch back during
LRCLK is output.

Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
Reviewed-by: Brian Norris <briannorris@chromium.org>
---
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 10 ++++++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      | 25 ++++++++++++++++++-
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 913d845eb51a..df1647e9d487 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -766,6 +766,16 @@ &i2s0_8ch_bus {
 		<4 RK_PA0 1 &pcfg_pull_none_6ma>;
 };
 
+&i2s0_8ch_bus_bclk_off {
+	rockchip,pins =
+		<3 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none_6ma>,
+		<3 RK_PD1 1 &pcfg_pull_none_6ma>,
+		<3 RK_PD2 1 &pcfg_pull_none_6ma>,
+		<3 RK_PD3 1 &pcfg_pull_none_6ma>,
+		<3 RK_PD7 1 &pcfg_pull_none_6ma>,
+		<4 RK_PA0 1 &pcfg_pull_none_6ma>;
+};
+
 /* there is no external pull up, so need to set this pin pull up */
 &sdmmc_cd_pin {
 	rockchip,pins = <1 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index fbd0346624e6..311c8394cc84 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1662,8 +1662,9 @@ i2s0: i2s@ff880000 {
 		dma-names = "tx", "rx";
 		clock-names = "i2s_clk", "i2s_hclk";
 		clocks = <&cru SCLK_I2S0_8CH>, <&cru HCLK_I2S0_8CH>;
-		pinctrl-names = "default";
+		pinctrl-names = "bclk_on", "bclk_off";
 		pinctrl-0 = <&i2s0_8ch_bus>;
+		pinctrl-1 = <&i2s0_8ch_bus_bclk_off>;
 		power-domains = <&power RK3399_PD_SDIOAUDIO>;
 		#sound-dai-cells = <0>;
 		status = "disabled";
@@ -2407,6 +2408,19 @@ i2s0_8ch_bus: i2s0-8ch-bus {
 					<3 RK_PD7 1 &pcfg_pull_none>,
 					<4 RK_PA0 1 &pcfg_pull_none>;
 			};
+
+			i2s0_8ch_bus_bclk_off: i2s0-8ch-bus-bclk-off {
+				rockchip,pins =
+					<3 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>,
+					<3 RK_PD1 1 &pcfg_pull_none>,
+					<3 RK_PD2 1 &pcfg_pull_none>,
+					<3 RK_PD3 1 &pcfg_pull_none>,
+					<3 RK_PD4 1 &pcfg_pull_none>,
+					<3 RK_PD5 1 &pcfg_pull_none>,
+					<3 RK_PD6 1 &pcfg_pull_none>,
+					<3 RK_PD7 1 &pcfg_pull_none>,
+					<4 RK_PA0 1 &pcfg_pull_none>;
+			};
 		};
 
 		i2s1 {
@@ -2418,6 +2432,15 @@ i2s1_2ch_bus: i2s1-2ch-bus {
 					<4 RK_PA6 1 &pcfg_pull_none>,
 					<4 RK_PA7 1 &pcfg_pull_none>;
 			};
+
+			i2s1_2ch_bus_bclk_off: i2s1-2ch-bus-bclk-off {
+				rockchip,pins =
+					<4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>,
+					<4 RK_PA4 1 &pcfg_pull_none>,
+					<4 RK_PA5 1 &pcfg_pull_none>,
+					<4 RK_PA6 1 &pcfg_pull_none>,
+					<4 RK_PA7 1 &pcfg_pull_none>;
+			};
 		};
 
 		sdio0 {
-- 
2.37.0.rc0.104.g0611611a94-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
