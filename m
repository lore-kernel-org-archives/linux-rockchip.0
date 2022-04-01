Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD107C43219
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ceUlSKKrb2YgDGubaDgtIY7azxujD0whU/6LktJh0F4=; b=rk8E+0QCxb9uwK
	oJtUjrB33ko5nyvowB0NORNxt2JP5REsCNO5MUPCx7OxSJIWqdi3JDu7YFF18RQEE/shChNKRcKVb
	sGshLJLfnZQXpWnfVHAcfTJfI65cMxezsxeJ8KOoaHFgAkZKpZlzrrGsH4bd1j1QFX0xprZUO1BRg
	FTwPmsw0rdlYQfFxH12Tzmzl6ZCmJeUStq9AAFqXmFjcyk89xH8QKYmHmQkpJayig9kDDaxUksTOk
	MMOL3OhP1g2EhaBvCxKeKj5ngv5Z8xvfPk34/4iWX42ybsUUIILXj+f47TbJMYmvfg+P5L8MMUMUw
	jYj8AUsLePCCIrU6qz+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNiu-0074y3-LM; Fri, 01 Apr 2022 20:18:20 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNiq-0074r9-2z
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:18 +0000
Received: by mail-wr1-x42f.google.com with SMTP id b19so5760015wrh.11
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DGCkJrK8CjpNQTEj6b9xsgDCufMl9t/fhMg36upVCms=;
 b=38Mjyy4PUG1qifiYjaGuBmEDmQ4cmC1Vw4iv4rSOVWiedsiaKCAgQ52NExOc1pE49w
 Pfx10onQLS+nade8OH/OngJw8Mwhu+Igi6N4asQGVuij6Au/8vRUk1VPSSuCbGLTfMag
 yO9pXlNGNQDXIcumWVkPfzz9S6fw2nwZs+tWyF5SpuvGQap4ze8OGlDit23nsgXqoQGU
 7sJqivbmofTw/UXVRw8mKCmrD7zdGL7U55yAaSrRoQqgNw2gp4CQeBGCDkPG2QRGFuaA
 ebz16tPUHI/5QrSQP+zwxqlOw1tT3YDc1PqdAPFPwHtoo6LUJ62j4p0UQF3FZg7ygBar
 1Usg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DGCkJrK8CjpNQTEj6b9xsgDCufMl9t/fhMg36upVCms=;
 b=S0rcw7aFJa9DhE4qrLlGxHTr3GXB3t6dC96sn52nas3/g98YWazQX/YgeVx+Uxc1zE
 u0b1gTyiXfCUkIhq/39WFgBVba7cn3O5s5keyTfuqRjdRG9Lk8gMZ3sQ4mlS993LtMUk
 RKYXfme7c9EuLlpg+rAEJEq2KWjSgplT8R6z+roRSB5eDUwfinmasggRAw7PuRY62gkf
 IN9FTWUKl6MySSn8aKD5DLdAXGlRByQ04436f4iGmb6qzJBN7mouyg8XYY4y/S5EHMNC
 fbr1VWAU5P7mHBvgEZbC6glRFwUBFblKYN29kc+IS7HYK4UEA0eKlEoiyXogcP1ylbdb
 GKqQ==
X-Gm-Message-State: AOAM531GyCZz6hHr0PlLgTYwKrd99gnD7wOH6rua8YJGIeS6q6jSDaBC
 epetrBRJfnMC6xnj7vCmtWr3Cw==
X-Google-Smtp-Source: ABdhPJxCCclvL39vPD0mGH4xeRxi6oEYQtYAcXEue88joWnUg/FnejMfCx7WSBAmHhxBXfdea8nR1A==
X-Received: by 2002:adf:d1e5:0:b0:205:85f5:656c with SMTP id
 g5-20020adfd1e5000000b0020585f5656cmr8795652wrd.65.1648844290722; 
 Fri, 01 Apr 2022 13:18:10 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:10 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 00/33] crypto: rockchip: permit to pass self-tests
Date: Fri,  1 Apr 2022 20:17:31 +0000
Message-Id: <20220401201804.2867154-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131816_391409_D1C76240 
X-CRM114-Status: GOOD (  15.17  )
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

This serie also adds support for 2 more SoCs.

This whole serie is tested on a rk3328-rock64, rk3288-miqi with selftests (with
CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y)
The serie is also tested on a rk3399 by Hugh Cole-Baker
<sigmaris@gmail.com> and Igor Velkov <iav@iav.lv>, Thanks to them for
testing.

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
  crypto: rockchip: use a rk_crypto_info variable instead of lot of indirection
  crypto: rockchip: use the rk_crypto_info given as parameter
  crypto: rockchip: rename crypto_info to main in TFM context
  crypto: rockchip: store crypto_info in request context
  crypto: rockchip: Add support for rk3399
  dt-bindings: crypto: convert rockchip-crypto to yaml
  dt-bindings: crypto: rockchip: convert to new driver bindings
  clk: rk3399: use proper crypto0 name
  ARM: dts: rk3288: crypto does not need reset-names anymore
  arm64: dts: rockchip: add rk3328 crypto node
  arm64: dts: rockchip: rk3399: add crypto node
  crypto: rockchip: Check for clocks numbers and their frequencies

 .../crypto/rockchip,rk3288-crypto.yaml        | 117 ++++
 .../bindings/crypto/rockchip-crypto.txt       |  28 -
 MAINTAINERS                                   |   7 +
 arch/arm/boot/dts/rk3288.dtsi                 |   1 -
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |  10 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  18 +
 drivers/crypto/Kconfig                        |  15 +
 drivers/crypto/rockchip/rk3288_crypto.c       | 505 ++++++++--------
 drivers/crypto/rockchip/rk3288_crypto.h       |  99 +--
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 256 +++++---
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 571 ++++++++++--------
 include/dt-bindings/clock/rk3399-cru.h        |   6 +-
 12 files changed, 959 insertions(+), 674 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
