Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E2DFCD37B2
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 02:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3X3QaNilQPpdmPR57AWfq0yYIwiSzq/XDsXv90S1JFE=; b=Pf2c4LjK2Wsfuq
	CphxGRk+QZkzL1K1binCjt0xpR5PcdkN3kqrQvpLxNJ3ym2XUbsOI/6INy0kLzALAy/UIM2SpDCZq
	sh1waOSJe4BksMLR50PRc8HO5j+W8NpDECZNwju+rnLhqmY7MwmKaJ1DxxvAoxsORk0FGWekdL0SN
	2HL38NR2rPa9MxUVwkcbXVhLtTz9kjmq/iXZRdMbaryBy8M65U4JpG+NrxptFvadHoThY1JMmBLUz
	pZwb4ItL012dcA1AvyU1BKubIxHAwrH0PdPof+43LMHPLBjpYARDJDjzM3YyivAEyJJZRZo+kWpOa
	uQ85xXyrwY5Wmf+GnaLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMGmT-0000000C4wM-0GYq;
	Mon, 11 May 2026 02:54:05 +0000
Received: from mail-ua1-x961.google.com ([2607:f8b0:4864:20::961])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMGmO-0000000C4sc-0FjY
	for linux-rockchip@lists.infradead.org;
	Mon, 11 May 2026 02:54:01 +0000
Received: by mail-ua1-x961.google.com with SMTP id a1e0cc1a2514c-94dcf70af41so916941241.1
        for <linux-rockchip@lists.infradead.org>; Sun, 10 May 2026 19:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1778468039; x=1779072839; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hI3It/TBwNAH4is3Y19ZdHuT8VgKHisEZqEHUOa55pA=;
        b=PsQyFLEsWgacGGFHyioZxNx+8ZD7BoyoqDANfLQf3ajUT+qZL9IdShiZM2sv+7vvHI
         pv+xFySucMT66s3/gBP+jJglS+5IYKO/QdqEow64yWV9NXcb/Noht5MvrL3u4RpEJbqE
         GPwbd89oFW4/aF403CFNQdYmV/kkSK8cTbCpbljtvsE2WBMOkh3Nde7VWmtVNLWKe7Xg
         WdQs18P4vVbKMbdinpPHyr833q+1lB01ihXgFdHoZ6iBbYFH6vY4x6xtKFnOV/Wu6rpB
         0jMq/sAWkn110+8u7XdU/yk00dFuNiul4TCbQWwiu6kh+T1Bs1HqY5CD7cY+jRaZ3Bdu
         y7lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778468039; x=1779072839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hI3It/TBwNAH4is3Y19ZdHuT8VgKHisEZqEHUOa55pA=;
        b=q4b0nfYJ0qXeq8vp3wTjWtskLDVO0382eN8iZtz9Ft2GcdGykWp8vy9JXNxSfBgRNA
         dZccoSEaLPWpe+V6myVTSYRqYRztpKibkoGPM7cCXUu8YLSYwTqtgReI4H3Ym5YYg+Cp
         qPY1aijDJGNsQ7VD4S8M8ihbKYzkhI0XAmIjKdi17bOSGzHbFTDswHwFTQ5eaGElT07Y
         gjb11g1x9MafC9PbaYS4/nJ2g70yeykkUQ8mUjRdG8SPsm1i8eUl46yggU8L8ZZCt51b
         huY7WhbkARAomJCeNqtLUDicJ5G9QRuiyKN3KVjir/SGMbteWJRvbo768XXFaznDVluU
         JGbQ==
X-Forwarded-Encrypted: i=1; AFNElJ8B8W3FXN5V5/s17qL3O24ng2eS9uxY4ekl0id5F2mw+Jxb2MkMiFIFg1WSNp3GSoeDvg5gXqimkY6TDk5f+w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQocSCnMHdtYw3hBKLkQqfYSyOdnkirihE7cnAesG6MoDpkdk5
	5oaSlAaDokXavBLV8kPXZCot1+cxozDcxsdUBRm81VRgSXiAp7/rm8r7OZD+NYf8DtAARxm6oJe
	7Q6vk2sCYrNowA0tpErF5GkvCu72zZFqldXiJ
