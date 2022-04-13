Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E0FCC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Su6UFIQzrg/R1NKrySOe93OqGtwd+Dv68L69mXvgMD4=; b=0puaGqyeRIj7UO
	6sBJjdJMKlDKlsf2odBIipubK2J50otlK2nYgYRRg8Jgl/lzWl4TyLFS6GyE7ZflS2XDTWGoL6KqP
	OXrP0Q+zsO7YsH5ay577qIRb5+Fv2jpE9OgxeAIkSguDGHWEd04ZzGJw1xsxV1+g/lpKuCASCmqwi
	F9/w10dbI7ApRSG78V8Nfd1C1MFkEW/Io83AksNDMWykBovtHcxk/4GpN2wgrQijcJTXw3D80Ei6A
	boVxKVEIMbY56PR7hGwYbbz0W7eptUDs4MOyiHcxbn+JRFil8G2SSf/UAUof/W/GGAD5ENAzni4Cu
	K0TzFMqZreZcEeEFQvqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiL8-002IAe-NX; Wed, 13 Apr 2022 19:07:42 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiKq-002Hyk-HJ
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:27 +0000
Received: by mail-wm1-x32d.google.com with SMTP id
 u17-20020a05600c211100b0038eaf4cdaaeso4612975wml.1
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VTPr3m/S0BGE4rHVT3R7JCsuYjNSptwx0algC29rCig=;
 b=v2uVvXJycyac1gbVQqLZdI38/uzuJ9skXiIPXFhlCSewK0xqrdfLrcxw27X/1Godto
 VJRqxXICMmllGYPYdUT4Ls8FC3yDY3Q+BsATnr+z5ctjntqs5nrBKMn+vbeXxZ7PJuYT
 LEIYlEEtgLUYu9lYAOi9QM72ZpLp/4pEmyLatoqx0OBNnVevZ7xZnJuN8BWsqi9r5ZTX
 WloZN66tmFyLL6BCiLEjc1rvsEfSwccX6uAqKxwTEifg4gG8646xo452RKibBcpm2JAR
 nG3QjI/4HfAAb/dZKAopgcKaUttAR/72hDeIcMBJJgkRqsr0qU27UN+AFoylzL8pu3FM
 NfwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VTPr3m/S0BGE4rHVT3R7JCsuYjNSptwx0algC29rCig=;
 b=K/Yh09GQnLne0Lh2EvPQ6048Ox7hea4VKDpnJFQB7FN+xWGRGqx0Dpe739QUfs06m0
 /8qkeLT5212NxM6RYpC9q7bjkrpWTdgpGpdrmlX1uqvBRwEuq1oaAR/UxpqYIt2oafAN
 Yl+F4HypeRT1WcXMUeH/NB0tHxMD+hktIlSbMQ2ZM/uhdlSMNL1Xi6pk0C+Z1Maqat/B
 C7/AM5Y/Re1plRjIpHaNjoanAI4qN5tmoJogk/EWZnVYMoEBMDv+4F/rin17q+Llqwpo
 X/7QA1UpwClzs+PU9Sz5Ddi0itj70tMAyN7X130Mjq6myQhLXr4cvHa8sHPL9b5T2xta
 SzYA==
X-Gm-Message-State: AOAM5311fIz1zMQd8udV7HlalPnX7qk457cDFNiOZAQzuSHlOfa653jr
 DN3D65dh/5bhEt8vyukvP4WPbQ==
X-Google-Smtp-Source: ABdhPJy3Zm0d9WLFXlxY8wjdG5QcmyfAeFG5RnJbTiNY5DAeOozBTazEP8+Gnbptt0o1bwwfdklLKg==
X-Received: by 2002:a1c:2744:0:b0:382:a9b7:1c8a with SMTP id
 n65-20020a1c2744000000b00382a9b71c8amr127289wmn.187.1649876841577; 
 Wed, 13 Apr 2022 12:07:21 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:20 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 00/33] crypto: rockchip: permit to pass self-tests
Date: Wed, 13 Apr 2022 19:06:40 +0000
Message-Id: <20220413190713.1427956-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120724_832739_4A753AB5 
X-CRM114-Status: GOOD (  13.85  )
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

Since I didnt own rk3399 hardware, I worked on an emulated one until I
grab some co-worker rk3399 board.
People wanting to test this serie without the hardware can try my qemu branch at
https://github.com/montjoie/qemu/tree/rkcrypto

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
