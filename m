Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E92D7CA1015
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 19:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ho+UNFpSg2ENvOif3ERXDOZoD95CwA+nRNg33idxoVY=; b=bd9VwMWYMZvvP3
	r8a1coGUw+7yQIk3dNAScukOH+QxaBy+6D1m1Ybo1Pmj6Z6IRCRH3PFM9dqntglUS6C5s9uepNHyQ
	MX2RdlNs51Rplq+vUOiyrMv+VB/0DSZkCHue3r8YTxXRciZvAnPA+E6CXotpM0IYE1pCr2OQJ758s
	y9NrqguFljhTrr7zXe9+qWr6jvz2PNb6MqWGtJry3QVLH7gsKjfRjr2XSMt7AyYdAJMhc8seSgJ/N
	tGphAYcoV7/COQ/n8K+zqcUyilMIDmDKNIzEZOaf3t/LTDm0+ZS3aI6FKeVpQiM63OpoUkfoGxXce
	jZr21N/nm94MbF36JITA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuG1t-0000000E4aq-3kW3;
	Thu, 04 Sep 2025 19:53:57 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuCVO-0000000Ckv5-1DzR
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Sep 2025 16:08:11 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-31533486f07so1441880fac.0
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Sep 2025 09:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757002089; x=1757606889; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dnLQTlyK5KH3ehk4moKP2An86eSERrKdK5nAInHs2V4=;
        b=ccCtCEZ6YoRh6RiOWKut1bo4E+jKYG/N2vOmV7fM6UyWVHb/2nCcuiRvdajignzc7v
         i62mPav8Sn+sxionIlhPaIrYzVrz2b5HS2jwTavt/WmACuuYCO2gUac7uRj8sd7Ikq2e
         nraFCyCAz0fYmXEO16wIZzBPuo5uO0qjHamV4pZqWNRCYu27NGwE18gXItRfW+v+rfnD
         ZhqJlejJM3oe8XPIy/AaI3To+31ZgXnPZtqVkCjmY6CX/M3nz4vwteN1KYXy/9m41sb1
         gMRrdmKsAsOQvPZ+/BiEcry0i1ZN+TdTN3JvhAs2VMrRZZ2Ez/VaBLw6anCxZeA7OPE+
         UFFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757002089; x=1757606889;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dnLQTlyK5KH3ehk4moKP2An86eSERrKdK5nAInHs2V4=;
        b=ZBKA8dYHgt8qldR2KatXT4rd3Am3vWZdChXF32mlBQxo48zDu47L7IobIzOCMjMe0B
         HOohERHlhGMJ239//beqVmqXaqPkF6/0Nykxl9EwjrX7YByWpZJXGq4ZgRk1RJEPsu8A
         nQysaE8cqf/qDlxeukoLNYqlwgoNbHJ2xFCDuYt72GxORnsnKtQ0oaCX/yeoXzg6BXX2
         nKemrVXPyHfNAaRzBJcDctZ3aFZy4fMDJ67OpNuDv2RUIDUDfvKjUmzPU1jQDAnvaLWO
         Rwr57+d113D95BilvKH8IReeMna06LMyERNsH+TCXuA/nrNkdOEi6UU7kgeJ8/yc446h
         eDhA==
X-Gm-Message-State: AOJu0Yxfy7x+IXVE/VLzYdQgwdUjecyZDYMuBPfJhPz1uJs7W2Z/oS0J
	/aiGEqkFLq2t001PoCZmnqEMlJSZpnhZYlkt34ifqfsj6xtE6ghrlThUGy7+pw==
X-Gm-Gg: ASbGncvIFEEKpHQjUYb/MCVgghPeozuqvWZDcxyo97OArex0ECpDAr46BZosgv/5YZo
	Oh4ueOiJgxYtEhGihGFxKg1ctM9/WwGGPgbzI6YmxiH/ZVsiwOZNMNbEfnfokmMS1nT3mUF0JlS
	gw+ElrxfKh/PvQMyOK3YytqPWjSqocJ+Jd0OgMKwAsWa/4FjnWpm1lOvoYv8uxMNKf50didyG+e
	HAJGAR9IdtXHX6x/GMWNA0uMbg0E5ESB9ZiS5dQDYtbDBIAOykWPoQfnRPnDVjDE5RhTMpxBtby
	O6gydTpYf6Cv1lQI26hRxXjI3y9dm2VRyhSfUidEkdlsy1NCcLW9GVAfTkexpadZmfLAcPaO8gH
	LnLCI16+tNFnw9sRQ63AC/vvpEGe7KTpMnSgksQaUbjZuNNAgE/2b
X-Google-Smtp-Source: AGHT+IHAQn8TOWyz0EjpBcfuRhkynnc9V07I0DmI0NICnfkyTH8REAuzTc1BBFIjCRqvT5UC1qY6Zg==
X-Received: by 2002:a05:6870:7308:b0:2c2:4d73:ec43 with SMTP id 586e51a60fabf-31f3bc02ed3mr118866fac.15.1757002087843;
        Thu, 04 Sep 2025 09:08:07 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:c51e:64e3:dc5d:9652])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-319b5fcbf6asm2437593fac.20.2025.09.04.09.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 09:08:07 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lee@kernel.org,
	lgirdwood@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v8 0/5] Add Texas Instruments BQ25703A Charger
Date: Thu,  4 Sep 2025 11:05:25 -0500
Message-ID: <20250904160530.66178-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_090810_340533_8E40F5C7 
X-CRM114-Status: GOOD (  17.39  )
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
Changes since V5
 - Removed erroneous Reviewed-by tag from mfd patch.
 - Made mfd_cells static const in mfd probe function.
 - Removed unneeded enum from header file.
Changes since V6
 - Fixed https://lore.kernel.org/all/202508181503.GrRD2T4C-lkp@intel.com/
   by explicitly setting the register in question to 0 and adding a
   note to describe the change.
 - Fixed https://lore.kernel.org/all/202508210308.Lw2Klipk-lkp@intel.com/
   by changing an IS_ERR_OR_NULL() to just an IS_ERR().
 - Fixed https://lore.kernel.org/all/202508141051.hwl2Erq6-lkp@intel.com/
   by removing the uninitalized variable in question which is not
   needed.
Changes since V7:
 - Changed regmap cache type in mfd to REGCACHE_MAPLE.
 - Corrected mfd_cell struct location.
 - Added whitespace for readability. 

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
 drivers/mfd/bq257xx.c                         |  99 +++
 drivers/power/supply/Kconfig                  |   7 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/bq257xx_charger.c        | 755 ++++++++++++++++++
 drivers/regulator/Kconfig                     |   8 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/bq257xx-regulator.c         | 186 +++++
 include/linux/mfd/bq257xx.h                   | 104 +++
 12 files changed, 1412 insertions(+)
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
