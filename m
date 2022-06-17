Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDD2EC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 04:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=03XuZi+5a4zuI3VInU9mhBouBfat72ou4ZCjgMU4NAU=; b=fC1m7JP5aeF8QL
	tx9FLfaCBNEoIixWoN73bm5Z+2X/eMnyMuULtH/iFM6IfI7UUogCepexGX2LQ1lig0yHG+DQsBm50
	PC27NggafHxjAU7kiFsgvO8L+PKIATwo/GSmEEah0gZnDJbfENKzTaL6uP2TOTMLshlVWjLe/8TNf
	jxMXsfpt5rj50F6cQd+wr0YBnih99q2wx7wBaGXV+JogD99XEBjGRLbn0EsQjabpBqbF0arjEbf8G
	ttwK6ggHn2u27KBV6q3BN1/T6pSHd7EbfzyHXhQ2ixS1wV1gPkL937pWEzVtoWJr5I8daY/N5e07E
	aIJ79cN61wD/PNl5Ud4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o23pT-005Sgl-HW; Fri, 17 Jun 2022 04:43:31 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o23p4-005SWE-Qu
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 04:43:08 +0000
Received: by mail-pj1-x1030.google.com with SMTP id g10-20020a17090a708a00b001ea8aadd42bso3223606pjk.0
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jun 2022 21:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8Wxs+t8AydwdeN+7uxKuiteA2RZtEpmD8TRPNehIbXA=;
        b=BujGQWIgJyIOYZGwuzcY38wUuoThSD7buWCL2pX60I69wFEdu7+4sM97/CuuVe63UF
         kSOvoRLcEKVngTAEfeb9HcagtkZH/K6atNQO20UxjATp1F9eMvejLWdZpSGScvt3Fcff
         cONnKc9Kb6kUAiBd3BS9vm223Z6RhV6AUDdBo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8Wxs+t8AydwdeN+7uxKuiteA2RZtEpmD8TRPNehIbXA=;
        b=ckvYvoQOyH9mGRquSQZcvdUQxqe0EBbh+WQGQYrME1hzEi1Zg/fpfZCIyYBev0n/Wk
         ZqSMYZStd2ocQZl1FeWQ2iQ0D+m5AKgfCPm7qkMWQQGMUonvkfueJ6awsaRidQlPIxsy
         /ARqHsYGuIkc9NYhQtyPi8pI5LwrFXoQXAC0HPQXZQlFF8TZViYye9GtdwMs3Qwj5xlt
         H/iLD5tAQWHwlEwD6bgqNMQLQWMG+y8cA1TbJpqaTWkRLW07GRWor/uchIh6s21mjJoE
         6uhq5FduECrs4WZQ206jkHxtA+DcZ7DyT8HiFzR8FOCjtIt9d1p+jAGohx8xi9WS69is
         1vgw==
X-Gm-Message-State: AJIora9sOulvo4/oFiFo+jLtDcJ2WIF2dqqUWi0w27e4VaS1Vxny/w/E
	B7h81CffqC0D0GhJpWwcLMPuaR1FiN+CGV8+
X-Google-Smtp-Source: AGRyM1s9wJKWUpL9MAnTnB+BbKU3V/LCXZui5P3kXeXzIVbNwKcGBtESmejkYk/lmWprL5Bn4LvPig==
X-Received: by 2002:a17:90b:947:b0:1e8:9bd0:5420 with SMTP id dw7-20020a17090b094700b001e89bd05420mr8697939pjb.32.1655440985174;
        Thu, 16 Jun 2022 21:43:05 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id v8-20020a17090a778800b001eab0a27d92sm4491030pjk.51.2022.06.16.21.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 21:43:04 -0700 (PDT)
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
Subject: [PATCH v3 2/3] arm64: dts: rk3399: i2s: switch BCLK to GPIO
Date: Fri, 17 Jun 2022 04:42:50 +0000
Message-Id: <20220617044251.4029697-3-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
In-Reply-To: <20220617044251.4029697-1-judyhsiao@chromium.org>
References: <20220616155836.3401420-1-judyhsiao@chromium.org>
 <20220617044251.4029697-1-judyhsiao@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_214306_921159_4A1AD230 
X-CRM114-Status: GOOD (  13.33  )
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

We discovered that the state of BCLK on, LRCLK off and SD_MODE on
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
2.36.1.476.g0c4daa206d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
