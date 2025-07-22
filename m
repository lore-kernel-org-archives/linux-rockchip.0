Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C4B1C83F34
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jul 2025 17:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S1Rxxm7Pm8+Lv35Wv2SUUPWasduw7ppBbSAR4RoeOE4=; b=gW/2H4J9l4NtV4
	sw0iS3cOO1ctEaWvhfmeCvfPCmshM/4pGbmxIjm05jNwtN/1kgwpCg3qzKSjN6lWX/xguYN7zIlqj
	M/MmVNQDVT0K2EoypHIt5Ya4P+GfCKJxp12ndfOGowu3UKjOHLL0RcbJZL3ELEdJ2uxBKTqCmxEdv
	eUcNTZY+1NW8OsYpSAhABjYJSBUFE5F+nqCRg6JA22CTcUa/bwV9uqwjZi50UmQerdSpK6XpjE0rs
	nplZ+chOIV+4/jOY0SGLddIWPHrgjt4UiuIBhL/83TYHBRonVJweg+1bpce+Lw7aVrbDb8g57S8+a
	Y1h1DF3/2YikQmHxNgsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueGLe-000000034wi-44ys;
	Tue, 22 Jul 2025 17:00:14 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueGCK-0000000342Z-2S5W
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Jul 2025 16:50:37 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-41cd87eff4dso3270437b6e.2
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Jul 2025 09:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753203035; x=1753807835; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wE6+8XmJrJLyyTjnrj6vJNfHXKK/OC8GAtAhiKrkwI4=;
        b=X04wcJHu96NO3ceu1K9EzBitYpyIZE6ecvzbngJccwwSQ8Nk2MGufOoy/Fpx8KZJRe
         wv4XJHtpk3/SEjQQ/UvCPakV1bbpaJY6UkUy+UPLQus85jWgWN4yJhr92vSey3pQJZRo
         6eose1SmcNQx0TK2vzSRXTNJb1TLszGAawSW023wa4FIuk5v3HbkXn9UjfBwkmwuM5ce
         WDtb00xcZOUY/9jdqzuEdxsCHeHAfg6W/EyFw5u/LuDgp3re9Uvolu6wcLhncg+P/mSh
         vSmSA+jUCgiUOdDs1shCNqL2k67p21MgmTSga0K8oUneFrxAhMaJGdcOLS3XLn/sGgPq
         /j+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753203035; x=1753807835;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wE6+8XmJrJLyyTjnrj6vJNfHXKK/OC8GAtAhiKrkwI4=;
        b=XDNcjrtyfTFDbtX9WdZAKmHB0l1bI5TZq7mDAJXj4FNzuJJ6tNX01svdaaP7tJ8s6H
         FUkh2S2iZGOcMhlu+adFck2aS7yARCmj4nbFPMDovv3Th/UfAPcRCqETLCCbImgl/XsQ
         WGg1lLvVuQY8KQUIx0Gfn/m5X1JToqfpUXlYuXVTjSOYrZSfBDhjmABydGCWqmieN0uo
         wI1rvc2WWCDQJ6VdJtLDfHF2k5g9iC+HZhTZrpph132y2A0BbZixuy6xaPqTcoijsZxI
         9+LDuKqGrLMNf+/SwkLE3ww45/GzorD/+YwMZ1QPwfAMXYMdFhw5DXUf8wMpUGTxw0xc
         Q7AQ==
X-Gm-Message-State: AOJu0Yz23U3P7HspvAqnZsYe1V5CPVE7DE54gUCErPtzU8v8esZw0laZ
	B7cplV3EaveE/rTaXjQYLX40UHOB9mF/j4N8ALQXPfX4PeGYsNmwUjhO
