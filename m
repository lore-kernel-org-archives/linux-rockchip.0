Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CACFC6FD18
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Apr 2023 17:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RncTMcR18l5AvJ3JtvmiCauFSjK/9/GTrX/5q0tq6jg=; b=Vifk3aLy98vq0X
	/9DKMbF+D7JpiV6kVSRAFW6fvM5X+UZ7Z6C7flRVjhgSNtWZdAaI5GqBXVTnrfhO5zGUIRgk692iT
	qhomMl4HTsonyXMOtfmEmnSm4H3oiPMzi/svUti4TKoc6ZgFzTxOtz8hjI+mNwtGQ7bOjwK4zN6jo
	9/iMFdK7+XLk3ts1J9ln2zshVatemAT5869aRuBBX/kATBTTB4I/ETPIheuxsnXvJyy1JfRbJZ/Ql
	91tcse6tRqTFdQYnUYGL1mSiJOpjw5dt++jAGGsQI4D2+yejj0G68onockOwx0UHOMiTZvrBBK0Qo
	Pz4LuXJzwBK3txcFtECA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppBRR-0061Wo-0T;
	Wed, 19 Apr 2023 17:18:01 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppBRM-0061Uy-2e;
	Wed, 19 Apr 2023 17:17:58 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3f0a0c4e1ebso196165e9.3;
        Wed, 19 Apr 2023 10:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681924673; x=1684516673;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xBoqLsLFILpUeqaQAwB4b5qUgereH6wIMwsI7Fa/SsY=;
        b=EK+rvPhTQN0/qi3dNdP2dEsmCTVhxtE+gr9YKuIDcjBI7O53jFUlcILeDZiRZrI2Ta
         2qM7ie1i2kzb1TLqtZgJ+xhhcyrGriDgSgpI4vcOMq9bKh5odcNFFd25SLNDdCs/iUBd
         Y00Wc4yHg6kkGZDJj9aKKp+B6Io3fj6Ec0bw3p5kA+boKNZHRK8vtzp9dIOTn+iWtNsJ
         BhB1SVzLmGkBbweQ0bl97Az5asa+O6PJGPpx727RgeeSMho0919dd3iU+qPAFWkk1Oh7
         0dstp3k6FhPhGklkYvin8Ocw+F4E+BnTKIuF1HjfMSkmJGygT9zTwfEPcE7TAjf7JGmx
         9g6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681924673; x=1684516673;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xBoqLsLFILpUeqaQAwB4b5qUgereH6wIMwsI7Fa/SsY=;
        b=hpCtMruFFTRUbBLeacXkP6SOMsFRnWhRDgGXpoejE5yNqfUBBU50JzGdi59MGbEVSA
         WHjgFsEARQIo5ORq1Lpq54hPPhUdhtcjPegQ05AiNX7itZuaVbO44C6S+4BUP2z6fdv2
         23RrwUlCYJ0mOvePJ8KVNW9fM1Ie1a9Y++OdzEq0Dvzw+9Jh3FzRUtduKM4SZykPfC4q
         AExrLzM3bpizaR4Z+bzM0zDZRCMScBK/9qzGr3haUwAuuddoSfThgnEXOd8njpAC3n6c
         QVTrG2cAuUXGyzqwSzHpYCbxtNqzxCNx8Hr+clKKtJ+Cxc/TnJMRAgif1wYjIsT0tosT
         fFmw==
X-Gm-Message-State: AAQBX9doXGL0XbKh7h4YMM6tGwqGURRI+VIf9jve2rDjjjlS2fcIDkyA
	l9kfjciL8OmTx1NLqAhGzwg=
X-Google-Smtp-Source: AKy350bwMT9R/pz2b9g2K/44mP9753047Xgad1tVmPzf1Qt31ES4WXB8r6Kt+BKO1skqHoHGuE6VpA==
X-Received: by 2002:a5d:500d:0:b0:2f6:9bc4:76f1 with SMTP id e13-20020a5d500d000000b002f69bc476f1mr5721779wrt.1.1681924672646;
        Wed, 19 Apr 2023 10:17:52 -0700 (PDT)
Received: from archbox.v.cablecom.net (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id t3-20020a5d5343000000b002c55521903bsm16304136wrv.51.2023.04.19.10.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 10:17:52 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Peter Geis <pgwipeout@gmail.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: fix nEXTRST on SOQuartz
Date: Wed, 19 Apr 2023 19:17:31 +0200
Message-Id: <20230419171731.28641-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_101756_864383_2CB80908 
X-CRM114-Status: GOOD (  14.91  )
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

In pre-production prototypes (of which I only know one person
having one, Peter Geis), GPIO0 pin A5 was tied to the SDMMC
power enable pin on the CM4 connector. On all production models,
this is not the case; instead, this pin is used for the nEXTRST
signal, and the SDMMC power enable pin is always pulled high.

Since everyone currently using the SOQuartz device trees will
want this change, it is made to the tree without splitting the
trees into two separate ones of which users will then inevitably
choose the wrong one.

This fixes USB and PCIe on a wide variety of CM4IO-compatible
boards which either rely on the 3.3V being there or use the
nEXTRST signal.

Fixes: 5859b5a9c3ac ("arm64: dts: rockchip: add SoQuartz CM4IO dts")
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../boot/dts/rockchip/rk3566-soquartz-cm4.dts | 18 +++++++------
 .../boot/dts/rockchip/rk3566-soquartz.dtsi    | 25 ++++++++++---------
 2 files changed, 24 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
index 263ce40770dd..cddf6cd2fecb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
@@ -28,6 +28,16 @@ vcc_5v: vcc-5v-regulator {
 		regulator-max-microvolt = <5000000>;
 		vin-supply = <&vcc12v_dcin>;
 	};
+
+	vcc_sd_pwr: vcc-sd-pwr-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sd_pwr";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
 };
 
 /* phy for pcie */
@@ -130,13 +140,7 @@ &saradc {
 };
 
 &sdmmc0 {
-	vmmc-supply = <&sdmmc_pwr>;
-	status = "okay";
-};
-
-&sdmmc_pwr {
-	regulator-min-microvolt = <3300000>;
-	regulator-max-microvolt = <3300000>;
+	vmmc-supply = <&vcc_sd_pwr>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index ce7165d7f1a1..f589a4fdaccb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -65,6 +65,17 @@ led_work: led-work {
 		};
 	};
 
+	nextrst_pin: nextrst-pin-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&nextrst_h>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "nextrst";
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		status = "okay";
 		compatible = "mmc-pwrseq-simple";
@@ -104,16 +115,6 @@ vcc3v3_sys: vcc3v3-sys-regulator {
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
-
-	sdmmc_pwr: sdmmc-pwr-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&sdmmc_pwr_h>;
-		regulator-name = "sdmmc_pwr";
-		status = "disabled";
-	};
 };
 
 &cpu0 {
@@ -539,8 +540,8 @@ wifi_enable_h: wifi-enable-h {
 		};
 	};
 
-	sdmmc-pwr {
-		sdmmc_pwr_h: sdmmc-pwr-h {
+	nextrst {
+		nextrst_h: nextrst-h {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
