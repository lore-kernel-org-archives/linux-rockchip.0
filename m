Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FE4FC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZOs2AMR5R2/5QDtVbjfuCxcsE7XOEVzUQC6mmRo6FyM=; b=dteXpuGJRz3OiC
	gyENPARZU8TdkqeVR+guqKtoklTyrKFLTiJEucnH3qg39Vquk5V56TXUVyZJT4UD8xIE3MMZusL3w
	KwF+kS+38cUknZsWOOhDEu6jO+nv1sUFbYWYh5NpuZ0aO0yxHAiz1L/q/Xq9ZStnEoPaA0dm7UDZA
	IkomZ2ZzM7C3HQXHsVAgTscV1Plsrah0TrX2ptsjBk9JTgLzMtvqF+oCLWMoBT87wqp0K1aqJ2NyE
	UizfhkZPo2gnr5+hz4s4sGYQYKWhCchsJbNpQKtku9SxqYh0/VG5fDr5AhJBUrfmj3fcv4ukW2a2y
	Sw22n8YjRvG8Rb7sCLHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5DE-00BAx5-2T; Mon, 25 Apr 2022 20:21:36 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5D9-00BAuC-2s
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:34 +0000
Received: by mail-wr1-x432.google.com with SMTP id j15so9232812wrb.2
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lU2nPSO01GN0FeTvD3HiDD3h0WNH4E2AZm06NIYGC7k=;
 b=J7AxwRcGuTBOrHew5DDf1e9dU/VYNEKgzmmekDixX2xJTcDM582K0xMUanho99+Nx/
 61vh2M5bwv/ytseHmxARNJhckkNa1M6Y6GgeLZa03WFRLkeradKVwao9Cu87xJKRW3D5
 BernGLjmi0xO4ZSf2nw9yPvl8RvxrIWg8y23nJhw7MXStMdjc88D++BtpXML6HSTzMoY
 p9Z37VnZqzpT4ulYGnJXZfr3lF6W76kQXW78MJn40lTd/NKeEaIl0Z/Y563miiw75ie0
 5dpQJ/Y+xj7djw37dYRGelJeum6YgwA9k3CvIE2/ewm0BtyP1dujsEfpLuCww++rm/0/
 Pelw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lU2nPSO01GN0FeTvD3HiDD3h0WNH4E2AZm06NIYGC7k=;
 b=Rsw7Tmq/9Z59k0iYt84L2ZjkKEhfFJRrq9M+xj2MH7IdJATRpf8CuvSwd4bFuHs69A
 yfbIwzVNAGvGXe2FwVuM5oBlAIh+W/YIy7X2wZqh8m9ypRiHiGFD8IE3iu4RBOvYyA4E
 Gl94cOUS2IUljPESEYwMo2/iaW88WamEjmo7L/SJZCTNQ4yfL12079SpscpzbduIxdeo
 uEoLu8zRL0q79HfQAAnkmM+/kf6axt67Iockq3Q1iun6X8kvBKEuqzomH4TUo+vXYuTI
 IoZ7INr/MrjUCjq3gL2wrzdEtUfRNN9Ln3WH9Y6f947iCuEDiKhAVd4fGlwXej6ATHxb
 Vz9w==
X-Gm-Message-State: AOAM531aT39OwTOLB/Ji+afUAmr3qzd/i5ZyaEY7DeKd7xZP48uQl72/
 tv95Y7Ysjf0BiZfEWzJlMvLJsQ==
X-Google-Smtp-Source: ABdhPJz4zUy8sp3it4PNkWKTBVnSqGu5B3bt9cDuZuomyTZcbd5JVLsYzhvZsT6L4rIEP1L1cUYo7w==
X-Received: by 2002:a5d:42c8:0:b0:20a:d91f:87b5 with SMTP id
 t8-20020a5d42c8000000b0020ad91f87b5mr6849369wrr.301.1650918087766; 
 Mon, 25 Apr 2022 13:21:27 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:27 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 00/33] crypto: rockchip: permit to pass self-tests
Date: Mon, 25 Apr 2022 20:20:46 +0000
Message-Id: <20220425202119.3566743-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132131_389769_5660054F 
X-CRM114-Status: GOOD (  14.58  )
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

This whole serie is tested on a rk3328-rock64, rk3288-miqi and
rk3399-khadas-edge-v with selftests (with CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y)

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

Changes since v3:
- full rewrite of support for RK3399
- splited dt-binding patch in two

Changes since v4:
- Another full rewrite of support for RK3399
- Fixed dt-binding from Krzysztof Kozlowski's comments
- Use readl_poll_timeout() instead of read_poll_timeout()
- Rewrite the fallback SG tests

Changes since v5:
- fixed errors in DT binding patch

Corentin Labbe (33):
  crypto: rockchip: use dev_err for error message about interrupt
  crypto: rockchip: do not use uninitialized variable
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
  crypto: rockchip: add myself as maintainer
  crypto: rockchip: use read_poll_timeout
  crypto: rockchip: fix style issue
  crypto: rockchip: add support for rk3328
  crypto: rockchip: rename ablk functions to cipher
  crypto: rockchip: rework rk_handle_req function
  crypto: rockchip: use a rk_crypto_info variable instead of lot of
    indirection
  crypto: rockchip: use the rk_crypto_info given as parameter
  dt-bindings: crypto: convert rockchip-crypto to YAML
  dt-bindings: crypto: rockchip: convert to new driver bindings
  clk: rk3399: use proper crypto0 name
  arm64: dts: rockchip: add rk3328 crypto node
  arm64: dts: rockchip: rk3399: add crypto node
  crypto: rockchip: store crypto_info in request context
  crypto: rockchip: Check for clocks numbers and their frequencies
  crypto: rockchip: rk_ahash_reg_init use crypto_info from parameter
  crypto: rockchip: permit to have more than one reset
  crypto: rockchip: Add support for RK3399

 .../crypto/rockchip,rk3288-crypto.yaml        | 133 +++++
 .../bindings/crypto/rockchip-crypto.txt       |  28 -
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |  11 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  20 +
 drivers/crypto/Kconfig                        |  15 +
 drivers/crypto/rockchip/rk3288_crypto.c       | 511 ++++++++--------
 drivers/crypto/rockchip/rk3288_crypto.h       | 107 ++--
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 267 +++++----
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 543 ++++++++++--------
 include/dt-bindings/clock/rk3399-cru.h        |   6 +-
 11 files changed, 953 insertions(+), 695 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
