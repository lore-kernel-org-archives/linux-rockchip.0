Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94694F013C4
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 07:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8NFz+v6mNyXSPnv4IVa4DdGr2MKA76PfulIqN1PfRBI=; b=XRNw3tNMZ24nsn
	luTpfOFjnqwx1jlov1BL+iZSETSanV0cUQnYFCtiKTrlUcmy4MdKkdrhDiy7PtHNO0peDaul6fDJ0
	O13AJVCexUjAry0BgIuUM7zm7sZ5RmU/nqlBgpuGwLt8WAPU7zUvJdGH1zV00w4cTy8Fik14GCAKb
	9JwsnhymrYpeiSOpDnZ+Q5k6gC2W9AiNMV+ekNHZ5W6drzy1i/N+Qqz1Iipnrk/N+xmb5G3uNSS6K
	MlWUol4U0ljh/Va0GFgr2a8Xv2meaku7iMtMnISpnfHQYoZ79RhSpPOHjF0PQRh9kI1m4DlqkR3VA
	SaaFRTvOCsHRsZB/az8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w22VD-00000003UXN-3uRd;
	Mon, 16 Mar 2026 07:36:39 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w22V7-00000003UVt-2aWT
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Mar 2026 07:36:35 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-8296d553142so1833688b3a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Mar 2026 00:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773646592; x=1774251392; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uQQeZONwKwCdPNSwQyhXsapOBL2pKbGdyOesouYcZjk=;
        b=R2NpH97i6EeEdmM40mgjfNmQ+TLDKNv5YO8AoLMQkJh6JrFiqkH4pVyrfqBAxBHRzr
         yfr7YNhZcX5DMf+ilM52ufsWnJ0Fup+jKKRhIP+Jg1WlXH5eA8dEY1zrP6E99bZvalY6
         jhQ0CgXcQARKfOyeAfYnwE+NrhJqXPoS1dF2cJ2AS24/B8k8ztfMHKjBwEI+op2g+phQ
         9ENltTPQ7BtLdPAanebcDyWNSbRR1lf1H6NxV6VUG1Gis00UJ8jsFsOkGPNmYsjpuJO3
         ExznVWVhcZeowQrO/mGx4vs1jCbRPOa5QCZLcargfYfEUq6fRHL0TSgr1aQ7pJPR3Wrl
         lANg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773646592; x=1774251392;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uQQeZONwKwCdPNSwQyhXsapOBL2pKbGdyOesouYcZjk=;
        b=CrNQ2IyYRgsu139hHXXl2bIZZL50rlCWY748UjR4tSqMRnjvEaP9q6lato+FfMKio+
         ALTPhMsBFhHFh70gkoloXXNykyr2t114lO4owi5KEAAjQIh9KY3LKyRUjX1tOtQtVtj0
         yYgc4bhcZftUCaGhI8oDj5dTq6HTbq5WWOERws5kgttOwHquH6EPdQ5R9JsYueAOMRNM
         Ym8w8fYqSw0d6BwMYYK8/6J7bUKrhq3/XOZrpXEfe3b63wlfruwIU8YoaVr0OEpJC6fz
         HIoQTIfqZveNId0YTOZwYFmnUpvyx1P1aFzOeGWQ9iAA9GIKFQeEkGenSExC2yaNlEF7
         p/mw==
X-Forwarded-Encrypted: i=1; AJvYcCW+FTgwyynii7nyfWyjhw9HHqkjUYQMnXlGmAzABCrMW1e8aSl44kuvZVmiaUcXqM/A78Uea+Ns+Qnsn0rYFQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxOkwAzRsaYo2xV+gPrsissulb/DswF8qcM9z9rAYv6Ndhp2/ic
	ml80cmuHX7Q4gGcA93iBcrcX4+o/j6w5rfHzC+zdj9mP9iItbALU2N1w
X-Gm-Gg: ATEYQzwXseJSOedOpaPE+AxZxhFA3KbSjRb6K4w3aFELrB9lMUlAr5S2msxTkX64KdK
	5Nm/+FYwq4upjeaqoxpBut+G9ebt3I94AqiYL44iZBMW/TzgAyGRhQpDXL/lX3+KEL5d4mh7pXw
	4Z/XBvuCZT/KEPdaxGNbV7Uz0BtuGCFUho9Ts5rNaSi9GOk6JfL5WMMc9yOFLB5uxda2gvl/Fp2
	pe/fxTNYi3TIOePwH4gnbPpSxHTJ/NgaHqTCZkDPGYMiaRPa4s4+OdmY9HVp4f/ajaC20V4hp68
	L/2NtJjg6YWepEG6mLx+ryghXpe8owawPzYb9D/Qds3ndA1D74S34eMMsCuARwKRTuqRQfqiPEI
	XtIFt7wBNPBRiyOtlEHBIfKD9eBrIqSSCP9nGvGEhpfEXNzJvEtaLut6BVwoqoXCRPRht+x83Zg
	vkD87ID/07tKX+RC0MvYC1
X-Received: by 2002:a05:6a00:301c:b0:821:8ea4:480e with SMTP id d2e1a72fcca58-82a197046d3mr9943668b3a.10.1773646592298;
        Mon, 16 Mar 2026 00:36:32 -0700 (PDT)
Received: from rockpi-5b ([45.112.0.200])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07244071sm12933375b3a.6.2026.03.16.00.36.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 00:36:31 -0700 (PDT)
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
Subject: [PATCH v2] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588 on Rock 5b-5bp-5t series
Date: Mon, 16 Mar 2026 13:03:55 +0530
Message-ID: <20260316073621.39027-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_003633_653107_48F98C63 
X-CRM114-Status: GOOD (  11.73  )
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
ASPM L1 substates on the Rock 5B, 5B+ and 5T.
The supports-clkreq flag informs the PCIe controller that the hardware
routing for the CLKREQ# sideband signal is present. This enables support
for PCIe ASPM (Active State Power Management) L1 substates, allowing for
better power efficiency.

Cc: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Rock5b schematics.
[1]  https://dl.radxa.com/rock5/5b+/docs/hw/radxa_rock5bp_v1.2_schematic.pdf
v2: drop the clkreq pinctrl for pcie3x4 as suggeested by Shwan Lin.
[2] https://lore.kernel.org/all/20260311115502.7353-1-linux.amoon@gmail.com/
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index b3e76ad2d8694..bf4a1d2e55ca3 100644
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

base-commit: f338e77383789c0cae23ca3d48adcc5e9e137e3c
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
