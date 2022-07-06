Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BED9CCA473
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 10:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sYS/piq8FQVOuq+IDRl6vYRSgXGyBjkK5kk38zbg2qU=; b=zx4/+qdHtmkTS0
	qDgGvciY8fZQNCavbEMk75+JaATbzMcKf8pJ4fQ5ITil8tBMZ5eutof3xiNxyaA5Ekq0EWlAlMt1a
	X0nEf6wmQFHKgpfQoT3NxbLtSrpD6oVVFW7mmFr1LRMO/PwL/bdVh0+NYUHfjXWN/xh/4zBvxyVXR
	NOnRnaLcPXevz02CabETx4+dVctMDUuvQgafEoPR8fs+frPhyU/07lhDw/WyhKJRBgFsQCxgrH1s8
	2N6uiXf6vGZITkYWEfcdOlwUI/CgTZZiJ56P60ZBFRH+M7zEDSQZbcdjtMwA97XNn79bKU77OyLx/
	Jk6JPuIcTDZa+ittICGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o92BT-008Pew-AA; Wed, 06 Jul 2022 10:23:03 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xZ-007bj1-3O
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:04:42 +0000
Received: by mail-wr1-x42f.google.com with SMTP id d16so14733378wrv.10
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vTfn5kYTl3DZc1w6nMvn5z7ndGSpnwpZR54pnipxf4Q=;
        b=Jjg/2mnh6qjGyd5qZ24zbDEHD9i6Q0JFDZ1rSazDilSD76foKz0Sl5ZHUDvhdgMIdg
         NRtjoq58CVh3OoMenOr6Px3/4lT8tsXoa0ZALt4L0BPHg2WQcjqU9S/AAVqWnld0CDzk
         +0M3kfKvJsh7i7mGT6DCs8kxCVOdh+Kyp1VNS6qAnkuMWG9IQm1oOJ0BmmtMrcBjROOy
         HTPi4xo9HorrY5sq6Z3WV+qXww4xLr18bm4EhIy/LuQZpbtD3to4RsrFrzsOAxMZlAzq
         3iCX+wcv0JwX37fzuarB8Ck5bHxe/KcXwkXQ29Vx+ghUOAqcVAlc/s+A9x1daKy0YCVr
         Ti/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vTfn5kYTl3DZc1w6nMvn5z7ndGSpnwpZR54pnipxf4Q=;
        b=78JBOvJwMfTkyvurJ/zfvlr3dhtSabSuFpfioruxfJ0Rx8fUfn2d8F7hg2CbhkMW3Y
         DT6SFRwkBxRFFtvopWEv4Cili9+6ag04eZTTdt2SJyTXsYE5SxuCVgRY0EAyAgYSLO2R
         BUtHNjB8igAA4sMMDRbYVXHfbRtMp15boscjFBTwG8xsIIJmysuP2kotTV0IPsyyxBV9
         dPsIa7ll2sV82L7xR9rNFxD/WRLlnCQiQ53hYGg73X1puebOLwL/V1hORzjFiOiYxThw
         GkH/uUN3+VSQJ2Jec9v0xkQKHWApo2TtRMdRPccqRhPMHfX1UPG2yGU01usGXpr2mOzb
         FRUA==
X-Gm-Message-State: AJIora+8Thksn9v8lOFgAsE/G389y/ebZSCQ/TfqG0tlCVU3yOOClRcp
	4UVSHwMaKIdaiJ4hys4Jmi8hA6KSa02hOA==
X-Google-Smtp-Source: AGRyM1uSlWsLk/ygXwr8iw9lI5wNKxJ/YnWBhPekE7kkct+MbPS1ZQRSuPMu7KI4aB6OVuhFq1Ry6g==
X-Received: by 2002:adf:dc09:0:b0:218:5f6a:f5db with SMTP id t9-20020adfdc09000000b002185f6af5dbmr36466505wri.480.1657098273109;
        Wed, 06 Jul 2022 02:04:33 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:32 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	john@metanate.com,
	didi.debian@cknow.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v8 00/33] crypto: rockchip: permit to pass self-tests
Date: Wed,  6 Jul 2022 09:03:39 +0000
Message-Id: <20220706090412.806101-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_020437_441745_9E239DC5 
X-CRM114-Status: GOOD (  14.42  )
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

Changes since v7:
- added lot of reviewed/tested by
- In patch 14: keep initial reset pulse.

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
 drivers/crypto/rockchip/rk3288_crypto.c       | 506 ++++++++--------
 drivers/crypto/rockchip/rk3288_crypto.h       | 107 ++--
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 267 +++++----
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 543 ++++++++++--------
 include/dt-bindings/clock/rk3399-cru.h        |   6 +-
 11 files changed, 955 insertions(+), 688 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
