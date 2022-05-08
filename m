Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AADB2C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 19:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wYbTXo9u45oFgUodNiaBSGXDslkrlUEclaztx2D8Ym8=; b=ZgWNfB/JQ/QbUX
	FZkDgDm4ipV4e72tKSWAfr5f5eKY4nuELB2NgA7taXzhj/aWtxQlHWHUg8ZTYRziSbe4rUULcX0by
	7L+p0uFbRiisg4avfTky9Wi9640zvlbfRYA/te4bRIOUsbUv7ARJfyJQGb8afTc2XfDPYksdlJO6p
	UVDtUbcWmXoC28UywWt1joSxlchle9fKd07NlNUCJF5GiikLJ/e6zlZolVzZ6tWZjSoJfSLQkJA2q
	Xubfltu152sMAglTZ+FxvzRAmzQpWXq1ohXHao02KcKdFi3PlOjy6QLQbLRbUBENWzhLSblx9n+ri
	FVwPHBGTYKxEnPypbScg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnmGS-00B1er-C2; Sun, 08 May 2022 19:08:20 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8V-00AyV7-Az
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:12 +0000
Received: by mail-wr1-x431.google.com with SMTP id b19so16696058wrh.11
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X/sW1pWKIETJtSpo6YwR4NdYs3uuk+ax6n9zXJ8xEqU=;
 b=SBqK5wywu38XhrWI1x7Z1/9bOniRubwQ6wmghBBhSuds4Jmp/qw0bQ0rzimham3ZvO
 vBjiaqZxapsKt3CAg51OBzGg76nFuyi8ZaDt3X0QaMoO2kBZdHCFqe4ubehvYvAlyq0T
 sfn+QAV9ubP9GR2HiwNs+QlJG7lTaUbzg7d6kZGu5/dKQd3d8UUo86ybMuAwrtn4HgUD
 sd/6mPE0UthIOo8YbHWhq1juOW3xSS8GjyKQ0G4qitG529E98wxKawVs2vonLez9xtuS
 5mIN9+EFIgXnzeZ8SBLFh8K4/+vMi46Yyqb6RTkqehZIRvOSKOx6t0oiWsy3QvOa+6n3
 X5Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X/sW1pWKIETJtSpo6YwR4NdYs3uuk+ax6n9zXJ8xEqU=;
 b=wuwggNdQ88ApQrrmvoeKs33g/HsF6aPme4EpQou5P8i0j2/wAHVBpRLtJCklKakTXr
 Tv1B7OldXPa36bDjmRAOzAF/Apc81fWOA28cE+ou+lCV+4Bg/CaXcyuZOAbhcYFngkDM
 V52WqXovWWCliOe4BAtH9ouV5wU0I9mQKTg8FC61L2Hw6zuWiINcdM+SQzTcuZux0BmK
 pD7aVQ7FY8747Vj9vrKyflQFQHEIxDfnUqPyZj/b6fOSvK+QNESePua4OnWrIirOLgHE
 3iQTmZO8PgiquFY1FZMHRpLVr9kbFmiKrRXPHN1wZ7HIyR+vKZlCAIuPh89k19DkZND9
 oddw==
X-Gm-Message-State: AOAM533kSsMcw697khuYtiu9o1yEnhHmRTpP3KBWGqg5jc9RnFxBDVji
 HwaCL7x88vdrCgzgQYKBdMsa4A==
X-Google-Smtp-Source: ABdhPJzigEBG8ihQ0H16OG8qMvxN0N+hJPgY6XFq/41gsWzMF1ml5jeXVXDZsKR3xtgFrWfEc5ge8Q==
X-Received: by 2002:a5d:47a4:0:b0:20c:788b:92fa with SMTP id
 4-20020a5d47a4000000b0020c788b92famr11039280wrb.383.1652036403824; 
 Sun, 08 May 2022 12:00:03 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:03 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 00/33] crypto: rockchip: permit to pass self-tests
Date: Sun,  8 May 2022 18:59:24 +0000
Message-Id: <20220508185957.3629088-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_120007_590729_FBB715B3 
X-CRM114-Status: GOOD (  14.35  )
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

Change since v6:
- remove quotes around const values in dt-bindings

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
