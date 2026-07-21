Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7155FC4452B
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 17:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dyZqkRwUabROvBVlvynMj5764wKke2M1VTm2HXP3WuY=; b=PwAnxFjI68tlHE
	tGGCoK4l4phs1VXpPs62//8Y2dUNPogzEOQUpGpJKFS4DMJ7Ns5HP0NqfQ7dExJQh4pC0KL5rtHnM
	aM085Eov82jsd4cyAZi9Kur4Q8GXVUvC6S03Ykr8cqqR/+qDz9hYc31wnC9k6NgjKXQeB4Q/8xqMY
	bvcf6nlJD22eUamDH4skbsVeTFA9YDwr9Pt3hzDMKXN0MXc7Hj72hqBrvaQvz4DX1K4hhuSs/jzi2
	C1QyBdkTRl72bye0/DOP4eagiFOvR604Zg8LtjVL+n7iqO2nlk5QTWGs2JkiNyn+erPcuQFtmyhvd
	b4pNl2YF0tYHafU5Bhlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmE0C-0000000A1Ff-3AtB;
	Tue, 21 Jul 2026 17:11:32 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmE0A-0000000A1Eh-1M2r
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 17:11:31 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-495b250b01cso5818315b6e.0
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 10:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784653889; x=1785258689; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=QzhjVfvwCu9RsziVFmoEaGvP3wdKmz3SRFarpVmt0Fo=;
        b=aTbyVB1qCCFyRaZ6t/9+EZVSJeeH1lEPbo4SW+9R5s1QDO5Dk/RfV6StSY3fC3VBBc
         LQCo4xKZOSnvqW0mpKMHV6en9mJ+zmbR10Sof6J35Vib9LtNrDnpjUCWvXGUdLQpMLgC
         sLZCRdSDN/xVnipz1UhkOyHxFCZ7upp6Azl+7HDtFVtfAicD+dkgyneC4dkADAa+3reG
         izgatlHNKp2sp0VTBg/jpy+a5ykwRozKgu9St6a+IaiFOoW/HfXMmjukWteRDkSNnxpQ
         ttmG81mtuw1yz9MEep+HzZLQhSIkr9zVHRb+aFYb6AB/c3mYHMUbTzv6J9FsrRWm2qxP
         hqVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784653889; x=1785258689;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QzhjVfvwCu9RsziVFmoEaGvP3wdKmz3SRFarpVmt0Fo=;
        b=lvlfdZHxvYqCLhwxNLKklNmydoS1BGCWlpT2rlpTE0H5OZm+b4gUE7iUu3QQrkhpBr
         /TbTaekDY5coLd4t/PsvNDKXnjrKDmVMc+/75+ssMPYivfNPdkfqV8805RF5dkbcMFzB
         NMTavkuh91b1cg46pkuR8YnJmVsOK6G2KG9ExPz8bTQ338Jcw6+6T+vIclDwHj2Yqtcz
         zxoPqOtMGm7+JCAzhcU2sQX8opOATqG5OSBqglY7GEO+yGnEOR8U+1SDUkR7wisFZJ8p
         PZZF2f5sLdrgkNNXXpQgk/Kz58xFAeUYZOwYAamcl8LP7OM3U/UzGIb6IhQOERAcMkl2
         M2mQ==
X-Gm-Message-State: AOJu0YxxvvAuRjfqJixy6Y06wt+j/nspvrHkynNN6aDuFqNMxudYbAZO
	GcBDo2OXCME26nfVjGfSf4s8020Rv2jaff6AGCnRYGNwUsPl6KdhXDoHhIZEfw==
