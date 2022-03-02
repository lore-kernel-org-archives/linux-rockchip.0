Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3845EC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 21:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Xesfwx0vOfS7JXkLiLAMClS1OwWa0/NEV6/jHmkAyk=; b=UMKoMJZ7cJWKkx
	aCOJWYxA32AqbgLK4b9NMi3ZMp0mlw7jN7Z8+bywcA7VW9PJ6UH2vADPOwCtBySSWzz04F7cznph4
	sNtfHp5/DxPwPdYRoWU8kJJtiaqqCXVGAIHOmD1P/vyauTTLK53ZNwdYeRYbFXYVeNZ8CZdvL+6W2
	liwp/LG1wUnGI/LqUKN5uI0/AAOh+dyCKh2ZeiKElAkIOu2vtWUlOmNV8Jk4mSCOWl3d/au5HfgTq
	j0QWrW5rXCVvUaUXhecBx9HBnm4qVmEE5PobwS0uEBtjTAsjXzk0zTQ9QEY307BMqozygVnt1QKOB
	flfk2iXIFTRKkWykhFUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPWJw-004E70-6g; Wed, 02 Mar 2022 21:15:40 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWFn-004BcZ-7o
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 21:11:26 +0000
Received: by mail-wm1-x32c.google.com with SMTP id y5so2003467wmi.0
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 13:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E4ln3wZSFy5ygWivBAZ51NJDAFnU2GvQHlM0R2GzsJk=;
 b=bJIL0p9pOk2OYxkv4MgssHYy583tVP3qI9kh5i+J6fdhzIZaUQ6qV4dRNmXg2nOoAV
 xGSU6184/6Papd9QxDjUVh2EMscFRMunogHDJshyMBup66uO0h5hs7IC5zmLDZhfDRVz
 u6jvoIYBvzLyRZ9Pd89jakr/6bSunhJdg+6Msfz/2kbIOIjmQ3281yto6xsdt/h1k1w5
 zvwxgHvW3BzdVIi2abn69Ple0W+TStSeOSdyRVYxOjxZvmlT0YVbGPsLq0tH98fmrEmY
 gwKLmyNEPJVwBI+CR/4UeH9aFBn09hn35MDX8HI3/mPBpEW+jJD+dry/n78x1rZ+YD+v
 9eGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E4ln3wZSFy5ygWivBAZ51NJDAFnU2GvQHlM0R2GzsJk=;
 b=TOQ0UN8lIrSdveB6uPHS638Nr7CLlhlS50KLJaOTL+Qm4CLKpZT54MQRJE7KL2Nrai
 O2Mdzx2/cXwso/TwtgXx/PEt6GzobuXm6KH6wpDRvwLQ/aEoTIR8duVUMUVoGv0VtGR8
 re1SBVga7oN1YHRVd2y0FmPoWNhxKIih7nCEQT3JHAkLZShc67WnR+sh64DMC1Y4dFLc
 6GLpIOB4T2SSii1P8DuZxVYni9g3bxnXyCWUtOdV8vDIGzEYYwde3xaqZlveObgsIhcd
 oaN9ETWedBKURRIrLMMmxUXOsOSH9ViIRhO+UXbaWUgeMFt89NfOgt8D6sbHR9KvCyjC
 mkxg==
X-Gm-Message-State: AOAM530zvyGkr+xt/nkzwfgKlsVMzOpOXFvfFZ5nLD/cfIu7AUxFcB3C
 MWs7/jDzZHp3Di2SvT+zfQKnug==
X-Google-Smtp-Source: ABdhPJwJBTQ00m+t9wxyzB1cXj8n/0LaZCqu4MpcCdI94b0Fd6Skv6Vca/UH6uS9c3TZZ8GgpF704w==
X-Received: by 2002:a7b:c455:0:b0:380:a646:eb0e with SMTP id
 l21-20020a7bc455000000b00380a646eb0emr1350654wmi.170.1646255481699; 
 Wed, 02 Mar 2022 13:11:21 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 z5-20020a05600c0a0500b0037fa93193a8sm145776wmp.44.2022.03.02.13.11.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 13:11:21 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 00/18] crypto: rockchip: permit to pass self-tests
Date: Wed,  2 Mar 2022 21:10:55 +0000
Message-Id: <20220302211113.4003816-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_131123_304024_5E1235D4 
X-CRM114-Status: GOOD (  11.23  )
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

This whole serie is tested on a rk3328-rock64 with selftests (with
CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y)

Regards

Changes since v1:
- select CRYPTO_ENGINE
- forgot to free fallbacks TFMs
- fixed kernel test robots warning
- add the PM patch

Corentin Labbe (18):
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
  crypto: rockhip: do not handle dma clock
  ARM: dts: rk3288: crypto do not need dma clock
  crypto: rockchip: rewrite type
  crypto: rockchip: add debugfs
  crypto: rockchip: introduce PM
  arm64: dts: rockchip: add rk3328 crypto node
  dt-bindings: crypto: convert rockchip-crypto to yaml
  crypto: rockchip: add myself as maintainer

 .../crypto/rockchip,rk3288-crypto.yaml        |  64 +++
 .../bindings/crypto/rockchip-crypto.txt       |  28 --
 MAINTAINERS                                   |   6 +
 arch/arm/boot/dts/rk3288.dtsi                 |   4 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |  11 +
 drivers/crypto/Kconfig                        |  12 +
 drivers/crypto/rockchip/rk3288_crypto.c       | 307 +++++-------
 drivers/crypto/rockchip/rk3288_crypto.h       |  69 ++-
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 222 +++++----
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 452 +++++++++++-------
 10 files changed, 648 insertions(+), 527 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
