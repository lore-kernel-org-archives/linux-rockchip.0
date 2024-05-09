Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED94BC25B10
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 14:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HDl0Mbcq5i9jfFGWMrnL8cRu6tg62rfE9wIQfSi0LbU=; b=NhTCQ8PLXDyrS/
	uIJf1DPjvGrLPhiaNFMckshG7CxevgHeRU9oy6SpjUpPrxEdJ3C0kkssQQ2BcFmQjf4rEWbTestoe
	d52gNdL4P/9thA/ahpKg/wGpYQX5bYI38bHtZzkKVqugwxsXfBEc7E5LYkPJTdgMno8Iqe1BlneQb
	PK8/Ar3qNquKiBRHpK6FeKWzxgJuNF01SAW1nz4/Nk/7yBdvG1W8XpsrOyU89Wk9sgzOISwYd/uMz
	5tjP2SJ8JNUrbqU8CoApUiYm1Xiqo7zOONRZvWOVV1ddAPzFHUzIUUttCAS3m62fT04Mw3m1yu0y6
	Xv55bfX2t5mW1AkcimIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54QQ-00000001fD0-3JFp;
	Thu, 09 May 2024 14:07:10 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54QJ-00000001f1i-02qL;
	Thu, 09 May 2024 14:07:04 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-41b79450f78so5856905e9.2;
        Thu, 09 May 2024 07:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715263616; x=1715868416; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ygKOaLULm9Ty8/azGUq2u8NIEd5rcobuUSoqUbVVSBY=;
        b=W4gEUzPljs4wbjrF5Bo0JQEzRJBCzkuhlbXJrOzxi60bhvnb0Ot4Xb57+NfQwrNK1y
         LztTBNM+hj1cw4lUxVXUeKYsoA/dDriCAD5NAI+S1d/79a/YaWFpa61ZiBgUuIZkupcj
         Gdb48Gc+rSo+s/CITK5vCaOMx6cjm8mHfStSHT/IxmhAuBD0yD6AN4sby5Tml5H+QY6D
         Q3JqmUTnQ3m+fKnObEs2zpRrUhMueLXT/oyET9H365IOlVGhBUHJg3MtPSjq4Cm03pr3
         vFjoGS8nWHtJjN3raBnHdXzCnQZ9PKh0Q1qot4tkFG+2BRhiE5U+O1vKCVJK3QZwFOd5
         87Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715263616; x=1715868416;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ygKOaLULm9Ty8/azGUq2u8NIEd5rcobuUSoqUbVVSBY=;
        b=D19M/mci1qEIDxmte2fcOmVuJlHHibYPykvi7hTRzep1eD8WZ1+pSaoPNPbq7bgGV7
         YIhhlW31CBtQgpxJ+vpPETE5XYsjTqaTc/zRusNeotnynLrf0C/OVekDvMvDqDU0XL0U
         1GNaHseLdZXPLoeU0NWiDpxT749rmQhwU/0dMW0U7BXXTi5D9zYJUDnYliWIc921fA8A
         tvcAsQsD4cXbMQBSwkReJQ6ojlO8KreRqY+XsxPUlfcD3KJFmwP/uPHgXB82mAicemys
         ORh8+oYCThibNAZO/Zyiqovo8yQVUX2oFuy6UBdqLpWiaNgKfvu2AbDFuuyv6Lwec7ZN
         HMfA==
X-Forwarded-Encrypted: i=1; AJvYcCVJ2Y9lPsG/LnTHsdVRyxLvupWgKIPXdYwB9V5fpzjaprkETH2jFxnrwdyI9sv8Fd9Xbca21kTzsZDbVMEQ5uhCThxfEUQvy714eYqQYGybZjvAY1lNPAFXZyKiU0LQ0ixb3u68G5u88/pxczV4NA+wUqA2bUO8Puo=
X-Gm-Message-State: AOJu0YwN6age+nP+Izaq1/WUSfGEIEz0jZhLLitCnhWeG/fdvyU0Qcab
	IAjQXG9uKSMQeqfbXbXTIqZAtdb5HJcgUxQ5MOD06f8n9D/YVxI=
X-Google-Smtp-Source: AGHT+IHVkPjBZZWpO88u2YrMojjQRZm2+OXl2pDCRbpsX72BfqrrTJABv2eO9OkV1+awudthPDrRNQ==
X-Received: by 2002:a05:600c:4f0c:b0:41a:8b39:8040 with SMTP id 5b1f17b1804b1-41f71ec26d4mr53830265e9.20.1715263616318;
        Thu, 09 May 2024 07:06:56 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502baad058sm1793311f8f.66.2024.05.09.07.06.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 07:06:55 -0700 (PDT)
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
Subject: [PATCH v3 0/7] Add DSI support for RK3128
Date: Thu,  9 May 2024 16:06:46 +0200
Message-ID: <20240509140653.168591-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_070703_060220_AB687D13 
X-CRM114-Status: GOOD (  16.53  )
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
this SoC and do some changes in the SoC's clock driver. Support for the phy
was already added when the Innosilicon D-PHY driver was initially
submitted. I tested it with a 800x1280 DSI panel where all 4 lanes that are
supported are used.

changes in v2:
  To improve power-efficiency when the DSI controller is not in use, I
  dropped the patch which made hclk_vio_h2p a critical clock and instead
  added support for an AHB clock to the DSI controller driver and updated
  the bindings and the addition to the SoC DT accordingly.

Link to v1:
https://lore.kernel.org/linux-kernel/20240506194343.282119-1-knaerzche@gmail.com/

changes in v3:
 Dropped the changes for the additional AHB clock for the DSI controller,
 as it's not part of the IP block. (Heiko)

Link to v2:
https://lore.kernel.org/linux-kernel/20240509120715.86694-1-knaerzche@gmail.com/

Please see individual patches for details about the changes.

Alex Bee (7):
  dt-bindings: display: rockchip,dw-mipi-dsi: Document RK3128 DSI
  dt-bindings: clock: rk3128: Add PCLK_MIPIPHY
  clk: rockchip: rk3128: Export PCLK_MIPIPHY
  clk: rockchip: rk3128: Add hclk_vio_h2p to critical clocks
  drm/rockchip: dsi: Add support for RK3128
  ARM: dts: rockchip: Add D-PHY for RK3128
  ARM: dts: rockchip: Add DSI for RK3128

 .../rockchip/rockchip,dw-mipi-dsi.yaml        |  2 +
 arch/arm/boot/dts/rockchip/rk3128.dtsi        | 50 +++++++++++++++++++
 drivers/clk/rockchip/clk-rk3128.c             |  3 +-
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 20 ++++++++
 include/dt-bindings/clock/rk3128-cru.h        |  1 +
 5 files changed, 75 insertions(+), 1 deletion(-)

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
