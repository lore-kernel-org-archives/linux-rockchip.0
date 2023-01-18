Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2987FC004D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 08:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Oy2wFs/lRBMA5LO3SzgSkplt4z8vhBvwe+RJ4j/RuPw=; b=EBj1WyYr4F4za9
	bWUuUDP5Gr/YYyDty60LErAasA5WrlI03nxV8JZEToUfbiaJAHSvUzbB0/A+cTnpiHidB3yev6o98
	+rHfB6m22UmuvUPPO+KmWoKnFvkANyFwwMlaPCbmko16EqxuagiZBPPIXhsIZzK8tt3TVv4X0gqLv
	I5j+l+JSP4KzW8R8G0ZpJDrUU/W7FUvKzHc4tTJcnqw9vfiPQOuIKPaUvvMQyOFibiOl7NNwfSVFs
	PKsGzn5Bym9iBE4hS0dqY2Otc1pUZR1St48ZVhlp8fPquVvedZ2O0GtAH3xjE1PRBVqe3or33c7Oz
	vpZUbAo8G7ayH669gyJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI3Rb-00HPVn-Lq; Wed, 18 Jan 2023 08:05:15 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI3RR-00HPSY-1U
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 08:05:06 +0000
Received: by mail-pl1-x631.google.com with SMTP id g23so20522629plq.12
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jan 2023 00:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K7FNf3cY1zZ/AJ4VVIAB6BnVQ7mGdN3Wmm9LVsYAJeM=;
        b=Gh8xAivpogDa/io3OxMECljq874hzlfAuBqXesz35uF7axqbKJaSpmorFQm041JV5F
         duC0T9IWk2/bsKRu5gC7sGgFNZw3G+4KpQimXDn6EJZbZFjSxJDepE+sJt/EX0d0iKLm
         U/NGK3bCOeBh7JVco1VASVgtrb+gbrkwrOGrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K7FNf3cY1zZ/AJ4VVIAB6BnVQ7mGdN3Wmm9LVsYAJeM=;
        b=wpMCSShQiMOZfHKraZEgJ7ftQ0AfoyWfZH0Rq//+DRrGkx6aMNCYq8UleDWHG/HZhR
         JFWFU0lnnGGx/cnA8WlzAMZxQZQFb2Q/Wwpzf/Gu41cLG0OHn/dwDGzNmW9kNqQFWgXe
         05Z0C23P5q2rT/YbRSCfBm10ZjjU0hSlCzFBFdjDLKt4c3BF03rk8O2AiEcUESjS0JBd
         WXu/cDw1o+VqEhQhEe1FjflB4V6i8N3KYzoAS4Lhz68mWZQrUzKbNWObxm5r94sEmJpK
         +nt9ZA+TW0DKBGnc3l2DkcodmC2KOCxQXNTla2nXGTkUHAHC9rQ4Pj34uuTGt2xTsL1M
         VpJw==
X-Gm-Message-State: AFqh2koDqj+cE6/mOiEGBX7TctvuBZXIYYzP++uxptvt8mvP9HUWM+rm
	Ll6w1u0pmkpcrt7lkuruCH3BrQ==
X-Google-Smtp-Source: AMrXdXtYQ5CeIC95aaPg6AvDUyjo8yurJ6WGgW+zdlAJeavRBTynpPiBeK908Y0hHtEk63FsAOSp5Q==
X-Received: by 2002:a05:6a20:2a0a:b0:b3:87f8:8386 with SMTP id e10-20020a056a202a0a00b000b387f88386mr6214009pzh.24.1674029101974;
        Wed, 18 Jan 2023 00:05:01 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e5ce00b0018958a913a2sm22403511plf.223.2023.01.18.00.04.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 00:05:01 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@amarulasolutions.com>,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SoM boards
Date: Wed, 18 Jan 2023 13:34:53 +0530
Message-Id: <20230118080454.11643-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_000505_088218_B496EE61 
X-CRM114-Status: GOOD (  11.49  )
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

Radxa has produced Compute Modules like RK3399pro VMARC and CM3i with
onboarding eMMC flash, so the eMMC is the primary MMC device.

On the other hand, Rockchip boot orders start from eMMC from an MMC
device perspective.

Mark, the eMMC has mmc0 to satisfy the above two conditions.

Reported-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts     | 3 +--
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index bf9eb0405b62..8b8992a8e9c0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -13,8 +13,8 @@ / {
 	compatible = "vamrs,rk3399pro-vmarc-som", "rockchip,rk3399pro";
 
 	aliases {
-		mmc0 = &sdmmc;
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 	};
 
 	vcc3v3_pcie: vcc-pcie-regulator {
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index fb96019b0e87..0372dd97c392 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -8,8 +8,7 @@ / {
 	compatible = "radxa,e25", "rockchip,rk3568";
 
 	aliases {
-		mmc0 = &sdmmc0;
-		mmc1 = &sdhci;
+		mmc1 = &sdmmc0;
 	};
 
 	pwm-leds {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
