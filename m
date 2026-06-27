Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0894EC43458
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jun 2026 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=991/IrzQWyyosIWjkNAY9ERcd+r3OgcUvw2cTzItSEg=; b=p5ISTOmWWrsIGW
	of/Yzoz0s+JsaZo5aHmd4/e0JW/KQCAdudOevwKAhWJfFKEdmdbbI4d/z4LGAi3F+AWYadn6LCsUD
	vbd7pjw1wlwxzFMG2QOLsbQy1rzXJNDe16kP4MrjO6Am/95CbrmXnFeX9rVgZdc53h4+pzPUxB3vd
	IHRg06/GpA4g5KHIBT/sN5uDE+ICb6GU1Jo4zbPiRWd5r0VdR7Vnz0gMZVta/nnLzVFCNFiwS4Ckj
	ns6eIZsMiV/PLvJHtH+9jUoGIw/pMykG9tHqY5/LW9EtP/MC475CNICTecgpBIpYmDgKd5c6aCqwm
	62pdcAVT4IMNcN3bYrNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdQFL-0000000CNJj-10o4;
	Sat, 27 Jun 2026 10:26:47 +0000
Received: from mail-dl1-x122f.google.com ([2607:f8b0:4864:20::122f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdQFI-0000000CNIx-2Hms
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Jun 2026 10:26:45 +0000
Received: by mail-dl1-x122f.google.com with SMTP id a92af1059eb24-13810b63a1aso4248845c88.1
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Jun 2026 03:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782556003; x=1783160803; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5qbxHK7uecwWqgUe87GQwNpPlZehyz7YstoE6aMIzcA=;
        b=iwF+bgCrpX0Fd/W+q/rOU/I9xkGTLUvrdlQM+OGVRMy90FLAzmIMxNZ/4c9pBpdEJw
         x8A4RvnzAwtdb4cwBw9nrf6e75F01Kdp4Tjq7hYBZoofz0lwU4xK+b9yivzyiEdgZ7qu
         rVFZdLe4djkYoaWSPPpSIpZclV2K0PKchObxbiouoyn6DhwU1SSG7Xc/+5oNnBHgseHe
         sjs+Lp0+2WI9wLMvwFzJ1/w4ctqMeDW20hrE7jPjM+cLBRsXXFoK9aBGwOh6w7d0dkV1
         TFyHPpwfRNIGyLkY/rU4JXXfyHiUVtLY5pIEVSguHbd0wr5iicAgowXqbO8QlGj0BSyj
         FK6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782556003; x=1783160803;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5qbxHK7uecwWqgUe87GQwNpPlZehyz7YstoE6aMIzcA=;
        b=FnvGurJKuMp+FPRP2Q7l6g5QgEjMyWODRe1tSlnuXq32rjAWqcZ2EKLuDYHggdtGPI
         vB9f0JZv27D17jF1+pLFJg/7rnn/+MzHDgRSmydPieCJpC9OOBB9EL4njugJkTXSFenD
         Z/KTlimKBl2DP87YyXRZEf+RynGddcFqnXgCD5BhVKtV7mW+3G3ljICFUHSukQWX8eAW
         puo1cb60FDsun6PZmq3THxqNK0l8915FglHuuNC866XJZzEiYAdLinnHieojp5/oC9Tz
         CigreWxb8V+/vfWNvRHKtJRruLaKnw5GwUCScwS/M+iq2gxvdOuHia8G5tPF412CmrEI
         2r4Q==
X-Gm-Message-State: AOJu0Yx/OZMEQtYjsln0p/PWF5mTqjWKGwMCvC2Ju4NMJ8/ylQDWIXMA
	yAC4b9Ror6HCpl1D20qQVansI8IkkQN4MH555TyxH5YrL9sLPZ0a2ic2rDsV1Kd2
X-Gm-Gg: AfdE7clH8d/fMrHgW01Hqw6URCQcCaXwR//2+FkDPsfwduNT398LJ4wVyWYaEdcNBo+
	Iih82UY2K7bwn5iUNLJnHZtb5uy15nGEcUAi5CjD43DhhTJG+iu9XCr/ST0U5kmAmddRN2wy+7H
	KW7SfvLvxOkggUJ/OxiX34+O9B2fwDQyd1tgPTkxOmrnfr3SVNP9uaXD6tR1mraaOByN2l/YmPH
	E/Y2jiocYWIzkvUKH30ItHJ/7HJaJJw/ZCj383ANVf2lnOBqOdA/zcNd/5M0iL7yUMBYdCG6dTd
	h8fNoelwlILiWQsthbFFd8dZ1FJRaQEy7/Kq6QbYrdAZtyo2EWa7cBQdLhQDMiRR8BTGQp5SjR1
	aFp/4kdwnayukfVtA1+oQ6XVyoHb5FJrFA4DuNp3T136uSW1RUMMgHjx2ks+c5S9ajrmU6hzcv2
	U/As5yO/+Xt3gc78njYyY=
X-Received: by 2002:a05:701b:2415:b0:137:9ee5:2087 with SMTP id a92af1059eb24-139eb3fc149mr2286022c88.31.1782556003366;
        Sat, 27 Jun 2026 03:26:43 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-139d912197bsm43776437c88.15.2026.06.27.03.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 03:26:42 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Add Vicharak Vaaman2 board support
Date: Sat, 27 Jun 2026 15:56:31 +0530
Message-ID: <20260627102633.86222-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_032644_623404_94DA0C6C 
X-CRM114-Status: GOOD (  11.01  )
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

This patch series adds device tree support for the Vicharak Vaaman2,
a single-board computer based on the Rockchip RK3588 SoC.

The Vaaman2 board features include:
- RK3588 SoC
- eMMC storage and microSD support
- RK806 PMIC and multiple RK8602/RK8603 regulators
- Real-time clock and status LED
- UART serial console and SARADC

Note: This series was generated on top of the pending Vicharak Axon
board support patches (v7) and includes the Axon entry in the context
of the YAML binding patch.

Changes in v2:
- Fixed rk806 PMIC pinctrl node names to comply with dtbs_check ('-pins' suffix).
- Removed I2S audio nodes which were unneeded for minimal boot.
- Cleaned up indentation throughout the DTS.

Patch 1 adds the binding documentation for the Vaaman2 board.
Patch 2 adds the actual device tree file and Makefile entry.

Hrushiraj Gandhi (2):
  dt-bindings: arm: rockchip: Add Vicharak Vaaman2
  arm64: dts: rockchip: Add Vicharak Vaaman2 board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588-vicharak-vaaman2.dts  | 547 ++++++++++++++++++
 3 files changed, 553 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-vicharak-vaaman2.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
