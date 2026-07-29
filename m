Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A40C2C54F51
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 13:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ihm3uQnLVptqQSt4Mqs4fRrooDkWDBZE8qQFuj2+I2U=; b=Vhk0+kuFPn0jYp
	/DGcLFmINXyQQqufNEIJblw/5IV3CSldwqmXBe34CgdGdXc72fOOnrnG8+dJ2j+NZTcHnXCSRH7V4
	NeJtvs7SwyRu49OGpUowUqLzHFFsZ4ujucIparE022hvE++nhrR6qM3zNjqJrb1Jy3pMg2lhYYiOl
	RNMIaVyfgG1Y8EGLipaHSAqbF1Qq0IAQzjBZiTKXAfHqnAvp40i8u+KJGGxhAQnU5wZGSPU4JnFK5
	Tuq9sGWJ6AgZizqN7QpBJILTR4mjvPETqNhWDWvpCoFvX5e0R8+sdKeK22LvGeQdfHB3bqL1DIKkr
	vsY1aTLzt7LoMrP6aEYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4MQ-000000086PI-3Ep5;
	Wed, 29 Jul 2026 13:30:14 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4MO-000000086Nu-32Tz
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 13:30:14 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-4569e871502so252354fac.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 06:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1785331811; x=1785936611; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Vw1Uw662stFve8C9A4vfU5Hm7+9jYZ7QadKCZhiXKXs=;
        b=IavONC06vHtOFjJ26xVjpyyQ1RRnSaZkJWrz2knJC34jr4E066tAug8OWeEat/lsYu
         GO3FEFowknooHvJgj73ynTqrEW26EAC+SVpTMlgvg5WWXXcQSq29RjxaRsq+I3OCPRIN
         P6xrmn9CCbcVgHVR02RL2OagLj3V/IdlETQcw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785331811; x=1785936611;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Vw1Uw662stFve8C9A4vfU5Hm7+9jYZ7QadKCZhiXKXs=;
        b=NRU5CToIiWx1eZA014dAfVWYW1PSFDjp5AhiTwrJ/wiZEpLzLJMQPl+IdoxdyjnKwN
         jS5cM4dqSyCIEXs/3YpoZwwMbIDP8HMVfTinws6Gf9yhh9oOd2Fx6v1qonj6g4v1PYGC
         ZxnsHjvrR3biAqAeTkJLjgqQ3NLKPIdQwacSwQV1boDHG7W+E/AEB3aUiVQVzckBKmAP
         rjz11ljcwW1oe4QUjSO2q/bWLbVQVXarGashCaeo7fb3sEqHgY2nmdNBdi+8As1FfrZl
         lT0LHnrdVNl40Y7aW2wi2DOAqpCYffKR3GlQKracpkHAoFSX4Ujj6z936MM0oJM+mPLH
         kIoA==
X-Forwarded-Encrypted: i=1; AHgh+RoflsPkcpsg4TuFWfzQiQvhvxlEbWkOI1tPBQBLwTBgxygKAqWKO4IBBDpGqL1SOKh0aI4UiJaR7/Qm6f53jQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzXqh7lBj/sV4CDCBZO8/JSIW+Dg9g2254LexDsDRrxnGSdR1Lh
	lxaxg1pb8AsL9aGTLmWWz0FtuWfz+6z078yQ8zSYu6DsrvfJn3YWtIL+wPj4ReIJHD6uiLLbnYb
	cZ+o=
X-Gm-Gg: AR+sD10NrWydwBKfqlRlWjj2UYUeQx4ofGNGirAUTJ4jyAlPha4t5ITJhEkelPbCrzR
	m0LwEa6seJNYrOjVKQKvFxL/YvHUr42Ir73omE4gPvcbGobpkVlo4UU+VkwhjWO7rzDjaIKtUAy
	bXmjZq2odZ/v9FyuKs3PmTceNpINATODXt5lMQKWekLzPw3t7VCV+nmInmIJHP3F+a/+2gtC0NJ
	brHuPF8DjrYsKP6jWkU24Ng7ZeviiG9O8t6NCzEX738Ghu3vRiMKQUUf0Ygp6tQDP/ajk4+yk2v
	pliwXILj79p+t4BMrXqWy6pNhGc9/sP2Addk0CERmnY1iZhvExXkZHjtf8sPnUaAP1L2sYKBIz2
	4atGePXesJ6oeS4ljgC4eStYTOoBXBJlezSqF47O+Qmm5y1eTphZn4JdRWzmfD4Z0U3SsdQxKb0
	PiMoxBbd2IOe20OJ/DZSpLF/bfqmFErPelju3OqZC3f3TJqJMAEgO4NLw=
X-Received: by 2002:a05:6808:bcb:b0:496:e0:a46b with SMTP id 5614622812f47-4ad5b7fdbc6mr3443250b6e.3.1785331811275;
        Wed, 29 Jul 2026 06:30:11 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ad6ef5d650sm1712932b6e.9.2026.07.29.06.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 06:30:09 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Ye Zhang <ye.zhang@rock-chips.com>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] pinctrl: Add support for the Rockchip RV1106
Date: Wed, 29 Jul 2026 07:27:24 -0600
Message-ID: <20260729132736.3807082-1-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_063012_797670_DB4871DA 
X-CRM114-Status: GOOD (  13.44  )
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

This series adds pinctrl support for the Rockchip RV1106 and its
RV1103 package variant, split out from the initial RV1106 enablement
series [1] following feedback to submit per subsystem.

On this SoC each GPIO bank has a dedicated IO control (IOC) register
block, unlike earlier Rockchip designs where the registers of all
banks share a GRF region. Following Jonas's review of v1, each bank
node now references the syscon for its own IOC block through a
rockchip,grf phandle and the driver uses a separate regmap per bank,
so no regmap crosses a block boundary.

This v3 is tested on a Luckfox Pico Mini B (RV1103): pinctrl and the
four GPIO banks probe, and the sdmmc pinctrl state is applied through
the per-bank IOC regmaps, with the SD card working.

The corresponding devicetree changes are part of the main RV1106
series, which goes through the Rockchip tree.

[1] https://patchwork.kernel.org/project/linux-rockchip/list/?series=1122658

Changes in v3:
- Add new patch moving the drive-strength decoding to the get function
- Declare the 8-bit level drive type on the banks so that reads decode
  correctly
- Return an error from the iomux functions when a bank has no IOC
  regmap, rather than falling back to the shared regmap

Changes in v2:
- Add new patch for the per-bank IOC reference
- Use a separate IOC regmap per bank, taken from the rockchip,grf
  phandle of each bank node and identified by the gpio alias, with
  block-relative register offsets
- Reject drive-strength requests for GPIO0 pins above 6, which have no
  drive-strength registers
- Specify only the first iomux offset for each bank, letting the driver
  calculate the increments

Simon Glass (4):
  pinctrl: rockchip: Decode drive strength in the get function
  dt-bindings: gpio: rockchip,gpio-bank: Add rockchip,grf property
  dt-bindings: pinctrl: rockchip: Add RV1106 compatible
  pinctrl: rockchip: Add RV1106 pinctrl support

 .../bindings/gpio/rockchip,gpio-bank.yaml     |   7 +
 .../bindings/pinctrl/rockchip,pinctrl.yaml    |   1 +
 drivers/pinctrl/pinctrl-rockchip.c            | 230 ++++++++++++++++--
 drivers/pinctrl/pinctrl-rockchip.h            |   4 +
 4 files changed, 223 insertions(+), 19 deletions(-)

---
base-commit: fc02acf6ac0ccde0c805c2daa9148683cdd01ba8
branch: rv1106b3

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
