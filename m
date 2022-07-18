Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60E93C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 06:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dhCMewSN9Gii5mDKmn+IWHBgMdIFAk0sMgN1kcNWW/s=; b=xtyCz2NAgRp64s
	Km6m0QBK4efApmBl083JXLo69yFoKxrRPZ+45W0SyvQNDkf7GZKAWEf6MHtL+rdQFNGkX/hYEFFqL
	Gq8Hh4koPTlwqLZ5WQPD2rPjfLMgVMa6tWKNp68jfaPaE5E3+fUig6EctBXBcWgA7uvUnvl8Wq1bi
	+wqSLO4iHZWrT2NFs2dYE6c8zLz1un0gPDariVx9ZGYUCoLjU3DYWLXAq02+zPdJSzxb/xBCAC0ck
	soQ6AA63lQ0719JhR8VrzTDBnf3QsQACRUjy4awgh7FKOHmwq/DLtFk8gaXg66bTnq48e72UOrLVA
	TE1HQaXAPpMYXyVKXQ3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDKUO-00BHWT-6H; Mon, 18 Jul 2022 06:44:20 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDKUD-00BHTb-Fj; Mon, 18 Jul 2022 06:44:10 +0000
Received: by mail-ed1-x52c.google.com with SMTP id x91so13953364ede.1;
        Sun, 17 Jul 2022 23:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MU6KvRw9oUiosk9iNJZEva46TvY9a6ly1/UmmRb7+pc=;
        b=eE+WuVP5QBk/uvd2VNurfHx4gbXUdV/PTPdGQJtEzGqYqlWTmNjwAvbQHQBqbypXUC
         JrCduep2LlxYAaJL8H3nu4+Lqq5dausufRlrhr/QnNxMjtKTdQfzrSpYN00EdEoNFm3p
         xCG57Zs8AWOd7yWD6cwdaLn4P+GMg4NegGcz+SV+ZhbsFOxXeAwyWVIBQa41wWlIkOyv
         ouQDDM019CzszLh+NuOTwnUdiIU4A3DWWlPfGJw80hNtgLaS8ZrLgNEecMHHZDak28j0
         Lz8j+xHyZou5CHaM/NxxBiTLRdxyFjMjxS9B0JbMQcJE9zgaq7IT3dG6kg9+UFfkN8du
         npiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MU6KvRw9oUiosk9iNJZEva46TvY9a6ly1/UmmRb7+pc=;
        b=6oPNauk+fcfZhfoXpQN5FIKA7ekMwTCfTXkK86dbOMsuKZppgu0SqS36F3DQLJphzG
         aG1pByUyOAcaB3MCcKNLUInf95aKREHMkjTnUi6BofB2lRs6AbC0WG+sz1v89TBVHb2T
         /1sj19NcxO0LskFUgAv6BgkxHtHx9lF3K9uDbOxtR8v7rzFR3uZZQO6ZtlMhOYhQCpg6
         Hz6Wqh6Pitc00p/Ry684Of1//W60YArTgdWFTr2xHM4hrE5XZyyt8MhjM1vwTBOzBlue
         qPdv5optFWogaywTKSz9wA3v/EMV0fJX7c5LiXIA/+8tsG8t6k0Wwk2kGvTr5GDPOMyC
         X1rQ==
X-Gm-Message-State: AJIora/QGWxxhFoInT5mcvsnk9m3UTjq7Q/AoeoIR7HLrPieeiA0tgQe
	FX7sn7uNpWhqxP8Vr8pV/EPORssyQxQ=
X-Google-Smtp-Source: AGRyM1tEkwjOYckD6D53C0eCd+2u0KOttLBEhE46rvAyaRUFkVfkcucNiFKo3R9kCMN5l0dmS4QLTw==
X-Received: by 2002:a05:6402:2895:b0:43b:1e47:c132 with SMTP id eg21-20020a056402289500b0043b1e47c132mr28987655edb.425.1658126646909;
        Sun, 17 Jul 2022 23:44:06 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id h10-20020aa7cdca000000b0043ab5939ecbsm8030847edw.59.2022.07.17.23.44.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Jul 2022 23:44:06 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add analog audio output on quartz64-b
Date: Mon, 18 Jul 2022 08:43:36 +0200
Message-Id: <20220718064336.822773-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220717_234409_566258_706363A5 
X-CRM114-Status: GOOD (  13.58  )
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

This adds the necessary device tree changes to enable analog
audio output on the PINE64 Quartz64 Model B with its RK809
codec.

The headphone detection pin is left out for now because I couldn't
get it to work and am not sure if it even matters, but for future
reference: It's pin GPIO4 RK_PC4, named HP_DET_L_GPIO4_C4 in the
schematic.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 32 ++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index 02d5f5a8ca03..a53cf81494fd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -42,6 +42,21 @@ led-user {
 		};
 	};
 
+	rk809-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "Analog RK809";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&rk809>;
+		};
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		status = "okay";
 		compatible = "mmc-pwrseq-simple";
@@ -177,11 +192,16 @@ rk809: pmic@20 {
 		reg = <0x20>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
+		clock-names = "mclk";
+		clocks = <&cru I2S1_MCLKOUT_TX>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int>;
+		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
 		rockchip,system-power-controller;
+		#sound-dai-cells = <0>;
 		wakeup-source;
 		#clock-cells = <1>;
 
@@ -420,6 +440,16 @@ &i2c5 {
 	status = "disabled";
 };
 
+&i2s1_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclktx
+		     &i2s1m0_lrcktx
+		     &i2s1m0_sdi0
+		     &i2s1m0_sdo0>;
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.37.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
