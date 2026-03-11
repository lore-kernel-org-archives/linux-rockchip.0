Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3A43106286F
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 11:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ViQjbW+aupMT9Julb6e+U4hOzfEjXwr/Kku03WDKrIU=; b=BBmmGJXGkwInHZ
	PF3d8R8cb4RIq7EfXDJLFauVH/1Pi9c5oWTqbwaxylQ2yCP91IaoVtSeYFfU042u5x3agutvQ0/jv
	OovAXjzr9e7sAKP6SzdIBY6GL3kpMF4iOmtLbaqtV9V1TSZB+PgWt4fwUnRF5T/WYkz7EE0esW6Xf
	MDwGm+78svG8OG7fW+o4e/l53ubwEndfcLchmF1ntX6y7PvvoG/olYEr0z0fWgdpZq543KvcInS/0
	IZrETaS0KogvBt0+0eZIJojuPeYLm/NiuC+4Gk+KkfX2O4tKLnvlERx2vMFCd7YHUi12UCq1hjqNW
	0ZJ7aIfxvVstpkG+p3sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0I9l-0000000BWOZ-13v0;
	Wed, 11 Mar 2026 11:55:17 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0I9i-0000000BWNT-1HTg
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 11:55:16 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-3598cab697eso579855a91.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 04:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773230113; x=1773834913; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tqpPz9P0T3i29nFtjm5Cg8H+Ilq/OTzWCRX5bsan7QQ=;
        b=I6TTUPIkBZ4SzmopmehwWOPMMD1ZV3tZ2yQupbYDe7CTgx6IsUb5uvjry5eI2TwLsp
         DSS6y5VFi64rG18Ebxsw80xHVXkqVn+TM3vR5uYoz3KTw48QDMEXTYgrfE6c0vlYR2Qz
         FKIYHx+Qo04EbRJLDjbj8Pt2GNiJn6rqOYtG2I3018HLnupMPVTKrhdBO18B7+JA24yp
         12eFsaS+RztHlXQnrN54XLP8JHO2pbFRGHdMLRmZhENGsG+szdj0fjGjBVaHlLPL7Mkl
         jYymKjisKiqvZN1SzCddUNOokhmh8A1oFIsWvF5myZZv3sf+pqKU4c+qvlywJHnAaKoS
         JWDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230113; x=1773834913;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tqpPz9P0T3i29nFtjm5Cg8H+Ilq/OTzWCRX5bsan7QQ=;
        b=LTOmNLK37eTFr06/PotKn19ujatTrg98e+zLm4Nu5Z4W1nJRoXJwrBRttwe6lu4YXo
         2ZRCdq+3NLh1F1XpFdXnQlV92me5dbtGWksYwIr1UAmsALdtIo/iyM1yIvsEAwaXCtYD
         WDV3E/DtXvyOXhfPtr/ncs/NoK/OXZfgQRefz5Hfx6Mo/amXlaAZgxE7Zmz1TD8zH8gA
         eep2hAkrO+MrLL/hUsSyn08XOwRgOj7J2b3tW5kiO1lGH/IM5nhSkymy8lJatI6LYBET
         a3x5EH1/CO2xOfTvheHi9TJKNOH5NJ9hS+4wgJ7yxlbr+RD0GAJW8pbdl0kM9BbB1x7b
         deig==
X-Forwarded-Encrypted: i=1; AJvYcCUm9p2rClX7JLYi3szhanPPe23UBYxWTNyOAMnbIqFdAvXvy6SS6q6P2ieTcjsQomJq6rzdzLpbQF1hZQ5wJw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzLSUyYaOEO3cUGpxOgyhjpL5xjs6UymBYdRlw8WSo7v8fcZdTe
	UHYSHqkGdA5hBUWJ6k7oAzyPBmzR2ZivZh2K0XLqiDzQLY5T5ZN9JbAR
X-Gm-Gg: ATEYQzwKnf3e/l0siaP98jMFOobn449MnJDWXCwYVnaK2zwChiVEClXgnAMZyHoFnLR
	Uu5RfrzKhc9koMAItJrQ1K/LfWq9YlPvDViPixUHinZAEG51DL+FIZR1ecwevFn9M/e/rI4bU1J
	bdrcMKeUolz+r0yG2cQEH+nE8UEZEy717Sj8UVxMeCg5F1qBhAUkJZSRNSubOkAMT5liMmnn3Kh
	fuQP2NwMVz0wpOJDx7QCmQ7/JlyzUDA1niP6pjdBKoRxOj1oVyQlPF1OziMNdGC4hjMjubLGtQ9
	XG5z7/S/q6zhdAosZaBUWPOyaLIWJ49H7h7ySTwHtzQOy4M3F3Kl1z4dUj3/kQi0qVKdl8v9tXV
	7Ntj/1rLMWVrcROar/R7SgmuLaiGrU5IVoupUOTthNZBF8h1Wf8ZlenY2af4M9Mnh6zGU1YN521
	DkrNWmKA4M9Fi/xsvLyvZ/8zBIHH/2Dzw=
X-Received: by 2002:a17:90b:2e52:b0:359:f5f4:7740 with SMTP id 98e67ed59e1d1-35a02830179mr1816790a91.17.1773230112844;
        Wed, 11 Mar 2026 04:55:12 -0700 (PDT)
Received: from rockpi-5b ([45.112.0.200])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359f01004f7sm5731790a91.0.2026.03.11.04.55.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:55:12 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v1] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588 on Rock 5b-5bp-5t series
Date: Wed, 11 Mar 2026 17:24:30 +0530
Message-ID: <20260311115502.7353-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_045514_336669_C75444F2 
X-CRM114-Status: GOOD (  12.05  )
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

Add supports-clkreq and the corresponding pinmux configurations for PCIe
ASPM L1 substates on the Rock 5B, 5B+, and 5T.
The supports-clkreq flag informs the PCIe controller that the hardware
routing for the CLKREQ# sideband signal is present. This enables support
for PCIe ASPM (Active State Power Management) L1 substates, allowing for
better power efficiency.

Cc: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index b3e76ad2d869..668b19c05f7e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -468,7 +468,8 @@ map1 {
 
 &pcie2x1l0 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_0_rst>;
+	pinctrl-0 = <&pcie2_0_rst>, <&pcie30x1m1_0_clkreqn>;
+	supports-clkreq;
 	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
 	status = "okay";
@@ -476,7 +477,8 @@ &pcie2x1l0 {
 
 &pcie2x1l2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_2_rst>;
+	pinctrl-0 = <&pcie2_2_rst>, <&pcie20x1m0_clkreqn>;
+	supports-clkreq;
 	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
 	status = "okay";
@@ -488,7 +490,8 @@ &pcie30phy {
 
 &pcie3x4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_rst>;
+	pinctrl-0 = <&pcie3_rst>, <&pcie30x4m1_clkreqn>;
+	supports-clkreq;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";

base-commit: b29fb8829bff243512bb8c8908fd39406f9fd4c3
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
