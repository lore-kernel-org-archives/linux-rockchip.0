Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB51AC10F1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 14:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HDl0Mbcq5i9jfFGWMrnL8cRu6tg62rfE9wIQfSi0LbU=; b=WFJw8hZCMIJCiZ
	GtjlcRToP5sUcCaUhS/CRsais0fTM8beGGjvWVWi352N6/mOzDaDRb49PChs5rdqSaxwoA2JiE4me
	WWIEfq1/KLtMpH8UAIjtYgNMZfNjtekvFdK70lhDrxHTNEH9CO4BZ32+/BAGV6YnlCCtHoTpzd85h
	Wb5imnXLUgX0OPm/sxXBPxb7O7lyZGJsMWEtboDM1CraI4Vuv8hjU3isCn3m7/865hapYsAsS7wGt
	ex5Bz7RJa56wze3wfPq5/Izu/wegtPc23aEODLITNlheE6dmciCgvOX/Rxe9mTATr64pb/SrIsMs+
	B2sFqmz8+pUEGSm3GFRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54OH-00000001edh-2wKa;
	Thu, 09 May 2024 14:04:57 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54OD-00000001ec2-3vrd;
	Thu, 09 May 2024 14:04:55 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-34f0e55787aso626365f8f.2;
        Thu, 09 May 2024 07:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715263489; x=1715868289; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ygKOaLULm9Ty8/azGUq2u8NIEd5rcobuUSoqUbVVSBY=;
        b=MeNrf/c7YLfqqzV52O751+9iPp/ZYRxIQTG8ga8A9Svg6jxhgGeGcEGekv5Z8t4J3b
         rBlSJPgwf61IKCN6LYWbHhjLPc8wuQVYJrPunfP5MSeX8NEN8TrPt8V98bFiFpXTsz+N
         riFOpNIV4fr/PgDu81FL9z18qFxCECnLycm3RktdxwflFcFcj7wcYD3YDRozZTzh8CJc
         v6Ujnt59dIP/ds+ZzXtP0syKn73rDOMAs3TOP6ocsM9vrumOSYz9CgBNkgbrD13xGZgv
         UcIZ3afG8smAAoMDIEgdNUc1F0R7sGKzG+GMvjWPSXvEUbetmcOQ5q5La7WknHHFL92Z
         6oOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715263489; x=1715868289;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ygKOaLULm9Ty8/azGUq2u8NIEd5rcobuUSoqUbVVSBY=;
        b=SB/4qvnHutlfMc4P9Au5tizyJD24r0kxbfDVD0Wlg45Z2pAPX0CabWDYvyNjIS10Uw
         pgwJQfyNxHDCwwXV8sJfVwr5Dx76AFqi1D95NTQ5krtLFKcQcs+k/r3UwQgq/ygaJQRh
         Og5vL34uAXRAK3ZZeQZkdFXkcCURya0Oobf4c0iO9atS5dUIybAZ7FwqlBhd+QpttAka
         ao3NbxwtCP0hKTF1jvG1gG19LggYM+WQoBkniMyfuOb/qkg+sZ1xOkmgtO78dKMG/9an
         UhFM0f8aHFHoWjAoZWEhv3W2xyXYMREPi1IabVxx2ua22o1WvqmPwdgMSrWRo2Je5LB1
         Pa/A==
X-Forwarded-Encrypted: i=1; AJvYcCXf1XqGUc4KpanQdZ70Wn0WFoVkTXvNafX5uaV9RQKDlUfBRycgTxbcBpotRaCzxmWxyHjG57t78ctESQeUFMuJ1pbKToJvZ5pspHH3Xu756n+U4anW154U6L3xJ51sdqFwy07wCQGeMjjy+CWUVmuaY3t6tFc1jyc=
X-Gm-Message-State: AOJu0Ywqko01/WCOSEVGhChBqs7r9BH8V/SLdOOIIxwG0vW7GRmVzoQq
	08vX6X5uefhn6/iEEvXfvoQZUoyp72ilHrvHKDn8+FqdSMFjAQU=
X-Google-Smtp-Source: AGHT+IGJQUoq4KBpZVLF1jIA/JtqfJbPLkQQBLMgSeQVY1xajdJgFURlR2LWCEqpPMRCfEMg1QA8dQ==
X-Received: by 2002:a5d:6e55:0:b0:34a:3f3d:bb14 with SMTP id ffacd0b85a97d-34fca242709mr3566295f8f.27.1715263489393;
        Thu, 09 May 2024 07:04:49 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b896a29sm1788467f8f.43.2024.05.09.07.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 07:04:48 -0700 (PDT)
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
Date: Thu,  9 May 2024 16:04:32 +0200
Message-ID: <20240509140438.168429-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_070454_000650_C354FA36 
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
