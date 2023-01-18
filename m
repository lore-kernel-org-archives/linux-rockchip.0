Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86D67C004D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 08:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98Sjtgmd00IUV6EvAyiRNDK4aCeYYo1Illd0CLKMHHQ=; b=qBikkiYn4NnNoQ
	iTczWgm5IDkmtk0rOVMd3CpTPoRKG7cSOqgwa3QOBu8TWVoqoFvuR5Sn+cwaqHZiDnGxPxylzj+85
	Obz0ce3Wkp/0rLlWA6gWaHocts73ygK92ldWeELnN1Nd5Alqr7bLgtEuP8cxPn2IaeIedS00p8132
	8kTVPmDsgNi/yI/cxECUBxZl9t+wnSorP0A+n0MiUvKnvEWo1t2Q+cAM+gThSxMiOE7+l1Lrg/uNx
	dfoz3j63/qEr/s2E6EbOy6AQO37LVjtURljz03ZvIcY1fRM4X0cPnUxCtTB9zsF09W4sMHfhiGvBe
	uvwWRsyy/QUhVdp/CugA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI3Rc-00HPW2-G1; Wed, 18 Jan 2023 08:05:16 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI3RS-00HPTC-5p
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 08:05:07 +0000
Received: by mail-pj1-x1036.google.com with SMTP id z1-20020a17090a66c100b00226f05b9595so1405976pjl.0
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jan 2023 00:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lIoR0K2nD9tduWKzfzbB6LQE1NJ1KepAUnYgmYC1vTs=;
        b=ZM+85AyLj6yZlk8HHeGl4RmKwuuN+e02kJjo7q4EmMr1Pdy8h+Mb6xrfOEQp4BpbXI
         T8XlvFz7+2luLFHyqxELNWmUVSNRh3IvON4d5cwwVNGXpHn20JvNXv1j5z/Ch/e1xviA
         hOuDTpJHBgEknJyIojbKEOWtHR0MXjDUSzSwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lIoR0K2nD9tduWKzfzbB6LQE1NJ1KepAUnYgmYC1vTs=;
        b=VEPq6yNuTDqndsb+F57oa9jyeq3Md4e844wdDhx022MsTwkRGfWmMDEe9CjXK0y5YD
         R4idkiUStDDolKHK4cOIoIT/5ZD7IlWD2NE1kb1xf3ub0lNbq9iOFsX4RHGfejyKR0mZ
         k/lO0re6/h3pRt615ZGfnqM/+KE9IyAS931nM+JESeu0ypZAn6n9jh8X9UEHIAS7lMFV
         RapKhuU+8ff9oH5xgZ9wpddTru5p/R1JUuvZyCU11wQ4qQbV9Kz6qKsdvKYC9Zc8yyrS
         Qc0900qg55pRRoV4DpGA4S8g8JuWxRAu02PhK5aosg+5qYm/qx9XPg3QzBya2P6NN6mn
         Q8ow==
X-Gm-Message-State: AFqh2kqNF2SccUW4wdfkmK/OUioOdIL5HgnEcjxKL0Q0wEN1kKs1OIpi
	PhxWeKIHpT9HMCvJpHfRM1e7PQ==
X-Google-Smtp-Source: AMrXdXt6mhtRxaboJ+MQJbeDaCuPCrUVGHYxOx6dP9fkGdmLAXXDOLKN7QEXh3wylLLOfCxa7S339w==
X-Received: by 2002:a17:903:50f:b0:194:7d6d:10bb with SMTP id jn15-20020a170903050f00b001947d6d10bbmr6588406plb.4.1674029105362;
        Wed, 18 Jan 2023 00:05:05 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e5ce00b0018958a913a2sm22403511plf.223.2023.01.18.00.05.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 00:05:04 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@amarulasolutions.com>,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SBC boards
Date: Wed, 18 Jan 2023 13:34:54 +0530
Message-Id: <20230118080454.11643-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230118080454.11643-1-jagan@amarulasolutions.com>
References: <20230118080454.11643-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_000506_235354_471621BB 
X-CRM114-Status: GOOD (  11.88  )
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

Radxa SBC boards like ROCK 3A/4 models do support eMMC and SDcard
via external connector slots.

Mark, the eMMC has mmc0 by considering the Rockchip boot order priority
as both MMC devices are connected externally.

Reported-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 309c35d7fca8..028eb508ae30 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -15,8 +15,8 @@ / {
 	compatible = "radxa,rock-4c-plus", "rockchip,rk3399";
 
 	aliases {
-		mmc0 = &sdmmc;
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 1f76d3501bda..907071d4fe80 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -13,8 +13,8 @@
 
 / {
 	aliases {
-		mmc0 = &sdmmc;
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index cd1e1d8e1244..77ba37ce6d6c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -13,8 +13,8 @@ / {
 
 	aliases {
 		ethernet0 = &gmac1;
-		mmc0 = &sdmmc0;
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
 	};
 
 	chosen: chosen {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
