Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADBAEC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 04:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lBTNpEH3nyTruPjH+oJvudbyE9jk82Xg48+R9Ee3yyc=; b=qEnFRYlKZyBc7T
	cho5qCAIzDYo+wairXqEuX4+IqZWAEo4R8Ct3shkZmLm9Yp+CO+drIDFrOiqW3qBdN/A4xn9dcCLH
	paqQdxjePqlY+6Jt4wuwjlS4NEvOb2esCGLcMsllPA5PfFvThI2l29CNaYPcST0bNAk4S7h38fnLk
	gvXxVb8gvi5rjPj9K6oQ9XEpd7XAtAr9GbPXzjOHcHeeioqXfhZzB4MyJpXBJYjRr3nuSKvyrIyr6
	zD2Lv6+e4LWGLesAfLiyPRrg6r9g4h1gqSly5adsBMx+tBtWdcz3PO8VW9DFMrKpuCoIhrqGhQf0o
	trd100aSvJP3K6Edix8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1L0k-00CYi7-BY; Wed, 15 Jun 2022 04:52:10 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1L0Y-00CYfd-PL
	for linux-rockchip@lists.infradead.org; Wed, 15 Jun 2022 04:52:00 +0000
Received: by mail-pj1-x102f.google.com with SMTP id gc3-20020a17090b310300b001e33092c737so938877pjb.3
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jun 2022 21:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q6WAiR9ODFenT0pGV9PYtDziPX2QjLk3EOTxMDGIVGc=;
        b=EClL/J1HWpbNQqyt0eK3B9xqRm6OxDs3oMRzV7qoC3fKV6vIZpYmupM1uS30sYAfhE
         yNFUPH/2rrnVLnWl0pobmscVgmY6xwGui/28B4vZ1WFDT19y8KscMbgSNSgv9cGDmgQR
         98+sFrlj6YzugDgEYx7e751i+ifb5FE0TNxCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q6WAiR9ODFenT0pGV9PYtDziPX2QjLk3EOTxMDGIVGc=;
        b=hRPGTgdMLe6ZYfPW93yeDsvRU5Pl7N0laFP+L/ZyhfIb6BRPHzxp+d72J/JMEIBnx4
         8ffdwg3x7Y6gir6JaQ2dW4mJGa9N9CAP4R9X+UBTFbKJ0NQQfRf8TdjORLwYNn0tSPjt
         rkZ5KjpLBZQKmZ5KWEkqzNnx1oUfQdmBG5ztIABeNA1wd58m2bTBz3rusVzpN5LFSpna
         2AamRfyKnTKSWcj9kSBBu2CwRihNja4bEAMPyTkXjPgbBX+SKRgD8h76h4XEk7kpHrN5
         f+3cKo9PedT1BrKiFIzcAALBtGZHdO0zzrKQ99XRxe5eO5T1z6D6KE96MpFQ4CPo1V9B
         VVng==
X-Gm-Message-State: AJIora+rTQ8HRjaCr9Igypkx7Y9kcTWbq2TENBXzPGA+gOB4X/JuNC9Q
	zUC/+DSvqxYsg7NdU9dooBlw8Q==
X-Google-Smtp-Source: AGRyM1us1/gLEAQjjVi/lQpGK2jdBLHhP0c4XnBo74TK2dHflGfaqq79NjgmPEIKLKz0EdhmGPXvMg==
X-Received: by 2002:a17:902:da88:b0:167:5b56:8edb with SMTP id j8-20020a170902da8800b001675b568edbmr7389162plx.71.1655268714938;
        Tue, 14 Jun 2022 21:51:54 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id ja13-20020a170902efcd00b0015e8d4eb1dbsm8183466plb.37.2022.06.14.21.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jun 2022 21:51:54 -0700 (PDT)
From: Judy Hsiao <judyhsiao@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Brian Norris <briannorris@chromium.org>,
	Douglas Anderson <dianders@chromium.org>,
	Guenter Roeck <groeck@google.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: [v1] arm64: dts: rk3399: i2s: switch BCLK to GPIO
Date: Wed, 15 Jun 2022 04:51:46 +0000
Message-Id: <20220615045146.3134420-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_215158_879674_6F081C90 
X-CRM114-Status: GOOD (  13.06  )
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
---
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 10 +++++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      | 27 ++++++++++++++++++-
 2 files changed, 36 insertions(+), 1 deletion(-)

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
index fbd0346624e6..60d8cb32cec8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1662,9 +1662,10 @@ i2s0: i2s@ff880000 {
 		dma-names = "tx", "rx";
 		clock-names = "i2s_clk", "i2s_hclk";
 		clocks = <&cru SCLK_I2S0_8CH>, <&cru HCLK_I2S0_8CH>;
-		pinctrl-names = "default";
+		pinctrl-names = "bclk_on", "bclk_off";
 		pinctrl-0 = <&i2s0_8ch_bus>;
 		power-domains = <&power RK3399_PD_SDIOAUDIO>;
+		pinctrl-1 = <&i2s0_8ch_bus_bclk_off>;
 		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
@@ -2225,6 +2226,8 @@ pcfg_input_pull_down: pcfg-input-pull-down {
 			input-enable;
 			bias-pull-down;
 			drive-strength = <2>;
+		pcfg_pull_none_hiz: pcfg-pull-none-hiz {
+			bias-disable;
 		};
 
 		clock {
@@ -2407,6 +2410,19 @@ i2s0_8ch_bus: i2s0-8ch-bus {
 					<3 RK_PD7 1 &pcfg_pull_none>,
 					<4 RK_PA0 1 &pcfg_pull_none>;
 			};
+
+			i2s0_8ch_bus_bclk_off: i2s0-8ch-bus-bclk-off {
+				rockchip,pins =
+					<3 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none_hiz>,
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
@@ -2418,6 +2434,15 @@ i2s1_2ch_bus: i2s1-2ch-bus {
 					<4 RK_PA6 1 &pcfg_pull_none>,
 					<4 RK_PA7 1 &pcfg_pull_none>;
 			};
+
+			i2s1_2ch_bus_bclk_off: i2s1-2ch-bus-bclk-off {
+				rockchip,pins =
+					<4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none_hiz>,
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
