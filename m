Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49C02C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 14:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Q+KimCMFKbM0KFdZML9iy78aMOqcPMhW+Kq/rGOh0k=; b=xwFtA40M9gawos
	wZKOrG/v6O0fN0twuwHVytJRUHQptZ55lwqYxMG1qbJvIV/+qKAYZi3t+kcjAqfpesbuTRn3uD09s
	FN2rpF8GZ0DH6swJl9jz0vTv4QI8i8JWF64q2HjS/z8K0lYv1cE3DI51X1iFqZ/LXfp2vwxa71yK1
	o7CdyAnFfmaTeYUsllUWfavd+GjJwWZ88mn6EiXbuYiItUxs9kjah4PXMliGAd7ulPTpJrdf7xE7W
	xCyneUltV/riuqYRtfP/hMJcQN0EsWIRncqTnV5C50IYX5FTB4BNEP+wx0nd2N820WylQEDCwSN3Y
	vtYxb2VnGaO/lyg9QHFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolSJ-00000000Gqh-0He2;
	Mon, 25 Mar 2024 14:37:43 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolSD-00000000Gmp-1fuY
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 14:37:39 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-221a4f9557dso2853720fac.2
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 07:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711377455; x=1711982255; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OWGsglh309p0hvFkoJw+fSsGfnv7kwVjpBTFwQurm4U=;
        b=J9sUUwUguydshphy750lRv81hR/7IAqPVctArWbVdpOerxwfFcuN0aRljd9EfrKLWb
         cawAcPIMXi8MUerBBUjk31olp9AoNgvXlMF/cCCokYv3Ljojsqp6ArGXWjIHfcRvZBkr
         BHYwcowyTmlUDkZk0uhAmOLrYgfV7gbxzORlqGNrQHhaqPKrYHP7Hu4mdEaGciIfzWv5
         giELpGlGYbwLfdqe4MehizkpmoY6t3Sl4JmJBf45tl/l2gAg/GwvWvQEYWvwOh5cYYyh
         p5XJ8vOz2MZHc+9u1RMVWh3GmVGY0sy45PbbW4+riodj2jeE3ptywp1dgkap4lQR8zRW
         f/gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711377455; x=1711982255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OWGsglh309p0hvFkoJw+fSsGfnv7kwVjpBTFwQurm4U=;
        b=QiSr3d7l/ow42UGvewubiKqghgrIZo/C3E9W84GFrzHECHbjfHvEj4QRMJEYfAg11U
         RfK0fGBt4tZ37oJ7mqohVQfGRK2JOvM1IOV0TfSexTsXhXWmHK9WJDC6RP9cVWmGd2Fm
         MBIgD9RWHgv5sOCPU6NZBB0wNiGfU6yJFa3JWXi7f+Lg+gcFQ5XYk00AGlZhff52DkVI
         uHNBd8Et2EFZ9yNHlfnTal9oa9N6C/BJd3L4gBLjyZQ3dAhjd71hjjIagrN4AvOL/Jgy
         HfJkEZESKEAg+XjRWLK2CX2XqceKrZghnA3KdH5+p31GSZmtcAiPynd/DmIiQCDKlC7a
         vJGA==
X-Gm-Message-State: AOJu0YxssqPcMbb8n/K0y7NyCvodyj0/DuXOqOidewVZYgJYDc+1dPUS
	CnivygdKI8QdzTN2BKQcAZgo8vWX4omikn5DMsM0xngjvEz2RK42T4OIdJkr
X-Google-Smtp-Source: AGHT+IHFezassPLHQR+4Nk4JFVdRua2MnimBJg64IU+Y9mpBGCX4v92gaUHyOAI69wP8Rgw1Tos6UQ==
X-Received: by 2002:a05:6870:14d6:b0:229:ec74:a686 with SMTP id l22-20020a05687014d600b00229ec74a686mr8344702oab.7.1711377454873;
        Mon, 25 Mar 2024 07:37:34 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id xb22-20020a056870cd9600b0022a0ff98f9bsm1417180oab.4.2024.03.25.07.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 07:37:34 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: Correct RGxx3 SDMMC ordering
