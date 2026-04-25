Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C136FF8850
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 03:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3sGNA1fUzYiO5Tz0btSMoYIYOn5pYZSshiE5Vcaoxes=; b=kIbkdylZg7FFsX
	eE6pMbe4+Us6vlKdbc3WYlnyDT++1/Xi8WF4c+0bbKJBGtgxCgyUJIbxj9V5zCbNTRaFQjinlTObE
	rEAbdSKVvyjF5q9EWr/WaM7aOMxYyvNWUDJd5xMppp+z74Cu0PWI13SIRlHD225YGAsPjap3ELamB
	CMtv1WxRjqYoOVTlzoiG6agMl4AM0cKDo+nRJnI4Q+8Gc8dqpoZyEyaj6jLUBnqXOUrFC7puFBfBo
	KRshX6zeIBjPDff2n82yS8pS2XNmi6EjjLBw0KiidkgCufePtqjotmsR6r3b4Mc0bUPUQnoFTpR4y
	srhaf5dA5wKzBdtoB3WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGTPe-0000000E1o0-3EDw;
	Sat, 25 Apr 2026 03:10:34 +0000
Received: from mail-dl1-x1261.google.com ([2607:f8b0:4864:20::1261])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGTPU-0000000E1dd-1uka
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 03:10:25 +0000
Received: by mail-dl1-x1261.google.com with SMTP id a92af1059eb24-12c8f9846c8so8320829c88.0
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Apr 2026 20:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1777086623; x=1777691423; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Q87q408S6kD03eCdhgkumlXWLlyzkrJl5PR3laXuXk=;
        b=k/l0YeaF+Uivx5lFn+/Xy7GRJojiXo8+WujGGUH5bZM8jL7fDB1x2mt/CXcjSWgdvv
         dEZ723oqH8y7nloydJDRaUcuQvStpZpjPkN/tpcE0/eikuQIJzh3tESTNcUCnxagv6Yq
         ZDHxcQZnOEEZ3GUFmODEjrHVGfQipQVuYVSSLtXdTey5vfpovV3/+Ly8shXVyQMApsoT
         PCFtjffHybC2NLp5SZhP7sCG9TtfkoyTAPhx7agP+49KB3P/hcxscVmayjdMczEzwq6n
         /2x5nDDXKLfi864hkU44NN9G4NVssb3bdVCg674ZvZe5Se5lz8r+4CowR9EeVS/rzDBc
         m2sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777086623; x=1777691423;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5Q87q408S6kD03eCdhgkumlXWLlyzkrJl5PR3laXuXk=;
        b=aX0Grw25ypBZGktysGV8+ejdR+l0ijxlVEZDOuuSC3SizzIb0OJrvOgqV5VZl7Epoq
         jsR8mlmUmtBkK/gLnDYN7hrB0Nmp8KLjapCzHJ0bNbCfxZ+sdBPLH8EIXs9QOgnY/hBo
         iC/mUn3Y9LNn1eGjjQNBOe4TIqbaHgipAZ5WfIqy2hMnd6Dqp2Wfj0JULGZUzyQzZAGK
         GQd4O7srTIMRh8FUBR0sNUDXNfSC1++ZrnhS18xbfJmmw8GEehKrhr6jUS7dWfKRmvsL
         sNo14rF3JJ9FlRP9Y+snUUAAmkIzzEJyH4JwLveOD4whIRHIevP05vBojdRy7bnNwqMI
         ukbQ==
X-Forwarded-Encrypted: i=1; AFNElJ/EYyvWtK8as05jwTEz3rMeO/oTrCD5Ru2MuaFAlRoTCm2z0/MbKea52hatB24bly5MHedq3gLza6IFuA2gUg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwSLepHCZGSO9le2qXuqX1x+XDXP+60JVu/roZT8gOSITaKR+gn
	fItDCpT0VivZVNVuXGx+1DEUY0aeuPDZvLTXj5aG2Bh//Dckm/+kGHzEa/9yfP/MoHrWzUrFrDu
	HYDA1fQvIkPC/RqP12kiWeDkWB2MyGcPH+8Q4
X-Gm-Gg: AeBDieuqax8Xb6LRPkowcwXb3HdnW7y2vc5ww7YTiFNzF4SCN91hRnPimjlmdsWPSRk
	K87WunfDv5tR61GipSwDc9hlpzDhlD8P5Fin7V5VNG2k3b9Fk2dB2DXT1IrQSWB+vCJY6K60OLW
	ptWDUe0kwtNjGygyN49tdBX4+F7iBbp+tW8Y/rgZkV6fG3tXY5xRrCXM4lyzcIXNP/QhmAHpm+9
	j7lIue17b9BEJ+1rsbn3oZvWTaINbOVXU0sFmbN4krFblfend2LxkMoad3twR0IEczi7fzrQYk4
	xsnxoT2RQ6NJZEuxtqlZx4sWTUoapU6k6VDVVu1IkqcYxHp4xAwJ5lm82IR6by+Twa1oDWQlnJf
	PLerfya5GVxRfzdDosSTatmlRtDN82jPFzLQp3cFNtUETEsc0EjW6PFM=
X-Received: by 2002:a05:693c:4011:b0:2e6:e916:70ff with SMTP id 5a478bee46e88-2e6e916770cmr11635454eec.28.1777086623456;
        Fri, 24 Apr 2026 20:10:23 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 5a478bee46e88-2e53a3ae691sm1728646eec.11.2026.04.24.20.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 20:10:23 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Alexey Charkov <alchark@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>
Subject: [PATCH v8 4/6] arm64: dts: rockchip: rk3588s-orangepi-5: rename PLDO regulator labels to match schematic
Date: Fri, 24 Apr 2026 22:10:09 -0500
Message-ID: <20260425031011.2529364-5-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260425031011.2529364-1-dennis@ausil.us>
References: <20260425031011.2529364-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260424_201024_494645_3D719933 
X-CRM114-Status: UNSURE (   8.32  )
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
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
