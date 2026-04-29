Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A37E6FF885A
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 02:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3X3QaNilQPpdmPR57AWfq0yYIwiSzq/XDsXv90S1JFE=; b=38JI7mK/dvYISe
	IT9Vg0In68qK4J12y0i8iaEFsbUsdr7IUcoEC/QMSl0gFeOiJp/NEQJieui/7MYZbxRu0Uzfg0jp8
	w2JUDz6VpvtHoQJ7Vs2+Eli4LspUshckXynpoD0hVGsBSvGINn2hUqLJyh+V1b0vLAKFdFT7oGhpa
	iAtUV3zrG9ZKddE7T50yuO6lyk6PDWdUWZ4DoDolYZjr+T/SkPwW0hJSutiejANrBQz9HSRsnUvxN
	1msiZI4uAspp1/A19vPbaJX6mBE13FFlYpRYI1E7WRojh0IKdh0oixcsV/lA7Y/FZu99wNZCVU4yZ
	iqcWs3/y4zBGuAEkHQRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHuxp-00000002nnF-18ka;
	Wed, 29 Apr 2026 02:47:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHuxn-00000002nls-0XfC
	for linux-rockchip@bombadil.infradead.org;
	Wed, 29 Apr 2026 02:47:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=hI3It/TBwNAH4is3Y19ZdHuT8VgKHisEZqEHUOa55pA=; b=Q4wYGm9Csc2Pd4vexONGEdpcJ+
	kK9AEEnLP/nHkVmn3Txq47Vv+CMzFlcp5EE4DPydFadwWBa0LI4jw+6/LzsNRR8naQCvRpTYuK+NJ
	jtaB1cq8earE5ckiHhs2wGq84oEJ+i2pV1zb6h6bjbZB6X/DVLDEXJzhAYemEB5Kd47QYwN/OQxI2
	lkwzkZoO91u1+0qggznAtL9ShjYrKxaG9rp/+rgVV6O5VEbw5saRctIIaaMNGHyJ1HmPEV6HdZNp1
	TH5Y2D1PFuueRTcp4ZDQNXUSSlhyEKAKLSSERZQmUcXw9RZCA5CupoV/qMp0D/2Ip6po3ICD3Ur/v
	1VPbo4Kw==;
Received: from mail-ot1-x362.google.com ([2607:f8b0:4864:20::362])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHuxj-00000004Ur1-3m54
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 02:47:46 +0000
Received: by mail-ot1-x362.google.com with SMTP id 46e09a7af769-7dcdaf06498so5531434a34.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 19:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1777430861; x=1778035661; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hI3It/TBwNAH4is3Y19ZdHuT8VgKHisEZqEHUOa55pA=;
        b=M4iH1HjYN51441MU/+7zlz9qDZKeSVk1lHDudlYOEBmgo7UkMx9z9ISdtbhyrUcVpS
         Z84DldR38esU4UyevpNRBYpGojqUgRt4GvKsRjeWBIPLt4NHTxSN2VlS854ypc9/AYKw
         LknrYcCmzF6XOO3yfsDmwg//Zy5rx6OMeFlmM78tsJgRjuVhU9S74yOTSY4w8XF2RhwU
         khR97PZ5up+l2Vy9tZH+5EUTsrgG2LoJWiGVkgdYlGavFFMk8/+tQ7QUDVjqCBUhCKAO
         KyIUVkBp58jmsoWmRTK+tA+/AUxfPEuKri6DGYkkiCIf+eS5lUVWmuuH6rRht6n4eMdW
         MXXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777430861; x=1778035661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hI3It/TBwNAH4is3Y19ZdHuT8VgKHisEZqEHUOa55pA=;
        b=pvGBPi8tCfFjQFtk4wLK7Ua8NC1Ni6snFDE0Vk5EI4rBcSREV46gxE3JSw2iHiYcr8
         hhquy3kMBPa0/snuEO42c+4VnUxyHKJYGSm8g3cBB0zm/V6EAcOjIYqnUZdqCSpBupjY
         47GXVeDo38yh+eTgcwZXMxZL0emXuGJ5t+aCWJzraYNjDu6/drIemBQ7YyPUj+ZBRwec
         ZOdHTuj+ZTCKr5k5JuhCCa0nfZp+NxGKnG7G5ETiQeyr7MtCEffpWp08bRfia2M0t9hv
         T0CFKybgZPniHdb6BK3AfeNNd0gGLHgoBRxL0Af9QHY/8GaV9juS9UEVml9rFQ0gkrNW
         Q7Bg==
X-Forwarded-Encrypted: i=1; AFNElJ/CDz/U/p/+NvO9ywo55QN/URQJrSthGrJdojhmHzR/NtgW4qW8Jd1fRJHxEIgMloLIA3oSI/cTAw7+YyCSlw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxFxhNGVfDR1ti64JIqR1FL5rjD0SP3Xop7ognWRl9HSoOtox0q
	57gLxoDVtgsLu5ddWwtVfNxmQhVBwzeRsF0vZIBSPWADlk6sV39aE6kiYJ4oMPCoTGWs/35ec++
	p+sbcQdRkIM9Egqnw0e/V+53qYKbBxtCBz9MR
X-Gm-Gg: AeBDietMlrlDZdL7IUNeYmGcyRFKEJ/O+M0GLCoJ5M3k0cyuHK/HwMcRXlKGzgUoAds
	vEx+PsQig7eaMBqquXel8d/MfEIrkObdDrLCoZyUivD5qPCHc/xIKfFFz7s1pAKFqjTZqg9lr1B
	Z2nKOfW9Y00coCnezoDWZPx6f655meg4A9hWvC2/Y0NgdZXiZykwGsNKPUZY31ARtm5dQZJMMq+
	3WpH77yYJo96SL2nbfuv4HrawzLpTZaeBfKnTBRZibP9qtkYw9/Ld2Brfp2RxjkKg0h3WXcmsYg
	AxyejUhpqMeJmdd8qaOfamKAx8hiIe6yM0zEBUhIBqSONTWU8z7nKK2R3hdtnjg012lKSpvUZmX
	JqH1e5bG7b/ALB1mTdXsoTTNxu/mGZaz9JtYdWR6EjwZL6nhWvotjg6A=
X-Received: by 2002:a05:6820:61d:b0:694:8ba4:e3bd with SMTP id 006d021491bc7-6965cb725e7mr2917108eaf.36.1777430861570;
        Tue, 28 Apr 2026 19:47:41 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 586e51a60fabf-4340e711c00sm110958fac.5.2026.04.28.19.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 19:47:41 -0700 (PDT)
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
Subject: [PATCH v9 2/4] arm64: dts: rockchip: rk3588s-orangepi-5: rename PLDO regulator labels to match schematic
Date: Tue, 28 Apr 2026 21:47:33 -0500
Message-ID: <20260429024737.544813-3-dennis@ausil.us>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260429024737.544813-1-dennis@ausil.us>
References: <20260429024737.544813-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_034744_323988_DF91796A 
X-CRM114-Status: UNSURE (   8.92  )
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
