Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DDB9C4708E
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 15:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RbDtWCRNybHOpaLkJit6x8JvZrZIfCnR3jpDr4d/GeE=; b=DWY5klYsoh+04r
	XgfRZdvmNOnqpXBTQVuXfRIcRjcldxd8x0DdA/P4Nxuwm8OiV3BKh1zTswIpFuYU0Ko2kvTV6Ghrh
	9se3Q77Yc9/Rpt/r6PdsQz3gxTSZgZVSl6D79s/b0g1m06qrADRiNgdMmYkeCAEdkT6bJ79KXl0Ny
	Km+R37k07/H9+CIjrAV4uwACaHjXEb48MrOV4Xh/Z0Gzs4ZQJwiuvzUlXeUnAgeSI0Tcb2WaSpt54
	f9WJuMUYYE3hvfaKPlfxOQMMg9A2X7ARZcRQw9yvwSTos9p0Ncf291KwoAMGy5IXILNwOoYGu85d6
	BfPG+NnF4izSNe04nHkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0OQi-001vHJ-1S;
	Tue, 07 Nov 2023 15:55:52 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0OQd-001vDQ-24
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Nov 2023 15:55:50 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-507bd644a96so8386312e87.3
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Nov 2023 07:55:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699372544; x=1699977344; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dwIY2rn/dEbSPVpdhU2+f4uOVwzcygzYY5LLYZc61cU=;
        b=Pu/dGK8r2xXjUzi1x7FFpo3AuKnOzLr6k/oYT7/Coc1qIE/TXxkKhMOthTSXPS1z7W
         ui4S3boXxj436oAFyXl+jMndFbf3JDL9Bz2NTeX6N6CdXr/+pNfbPDVbW1TtKvOVEeDb
         X/4olLmeg95No/8fnLHxOmvv4wE7sCMSoBdjFFKE7xKuuDUzdy2dPvgudYZjByL+v9VE
         seR2rxCNeZQpufvRancpKnj4WarqXpXcoV53a7Mit6D5YUAXMcGLSzvm2RKqOAlLEIut
         qZo641uwYTB6XKEEvMFxAZ8fTU/FAVIHKFmSYapr76HpHhjj1bGNRXJArcDfbyDwm8mI
         CD3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699372544; x=1699977344;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dwIY2rn/dEbSPVpdhU2+f4uOVwzcygzYY5LLYZc61cU=;
        b=ROieD9cPycbheGFl+8zFxLGQUq0w9/9lCuAt2r7gPDWAggZx2anfA3oE7Dlqr8r6d+
         rhMMHPRku9ltcbxBTGmWCMB1cIXCoV5k36cemjFOzUnLd+fmW0xLhpO8mIRf4lQcISLc
         8fFzuiJdkSk4pSCbrWI+aUL7LYxSqT05/ljyd5NbCKhEdAqQKE3YpAoDVU5ymSC6sVSr
         hmIkyi7/Vm/EojzkVXnyewUi2ERuyFzYjXPaDVSkIn2EqqwJrnidP/6EoB+z0nskAV9a
         f13mHHMHVxhIF+1mGUovTMzLdGJB/47GVkj3jhhaXlTWbogjBp7NMok8jFon8WSCpuS3
         QDCw==
X-Gm-Message-State: AOJu0YzZJGX2QUfFJXJWErUgeaGyHDU4OQzQi97KxcRh4ZUP/QQ4yNFH
	u5sJD7L4j/zovMoQE7AFOgPkzg==
X-Google-Smtp-Source: AGHT+IEW/M54tsfmWAXd/ApYtb7f8HXdpcpbgcYJR/UxDO6jor1uWlDWpgFp9h1Fwj1h6vqEmi/WOg==
X-Received: by 2002:ac2:430a:0:b0:503:257a:7f5d with SMTP id l10-20020ac2430a000000b00503257a7f5dmr21683796lfh.31.1699372544418;
        Tue, 07 Nov 2023 07:55:44 -0800 (PST)
Received: from arnold.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id f6-20020a05600c4e8600b003fefb94ccc9sm16579085wmq.11.2023.11.07.07.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 07:55:43 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net,
	heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: ricardo@pardini.net,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 0/6] crypto: rockchip: add support for rk3588/rk3568
Date: Tue,  7 Nov 2023 15:55:26 +0000
Message-Id: <20231107155532.3747113-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_075547_710154_DFC67836 
X-CRM114-Status: GOOD (  10.90  )
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

This patch serie add support for the new crypto rockchip IP found on
rk3568 and rk3588.
It was tested with CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y

I would like to thanks all people which helped to test this driver

Regards

Corentin Labbe (6):
  dt-bindings: crypto: add support for rockchip,crypto-rk3588
  MAINTAINERS: add new dt-binding doc to the right entry
  ARM64: dts: rk3588: add crypto node
  ARM64: dts: rk356x: add crypto node
  reset: rockchip: secure reset must be used by SCMI
  crypto: rockchip: add rk3588 driver

 .../crypto/rockchip,rk3588-crypto.yaml        |  65 ++
 MAINTAINERS                                   |   1 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  12 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  12 +
 drivers/clk/rockchip/rst-rk3588.c             |  42 -
 drivers/crypto/Kconfig                        |  29 +
 drivers/crypto/rockchip/Makefile              |   5 +
 drivers/crypto/rockchip/rk2_crypto.c          | 739 ++++++++++++++++++
 drivers/crypto/rockchip/rk2_crypto.h          | 246 ++++++
 drivers/crypto/rockchip/rk2_crypto_ahash.c    | 344 ++++++++
 drivers/crypto/rockchip/rk2_crypto_skcipher.c | 576 ++++++++++++++
 .../dt-bindings/reset/rockchip,rk3588-cru.h   |  68 +-
 12 files changed, 2063 insertions(+), 76 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
 create mode 100644 drivers/crypto/rockchip/rk2_crypto.c
 create mode 100644 drivers/crypto/rockchip/rk2_crypto.h
 create mode 100644 drivers/crypto/rockchip/rk2_crypto_ahash.c
 create mode 100644 drivers/crypto/rockchip/rk2_crypto_skcipher.c

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
