Return-Path: <SRS0=beqN=PT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E6E0C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Oct 2021 16:51:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EA4E160F58
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Oct 2021 16:51:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EA4E160F58
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=ixit.cz
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGGLUfFlCh4ovX77Ll5YMfdQbuP4Mbtndk9E8ov90I8=; b=JWLz0k+m9fVwr5
	s+HsosI/38mluuGKGd+fVGfYqNA23FvzeUTa/sTqc7UoQiJs8UEDiozDCiEHjxh8bXFutjKWIg638
	8AzjyQIvf1GSZG2STbZWRiw8saZXdAXNfXJup/HVB53edXgfsZ669pOWjuHTiLSpQgUR8hzDSsCrl
	D+oiDM8IAgXZ9Hf24aPQy68/Ot5+SjNIkf1JfWkLwJ676I93CxUSWIFA4BBIMW+IYV4iEjdczvvun
	v85GCjtE5cWT58DLMzQ5zcf8c7VTW5zwSUIlg5lMrGlOkDM5DBelpLeRQbbcRgTGoN16LyGXw3ObM
	txQk+xxRRasQSZ/B+FFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhE3J-00EOU1-8T; Sun, 31 Oct 2021 16:51:25 +0000
Received: from ixit.cz ([94.230.151.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhE33-00EOMM-4m; Sun, 31 Oct 2021 16:51:11 +0000
Received: from localhost.localdomain (ip-89-176-96-70.net.upcbroadband.cz
 [89.176.96.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by ixit.cz (Postfix) with ESMTPSA id 745DF236BE;
 Fri, 29 Oct 2021 13:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
 t=1635508196;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5E4M99vMPTvOFmcUC+iHe20MffqlLM2e2yyycVCMrFc=;
 b=x/6JTSGL7EvLUnu1jDXAHmvK0BgihWBaAzBpLB5VseZ4ZQW7DAFaDLwJIOWrMW6d7EmXJO
 7rkL/Qe3/FDJH3twa56e+yWRj1QEjVucJD97hW1MV4EYbyy6Xa9USQ2JA75Kblxpjr1mo6
 Zdk0xio1jfVXFgkgJXwpowKavksrYvs=
From: David Heidelberg <david@ixit.cz>
To: Rob Herring <robh+dt@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: ~okias/devicetree@lists.sr.ht, phone-devel@vger.kernel.org,
 David Heidelberg <david@ixit.cz>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 2/3] arm64: dts: make dts use gpio-fan matrix instead of
 array
Date: Fri, 29 Oct 2021 13:49:45 +0200
Message-Id: <20211029114948.41841-2-david@ixit.cz>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211029114948.41841-1-david@ixit.cz>
References: <20211029114948.41841-1-david@ixit.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211031_095109_508449_438D8463 
X-CRM114-Status: GOOD (  10.54  )
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

No functional changes.

Adjust to comply with dt-schema requirements
and make possible to validate values.

Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts | 9 +++++----
 arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts    | 5 +++--
 4 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index 86bdc0baf032..fbbcacf24f2e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -52,10 +52,11 @@ gpio_fan: gpio-fan {
 		gpios = <&gpio GPIODV_14 GPIO_ACTIVE_HIGH
 			 &gpio GPIODV_15 GPIO_ACTIVE_HIGH>;
 		/* Dummy RPM values since fan is optional */
-		gpio-fan,speed-map = <0 0
-				      1 1
-				      2 2
-				      3 3>;
+		gpio-fan,speed-map =
+				<0 0>,
+				<1 1>,
+				<2 2>,
+				<3 3>;
 		#cooling-cells = <2>;
 	};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
index a3b9d615a3b4..e34045d10a12 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
@@ -39,7 +39,7 @@ reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
 
 	fan: gpio-fan {
 		compatible = "gpio-fan";
-		gpio-fan,speed-map = <0 0 8600 1>;
+		gpio-fan,speed-map = <0 0>, <8600 1>;
 		gpios = <&gpio3 5 GPIO_ACTIVE_HIGH>;
 		#cooling-cells = <2>;
 		pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 46b0f97a0b1c..4af535866d1f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -44,7 +44,7 @@ dc_12v: dc-12v {
 	fan0: gpio-fan {
 		#cooling-cells = <2>;
 		compatible = "gpio-fan";
-		gpio-fan,speed-map = <0 0 3000 1>;
+		gpio-fan,speed-map = <0 0>, <3000 1>;
 		gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
 		status = "okay";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 4d4b2a301b1a..8af3763daaba 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -30,8 +30,9 @@ gmac1_clkin: external-gmac1-clock {
 	fan: gpio_fan {
 		compatible = "gpio-fan";
 		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
-		gpio-fan,speed-map = <0    0
-				      4500 1>;
+		gpio-fan,speed-map =
+				<   0 0>,
+				<4500 1>;
 		#cooling-cells = <2>;
 	};
 
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
