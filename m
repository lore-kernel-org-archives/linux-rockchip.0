Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A4B9C7EE30
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 21:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4AxeB5ZpwUPJ22qw2vysjfky4dA30RjnkjgFFSrLJZs=; b=fFsKZIs8peCs4A
	7Vgj2Tf4ojharVTyjG7AH669ggObs1Blsg6nOA9CCo3MvCa+nrbjfnkqUrxpfWfrqket8BI5YFVyV
	KlyJYLDNbm7h7quGdvZe51kcUyQqFgzngfaTkalJv24oSBYXEuagA8KP+ntTK02Qt+bkUrhhkd/vU
	gqlDjU4eFyI6E2MaNWU4MjqpHNaSxOchGs19UiqgKtvX6YEAz5wfN3AOvExeok3YYLhqmxKwZe4KK
	PaiDSyth3zrC9TT2joR+7WJ1W0L6JngQIhkAqFqvGZ5imzu+seQBAaH75PrwaQfL2nZCGGRulnVHv
	xP0HDfniRUS6dPpgXkyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUuBI-0000000CqHR-3NOE;
	Thu, 26 Jun 2025 21:30:52 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUshb-0000000Cf0V-1IjY
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Jun 2025 19:56:08 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-610d87553b6so593465eaf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jun 2025 12:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750967766; x=1751572566; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hk3radOrdiIbqfj9Koe35i0uF/bY0CW4+GPlMQ1CzR0=;
        b=OLtcogYPWrbX0A07Rg5sf/XowkJsuw/DTmAC4hsUKHmK0k8nCyfF27vAcb5YXzAyxG
         vEC5UlcnStsIM/sR/oiZd9ePm01PK6wA2gYL808zOB1dvqqT9ZOKAFVzC7lTdynDYKa7
         wx35LOqOM5G3v1YQw7wF4zN7c4u52WfiDPYiy0cWCv09sWBMX8A4h2IA8VUTBejFhS9L
         zT1HQUpTNT+vTvu5kIcvtja/HSWe8AWcX/eTF3H8Dq+r6qxgo07q6c523DyiIe1vjv4G
         KldbqHG9ubNVRqm0wbgQnSjdl6r2dbdsIV4X/iZI6D2OxEqi/yVPHYXavnl29ZEey1kD
         OVIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750967766; x=1751572566;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hk3radOrdiIbqfj9Koe35i0uF/bY0CW4+GPlMQ1CzR0=;
        b=WynOtuw9byCA/Kz7Ok3n+WuR5MLTFPy6uBCEyy/24O8Tcol8GKgHt8EvJ8NmwAo7LH
         uIuGGkKKfGqew7VHdLVzwhelMzrY6z30XfPD2TsuR7eb6wwaQ7INjsNuyMTvII8JjFfX
         +extcNJpxToD0XpyG6KSFvSGiM/tMPUdsxkUDmek06Oie3Z+TtIExSMIUTnvEMABwokp
         YgKFfLfvDyDr3tjE9nZ0SUOGcpzXisSqcpLxBszzldWT2ZPS3uG5sEJv3VA6CWTW/DhG
         ZzK5p+lEU3Fc5Q/iiIjr7ef13fZfjgSd76rlh4vezg+js03YM0jPDv3QHi04yJ460YSP
         Z5nA==
X-Gm-Message-State: AOJu0Yzr33X4UTaZ2SZlhZv9sAdEv4H9yrRJ9g1PWJhRCphX4P1T9ddO
	helxrUZZx77u4ZNHlhIcIC+NECd5EyE7M4Gm/LMgFRoo2gQcNER9TIPy
X-Gm-Gg: ASbGnctkH7xr0+tkPlwisbyA7sozC/5LqagKPgIk3TsNjQBYWPWMsibiKsn20R9lbyh
	l6Cn7FdJk86iBFUj+wWahd/cPvHtxNorcS2ITqrlYyOseY2mgiMsiRLQUR9uR54320J6It83ivS
	jrvXWP6rfwBCIsdjB5emL6YZ0A3w92Yvp4zfHAZFjsnDtKjLBOHpvPpBgK7mOlJwsFkXYL+r2QX
	RnGChlFj3BhX8AiIFxP4wIdbUY00ack2fpNQDTn2aLW+oT/tLov9hvPvKJ4ORNDW1F9uuYvusY7
	60cVKiVk6BVyRK5jCzuQ1mdzBKpFfn5896ELiWAedYvUItHBgaV9vrcwiIWM8uYeaxJLvcUG3Z4
	vLVsl/w==
X-Google-Smtp-Source: AGHT+IF5S5CU5Uz4mqpGNWHcGdAzqV7+uNsJZkPUL952E2bpu12FDSIRsUQQsy2Cu0EA2r19IrYvpw==
X-Received: by 2002:a05:6820:8189:b0:611:7385:77a0 with SMTP id 006d021491bc7-611b90a898fmr432166eaf.4.1750967765969;
        Thu, 26 Jun 2025 12:56:05 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:f978:7e9c:c207:c035])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-611b8582352sm66915eaf.22.2025.06.26.12.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 12:56:05 -0700 (PDT)
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
Subject: [PATCH V4 0/5] Add Texas Instruments BQ25703A Charger
Date: Thu, 26 Jun 2025 14:53:38 -0500
Message-ID: <20250626195343.54653-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_125607_351281_B8E61406 
X-CRM114-Status: GOOD (  14.04  )
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
---

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
 drivers/mfd/bq257xx.c                         | 104 +++
 drivers/power/supply/Kconfig                  |   7 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/bq257xx_charger.c        | 754 ++++++++++++++++++
 drivers/regulator/Kconfig                     |   8 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/bq257xx-regulator.c         | 189 +++++
 include/linux/mfd/bq257xx.h                   | 108 +++
 12 files changed, 1423 insertions(+)
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
