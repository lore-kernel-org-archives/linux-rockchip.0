Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 036BDC54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 17:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMydmbWSHsJTekkVlpgnrCZ3Kd244snD+ol8x7uSS7M=; b=Scn6vTnYYsl+4n
	dgREXBuFMwY/qf8phZyusChwrR+ZhXSFuk3v30TIQZMMlb9JZR/GaFbtidETIDuMrmGvYI3y/v9lT
	ioSpN0g7MT/yAcbSc2dhH2U4ScTlBfY7LsTXYjlZZhhL+30C7I07dFJBHlLN2svOOG9uCbWdALa2s
	mb13wrwOVsTH+8B9FTWqgAf6aRwrqUQ4lt54fJb70ApLk3ehSFP5ktgiw/9VVkJaAKmeaoMtXy0gI
	DV/eBiYRd6dj5g8hYLq1x6jM2ebVjU6uBDDlPEIsh8VMOZMzv0UYWX32t3aHQlupAjOm4mS345ULO
	X6Xecepkupu7ji8N8fxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rooUP-000000019Re-317b;
	Mon, 25 Mar 2024 17:52:05 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rooU8-000000019K2-1nOO
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 17:51:51 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3c37d50adecso3160827b6e.0
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 10:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711389102; x=1711993902; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rsJtT2cnKvYAEAHElUdmZaRXsSO+wFIdbdJUSKugsNE=;
        b=IoKbiAwbTCicqmQGUt7wgPiRi13UnafL27UlbNkL/5v9COPWT58e3I8gUN6/lcjdp9
         C0feqE9ULQ7d+pmIuAtAezdyX4I4x00Duz8Qo4ASYmZ+hYhI7762dIRPziInHVdZt98V
         errJO44PseucopJ28SycLA7TJluC0sTvhieHz3QBAP/C6sH4EbYLIuegUfNM3mNuce6w
         G5+8H0nP1vTYiDoPZLUha9E5JCD5tvCLcYLpN42KDRpIR8xlST/jPQyi8fQrstGjw0jf
         hCSFxQrHWXvWDChgMRdMk+2ow6hJpEk/zrJaZxpGIhS3LK806+mktX7i27XQdAb9opNR
         9lSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711389102; x=1711993902;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rsJtT2cnKvYAEAHElUdmZaRXsSO+wFIdbdJUSKugsNE=;
        b=oTtBaYB5oTHWG3snvE5oGjo/2bZOZPjGYm6UMDstxMjgU4wAA7SBQxIQDUvQibLxL0
         tZB/mkDO0FT6GRuHbhrQ7PLH8PUIXBTeFntYH72opvtPF0pRltTp1emycuLBugCSg+M5
         u3vMlSAyiEyaHiO99jq9ktKptRy3WvYvlA9ZK7DqNTILymUlBb7bn0s8PUwDL6ZMliuo
         YD/KaJf9SpgVW7T1+6aDrvGuWQ3+RF0f4TJn/ox8INHqn/AVUMONBOyXtJeQB+IrR8i3
         krzH0vxWN0PdVFRrTKKRNGGzqxjF4bMWzmRJi9LqbCPYzfqso3UtnN2A96JCnNRiWA+o
         nimg==
X-Gm-Message-State: AOJu0YxhROJ8IglexnF7lZfVIpqsJd/cWHXhFQ65drgSJxRE3OHalUme
	axQOkgWHUpPUVz4Xnbhx/BofArkz0gG4aLmu9pLe7wS/JWix1MWnxv0XO9T1
X-Google-Smtp-Source: AGHT+IHnz5LrtHO045MNYUBtenNRKyqsPSgn61hiwl+ZoE/Ap7bPdJxNbzQ2xLv8FlK67951DKSdSw==
X-Received: by 2002:a05:6808:3a1a:b0:3c3:b652:efdd with SMTP id gr26-20020a0568083a1a00b003c3b652efddmr14026224oib.19.1711389102339;
        Mon, 25 Mar 2024 10:51:42 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u17-20020a056808151100b003c3d3fc607csm212505oiw.26.2024.03.25.10.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 10:51:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: Update sdmmc node for wifi on powkiddy rk3566
Date: Mon, 25 Mar 2024 12:51:31 -0500
Message-Id: <20240325175133.19393-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325175133.19393-1-macroalpha82@gmail.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_105149_562793_C33DBFCD 
X-CRM114-Status: GOOD (  11.39  )
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

Update the sdmmc nodes responsible for WiFi on the Powkiddy RK3566
based devices. For the RGB30, RK2023, and X55 we also add the
sd-uhs-sdr50 parameter. For the RGB10Max3 this parameter is not
supported by the WiFi card.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts   | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts  | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi | 2 ++
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts     | 3 +++
 4 files changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
index 1f567a14ac84..f0f5ee595938 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
@@ -55,3 +55,7 @@ regulator-state-mem {
 		};
 	};
 };
+
+&sdmmc2 {
+	sd-uhs-sdr50;
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
index bc9933d9e262..661abceaba9c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
@@ -54,3 +54,7 @@ regulator-state-mem {
 		};
 	};
 };
+
+&sdmmc2 {
+	sd-uhs-sdr50;
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
index bd332714a023..10089921c62d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
@@ -771,6 +771,8 @@ &sdmmc2 {
 	cap-sdio-irq;
 	keep-power-in-suspend;
 	mmc-pwrseq = <&sdio_pwrseq>;
+	no-mmc;
+	no-sd;
 	non-removable;
 	pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_cmd &sdmmc2m0_clk>;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
index 5a648db41f35..ccdf654a3f48 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
@@ -835,9 +835,12 @@ &sdmmc1 {
 	cap-sdio-irq;
 	keep-power-in-suspend;
 	mmc-pwrseq = <&sdio_pwrseq>;
+	no-mmc;
+	no-sd;
 	non-removable;
 	pinctrl-0 = <&sdmmc1_bus4>, <&sdmmc1_cmd>, <&sdmmc1_clk>;
 	pinctrl-names = "default";
+	sd-uhs-sdr50;
 	vmmc-supply = <&vcc_wifi>;
 	status = "okay";
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
