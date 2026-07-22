Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8BBCC44532
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 17:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iMvqMkqm8bxZSQAxaUUV9+PNgWX4N3NzF8Svyt628gE=; b=QOkxz34OA5uX5E
	tfX6Xrn9o3G873kDkqKYU/hbQPhMTsu5bP5DLmW3YEL6BhHlgeYT8WTLkJuoctvqBhMNMZUbwc0X9
	Bi1lNaVov3ACrMVpKn0b3a9eBVl/of6P5giHb1g5SqsQlv+6/NJH1JjwLcznn+C5nqdufHFnfchb0
	pzKqLX03uTsrVWnadGnUfiRElcxWej6hIILjc/KLnncjxw0xWbhsldRD0etObCXUdNhMRC6mJt3nd
	rXOab0qmHpPoYiRFplpJXl6FGdHXRce6hbsfwj0Z7gfIxw9tkjCFUDbrRH+oG0y5dGrm8pYUjelhF
	70GmoxaD/NlBsqc+iu0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmaJA-0000000CPHH-2wvX;
	Wed, 22 Jul 2026 17:00:36 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmaJ7-0000000CPGE-3lsT
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 17:00:35 +0000
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-48a0ca07c38so7117266b6e.2
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 10:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784739633; x=1785344433; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZgA41dE5svnack/ZQuUDCns5DU9pgXg/CTTJbIOl5Ms=;
        b=fndeEuAmU9miVNT5uu1BheRCQgeWG3NENoPcdn3b9jlvfl+rsL63hHxrM399ada/tZ
         YedDar6nFw0x0cC7eSCFwNxY1DZ/l4nPsXvdFPNvzylrtftIJPW7R3HF+EenlbFQEdsp
         um/+5l0r8Apsimmc5xzgiqKrzGaUxRsqyJXcP2FamJEnnT2dW4JX6e1teaLOZwXmyB46
         Zwp8boAxXVicZB7hdRWE7vTEvr8FdD4uWb1g5QVWoZFBhHNZ0+KEt7lVXynV3eJMJc+Y
         xTtNDryAJL5vEWFkDgSVZ+Rjnl781R5kV2xwtM60pvPyHK4YGPz8Rl5uAhhSQ5PdiBMk
         5Pdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784739633; x=1785344433;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZgA41dE5svnack/ZQuUDCns5DU9pgXg/CTTJbIOl5Ms=;
        b=fAyQmn2y5UQDyk2JkYsHq+dQEDxbCL5db0WR8i/EFkmqxrRQFKKDYkjdLKZ43B916W
         OfFMhn2TwyTTDgMlMfdxGreHUIImpnoezhRBr+o1iFteciglJYUww6+LNXIUx2QgpuYA
         P/G0Sx3vFYh4avBfH/Bfs4kpTvhkV2C40guOlzSYtJ5aCagp+1WbekYW1xHBUTmQQTE8
         R6T7dzj8EgdoQ+/yRpZmjoEuK517mQ99R8cBS0d+UqJpGMTc4wNBTj8rdi+vmvf+/VN1
         urx7MoO1/avjRX5tVPqu2BIx75dDwEwDSsH73HG5Yr6X9wN9BwdbKEShWoZkHn/swxdS
         2Gmw==
X-Gm-Message-State: AOJu0YzUc6oNiaAhvtUl/NouX8KBAax4Xk/4WScocddfcrY5tQp+PC5P
	Q6T0eJRJAwS1ppPY2OUggzGV22gHS/9v83Hye6bHL+b3Wt2oQ2CEOTMDRlLUkw==
X-Gm-Gg: AR+sD11XD4JGYxpOeteFWAq/j1jMyVifeuE8lCEVKaBtr/e0mi550P6LX5+6n0Hooty
	ZZL/SVZE1BYmsy3UbJi+ScAy3jOjZ0bSEddb/l7SUtTerRpH4srT3wFGHd3OzpK0Y0QjRK2DmPI
	/g6pRLOKwLxbn5JUp734NE1aKln2uSSWOvKMHUxG7nc1yl9sPVHv5nUopWWoyZvYqh71fBGSMuA
	kXhS+2zSJWsFVmmwvS4PWleFMQpllfwzixYEGXUnVOj1ow74s/Lrvju5ukpk21bZYcMA7mu8yIs
	ADaWNlWA9G5VzJNJOGLpaNvFdU0muZTh7soCctPAv3b/e3R0H+iX5oawtMHwTNM7gjBNYoSq/3A
	eGFn1mLjLgh1+Ezbcqw25fGcPeKOl/Ddn7SdQNymg/OnoYhSDeTPnbf4xudUwSdA8uNIWW0Se17
	pK
X-Received: by 2002:a05:6808:444b:b0:492:cdc2:80e0 with SMTP id 5614622812f47-4a4d049cf4emr13247601b6e.23.1784739632359;
        Wed, 22 Jul 2026 10:00:32 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ab0e9af0afsm1399619b6e.12.2026.07.22.10.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 10:00:29 -0700 (PDT)
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
Subject: [PATCH V9 0/4] Add Anbernic RG Vita-Pro
Date: Wed, 22 Jul 2026 11:58:02 -0500
Message-ID: <20260722165806.161020-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_100033_943663_B8F78A83 
X-CRM114-Status: GOOD (  19.82  )
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
 drivers/power/supply/sgm41542_charger.c       | 1118 ++++++++++++++
 7 files changed, 2558 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
 create mode 100644 drivers/power/supply/sgm41542_charger.c

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
