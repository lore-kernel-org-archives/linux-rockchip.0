Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CCEEC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5TT/YPY4Do93NimNXSVOXC4lFV+82GEk/3LoI5DS0Ik=; b=smGU5dLkim63H+
	AbBi7CYWZyQXY476Z90z6GY/4AvF23yZBYVWgSo4k0FK7ZInBou9gqB03QPI/HvZjnyqO5vaD9Kqa
	cthIAYRv+WSEy4WrzvH6YeHmhiKkJqpPJ2idXxZ2F4ziqRX5E8jo1QKtITh95sCZJB2+wDhIsTbyP
	z0jlBowtqDdsRhXGWlukuvxbbIMM/s4pitEz2POUGNzhLvq3cXPKytNuW/r19WqRkFREN4l+aSXmm
	JWgEyfEGzAaCp0+Io5dfevDcN6qACDPtYtLVQmSPxPRrrdGZnyDY7JIRBUzmuBFgTHDAD6PTadEu8
	hPNbAUxcP0z6wcaMNa+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOlt3-00DnZa-E5; Mon, 28 Feb 2022 19:40:49 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOlsz-00DnWT-Tr
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 19:40:47 +0000
Received: by mail-wm1-x332.google.com with SMTP id
 k29-20020a05600c1c9d00b003817fdc0f00so77937wms.4
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 11:40:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7Jtav+ye5zt0JLObFlHB/P1ii2kpmM4YgE+fQMwFycY=;
 b=CNNLF4MgGchbX1I+o+yz78iK3EtrZSEGilx7b+5yATKdv5i5cZER41P0/dGoVDR8mQ
 fTe3qip40qKi7OwttqXMqJ7Cp5Sgu/sYYHARdf7AgJzA1hCAADBkMYFnmzHo1qO0mikl
 vyj2eERIXqi7TP4cE+FvV06xleJBlcz4yVJWPYE1qCJDDtR9tSTsy1XT1iNNQ7hD4RI/
 VAp1cpltliP6jmAkFxfDrVbVt2TyQ8hXwDDdkXI1x+WYrsEfabJTNtJp3HjVmUiZwz2f
 rO3Z9sJar52q22MXGp1BCeV/pMGqAb7kb7Yv9KgN+6gtbN1ZjdR2nGNy83cuwYgkwCEP
 hoGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7Jtav+ye5zt0JLObFlHB/P1ii2kpmM4YgE+fQMwFycY=;
 b=cL3ptgbRn343FL1TKEn/HzcXzIZZbidfy5pWTGU10jn2JDgEzQgJiaFlszvOJBqUNe
 tVJJ//JdejMfLsyeNF8HQrFQQcgcj2PnKO3zTLTVPSYiDMT8UPIzXhopmcwC418NA0KH
 U2IeyaYr93p/gKKLLvuqLtkGE/g7KURywYJrWPP/wx5+q6VFWvrZ3rQRF+wID5eDXsXz
 hy4abs1a+h8MnhCZcZ9qYUIuw+wEfHKBBE5yaCaqJQ8Y3hL5AGIxwwtIlrZlqLsQUzwz
 NZVSPb9rpeKXfm62czdYzM5RZJ8V3zIE+1qr3/Y0S9l5dssIckejaQNo3CgdZ9PhT75s
 OJlA==
X-Gm-Message-State: AOAM532Z8ZQKpx4k4UXUcTla250KiHTI9lg+iz93bQfGBEclqgWK5Pwl
 ydAeZhbGPyV2v/hxt/9CQn2VyA==
X-Google-Smtp-Source: ABdhPJwyJWqzDklkz7cVxk89jp/moqyfQCBYnpDhUWCT5StXL++rHv+NFwmzQLD2FTRIqS2G8tWanA==
X-Received: by 2002:a1c:f003:0:b0:381:17f5:21b8 with SMTP id
 a3-20020a1cf003000000b0038117f521b8mr14441311wmb.158.1646077243764; 
 Mon, 28 Feb 2022 11:40:43 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 11:40:43 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 00/16] crypto: rockchip: permit to pass self-tests
Date: Mon, 28 Feb 2022 19:40:21 +0000
Message-Id: <20220228194037.1600509-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_114046_028178_50B601B2 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
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

Corentin Labbe (16):
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
  arm64: dts: rockchip: add rk3328 crypto node
  crypto: rockchip: add myself as maintainer

 MAINTAINERS                                   |   6 +
 arch/arm/boot/dts/rk3288.dtsi                 |   4 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |  12 +
 drivers/crypto/Kconfig                        |  10 +
 drivers/crypto/rockchip/rk3288_crypto.c       | 283 +++--------
 drivers/crypto/rockchip/rk3288_crypto.h       |  68 ++-
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 214 +++++----
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 449 +++++++++++-------
 8 files changed, 533 insertions(+), 513 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