X-Gm-Gg: ASbGnctYgXcNG2Txvrk8uOuU85mxabkvm5IkQDKpHXzWlPPVh3ouIYZcippmmKp+5zN
	NOydWzl914hnxn5mSs5DZtlAJBoO98GjO+hFi7CeB81d9ja8l5/FmfLaqfpUw4xw/1cxO/V8xmM
	fb4yim6yGqTDp4hbXbgLPbF4azJjpuUqCCv483YPzXE9NUstJNFLAJnp4Qj6KeOLlRk6VWCdMq2
	ODfx5mh9LEv5FkKQ6M2DV0jns2wTc0Ls0a2hPKmxAAZOR0sXoKHgZa4EV+K6J0KZTnhA1+/IN6m
	0eg82pLU3n0mYcXHNsjU3jBrOagQLIvMFkg4myLfKZD1ztgDyXn2No4TBAhuMUvmg3DlH8XGTLZ
	egtsXq01ETwZVLKsjuFcPeGpNm7zWKB5xrAnINkjlq3hQl0lRfr4U
X-Google-Smtp-Source: AGHT+IFdRQHUeOzT2eHd7/mPpbKpQC1Y3MFgripQcUYTDiczT+d3dOOvJZ6Im4NIu3Rx4qRA/3uJ1w==
X-Received: by 2002:a05:6808:15aa:b0:40b:a456:e71d with SMTP id 5614622812f47-41cf0abae38mr18637114b6e.35.1753203035197;
        Tue, 22 Jul 2025 09:50:35 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:a130:f3a0:d203:abc8])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-41fd59531d8sm2935217b6e.42.2025.07.22.09.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 09:50:34 -0700 (PDT)
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
Subject: [PATCH v5 0/5] Add Texas Instruments BQ25703A Charger
Date: Tue, 22 Jul 2025 11:48:07 -0500
Message-ID: <20250722164813.2110874-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_095036_630947_47645833 
X-CRM114-Status: GOOD (  15.36  )
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

Add support for the Texas Instruments BQ25703A charger manager. The
device integrates a boost converter with the charger manager. This
series adds the device as an MFD with separate regulator and power
supply drivers. This allows us to manage a circular dependency with
a type-c port manager which depends on the regulator for usb-otg
but supplies power to the BQ25703A charger.

---
Changes since RFC
 - Corrected some minor issues with code and device-tree labels.
 - Replaced most of the manufacturer specific device-tree properties
   with monitored-battery properties.
Changes since V2
 - Added reference to power-supply.yaml and removed note for i2c
   address per recommendation from Sebastian.
 - Corrected documentation error for charger driver found by kernel
   test robot.
 - Corrected duplicate POWER_SUPPLY_USB_TYPE_PD entry and corrected
   ichg logic in power supply changed function.
 - Corrected missing linux/bitfield.h header in regulator driver found
   by kernel test robot.
Changes since V3
 - Changed name of regulator from usb_otg_vbus to just vbus to align
   with datasheet.
 - Additional cleanup of the device tree documentation.
Changes since V4
 - Replaced instances of dev_err followed by a return in the probe
   functions with a return of dev_err_probe instead.
 - Simplified cell definition of main driver for probe.
 - Updated copyright year to 2025 on copyright strings.

Chris Morgan (5):
  dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
  mfd: bq257xx: Add support for BQ25703A core driver
  power: supply: bq257xx: Add support for BQ257XX charger
  regulator: bq257xx: Add bq257xx boost regulator driver
  arm64: dts: rockchip: Add USB and charger to Gameforce Ace

 .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 117 +++
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 122 +++
 drivers/mfd/Kconfig                           |  11 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/bq257xx.c                         |  97 +++
 drivers/power/supply/Kconfig                  |   7 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/bq257xx_charger.c        | 750 ++++++++++++++++++
 drivers/regulator/Kconfig                     |   8 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/bq257xx-regulator.c         | 188 +++++
 include/linux/mfd/bq257xx.h                   | 108 +++
 12 files changed, 1411 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
 create mode 100644 drivers/mfd/bq257xx.c
 create mode 100644 drivers/power/supply/bq257xx_charger.c
 create mode 100644 drivers/regulator/bq257xx-regulator.c
 create mode 100644 include/linux/mfd/bq257xx.h

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
