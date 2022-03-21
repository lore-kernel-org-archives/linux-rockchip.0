Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC111C43219
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=11YVTzogi/7Zv62sz5rNUJXGfUOZgqqNgNY1FuxBBiA=; b=yoB/o7dzqUaN3p
	Jdk2qXTy6c5sES8Lf2l0PV9O2PS48u4JdeswHsmI03h2iClWLXc0ZQrtVAF83OXTcQG63XENIUFIt
	RtgqzlucSkoD7qcbUhYZ5r611BZctEQxyhdVG8qGFClFRcXxFX04tTTp/BZan6v4ZPSpYrqxv7014
	pBJ1bHYBsmo2YSJAQ+3PR/9/g0+Sn5xJl0Uc2S4raz5LNuZ3ytapwFvRDJhNuLj2DX4Fv9gUZUbcK
	o19eavUIxSD4tI0656+iDa5iRn76nM05oWOAKYLIWkFMkbEY1yWjumpGaohyiQH6tFlSmGtJl72K3
	d356/BBNuT3M/x6EzpSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWOK9-008tiL-S3; Mon, 21 Mar 2022 20:08:17 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOJj-008tPZ-K8
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:07:53 +0000
Received: by mail-wm1-x329.google.com with SMTP id n35so7613340wms.5
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hpGd4BgFciLAC/AOKn8WnKSRlZJshCJsO8rO8N9T8Mg=;
 b=V7cv1Gp5aYUibydiPpyC1iMAPbfElb1ADdcdh2NllNmvAz5EkPjMAvKfhwkfbY1IAd
 OXbsHhDDuxNxPSB2aUioeFasHP5Wzsq9zehd1ydDT/K7KZFV7rbFVPOneG4k8Qz3JWfp
 dVaY4fquxKPKPWmNOS1S4d/1SjqX66IvzwHmTJF+xGEJNEKU/c0o6Vh5X0dxBa/UD7MI
 u5g9nUMIo1/XMBeU293pMbxYl9aRpHQ5iysFjutGUsI6ivPRv5ELA3IWx6F177v4iGye
 cC5C6BnkB1YpuYYbuaIHZJ0VJ6lU8zP+4KoQe2RG1J+ryBwrum+OKcot28iki2N9IFlw
 Rfaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hpGd4BgFciLAC/AOKn8WnKSRlZJshCJsO8rO8N9T8Mg=;
 b=yXEDeG3PZJDbS60+h75TvRmXYeIR6JpzfeFDFhHiVMfXd9bJ1nNpF7jjrO6z3GsUla
 de5+J5WjaizBrcLxU7c5Z51OaRApEFAJqmSnM2f8f5WzqA3Zd2EjtHzzi5vvqjrKIXuW
 j745AsZqa1KBvxaN050Apjxj460UMEcM/zsrSXKI67uZ7g0u6fs3ztvq6j/g4HOVHQpd
 p1uRInjucznlIBRhdOTtEMH1NOPeNhHtN1FnlXRLumG851r8gNgdOhnt4z5NPfgtCEpB
 NEmtwC7gMXI5IV1kFkVGpmWM5OYo4jmshhoZuwyneZnk3fA6q3TcFaAo0sgD0LFYZ6Xe
 Yokg==
X-Gm-Message-State: AOAM532Rt3cH4BRQaV7ZVGzhecdcgcd+rcKszIikODfQU+9wrUgthRhE
 4aUVtYtUCHxjvkQBquwsovBGlQ==
X-Google-Smtp-Source: ABdhPJwZTaaNTA/qSdU39RAezvG8FUGCtvMy8rvdvR8ZMrlNQk+E0JLW8u50BBVObfgDdD/uXVdHNA==
X-Received: by 2002:a05:600c:3c9d:b0:37f:a5c3:fccf with SMTP id
 bg29-20020a05600c3c9d00b0037fa5c3fccfmr669083wmb.13.1647893268904; 
 Mon, 21 Mar 2022 13:07:48 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.07.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:07:48 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 00/26] crypto: rockchip: permit to pass self-tests
Date: Mon, 21 Mar 2022 20:07:13 +0000
Message-Id: <20220321200739.3572792-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_130751_733856_C20AD713 
X-CRM114-Status: GOOD (  13.11  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hello

The rockchip crypto driver is broken and do not pass self-tests.
This serie's goal is to permit to become usable and pass self-tests.

This whole serie is tested on a rk3328-rock64, rk3288-miqi with selftests (with
CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y)
The serie is also tested on a rk3399 by Hugh Cole-Baker <sigmaris@gmail.com>

Regards

Changes since v1:
- select CRYPTO_ENGINE
- forgot to free fallbacks TFMs
- fixed kernel test robots warning
- add the PM patch

Changes since v2:
- Added DMA clock back to 3288 since it dont work without it
- fallback needed to select CBC and ECB configs
- Added support for rk3399
- Added more patch (style, read_poll_timeout)

Corentin Labbe (26):
  crypto: rockchip: use dev_err for error message about interrupt
  crypto: rockchip: do not use uninit variable
  crypto: rockchip: do not do custom power management
  crypto: rockchip: fix privete/private typo
  crypto: rockchip: do not store mode globally
  crypto: rockchip: add fallback for cipher
  crypto: rockchip: add fallback for ahash
  crypto: rockchip: better handle cipher key
  crypto: rockchip: remove non-aligned handling
  crypto: rockchip: rework by using crypto_engine
  crypto: rockchip: rewrite type
  crypto: rockchip: add debugfs
  crypto: rockchip: introduce PM
  crypto: rockchip: handle reset also in PM
  crypto: rockchip: use clk_bulk to simplify clock management
  crypto: rockchip: add support for r3399
  clk: rk3399: use proper crypto0 name
  arm64: dts: rockchip: rk3399: add crypto node
  arm64: dts: rockchip: add rk3328 crypto node
  ARM: dts: rk3288: crypto does not need reset-names anymore
  dt-bindings: crypto: convert rockchip-crypto to yaml
  crypto: rockchip: add support for rk3328
  crypto: rockchip: Check for maximum frequency of clocks
  crypto: rockchip: add myself as maintainer
  crypto: rockchip: fix style issue
  crypto: rockchip: use read_poll_timeout

 .../bindings/clock/qcom,gcc-other.yaml        |   2 +-
 .../crypto/rockchip,rk3288-crypto.yaml        |  84 +++
 .../bindings/crypto/rockchip-crypto.txt       |  28 -
 MAINTAINERS                                   |   7 +
 arch/arm/boot/dts/rk3288.dtsi                 |   1 -
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |  10 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  12 +
 drivers/crypto/Kconfig                        |  15 +
 drivers/crypto/rockchip/rk3288_crypto.c       | 498 ++++++++----------
 drivers/crypto/rockchip/rk3288_crypto.h       | 109 ++--
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 274 ++++++----
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 480 ++++++++++-------
 include/dt-bindings/clock/rk3399-cru.h        |   6 +-
 13 files changed, 880 insertions(+), 646 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
