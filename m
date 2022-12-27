Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BF9AC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Dec 2022 10:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7+jiXye96RyW7q0ZpuBDU5OFoVWjrQkdsbN8Xe6CT8=; b=MS00Rxa2qR6kfr
	CyBnK3kTsPw376nhbfcxb4rexmtkRJ4mQyot8VNHA2WFp/jXjdBRRGAbhwuFpX7en1rzqVndDoLNR
	d2pvQbN7PShrnBoxuzxhl3vZVlqvjQ0eq6i4kDcjnMktN26fkz/Qq65rJCsTKy7oPRiK4NN8LhRiv
	MfwKK7FcwuVjqAlZM+lJK4ep7MlPQ5Sa34na+v0mXS5Az0XA7ZQ3Y/0txHIUDqn5nydp/1qIsR7hK
	ODIhCWFuimZTitkH1OVlRIiB3DA0yvQ8efiPJcsfIt4Wa40BwB07nrxY5Um+HiNCjifyzjtMIsbxU
	aQ4qAqLQFPguaWTgezAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA7XD-00CE0r-HD; Tue, 27 Dec 2022 10:50:15 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA7W4-00CDb3-P7
	for linux-rockchip@lists.infradead.org; Tue, 27 Dec 2022 10:49:15 +0000
Received: by mail-pf1-x432.google.com with SMTP id k19so945087pfg.11
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Dec 2022 02:49:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HFN1R4xsle+6O8QadNOEIMFzl6CPqYVSYyaFUyY0Q9s=;
        b=cvuYV2h6elWnSQkGSlQcPx6m3Ew6IRMACmU64Uz0/GTN4u1qZqxp6S8A36JTs4b68g
         B6Y+60+d97P8acZY6/1WXln+ISLkSiwwwNq21wMGMHXYvsW9NqkQ0cD5uH0ZuRdvcgaY
         9AK/BrHOh/vkHwhw4sKj4kyKD6Thr+MsE3Gg/85gkr6qiNErC36cWd1S1RYReSd2r56/
         JEjSUxTQ4uvAppRQrY59g11AYR+fcTcAEzaopZhcwCq0E0FiSuJivPRuywScaJBoKD3k
         Ae1KTgE1Pf3+FAufm253km3alKT2zfV0Nu1H1mLqUa1RkCGFc29Ycczc5vw3yOLTdMur
         dK5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HFN1R4xsle+6O8QadNOEIMFzl6CPqYVSYyaFUyY0Q9s=;
        b=duprzrLYsyhYYDO9cA3M/DgOViJpcYNV8bcuYETKaOwcfwC0+a9inMmr2tQKsr7did
         OoYoaMQK2GguWMoXVN9FI9quGxCAn9nivb/fEz7DDQJE+Fo0QMXHsALr4XpyHSZ/d6PU
         /9/RR9loQYalRth+cZw9HjBtnjcGIhYF5bcoQ384lX/Jliwkb26350S7AmtYA1YnA3fx
         /1Xn8588KrioKYH4dIDMTvXnJxme2xI+lB24CRHRld6umE2sI66EAI/ifLKDWY0Bijsb
         5ajW536pgsLDm8iJr6OehAXuiJlXbl/BIQrdXAPv0o6w7NwWOA399TK8H0LOeuWZ/zpn
         VQoQ==
X-Gm-Message-State: AFqh2kqf1ANZiDDeq5NJzn7ex3LaJrImEk3TR3YU6c3Uw/5pm/EmPfGW
	/f9VK/kWg845NV7T+53UdzpQwA==
X-Google-Smtp-Source: AMrXdXsSnJ5ype6gU2BWnaBDHt82Scq0yaKTCeGbb9Wrx2gGKARAzO8SG7AOQLTgLOPgjPhBg+Tkvg==
X-Received: by 2002:a62:794e:0:b0:581:5b79:a7ad with SMTP id u75-20020a62794e000000b005815b79a7admr3739369pfc.8.1672138143138;
        Tue, 27 Dec 2022 02:49:03 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.26])
        by smtp.gmail.com with ESMTPSA id w18-20020aa79a12000000b00581816425f3sm194809pfj.112.2022.12.27.02.49.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Dec 2022 02:49:02 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Johan Jonker <jbx6244@gmail.com>,
	Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCHv3 linux-next 2/4] ARM: dts: rockchip: rv1126: Add rgmiim1 pin-control
Date: Tue, 27 Dec 2022 10:48:32 +0000
Message-Id: <20221227104837.27208-2-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221227104837.27208-1-anand@edgeble.ai>
References: <20221227104837.27208-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_024904_924394_52DD7D7A 
X-CRM114-Status: UNSURE (   9.84  )
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

Add ethernet pin-control for rv1126 SoC.

Reviewed-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Anand Moon <anand@edgeble.ai>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
v3: add Rev by and SoB Jagan Teki.
v2: drop SoB of Jagan Teki.
---
 arch/arm/boot/dts/rv1126-pinctrl.dtsi | 42 +++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
index 4bc419cc1210..b77021772781 100644
--- a/arch/arm/boot/dts/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
@@ -11,6 +11,14 @@
  * by adding changes at end of this file.
  */
 &pinctrl {
+	clk_out_ethernet {
+		/omit-if-no-ref/
+		clk_out_ethernetm1_pins: clk-out-ethernetm1-pins {
+			rockchip,pins =
+				/* clk_out_ethernet_m1 */
+				<2 RK_PC5 2 &pcfg_pull_none>;
+		};
+	};
 	emmc {
 		/omit-if-no-ref/
 		emmc_rstnout: emmc-rstnout {
@@ -61,6 +69,40 @@ i2c0_xfer: i2c0-xfer {
 				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
 		};
 	};
+	rgmii {
+		/omit-if-no-ref/
+		rgmiim1_pins: rgmiim1-pins {
+			rockchip,pins =
+				/* rgmii_mdc_m1 */
+				<2 RK_PC2 2 &pcfg_pull_none>,
+				/* rgmii_mdio_m1 */
+				<2 RK_PC1 2 &pcfg_pull_none>,
+				/* rgmii_rxclk_m1 */
+				<2 RK_PD3 2 &pcfg_pull_none>,
+				/* rgmii_rxd0_m1 */
+				<2 RK_PB5 2 &pcfg_pull_none>,
+				/* rgmii_rxd1_m1 */
+				<2 RK_PB6 2 &pcfg_pull_none>,
+				/* rgmii_rxd2_m1 */
+				<2 RK_PC7 2 &pcfg_pull_none>,
+				/* rgmii_rxd3_m1 */
+				<2 RK_PD0 2 &pcfg_pull_none>,
+				/* rgmii_rxdv_m1 */
+				<2 RK_PB4 2 &pcfg_pull_none>,
+				/* rgmii_txclk_m1 */
+				<2 RK_PD2 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd0_m1 */
+				<2 RK_PC3 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd1_m1 */
+				<2 RK_PC4 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd2_m1 */
+				<2 RK_PD1 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd3_m1 */
+				<2 RK_PA4 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txen_m1 */
+				<2 RK_PC6 2 &pcfg_pull_none_drv_level_3>;
+		};
+	};
 	sdmmc0 {
 		/omit-if-no-ref/
 		sdmmc0_bus4: sdmmc0-bus4 {
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
