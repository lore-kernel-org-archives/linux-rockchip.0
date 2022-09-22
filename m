Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7512C6FA82
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 06:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRzj9Wbbj3GZhQFlC82YbfA/XfRfS3a5CSl/OuVjYcY=; b=ydq9L8K3HXyDDS
	4lkNJDame348f5BoeB7YfwsINoNHBdhoLk/jXFUiRN+6hubgAQcKDunSgPlMkm/0w95pz5gHVpxI4
	/H4yE/+thBTFSBT8vWH0RxDMBgYiNrSssjVls4Hx8ZvuWREebzZB02bNzdbponHXPG4d+TNrOVUu2
	4CeU3yOwXnGpelpuOI1xWG9+sZkW/8kcYEDqIB6Gt7CHG6WM7xJ9bYlB+c7Ly1ixr2cE4ohI56maZ
	wPcMdI5VFke6kcLH1IZ7y77wzzUAsbUl83vCYVDISWhBmxu4nY58Xkdz9rdvNFyhJhCG4/E9Jh1g4
	1Sq7WVbYPNpdfvSgXboA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obFzj-00DdfU-RZ; Thu, 22 Sep 2022 06:47:35 +0000
Received: from mx-out2.startmail.com ([145.131.90.155])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obFzY-00DdZN-JD
	for linux-rockchip@lists.infradead.org; Thu, 22 Sep 2022 06:47:26 +0000
From: "Marty E. Plummer" <hanetzer@startmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=startmail.com;
	s=2020-07; t=1663829243;
	bh=Cm0oJ0kDSjJVgqvoN2SoHXlanYKFIWZQJJ7qcsvl8M0=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:From:Subject:To:Date:Sender:
	 Content-Type:Content-Transfer-Encoding:Content-Disposition:
	 Mime-Version:Reply-To:In-Reply-To:References:Message-Id:Autocrypt;
	b=YtpqVDsO33T4X+sPmkAYcbFp2cw/oDOyRAwquSX12eozvCuBAJWxHGJ4kbOa5he3R
	 KQJc/+dk+6+cqQAOY5X6wRW12etLBOZyWKqUnc2gkczjInh28jhxLVKgDDyzVQB7cS
	 ONa5Y2HSNM+prk1Gq7VLZO8+p2JdawthQ++bBTscLeG63k2WVaRjR1SPqEu1aDIvv1
	 db1Sws5a6oggjynVKTTNrpAm8AOOmW4dh6iwbMRqHEPUUNLAeM+7WRsiOel5xKVh38
	 Bl+GTFvJe8+X6I6q7pgvl+nTYV5Wrz7UIWIa/xZJltcLD2xK0cYUsxM30ErY6XSRJq
	 ovX/t7IRj8S3w==
To: U-Boot Mailing List <u-boot@lists.denx.de>
Cc: Simon Glass <sjg@chromium.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
	"Marty E. Plummer" <hanetzer@startmail.com>,
	Artem Lapkin <email2tema@gmail.com>,
	Philipp Tomsich <philipp.tomsich@vrull.eu>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Xavier Drudis Ferran <xdrudis@tinet.cat>,
	linux-rockchip@lists.infradead.org
Subject: [RFC PATCH 4/4] rockchip: rk3399: attempt to redirect uart2dbga to sdcard
Date: Thu, 22 Sep 2022 01:47:03 -0500
Message-Id: <20220922064704.1740759-5-hanetzer@startmail.com>
In-Reply-To: <20220922064704.1740759-1-hanetzer@startmail.com>
References: <20220922064704.1740759-1-hanetzer@startmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_234724_821010_FD9E3C46 
X-CRM114-Status: GOOD (  11.65  )
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

The meat of my problem. rk3399 has the ability to redirect uart2 to
sdcard pins. This setup half works; I can push input into the uart, but
not see output.

Signed-off-by: Marty E. Plummer <hanetzer@startmail.com>

---

 arch/arm/dts/rk3399-gru.dtsi                   |  7 ++-----
 arch/arm/dts/rk3399.dtsi                       |  4 ++--
 .../arm/include/asm/arch-rockchip/grf_rk3399.h |  3 +++
 arch/arm/mach-rockchip/rk3399/rk3399.c         | 18 +++++++++---------
 4 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/dts/rk3399-gru.dtsi b/arch/arm/dts/rk3399-gru.dtsi
