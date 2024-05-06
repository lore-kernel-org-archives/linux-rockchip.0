Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDB48C25B10
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 19:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3/jRbaq4SzilH53zao08Da5YP3YvE4z6S/VWgi/JEYw=; b=YkPH1+/YvdsXeC
	NKczcjjQQANtbk0OVoAhve1JZ2ZamJsZZrqL9zJx1DqkYVJwqMyZYU/ElDtabIfjzHXL7RETYQCOu
	dowqHnhVm81J/z7TLRhg+Q+IyWONel5bwWo18CCuDNDcKVzDQvhjWGa9EpjhDodL3EGKlmRdMpHFq
	4+EX+gzR9a0qXJqaAmhFcXagcasL+RtAflvBhNUfbNwB5b6WEntd44zsuy0yNlKBdlF7Qx8yLASuD
	Qt9/bEr9PtHgsTBjZq7Wjf9iqDc/a1TgEeL0jAX9TKdJwhC+IY3AZsq8rstdl+twWzc0oAx/RLOm7
	1ZTxlANoxIOcN9c9suDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44Fp-00000008YB9-12cK;
	Mon, 06 May 2024 19:44:05 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44Fk-00000008Y91-3JJ6;
	Mon, 06 May 2024 19:44:02 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a59d0810f59so266383766b.0;
        Mon, 06 May 2024 12:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715024638; x=1715629438; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=V4nG5Ru4AQ6B28lW7pREyT/j4oSGmxSZ0QdDsskHOqY=;
        b=iF1Db8gssMNbFR1lstB4L6/+h2Vcc2RPOCmR0/2Hl8IsvKir1q9rg9xGoJwuDL2Dsz
         Onve2qyZ4SVwfPS+lJo9TZSoKr73iiANpvl+NW/12WcTuYGoxQpkoh4Pq9uuQHrcH+pE
         M/v8HH7RH6YqmSlfT76XpkAUwJ8tL0sUyeVsFbhwFkL5d+015Q/ZNofx8NGgxPY6XppU
         nqerU5rwIFwIU9yEwnMiqrfXSMVbsabEtcTZJ57OxGHCNzv91C5CHousMILklcanaI2F
         U3xQkYbSKH88YkKgSpC1mBezak3P3wc83yNBgldv3/G+gGYeVEV2UcQIE1mKlnMd57R4
         wAdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715024638; x=1715629438;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V4nG5Ru4AQ6B28lW7pREyT/j4oSGmxSZ0QdDsskHOqY=;
        b=e9E+swdlOpxKeQZP/C84S3sIMqiMAHd24/3hhnuXUDF2HxjrxY6fHUDTSZgjzwNpIa
         UWFton835RhlE+UrsSQL0mD+hw8vafGVPtrWAN0B5caAjVlc97lPxcc67fV60J1gXrl3
         pzR/edZ3hMGhqkcZu9YoI5EmvrG+rn3+FASAY6bOHZsPrkhlRt2lG/9tvP/fe/nPb056
         H5MMkSU9FLVxON6/7ChnrDybOT+px/pagAE8LqcG7I0WhplvUUh31YfhljKo41S9h275
         LwisqEnXfisNFrBZsLGvua2tdi44nN4oNfV5RBvZSD6g1UblJmYInjgCMDYueuAwGKaU
         CEdg==
X-Forwarded-Encrypted: i=1; AJvYcCWpJoUqqkCDkC0jsm1Lk0/Zk3Yd/xaHGK+GaK9xArhe3tFb8oM1eqU4M8cCBEThEG8WH82g/ZXEDIVHv0OzAf7dYksd9jHr2vIOWoKnx15je8xQ3VkVynKza6HlR1cRylPEJYHhB4OLhJHRQdazW8LA7wYj8IO9J/0=
X-Gm-Message-State: AOJu0Yx93lgsENs4BHRleBXMlfJSa+pt+Z2M7A/6p6R3+4ibtTsBYI8j
	XNKNUEesOEi96bCA8E1nnL3wyDZJCWsTLIw+989i2xJ9AohSDSE=
X-Google-Smtp-Source: AGHT+IG5wO/BC2YkyOc0seTpxcAbP5RUVkEbXlDffmS6YgXfw+RgMayivTNE82/BCMH/QU9lmivYAQ==
X-Received: by 2002:a17:907:94ca:b0:a59:cb29:3fb2 with SMTP id dn10-20020a17090794ca00b00a59cb293fb2mr3186521ejc.57.1715024637718;
        Mon, 06 May 2024 12:43:57 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1c62:e77:6753:5729])
        by smtp.gmail.com with ESMTPSA id f13-20020a1709067f8d00b00a59d146f034sm1367321ejr.132.2024.05.06.12.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 12:43:57 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 0/7] Add DSI support for RK3128
Date: Mon,  6 May 2024 21:43:35 +0200
Message-ID: <20240506194343.282119-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_124400_941700_5C99AE6D 
X-CRM114-Status: GOOD (  13.55  )
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

This series aims to add support for the DesignWare MIPI DSI controller and
the Innoslicon DPHY found in RK3128 SoCs. The code additions are rather
tiny: It only need some code in the Rockchip dw-mipi-dsi glue layer for
this SoC and some changes in the clock driver. Support for the DPHY has
already been added when the driver was initially submitted. I tested it
with a 800x1280 DSI panel where all 4 lanes that are supported are used.

Alex Bee (7):
  dt-bindings: display: rockchip,dw-mipi-dsi: Document RK3128 DSI
  dt-bindings: clock: rk3128: Add PCLK_MIPIPHY
  clk: rockchip: rk3128: Export PCLK_MIPIPHY
  clk: rockchip: rk3128: Add hclk_vio_h2p to critical clocks
  drm/rockchip: dsi: Add support for RK3128
  ARM: dts: rockchip: Add DPHY for RK3128
  ARM: dts: rockchip: Add DSI for RK3128

 .../rockchip/rockchip,dw-mipi-dsi.yaml        |  2 +
 arch/arm/boot/dts/rockchip/rk3128.dtsi        | 49 +++++++++++++++++++
 drivers/clk/rockchip/clk-rk3128.c             |  3 +-
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 20 ++++++++
 include/dt-bindings/clock/rk3128-cru.h        |  1 +
 5 files changed, 74 insertions(+), 1 deletion(-)

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
