Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7557DC10F1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 12:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qiFEHyOVcXZUW0X6aA45wVs90nA717V7MXFIrA9UCZ4=; b=LgpZQBuvWjklCv
	4FCVgoP9Q+zWPKHoMDdLw1gXXJH+w8MTuHq4bryRT8a/IgzbkxQcMS2NLaulw1vWtIxexfVZuD1iY
	3cgyuIaZwmgK1XgYD5JC2b8Qs/2zv8bSDUJcsFl9/Uxd4lsYt1t56F0GapgYEUih89OIvLlZM/FG8
	4Nojq8EsyqGP5qdstFB+4BnV/nqUxpTYB+ggZJagj6i0TGu16cMXEHLRJbxa+sYVoJMCmF8FqyHBk
	xsWrq7wzhOrz9upOU3ld/AwWjR39BxgIBUHND0DStrBPQ90ZpID3c+9kiBzArBh/Z22OdYmaI2VQy
	FOu3R8FldfoRReqZVTYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52Yj-00000001MDE-2YlE;
	Thu, 09 May 2024 12:07:37 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52Ya-00000001M3u-3mdr;
	Thu, 09 May 2024 12:07:30 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-41b794510cdso6362685e9.2;
        Thu, 09 May 2024 05:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715256442; x=1715861242; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wXW0NpQxST0KcyNsoS559akCnXX6lhKBOvqAS2ZY6IQ=;
        b=QtXsrLs7hImLmNwbGyzOm4W0SvQ3XyFjdhib5tPKocrPrqZwXGXbrXzJssCzda8gQP
         j40rs7qvSHREqZPp2Uk9kKBrJkB6t6Dka2101hOd11gwWxU3xn+Wu6Ij616kUtjbFPAK
         9mH2Ypbo7unnqFyvj8T6m4bJkRVUas8qVdk+p0mpOqQlVMKgKcQR0i2EJ453NOmBY9iX
         T8XWtWTdp288OFZaiCcSE5EAaWQZAYrVLVAi17LLwBbIRuqgmzPynq/TeuHo2J3PPxzH
         Rh31yC7PTWiFpfZ8qXT5IxDExoALS9NGh1TILQ6nTILTo4/0c61eDdLS7ppIkqcWzQ7O
         BpGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715256442; x=1715861242;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wXW0NpQxST0KcyNsoS559akCnXX6lhKBOvqAS2ZY6IQ=;
        b=DiZXLBjAPk5ch0rvIFKiGWYsGRJfnlAV4RAGW43s3+PeSeKQT87YxXWG7p+NcmysBy
         04iHwzOy2/UhVOKbsdHt3RMGYQAekHPHTxrObjH1M2Qk2t8XMYtm7d8ZRzy4URpXOOEF
         sNj4+iFft1wsswWlC19JpAmx3JdCq/oj6TaVPSU20Zy74f/5sD/VB/9VEMVIG9x/W4a/
         /M8k2M+q04nGpGO4d3AcocJ+vxVqiuJ1a5jvomnAzK4b4IjzimEMIULTQnBVA9KDd2ZH
         Pk/gCKOaFtltCk+6ciP1/JScyNs1cELwXoRnDK9iRVKBbnbDj6WIAFUz9+jCnuIO8ClZ
         1b9A==
X-Forwarded-Encrypted: i=1; AJvYcCXgo4eHCPZxDy+LifaWOjPIevnSfpaGSRLjmu4C6Csj+hdIJsd+5hCZ7Uq1jIRY0oNUJElfqsmnLGJtKD2ud1U1iPDYL+/uhz/dGslX0ZCKjn1SJOTE14qrX/2+1bMaMTa0g5aM5sf3McJ/lXLo7HzwQ/vurhagLn8=
X-Gm-Message-State: AOJu0YxttWD2/kjwCtDetoi5WkGm9vyBIx0JXACMP0HqQ6+QKOOc1ecj
	iQQ90UafT9DFkT0QmvQB42+TFEmEgEp7+p5TAeI2YgQli2oX4yw=
X-Google-Smtp-Source: AGHT+IHiTcqgDtLhCAgVy2xR30nYXqmOfWtS5RaJG90R9viY5LmZtTGSnjgy7WvJDU+f7B9EzWGwWg==
X-Received: by 2002:a05:600c:348c:b0:41c:1434:f571 with SMTP id 5b1f17b1804b1-41f71ad0a6amr46179165e9.37.1715256441686;
        Thu, 09 May 2024 05:07:21 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce1912sm24112005e9.11.2024.05.09.05.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 05:07:21 -0700 (PDT)
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
Subject: [PATCH v2 0/7] Add DSI support for RK3128
Date: Thu,  9 May 2024 14:07:08 +0200
Message-ID: <20240509120715.86694-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_050728_969964_7276F53F 
X-CRM114-Status: GOOD (  16.09  )
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
the Innoslicon D-PHY found in RK3128 SoCs. The code additions are rather
tiny: It only need some code in the Rockchip dw-mipi-dsi glue layer for
this SoC, add support for an additional clock and do some changes in the
SoC's clock driver. Support for the phy was already added when the
Innosilicon D-PHY driver was initially submitted. I tested it with a
800x1280 DSI panel where all 4 lanes that are supported are used.

changes in v2:
  To improve power-efficiency when the DSI controller is not in use, I
  dropped the patch which made hclk_vio_h2p a critical clock and instead
  added support for an AHB clock to the DSI controller driver and updated
  the bindings and the addition to the SoC DT accordingly.

Link to v1:
https://lore.kernel.org/linux-kernel/20240506194343.282119-1-knaerzche@gmail.com/

Please see individual patches for details about the changes.

Alex Bee (7):
  dt-bindings: display: rockchip,dw-mipi-dsi: Document RK3128 DSI
  dt-bindings: clock: rk3128: Add PCLK_MIPIPHY
  clk: rockchip: rk3128: Export PCLK_MIPIPHY
  drm/rockchip: dsi: Support optional AHB clock
  drm/rockchip: dsi: Add support for RK3128
  ARM: dts: rockchip: Add D-PHY for RK3128
  ARM: dts: rockchip: Add DSI for RK3128

 .../rockchip/rockchip,dw-mipi-dsi.yaml        | 25 +++++++++-
 arch/arm/boot/dts/rockchip/rk3128.dtsi        | 50 +++++++++++++++++++
 drivers/clk/rockchip/clk-rk3128.c             |  2 +-
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 45 +++++++++++++++++
 include/dt-bindings/clock/rk3128-cru.h        |  1 +
 5 files changed, 121 insertions(+), 2 deletions(-)

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