index b80f19066b..8c87c1cf19 100644
--- a/arch/arm/dts/rk3399-gru.dtsi
+++ b/arch/arm/dts/rk3399-gru.dtsi
@@ -510,7 +510,7 @@ ap_i2c_audio: &i2c8 {
 };
 
 &sdmmc {
-	status = "okay";
+	status = "disabled";
 
 	/*
 	 * Note: configure "sdmmc_cd" as card detect even though it's actually
@@ -520,14 +520,11 @@ ap_i2c_audio: &i2c8 {
 	 * turned on that the system will still make sure the port is
 	 * configured as SDMMC and not JTAG.
 	 */
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_cd_pin
-		     &sdmmc_bus4>;
 
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
-	cd-gpios = <&gpio4 24 GPIO_ACTIVE_LOW>;
+	// cd-gpios = <&gpio4 24 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	sd-uhs-sdr12;
 	sd-uhs-sdr25;
diff --git a/arch/arm/dts/rk3399.dtsi b/arch/arm/dts/rk3399.dtsi
index 3871c7fd83..55d5ee15be 100644
--- a/arch/arm/dts/rk3399.dtsi
+++ b/arch/arm/dts/rk3399.dtsi
@@ -638,7 +638,7 @@
 		reg-shift = <2>;
 		reg-io-width = <4>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&uart2c_xfer>;
+		pinctrl-0 = <&uart2a_xfer>;
 		status = "disabled";
 	};
 
@@ -2571,7 +2571,7 @@
 			uart2a_xfer: uart2a-xfer {
 				rockchip,pins =
 					<4 RK_PB0 2 &pcfg_pull_up>,
-					<4 RK_PB1 2 &pcfg_pull_none>;
+					<4 RK_PB1 2 &pcfg_pull_up>;
 			};
 		};
 
diff --git a/arch/arm/include/asm/arch-rockchip/grf_rk3399.h b/arch/arm/include/asm/arch-rockchip/grf_rk3399.h
index 658cc0dfc4..e1bfa31af7 100644
--- a/arch/arm/include/asm/arch-rockchip/grf_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/grf_rk3399.h
@@ -554,6 +554,9 @@ enum {
 	/* GRF_SOC_CON7 */
 	GRF_UART_DBG_SEL_SHIFT  = 10,
 	GRF_UART_DBG_SEL_MASK   = 3 << GRF_UART_DBG_SEL_SHIFT,
+	// assumptions, none of this is documented in the TRM as far as I can see
+	GRF_UART_DBG_SEL_A      = 0,
+	GRF_UART_DBG_SEL_B      = 1,
 	GRF_UART_DBG_SEL_C      = 2,
 
 	/* GRF_SOC_CON20 */
diff --git a/arch/arm/mach-rockchip/rk3399/rk3399.c b/arch/arm/mach-rockchip/rk3399/rk3399.c
index 21db03b961..7d35e524dc 100644
--- a/arch/arm/mach-rockchip/rk3399/rk3399.c
+++ b/arch/arm/mach-rockchip/rk3399/rk3399.c
@@ -157,17 +157,17 @@ void board_debug_uart_init(void)
 				  GPIO_PULL_NORMAL);
 	}
 
-	/* Enable early UART2 channel C on the RK3399 */
-	rk_clrsetreg(&grf->gpio4c_iomux,
-		     GRF_GPIO4C3_SEL_MASK,
-		     GRF_UART2DGBC_SIN << GRF_GPIO4C3_SEL_SHIFT);
-	rk_clrsetreg(&grf->gpio4c_iomux,
-		     GRF_GPIO4C4_SEL_MASK,
-		     GRF_UART2DBGC_SOUT << GRF_GPIO4C4_SEL_SHIFT);
-	/* Set channel C as UART2 input */
+	/* Enable early UART2 channel A on the RK3399 */
+	rk_clrsetreg(&grf->gpio4b_iomux,
+		     GRF_GPIO4B0_SEL_MASK,
+		     GRF_UART2DBGA_SIN << GRF_GPIO4B0_SEL_SHIFT);
+	rk_clrsetreg(&grf->gpio4b_iomux,
+		     GRF_GPIO4B1_SEL_MASK,
+		     GRF_UART2DBGA_SOUT << GRF_GPIO4B0_SEL_SHIFT);
+	/* Set channel A as UART2 input */
 	rk_clrsetreg(&grf->soc_con7,
 		     GRF_UART_DBG_SEL_MASK,
-		     GRF_UART_DBG_SEL_C << GRF_UART_DBG_SEL_SHIFT);
+		     GRF_UART_DBG_SEL_A << GRF_UART_DBG_SEL_SHIFT);
 #endif
 }
 #endif
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
