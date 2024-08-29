Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF406CA0EC3
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 21:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9ZsYVAhqSH3/pBnEe02c9DZckZ29bnXVNI3E22GST0c=; b=k+JBZI44xwR4GH
	vCG1Ukclk2MtrmHNU887mnnAQ8d9q8unFi6VRbBWz2Qybl+jMpXMUC7sAzBcXojHZG5xczXgopC+1
	CzkJ/hYJctPwJVy0BiE062CZROtzMzOQ5TGpl6DfKiD5oij9wxh3Ow/A4OulVCgkFXV+1maMaSQQP
	OS9T49LZMerWWY4L3YtlGNHAuAbvpxhcgHH+WXEWnNyMOFQu82LsSJcC7RqZCvU7TJ6QI6XzT7c0S
	8U02IgrYfY6METc8gPtXpwPQXNlZQYehMKEGO0l/PZyx03HFmnFOkS1YsP+2itb1uwTEjQNlRGelp
	Idp65VNwcs9hoJYNeKvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjmlq-00000003hxr-3AvN;
	Thu, 29 Aug 2024 21:33:34 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjmli-00000003huz-0xPk
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 21:33:32 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3db14cc9066so710773b6e.3
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Aug 2024 14:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724967205; x=1725572005; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=M0YYJWdsykkJQYSuBZclguVClq53sTWOz1OT0+ZWJio=;
        b=UO/RqKvz4SDDQTN7sWYgov4Nd9ITd8f5f4xQq/IsHQGiKFoYbOMj1wzBm3HBuvMoFk
         SXGn+6Usy8F2gYErBgUaKLh+yIeLqgd05BP35iU5RXYFRW7fMitgE/cT8oPh8B1lkkkr
         0ra1kFWjcNzCJhnqhcukdeRSuVuGbV9AGY6x3BEYNEkO804iW85ux0ZYVkemPGncSvVK
         2jQrOhh7ubg+p8pzPSD5VLmnsSq5yUZ4/e9x97ugTipdAQl08hvO2jlmC368Xr+mf0hd
         Na/XbfrZvgcREgqQ/Sp2RuJoMfqTVXLLMRFmV0TOlU2B9Qi8Obz5gbI5m6IMrY+YBQBz
         hkaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724967205; x=1725572005;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M0YYJWdsykkJQYSuBZclguVClq53sTWOz1OT0+ZWJio=;
        b=U+vc4MK4qfJ3gyB3gCRghI9Fh08YdTMSUKCGjcv/iRg+xJ+ZAWf2LpodOiWxuI/xs0
         RUlT/zszFVdeDc9Xgr8H9wLlc4utLZNJTpzZZXyO/QMhTb5NUTPSt5kMYgNw5R61ipXA
         3TEKbV+18JAoDxH14vkMeL9YSjpW8ZxmpRWc+aH2eg1waxoCy5k21qHWmAz5nqXyPZ1c
         CV3t9rMmGkkSR/J0vq3155o9Bkx0sRYZVMKKcBWxhrL/PWNQJal6lP9nzUHuyUml4x+M
         o/uy4luf++NoRvxoFDXDNWKIAzTwAEFjP3gUm4XpQiZxkmyymwOWZv/Ew1YEzmMBHo5U
         Wg5Q==
X-Gm-Message-State: AOJu0YyqVXohTtjbF8m3NCgjj2PxnupJ3MuOXOOY0CxSYj4TuoCAp9V+
	Tjn4vZ+AuSgYELXUb5OSo/Wi4iHZBzbky47yMyWH5SJ78/hHo9C+bUyVig==
X-Google-Smtp-Source: AGHT+IEcpnDIedn9yCIvoZonPjKKvmy+aM3xdG0uc6vRd2/+6Qj8u2W8MgUCryQJf1t88IyXpeJiDg==
X-Received: by 2002:a05:6808:17a2:b0:3d9:e1d1:1580 with SMTP id 5614622812f47-3df05da35c8mr4256965b6e.21.1724967204729;
        Thu, 29 Aug 2024 14:33:24 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3df11865de3sm93097b6e.42.2024.08.29.14.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 14:33:24 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC 0/5] Add Texas Instruments BQ25703 Charger
Date: Thu, 29 Aug 2024 16:30:57 -0500
Message-Id: <20240829213102.448047-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_143326_296564_91520DB2 
X-CRM114-Status: GOOD (  12.49  )
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

Add support for the Texas Instruments BQ25703 charger manager. The
device integrates a boost converter with the charger manager. This
series adds the device as an MFD with separate regulator and power
supply drivers. This allows us to manage a circular dependency with
a type-c port manager which depends on the regulator for usb-otg
but supplies power to the bq25703 charger.

Requesting comments on this series as I want to confirm this is the
best way to integrate these functions.

Chris Morgan (5):
  dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
  mfd: bq257xx: Add support for BQ25703 core driver
  power: supply: bq257xx: Add support for BQ257XX charger manager
  regulator: bq257xx: Add bq257xx boost regulator driver
  arm64: dts: rockchip: Add USB and charger to Gameforce Ace

 .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 143 +++
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 120 +++
 drivers/mfd/Kconfig                           |  11 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/bq257xx.c                         | 118 +++
 drivers/power/supply/Kconfig                  |   7 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/bq257xx_charger.c        | 811 ++++++++++++++++++
 drivers/regulator/Kconfig                     |   8 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/bq257xx-regulator.c         | 195 +++++
 include/linux/mfd/bq257xx.h                   | 120 +++
 12 files changed, 1536 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
 create mode 100644 drivers/mfd/bq257xx.c
 create mode 100644 drivers/power/supply/bq257xx_charger.c
 create mode 100644 drivers/regulator/bq257xx-regulator.c
 create mode 100644 include/linux/mfd/bq257xx.h

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
