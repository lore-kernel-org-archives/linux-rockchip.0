Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F210AC54F57
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 20:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0M5+k1031kiZbz+FExLT1/0S6RnlKrc0MDXagtbcw5k=; b=NktTr7Aqxr+nBv
	O1k3SWEw0MqUBFJK2UacfSLu7+H8Ai7Pf4dLpQMYLER6+TI01qxyyAqRbmZ6XvmxWZ/ACyjlw8Xm+
	sbAetTBvBTd1OPb6sNic/YSO+5lGP4svOLFkefxYFsHEAF48kyHH4dY450IKywONvRlargh+46bUs
	R02htCp3BU4oXhQf7nUzhk+aZKnl3zYagho0iNnhbyc1bejKD0ye+7yAmvmezTvR8u5kwOdYOi9vD
	QU+tn1Tfi+tz7IQToB2BnW6oBNq/pByqq/baxOprowUm0bVGDQbLg69CT+D9y+a9YetC5Bhmbz8xg
	etobl1KkeNB+rwPLZ0GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woobs-00000006EN9-3w4X;
	Tue, 28 Jul 2026 20:41:08 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woobq-00000006EM6-3kuw
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 20:41:08 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-4a496b6cc3dso114881b6e.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 13:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785271265; x=1785876065; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=OT/SOjp6aWTENeT9cUlFqRmQfrzJFAU6CgEj3+vtA4U=;
        b=OHQobBSLjjO5XiVm2n3vA8VX0iosijktiNYoq+8oKY+ixsOkM1OfMxkcAl5JyCrN2N
         W6aoWM035f6QH/zTdAGph4hBfQgcbu2wI6gfipzWEkkpz2yDMhCPTuoTYsBT3MlapPbl
         pqqxN48przzZdwPiE9aquZjboTXEL4YUDzjqKpbUOvc/kz1adxd06Z/Ly4gEorM/xhcj
         ocoLEnuqXEF9fpJh+CJtp0ZQo9vOZ1mEcsEBi8NMviqE4gdF5VsgqPAmt+DM8ftNGXmU
         Shw5t8DUaCPYoAxZ1Z1lR9zXkDL+rcbLb3y8CxHvLzazEQqSZAqUKtOJ7YIpbI7Thqjk
         cgdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785271265; x=1785876065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OT/SOjp6aWTENeT9cUlFqRmQfrzJFAU6CgEj3+vtA4U=;
        b=cW4KBJ7RiyPKOlvJccy3Sf/lE4C2fAH/0a55pNxFcWB32gLck4OahTctELJY31jSRb
         /bwjYpt9Sj+l4bzrBadkWk+aWR/oCX5GcPoBLU4qKaEjE4AQ3JLymZgzr9H2uYRX2B76
         G7IcNirfsQQ3QLQAh/DsBYwquoc8CtQGBdDo7Znhx/3cTlHaLZKmWnFQ/i4BjU7E75Zn
         zockkOKjUW+KsHW7kXrogsRp2Ky02yTVeHNTd43cThmZ+1cBjlJhew642Ofs6Lrou+rW
         OmrIWaFbnAZqdoHfCaNR1/7mhmJiloZo2M7KOUJTW71MA8IKwPhJRFkQIP8PAkOY4Bfw
         /C3Q==
X-Gm-Message-State: AOJu0YwQ5pyHouO9m7CnZXAmr+sK9Gzz5JMkWKUMbyvT2VpNw4knQ3iS
	HdyI+pIPu2yP3LYkczeWpd7n8K/AbdbcFxmG5ioh/cDihI8TVr46f7KcdGDxkw==
X-Gm-Gg: AR+sD12I+vo8kXtLJrg4Zsh6R5vp6SCjqfiz8KhlfBIbLP2JtNv1SzlhQLtHMaYRee4
	v22J5V5MjZWrh5LpB5lYWUDoiWHRJLDEYIIKLMJUm37I6iwF8UeJNHxxqTRfmD8LjI3cfsJ97gP
	mG4jiAMpq7Pzthe0Yg3JPHKwR7OUa5p+psPU/Oa5IJvzFOYHxlSH5V8LcAfGeeAGHjshIU3P/ze
	rqZQfNTYcM0LZNGmOSlg0It+sGEeK/DWzsCN5FDwH/u0mDiDkvq8Bfh4ymlOH+WAWJ2eKIGFHFx
	VOiqek2aE6k5GoK0J4kgOrT6viPXhlC+uTasiCVbVssZLJksrubzjyGHv3uQhLnYC6AUgWkAYGR
	NpYbYNaHahLj1E0cR8TrSfAxA44SDBp3Jytx9GozH0Uk8wgCDHJgV84I+UL7n4YWtFPs5x33Pue
	ehk64UKyTCXXeprpDOH/wmX4pTNFY8zW4yMFp/7CgmckhCf2PqBaQTzINSy1vTSOguLnCoE8Eda
	4P5EH/xQnyBeyy9Pl0=
X-Received: by 2002:a05:6808:1a23:b0:497:e0bc:afe2 with SMTP id 5614622812f47-4ad5b7fc059mr2142437b6e.4.1785271265131;
        Tue, 28 Jul 2026 13:41:05 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:9162:e42b:cb94:2d55])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ad6efc5c3fsm129884b6e.13.2026.07.28.13.41.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 13:41:04 -0700 (PDT)
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
Subject: [PATCH V10 0/4] Add Anbernic RG Vita-Pro
Date: Tue, 28 Jul 2026 15:38:28 -0500
Message-ID: <20260728203832.166402-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_134106_945096_E6BCE752 
X-CRM114-Status: GOOD (  21.08  )
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
Changes Since V8:
 - Added linux/bitfield.h header to prevent compile errors on certain
   platforms.
 - Added regulator to Kconfig as a dependency.
 - Added mutex to IRQ handling function.
 - Added update to watchdog enable field in suspend routine to ensure
   watchdog status "goes back to the way it was" after resume.
 - Sashiko complains of an issue if userspace updates values after
   devm_power_supply_register() is called but before the hardware
   limits are set from the device tree. While this is possible the
   threat of a problem should be very low given that the hardware
   limits are set immediately afterward and would overwrite any
   wrong values from userspace (should happen within a few
   milliseconds). Unfortunately, given that the function to get these
   limits requires the power supply be registered in order to read
   the battery node, it's not something that can be easily fixed at
   this time. Since it's an *extremely* unlikely edge case, I think
   that's acceptable.
Changes Since V9:
 - Made a few minor tweaks as suggested by sashiko.dev.
 - Adopted new init function for __power_supply_register() so that I
   can have the proper min and max values from the firmware prior to
   exposing the charger to userspace. New init function is part of
   this series here: https://lore.kernel.org/all/20260720011144.1280219-2-vincent.cloutier@icloud.com/

Chris Morgan (4):
  dt-bindings: power: supply: sgm41542: document sgm41542
  power: supply: sgm41542: Add SG Micro sgm41542 charger
  dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
  arm64: dts: rockchip: Add Anbernic RG Vita-Pro

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../power/supply/sgmicro,sgm41542.yaml        |   96 ++
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  | 1327 +++++++++++++++++
 drivers/power/supply/Kconfig                  |    9 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/sgm41542_charger.c       | 1127 ++++++++++++++
 7 files changed, 2567 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
 create mode 100644 drivers/power/supply/sgm41542_charger.c

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