Date: Mon, 25 Mar 2024 09:37:28 -0500
Message-Id: <20240325143729.83852-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325143729.83852-1-macroalpha82@gmail.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_073737_613150_5D781823 
X-CRM114-Status: GOOD (  11.20  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Make the order of SDMMC predictable across the entire device lineup.
This allows userspace to always know that sdmmc0 is the eMMC (when
present), sdmmc1 is always the first sd card slot, sdmmc2 is always
the 2nd sd card slot (when present), and sdmmc3 is always the wifi
(when present).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts | 7 -------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts | 6 ------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts   | 7 -------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts  | 6 ------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts   | 7 -------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts  | 6 ------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts    | 6 ------
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 7 +++++++
 8 files changed, 7 insertions(+), 45 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
index ab83e8a61615..d239a8452957 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
@@ -10,13 +10,6 @@
 / {
 	model = "Anbernic RG ARC-D";
 	compatible = "anbernic,rg-arc-d", "rockchip,rk3566";
-
-	aliases {
-		mmc0 = &sdhci;
-		mmc1 = &sdmmc0;
-		mmc2 = &sdmmc1;
-		mmc3 = &sdmmc2;
-	};
 };
 
 &i2c2 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
index 6264a8c78d0b..4bb13d94a759 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
@@ -10,10 +10,4 @@
 / {
 	model = "Anbernic RG ARC-S";
 	compatible = "anbernic,rg-arc-s", "rockchip,rk3566";
-
-	aliases {
-		mmc1 = &sdmmc0;
-		mmc2 = &sdmmc1;
-		mmc3 = &sdmmc2;
-	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
index 8aa93c646bec..94c678c44d3a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -11,13 +11,6 @@ / {
 	model = "RG353P";
 	compatible = "anbernic,rg353p", "rockchip,rk3566";
 
-	aliases {
-		mmc0 = &sdhci;
-		mmc1 = &sdmmc0;
-		mmc2 = &sdmmc1;
-		mmc3 = &sdmmc2;
-	};
-
 	battery: battery {
 		compatible = "simple-battery";
 		charge-full-design-microamp-hours = <3472000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
index b211973e36c2..25edd81ce26b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
@@ -11,12 +11,6 @@ / {
 	model = "RG353PS";
 	compatible = "anbernic,rg353ps", "rockchip,rk3566";
 
-	aliases {
-		mmc0 = &sdmmc0;
-		mmc1 = &sdmmc1;
-		mmc2 = &sdmmc2;
-	};
-
 	battery: battery {
 		compatible = "simple-battery";
 		charge-full-design-microamp-hours = <3472000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
index f49ce29ba597..5354c5958df2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
@@ -11,13 +11,6 @@ / {
 	model = "RG353V";
 	compatible = "anbernic,rg353v", "rockchip,rk3566";
 
-	aliases {
-		mmc0 = &sdhci;
-		mmc1 = &sdmmc0;
-		mmc2 = &sdmmc1;
-		mmc3 = &sdmmc2;
-	};
-
 	battery: battery {
 		compatible = "simple-battery";
 		charge-full-design-microamp-hours = <3151000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
index a7dc462fe21f..02653b59f6c2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
@@ -11,12 +11,6 @@ / {
 	model = "RG353VS";
 	compatible = "anbernic,rg353vs", "rockchip,rk3566";
 
-	aliases {
-		mmc0 = &sdmmc0;
-		mmc1 = &sdmmc1;
-		mmc2 = &sdmmc2;
-	};
-
 	battery: battery {
 		compatible = "simple-battery";
 		charge-full-design-microamp-hours = <3151000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index 94e6dd61a2db..e7161a86a9f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -11,12 +11,6 @@ / {
 	model = "RG503";
 	compatible = "anbernic,rg503", "rockchip,rk3566";
 
-	aliases {
-		mmc0 = &sdmmc0;
-		mmc1 = &sdmmc1;
-		mmc2 = &sdmmc2;
-	};
-
 	adc-joystick {
 		compatible = "adc-joystick";
 		io-channels = <&adc_mux 0>,
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 233eade30f21..47c8fdc7c843 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -12,6 +12,13 @@
 / {
 	chassis-type = "handset";
 
+	aliases {
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
+		mmc2 = &sdmmc1;
+		mmc3 = &sdmmc2;
+	};
+
 	chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
