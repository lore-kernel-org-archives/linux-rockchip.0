Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 014A1C46467
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 17:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+I1Z9PlXX9+XHuJ6XGilF8rvUZJGIqCPfU3zaUZ/HEY=; b=EHp9pafj8NLBHi
	/9vPYVa8vRnuy+fKHdcgA/UPGebz6Y5eWw5osNR04bBwo1+bGgq7aAK+w2+l17fRv3ThfdQnnj9F/
	LStj9r1kl+Lavx3xoITjP5jwXn/pDjEvunudUSC/s8Gc//nOGAMIQswfitWtmhY2s7OxwrGjIgDm+
	KeFNs6NicyA97OBjo7Z7RgNElD7y5uzbkdi3/E9XfCNj5ESidwaq5EvcWNQLBJ1+tofOMRugAP8Yv
	AB7mrVl1qcRf0M3nn0XDABd0EJ8tPvqLKLtyLOBhPHMPk2b9v6Oh9E2lvH/ENsWR25DD1Isqkd5s5
	4sQpMOcAu3r9Yf0KtM+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFeqn-00CObW-Sj; Wed, 11 Jan 2023 17:25:21 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFeqQ-00COPw-5D
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 17:24:59 +0000
Received: by mail-pj1-x102d.google.com with SMTP id o13so13057169pjg.2
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jan 2023 09:24:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nrnP374OLqQox6yNLama6RD8TqjNv743WGDKqrtWcqc=;
        b=McNc+Klm8bXRlr6O1q4qWW5BwulSqCy4gqqIMn0+CQu2O0rs9oonXR0kbFItNUoUwB
         rk2cyr7ClUoOsgzHxXoyTq+aPDLNqjA0Q878btaoEhEuVLwoIqCgBXmW3m0v3H+JNf7F
         A7zA9W8iKnHbN5vRr7AmaSdXVyJRGga4wVOGYAtu+Pb5I4urSYHpuIP3FLbt5n0ajTJR
         TDBEFQT+2YLvm0/hg451DYVQ8nM271lCarBGiR4LE/oKPwbhWoY5ucQLIJtuuaPCSw6M
         t4eIRd3KJAtOkY7iHKGwYgfDBEv9xWqpcSOuhjI7T/lVWnHQ0Iw0RAWT2jLkZ53inrlq
         raxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nrnP374OLqQox6yNLama6RD8TqjNv743WGDKqrtWcqc=;
        b=4aN8dKqav5N9E83tDD2iij9AfRSww/qqhIbmPnwNperb1WE0IgTITWnVqPAjpFJmvj
         M8uXGpXPB/jZXT+wlAyXffK+KXOiBCAEv0odfmfQ1x19p7p26iJwEivBXuS7vubFB629
         Z7LjAc/VxoxpxRie6x6LsbE7kVSFFBRU+hmGkRrN1MntOZcCx2RGEjIqCl/tTj9sh2YQ
         qfxw7fSv03s9BZTdFko9UyaOfTpVxT7YQFCdG34GEJ8LO7ulJ0Yl8kNqg6zwCvtRlQOP
         frg4dR9bVAj87PtbSIoMN/ogCv9tl/Ns+v+PsqUqe1Y8jtwB3PilSIY4YbSra5cf4DnD
         qCNQ==
X-Gm-Message-State: AFqh2krrIZFydkvAnMnCOhFHCtQkBrQ+16ysYkdi0uTqjRzuEKHG6XdF
	pyRGajd0Pk+Wto/sRNpWJ2/vHA==
X-Google-Smtp-Source: AMrXdXvxMAo84bW3XcTC5ybOyCCRbJnCG67wgbIbJaCywRhTaUaj42SsCQsydRtaAsDAtIRmreOzQQ==
X-Received: by 2002:a17:90a:e02:b0:227:1017:ee71 with SMTP id v2-20020a17090a0e0200b002271017ee71mr11916866pje.33.1673457893586;
        Wed, 11 Jan 2023 09:24:53 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.15])
        by smtp.gmail.com with ESMTPSA id rm14-20020a17090b3ece00b00218fa115f83sm11110722pjb.57.2023.01.11.09.24.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 09:24:53 -0800 (PST)
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
Subject: [PATCH v5 linux-next 2/4] ARM: dts: rockchip: rv1126: Add ethernet rgmiim1 pin-control
Date: Wed, 11 Jan 2023 17:24:32 +0000
Message-Id: <20230111172437.5295-2-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111172437.5295-1-anand@edgeble.ai>
References: <20230111172437.5295-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_092458_208347_EAF44EA5 
X-CRM114-Status: GOOD (  10.75  )
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

Co-Developed-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Anand Moon <anand@edgeble.ai>
---
v5: add Cod of Jagan
v4: drop Rev by Jagan: Both SoB and RoB of same person is incorrect.
    update the $subject.
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
