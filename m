Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38C14CD6E6E
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WKIa2J8ETsjDzdHCbkfs8VHPHty+JRIsyvYqYpGRRaA=; b=2rhJeOjyX3HcCF
	M/kpNre6XL8K5tMx0khDP29kp4RyUU5+3aFZ2UC+CarXKShk/un+gleb+BrCo/KucokLQ643b4eGF
	6gPvrgLMEVDGT+CEDogCyVDGW6FNQgIj2ujvkN9ob2HTHppv9Nl9L5MrGzSqagEl/0SKc8cIshgDq
	39d9eHp3l1grRwvnocQTTKJaBDA0ysSbe6cHVfno/xyN75ZOBcmk0Bv818oxZIuk36SG8q80gw6G7
	Q3ZiYM/aUJeguzHPcE9V1vna6neXzqqHBGyL0GwP8BZ+5memBtJTjZEQLJ4NIUZJ6y+ojs3b0Fy1V
	mp2rFcohnzFplthnwaAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVGGj-0000000HO0X-1sD5;
	Thu, 04 Jun 2026 22:10:29 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVGGg-0000000HNzL-2B3X
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 22:10:27 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-440df1c768bso971692fac.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 15:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780611025; x=1781215825; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fVLrBm4vjTwY/MxerVmyF9GI1R4+t/U/qrvJT7nuGR8=;
        b=a9jUvgefDgquuZHgcNPnNE8vTCeW9N0hq2GxtYDoM3FSkY4bLwifPigRRO6ZjjA/ju
         OagBNnZ3+q1yH+1/mH70KC43k5sVbnNFdaJCAg/1ZrWu8Y5Xwyr569iJIaBCGl1L3eG+
         DntpbD/1qn0ciACL3wTbkFxrwygX//muLj9kCYn7T49Ph/ICCtXq37BscxUos9/g9cZR
         fsgIKxT6MUBYhZzBv0woA/gRUV3ysOUXQkQEizMAIdgJF8R3NLlmv/FtkW3fdvUqI4mR
         1/lRe+ixOYgnUBG2/OFW8cg78cbB5bwrQt6wnecRhIDyD2qIcXxiXNg0H7992NYmOf/D
         uE+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780611025; x=1781215825;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fVLrBm4vjTwY/MxerVmyF9GI1R4+t/U/qrvJT7nuGR8=;
        b=fSQ93S4XXfbO1IBYCp4G+UhBkvB8Jm7GjbLuSbKDNdm4NjfdGBMyHIzbZkFf7aHdgB
         yLGrmKDdtmHp0ivwapxrA/Ddxub/AIrl0NjbK5UzZccyCtAidJXDYjJCbyMb+L1j64F+
         gtEFr4GqJW9A8jX4FcESVjsqREufj/2TCCntwwus19E/xfB5Az7U87JOXnHhk26w/IvS
         /VcfiJT12VZLkDDm9rFufir0HNHZF7pen2C3UOB4keI57YiSYHzvs1G93gs1pkMLlUZg
         z43CUcnECCvoVBpipn6Ydfzr5NGVXG6ytSUSDOFzNjzzsNa7wfpSj/0R3ziLmUc4hRB8
         0Shg==
X-Gm-Message-State: AOJu0Yzzy0YbLgMYzKOAumkNGHnTlErgvA9gsFbsh2low/A4PXHKd64G
	j2x9ijPKmbgljEmHty9P2LOabhtATj6kyykmzu9/LM6ehNFJqfELX4iy8oznYDF5
X-Gm-Gg: Acq92OFizT8PiEEQfsXyASf0h5SOFTlafR50IRPgmCVRgqdxLd6CmIn6jsYiHfdV5J2
	ACUlUX46/hPNooLy8BrvpqChwKkXkGtGk5DYeBe9yB6d9/8nInLr4kpRr7E4ByiO92lhDAgjg2D
	228wuriGNAgCYHgyeakpCPjOAuH3fOkvmsWCq08tQPTbTW08qPXeX0rPYueWCZEkYfJ2O8sEgYQ
	O/en+5pPJ96sB3ESqzCa4SqwfFKKrSuLWVKBJmUyi//DdIHjPKK5Qx7qj/RfeEdPR/Q7ddMK+Y1
	XOLRptbtXnXJJGwZcWQvgXK3pEpRwWBHpBc9xIJEqIJZ/FAjDnWsQcm13M9WeE6qFxuHPKEyz4B
	cWsCje/s5IrIcCz+Y85v9ZgbeikVZJpiXQJJ5OCQ7OjJ4fYOLaM81g1Q1t0YwpMIuLxAkyVJRcf
	otXiyPQhg31NcUO4jRqph0oOZXSFcqme8=
X-Received: by 2002:a05:6820:4c14:b0:696:2480:dee0 with SMTP id 006d021491bc7-69e68c07645mr532433eaf.34.1780611025055;
        Thu, 04 Jun 2026 15:10:25 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d84c0ce2sm6802987fac.16.2026.06.04.15.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 15:10:24 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V5 0/6] Add Anbernic RG Vita-Pro
Date: Thu,  4 Jun 2026 17:07:55 -0500
Message-ID: <20260604220802.119107-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_151026_587699_BF421BE9 
X-CRM114-Status: GOOD (  12.52  )
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

Chris Morgan (6):
  dt-bindings: power: supply: sgm41542: document sgm41542
  power: supply: sgm41542: Add SG Micro sgm41542 charger
  dt-bindings: display: panel: Add Anbernic TD4310 panel
  drm/panel: anbernic-td4310: Add RG Vita Pro panel
  dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
  arm64: dts: rockchip: Add Anbernic RG Vita-Pro

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../display/panel/anbernic,td4310.yaml        |   66 +
 .../power/supply/sgmicro,sgm41542.yaml        |  104 ++
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  | 1327 +++++++++++++++++
 drivers/gpu/drm/panel/Kconfig                 |   10 +
 drivers/gpu/drm/panel/Makefile                |    1 +
 drivers/gpu/drm/panel/panel-anbernic-td4310.c |  256 ++++
 drivers/power/supply/Kconfig                  |    8 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/sgm41542_charger.c       | 1075 +++++++++++++
 11 files changed, 2855 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
 create mode 100644 drivers/gpu/drm/panel/panel-anbernic-td4310.c
 create mode 100644 drivers/power/supply/sgm41542_charger.c

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