X-Gm-Gg: AfdE7cnfkt4N8iN5PfhJyGbdiKlckgKqf+0HtAKuEzQbSNQvOZgdYMG/8FqY7WLDFi1
	C2ipxR9Lif13W8q2PlU9L9OeOs4hjSD3JFfDETJN2aH0HsbbpiBbypi8pnqDkqjT2VV8vtLuEKU
	xRxp2T8pl6iZE18QGGzxGvVAtcCLuIu/FdN13OX7ujnvOmy+LEHWBTKHIVqitEMVu+00rCOY8fB
	ZNpmkL4bp5tFpVm8G+MTDdpzaYodAxqZLnjdpV4TLhe2vlene6Q6Id+J8SwIEq/w+eZraYmW8N8
	c6BQD7GI3Vfxadj8g3EGT7mQYJUih3uyi5g+/1wvPpBuKPItv8DWGJllk5jxcVf30skvnURoO6T
	OwXn8M+fNQ7dTVnGUfpTbcaFMq9Fi1/qPZb0TFfWbiU1zyUslo1SbhqMoUebjn8YnczaXtZiSHN
	52
X-Received: by 2002:a05:6808:2225:b0:495:f79d:8bd4 with SMTP id 5614622812f47-4a4d03a59femr10829527b6e.25.1784653888497;
        Tue, 21 Jul 2026 10:11:28 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a4d3cadb50sm10213953b6e.9.2026.07.21.10.11.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 10:11:27 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V8 0/4] Add Anbernic RG Vita-Pro
Date: Tue, 21 Jul 2026 12:09:03 -0500
Message-ID: <20260721170907.131731-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_101130_624831_0446C1C3 
X-CRM114-Status: GOOD (  16.20  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG Vita-Pro, based on the Rockchip RK3576 SoC.

Changes Since V1:
 - Updated documentation filename to matche compatible string.
 - Corrected order of allocating IRQ in charger driver and switched
   to using devm managed function to allocate work queue.
Changes Since V2:
 - Corrected issue with naming of panel binding document and added
   fallback compatible string.
 - Switched to devm helpers in panel driver. Note that
   devm_drm_panel_add() is currently only in the drm-next branch.
 - Optimized setting GPIOs for panel driver.
Changes Since V3:
 - Fixed numerous issues identifed by Sashiko bot, mainly relating
   to unclamped or improperly clamped values from within the
   charger driver.
 - Corrected hard-coded values in the panel driver unprepare routine
   as well as correcting an improperly checked return condition.
Changes Since V4:
 - Fixed errors identified by Sashiko bot on charger driver that could
   result in an improper value being written to the registers.
 - Corrected some error handling in the panel driver.
Changes Since V5:
 - Corrected minor errors in documentation and added default values.
 - Further corrected clamping behavior in charger driver.
Changes Since V6:
 - Additional corrections as suggested by Sashiko bot to fix potential
   edge cases during probe for sgm41542.
 - Corrected an improperly shifted value being written to register for
   sgm41542.
 - Changed a MV value to UV in sgm41542 driver to simplify function.
Changes Since V7:
 - Added PM functions to sgm41542 driver per request from Sashiko,
   which stops the hardware watchdog during suspend.
 - Switched from device_init_wakeup() to devm_device_init_wakeup().
 - Confirmed a state change in IRQ handler for sgm41542 to ensure we
   don't update input current limit except when the vbus goes from
   not okay to okay.
 - Removed panel patches, which have already been accepted upstream.
   Please note that this *may* cause an error about missing bindings.
   See commit 0fd6ead8270270d859a28d0196a4b47e7d6845b8 in linux-next.

Chris Morgan (4):
  dt-bindings: power: supply: sgm41542: document sgm41542
  power: supply: sgm41542: Add SG Micro sgm41542 charger
  dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
  arm64: dts: rockchip: Add Anbernic RG Vita-Pro

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../power/supply/sgmicro,sgm41542.yaml        |   96 ++
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  | 1327 +++++++++++++++++
 drivers/power/supply/Kconfig                  |    8 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/sgm41542_charger.c       | 1111 ++++++++++++++
 7 files changed, 2550 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
 create mode 100644 drivers/power/supply/sgm41542_charger.c

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
