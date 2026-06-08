Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5790ECD8C9D
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 17:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TpX3JUHoJeZdYpGP4OSG6zdXQIendPfHCadVcpTYd1I=; b=zSpP9wu/fOeA+0
	xJ5uNwIoUhtsBsfFNo4tKq9ptM737gENEXRJqI3Vci82BauSu1snU4NRbqf95L9/IrWZUIZW/ty8h
	srJF+QD5FVQDvFJOo9gMbBTOJo8q47r3cZbEU3yiY5k6HrZuyAHgKsPtr9rcvY2/jlK9ryeNy3ET/
	Y8j+7kd0RoxGbxcNarxe+t4CCskBbPwpOOeeOKhYUbxhTui9G1OpZpRoZz4ukVTrUBrHgZm5LAOzg
	chBf6/qgNBkNL23LeODIbo0zykZn271RC7Xz59n9A0Fx4ZG7UtM6/VIv4pthjaSnUcC3SWcIbUXZN
	jSuogE1HwLspvKvwGOiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeEE-00000004EQh-0r8K;
	Mon, 08 Jun 2026 17:57:38 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeEB-00000004EPe-2s1D
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 17:57:36 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-486b93fc7c8so760337b6e.3
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 10:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780941454; x=1781546254; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OVSlvqqOMvr0bzIovKyMDYV1sRHWvTORPbcBmLSFAzQ=;
        b=K49o99WFWkULJVsIQNdpeA5UZtImF8REN1b7V7nWjSYGKI0oukI7v9dT9F4qkSgcXP
         L7rel4Tq6k9H4EOaH7rBomo4liB2jjU1YA4O10c9fD9KiG55Fc0iTiZDG+4s8aARg5o5
         BZzHobChBhj9l7TW0kQkgOdrMXBaE2wNmkFm8K2Pa5POSv5zZKHrjhHafdkWRwYHnipy
         29JxJphAzS7Wf8UMtgrsbB7/E8e+Rie15QfVQufUhYirSMQ5KgW5At1qhLCarg9K3I6Y
         LN4tCwCWMwCE5qCMrWJtGP5ll8K6+UgpDszFS7Kf/E2Pdx0ji6++pVd1RvpCAwYi5Imf
         53Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780941454; x=1781546254;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OVSlvqqOMvr0bzIovKyMDYV1sRHWvTORPbcBmLSFAzQ=;
        b=VsCUsxTBPdn/6aFE0MzpxjnTcfdsJR1X1rqQZXZHidUHqfaHV1Vmxu8sqYfRVrfn1i
         q+r6sst/Gx/3LfO7dpk/nJ1ZAQFaFvqAHKSC+riduJ/OZE1L3+4iFlugpQfEEj33lKsk
         wAdtK4l2BvkX9IOdJmoGaob3jTTISJp7mLZionGhh/cVTV51/et/wBRbOukjL1KwZsNb
         kXM9lHSEokg/TH2bG6xphYQuK8x9NaU1O/Bl/PN1hUgeEXwVkmy0/pJzVYC2WFyhuOSO
         bHdHQ1MggA0NilLu/L1YARYcT8xCZC0m1KxIi2+ZEHDIWwv3yrMY3ZELHB9mgvKaRxUi
         i/cw==
X-Gm-Message-State: AOJu0YyDivVdS9BqdDd4ls0vGdgC+9jpfEZ28shNwKGz9DTjcjvxYz//
	3hbxTpq52XInnqN7wJBo8RP4hq4Nsma3gndWxEpnsQnNmlk1KuHaDXVbxULhvdaj
X-Gm-Gg: Acq92OF3ERwGeyYyD4gnsFk2eb/PF1pWjBBQySnTuM97OuPEx4jDVv5iU8BgBQvqea1
	YBLhx6x9zGD02wl+LJvH100judDBjnuJxEAA9LsuAHG9d/NWg0JcKuYAxRkvZf2V/XB3vHx2eef
	yozc717SfJGusyWvpGkzExZmm4zRresBknKHJcsWZUwfWsaCXHt9tEnz86R0CiPxLRBi1LhLQfi
	TMK6aR1BuFC65mdL/QNIpQjhZi9bdQ9KByDmibFK7TG0dkJe7S/Nm4Ikww4eT1U0s/PsrTPcvJy
	5T/E4Y2kbcNwQOndF5fzESo0Fkogne/LgrheWe4PodJYkBVTPzARNXibdP93S44sPxUOW6TbSKb
	HEpXk6axORlNP6UI2rJHEuGL5QzJZrinfNvbQ/cBD4DVuILp01ug94wdOjV4yrxdAkVIbGObzEh
	hvbAE86GWQnBvQ+jVKJLCOAVN8nr6L8z0=
X-Received: by 2002:a05:6808:1185:b0:47b:c2a2:1c89 with SMTP id 5614622812f47-4868dcb287emr8786503b6e.21.1780941453860;
        Mon, 08 Jun 2026 10:57:33 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d8297395sm15214316fac.11.2026.06.08.10.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 10:57:33 -0700 (PDT)
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
Subject: [PATCH V6 0/6] Add Anbernic RG Vita-Pro
Date: Mon,  8 Jun 2026 12:55:15 -0500
Message-ID: <20260608175521.67449-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_105735_753488_33F57D42 
X-CRM114-Status: GOOD (  12.90  )
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

Chris Morgan (6):
  dt-bindings: power: supply: sgm41542: document sgm41542
  power: supply: sgm41542: Add SG Micro sgm41542 charger
  dt-bindings: display: panel: Add Anbernic TD4310 panel
  drm/panel: anbernic-td4310: Add RG Vita Pro panel
  dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
  arm64: dts: rockchip: Add Anbernic RG Vita-Pro

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../display/panel/anbernic,td4310.yaml        |   66 +
 .../power/supply/sgmicro,sgm41542.yaml        |   96 ++
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  | 1327 +++++++++++++++++
 drivers/gpu/drm/panel/Kconfig                 |   10 +
 drivers/gpu/drm/panel/Makefile                |    1 +
 drivers/gpu/drm/panel/panel-anbernic-td4310.c |  257 ++++
 drivers/power/supply/Kconfig                  |    8 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/sgm41542_charger.c       | 1057 +++++++++++++
 11 files changed, 2830 insertions(+)
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
