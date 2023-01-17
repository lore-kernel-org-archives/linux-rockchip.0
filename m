Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39F18C3DA78
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 10:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJ/qC718DHwQFi3RNefm8cUDUM+Rx+rRwjbgnVAe7PI=; b=vkXOIiAjfTZohJ
	3W5D5uCjoyrBCaaUmOBufImHCbUwz/dnek8fC3kn2z2Bc9JFXVnH4HxT+vWTRHxnYfTQy4xAhOl7S
	D+vD/l86AR1R/ezDAam4rsU/dLs5/REdQ4PNbbkKiVL8G7xwjTMxirnYW3QFiYaeeIu4o7/LpZUv2
	wGdh/2dChScSdm/NBlzuyZwBMP3notmCd3KY5fcZ1oqFgagx9uMteNNNnbOhMeobTg2A8tGyC/+o6
	mIph2jsNDQyNS84CfFxMoJDl0ChmUhtE7xV9G6xlUTPj4XPbO4bDbxFd0S+K+lw+L5Pzu4ZLWahpH
	+RZmyEvP0JwY8jyZrerg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjeB-00Dsfy-0a; Tue, 17 Jan 2023 10:56:55 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjcv-00Drrs-LY
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 10:55:38 +0000
Received: by mail-pg1-x52f.google.com with SMTP id g68so20543195pgc.11
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 02:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aA0h7+i/e4ORQDizV97KwrYpiHUD9zotB5aOejEPv+o=;
        b=TGeGqDsE7RJMSKyavjjZsVLWS7cJC0p1TproYR6qdyB9B8dP9zdXqOFoCeAfbENO6/
         UAgRysLBEnDK/T1dgEKv6e2zDqUKZjneiR1xmSY7EaNX9cqp7HD/k22g3nNgFc5PNGOC
         LtN9Vjw0VJGD0No/UiKxyGodKDPARYYgaaJsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aA0h7+i/e4ORQDizV97KwrYpiHUD9zotB5aOejEPv+o=;
        b=TMfPdBiUj8msCkWjOj9BNIr3QmUZmeXkulF7/DsdogGQ8OAAJb4KjgT2DZyGq26y3l
         WiCr7sOCR3QYyGeOmzhRqlSLhM+/ytfxN78uSTQcEavxbFATjixO6NttkVMFnrzEBTKo
         XJiETgODtT7KXk0JEF40hTR41X3QL2Ufyd0fDOHOHfvFJlocB9Yv2fN6qgOjmW2ZTL/K
         ooJFTyuzwlGCtZ7iE8rLqzga8T2mnzjnvaPNa9dCQyzUuqG+BIyB9/AOvyuR/TN/xnBY
         4+9UppV4MY1fXY50riBKQFlZBdGGJ8us/cr9HJ5N0h+c3z4/oh/ygblUYx/8Qhj6ysup
         +f/w==
X-Gm-Message-State: AFqh2kpKTMAYA9lQ+y5VlmZZfn7MzRsYDL6h3ABi4JvhasG0Ul0cDcMv
	r/KHoK94eaHzKjGYXfnRnMK8klIr1ai5zdv2NQE=
X-Google-Smtp-Source: AMrXdXuKP2deY2p66/oJaTqLcAzmY7HEDbyW2X9tUITOO82QbsRl5nQtIw6DvjtB96recgFkfs4Ftg==
X-Received: by 2002:a05:6a00:190e:b0:58b:c1a1:4006 with SMTP id y14-20020a056a00190e00b0058bc1a14006mr2439021pfi.18.1673952937304;
        Tue, 17 Jan 2023 02:55:37 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:36 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@amarulasolutions.com>,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 6/7] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SoM boards
Date: Tue, 17 Jan 2023 16:25:03 +0530
Message-Id: <20230117105504.18296-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230117105504.18296-1-jagan@amarulasolutions.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_025537_730930_BB617F85 
X-CRM114-Status: GOOD (  12.43  )
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
index 8ca15b723799..6a3d964f6207 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -8,8 +8,7 @@ / {
 	compatible = "radxa,radxa-e25", "radxa,radxa-cm3i", "rockchip,rk3568";
 
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
