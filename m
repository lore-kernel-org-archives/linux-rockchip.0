Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2587C07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ME0STOqXke6VCFuk390xIDdFCavlPsQrw3aCUULcfHM=; b=HoAd+Hx82y+lki
	tmupjDrDK8AUq0OuEi625720Drk5/8Rem071wIA4lY7GsU2jAFc9jWRMQ28y6mjRqZCIeIl3vNupY
	RQZlBmwV2VItHpsgKy9xWvnaIPxH9JcNDFFdnPeH9lw2yuQ8u6qlGhI0NzIuDYuV3sdBLbUjqDjeM
	jWX+5GV7EHDSHIm+WTS297771rDpymtskUNsRtHngUfZypykc4o1h6XvFgxSdlbCoMWREONiE4F9X
	vMMBsXyYWm8MXsLh4hw+dbOxUXEEd+7UrQqPoVv52LemNIiFT2YjVzAYV/RHH0cR7O/LquBUl5in7
	NnHxdFwJqh/vKOGnwo+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5bo-0090GT-Jo; Tue, 27 Sep 2022 08:06:28 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5We-008xql-4T
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 08:01:10 +0000
Received: by mail-wm1-x336.google.com with SMTP id z13-20020a7bc7cd000000b003b5054c6f9bso8382212wmk.2
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 01:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Lbh/c4vCkGtXonzdpXdp4XQ0sSxf7/y8kx7FY8V2Teo=;
        b=BPWFqeFE/urWJLLIaffyOd62/9aionydmnuP+9XMmZJffpqDs6QmZ/24AkuJ3D7N84
         ByyBfct8LiRIIoyZDV3HMUi2jYHyTutDESS42723sHZikNFRK4kLjyTW/USb2BUiQ62r
         DZTlUdoqciHoSoHPfhYhnuY1IOWe2MO+E9yVo8TRCi7jNRkAgWWpDJ0pogSk9WnIPWa1
         P0iLnnUs45yJhQOHL96REtFFMBQ1EkGWklMdv6M8YzSldMPZ6WWoUbFiM+BcJyE74VrK
         qLR8yhFB4nqn/2R2RSy2y/GnCP3+Yl5J9YPCOuS85oryBpOs39PYU5ik7ebJy8oeIWOr
         bd2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Lbh/c4vCkGtXonzdpXdp4XQ0sSxf7/y8kx7FY8V2Teo=;
        b=CUvAtfd1FqIwz1bnd92GIu4aiRGFzC7HROwK+jJjUSTVa0FsvktEVkijHTdbCjTWmR
         oOxuU2ufwbP2WW3TldKM2oMcnL9BhqK892iV6u5sdu1uTYy48hdmYXU6NvfH0ml8ozBe
         DjAuiU7zUwn7MpuPXoeizYeVSGyaOZTKV0jQx4xlvK9OAseCxvIRPGE3GhHqLnnm5oGG
         I2FeZQlxUL76GnjOtqnOGNLl52GfPFv3F39CRXgu3FHxXXOoScErgQTKGdOyC2WAwgvi
         uCQZBtGvMgAJENqaVQpDlP0GiUrHTW//sGRxV0+Sok43XQ5VdjqPtVwl7ZKfIQoKiVCl
         EWcA==
X-Gm-Message-State: ACrzQf0AOZvc7FwbRw5xNDpwOxlSe+oqRVd5+Df5zW0PQJKynEiNGPAh
	2YhGzt5kMwGmk3jdYRzKbQlmdQ==
X-Google-Smtp-Source: AMsMyM4F+y88kC71sg139FfgxCHot0WplCztNaRCYtlq/L2u4WA2oLX8IoD9BEP1Q6eR5bWasJoqmg==
X-Received: by 2002:a7b:ce08:0:b0:3b4:ff9b:3d89 with SMTP id m8-20020a7bce08000000b003b4ff9b3d89mr1639769wmc.31.1664265666615;
        Tue, 27 Sep 2022 01:01:06 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id p4-20020a1c5444000000b003a5c7a942edsm13357199wmi.28.2022.09.27.01.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 01:01:05 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH RFT 0/5] crypto: rockchip: add crypto offloader V2
Date: Tue, 27 Sep 2022 08:00:43 +0000
Message-Id: <20220927080048.3151911-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_010108_222238_609A0BB3 
X-CRM114-Status: GOOD (  11.83  )
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

Hello

Rockchip rk3568 and rk3588 have a common crypto offloader IP different
than rk3228 one.
I started to work the driver for this IP on a rk3588 based board, but this SoC
is still not upstream.
So it is why I send this serie asking for test since I own no rk3568 and
I need to be sure datasheet is right.

Note: I keeped all rk3588 reference intentionaly, but probably it will need to
be removed until this SoC was upstream.

Regards

Corentin Labbe (5):
  crypto: rockchip: move kconfig to its dedicated directory
  dt-bindings: crypto: add support for rockchip,crypto-rk3588
  MAINTAINERS: add new dt-binding doc to the right entry
  crypto: rockchip: support the new crypto IP for rk3568/rk3588
  ARM64: dts: rk3568: add crypto node

 .../crypto/rockchip,rk3588-crypto.yaml        |  71 ++
 MAINTAINERS                                   |   1 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  14 +
 drivers/crypto/Kconfig                        |  32 +-
 drivers/crypto/Makefile                       |   2 +-
 drivers/crypto/rockchip/Kconfig               |  56 ++
 drivers/crypto/rockchip/Makefile              |   5 +
 drivers/crypto/rockchip/rk3588_crypto.c       | 646 ++++++++++++++++++
 drivers/crypto/rockchip/rk3588_crypto.h       | 221 ++++++
 drivers/crypto/rockchip/rk3588_crypto_ahash.c | 346 ++++++++++
 .../crypto/rockchip/rk3588_crypto_skcipher.c  | 340 +++++++++
 11 files changed, 1703 insertions(+), 31 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
 create mode 100644 drivers/crypto/rockchip/Kconfig
 create mode 100644 drivers/crypto/rockchip/rk3588_crypto.c
 create mode 100644 drivers/crypto/rockchip/rk3588_crypto.h
 create mode 100644 drivers/crypto/rockchip/rk3588_crypto_ahash.c
 create mode 100644 drivers/crypto/rockchip/rk3588_crypto_skcipher.c

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