X-Gm-Gg: Acq92OFv18QYwoMuFAB49hL8e2rZELNFOazdlo3JXVA03NSKm05uGFh9ex+sY0jM5kR
	lRsW95Rexw1yQWHL6Kq01qBKWSVpooYw1xfVLZkamR4qePrjXLG9ymtz8VRMxPlTXq105BHOgw5
	fFTrxQ4yhK0/LK1VFTvF00erO2FoSTmjbsZo4+pEWJ2jNEZI3QIYqKon7nkdx9yhhrPLdrAT+4m
	knBJ7nBFW4Prw/is3V5MfH23j0FjTd+/pMRzWZ8f794NEptnA37dKFJXcSv0NK4LYMYEQxJp78e
	IQ6JDpDTo4Lp3Ht5CW6unbtS++DUQjYpPgctviAhjwI2WXW+XGZdskDkXrvbLBS8HvlsL1Ck/dh
	mspPhfHfEltJPxiiR+GdbsnUgQxMFajtLXGW9liIUxRC3
X-Received: by 2002:a05:6102:8551:10b0:631:26f6:701c with SMTP id ada2fe7eead31-63126f6ad99mr5986189137.31.1778468038687;
        Sun, 10 May 2026 19:53:58 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id ada2fe7eead31-6313ff6c191sm698744137.1.2026.05.10.19.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 May 2026 19:53:58 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Alexey Charkov <alchark@gmail.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>
Subject: [PATCH v10 2/4] arm64: dts: rockchip: rk3588s-orangepi-5: rename PLDO regulator labels to match schematic
Date: Sun, 10 May 2026 21:53:48 -0500
Message-ID: <20260511025352.106126-3-dennis@ausil.us>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260511025352.106126-1-dennis@ausil.us>
References: <20260511025352.106126-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_195400_124925_0DB367D8 
X-CRM114-Status: UNSURE (   8.39  )
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

The Orange Pi 5, 5B and 5 Pro schematics label the RK806 PLDO outputs
using the pattern VCC_*_S0 / VCCA_*_S0 / VDDA_*_S0. Rename the base
dtsi regulator labels (and the es8388 supply references) to match:

  pldo-reg1: avcc_1v8_s0 -> vcc_1v8_s0
  pldo-reg2: vcc_1v8_s0  -> vcca_1v8_s0
  pldo-reg3: avdd_1v2_s0 -> vdda_1v2_s0
  pldo-reg4: vcc_3v3_s0  -> vcca_3v3_s0

Also update the saradc vref-supply reference to track the pldo-reg1
rename. No functional change.

Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 26 +++++++++----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
index dafad29f9854..fd5c6a025cd1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
@@ -274,10 +274,10 @@ es8388: audio-codec@10 {
 		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x10>;
 		clocks = <&cru I2S1_8CH_MCLKOUT>;
-		AVDD-supply = <&vcc_3v3_s0>;
-		DVDD-supply = <&vcc_1v8_s0>;
-		HPVDD-supply = <&vcc_3v3_s0>;
-		PVDD-supply = <&vcc_3v3_s0>;
+		AVDD-supply = <&vcca_3v3_s0>;
+		DVDD-supply = <&vcca_1v8_s0>;
+		HPVDD-supply = <&vcca_3v3_s0>;
+		PVDD-supply = <&vcca_3v3_s0>;
 		assigned-clocks = <&cru I2S1_8CH_MCLKOUT>;
 		assigned-clock-rates = <12288000>;
 		#sound-dai-cells = <0>;
@@ -441,7 +441,7 @@ &rknn_mmu_2 {
 };
 
 &saradc {
-	vref-supply = <&avcc_1v8_s0>;
+	vref-supply = <&vcc_1v8_s0>;
 	status = "okay";
 };
 
@@ -666,8 +666,8 @@ regulator-state-mem {
 				};
 			};
 
-			avcc_1v8_s0: pldo-reg1 {
-				regulator-name = "avcc_1v8_s0";
+			vcc_1v8_s0: pldo-reg1 {
+				regulator-name = "vcc_1v8_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
@@ -678,8 +678,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc_1v8_s0: pldo-reg2 {
-				regulator-name = "vcc_1v8_s0";
+			vcca_1v8_s0: pldo-reg2 {
+				regulator-name = "vcca_1v8_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
@@ -691,8 +691,8 @@ regulator-state-mem {
 				};
 			};
 
-			avdd_1v2_s0: pldo-reg3 {
-				regulator-name = "avdd_1v2_s0";
+			vdda_1v2_s0: pldo-reg3 {
+				regulator-name = "vdda_1v2_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1200000>;
@@ -703,8 +703,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc_3v3_s0: pldo-reg4 {
-				regulator-name = "vcc_3v3_s0";
+			vcca_3v3_s0: pldo-reg4 {
+				regulator-name = "vcca_3v3_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <3300000>;
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
