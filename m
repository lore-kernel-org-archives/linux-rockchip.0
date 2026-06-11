Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18AA4CD98C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 20:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rnyBsaBdql8OivnMHl1T+TUEbgLB4ht1LCRjF77mcKU=; b=GAM9n0vPLfMgly
	/S1Yl2wHf/HaKA6IMueU3Li0/LPkqIJv3an15MkJyGq/i2mntE3aQ2cIajrli5LnZpm00thXC81z3
	NQRuZi+Pogyjt/rPJlPao9unIMlWHg6sXNrj2G4DQ9bmfn/AnN7xzQHbgHHJlGktQ7u8sFA0/O3fy
	JjGEgrrEMC4Yzj9Ic8yX0KuNI8/uUAVVN5FGdvT0WMbOMMhXlnRQjYpCzEgIxpz5LzILFWUNTMSLy
	KHgAhe+ScHUwG1qDdvuWR8GfQz1zJmEY4mU+lKLgIYl/oP6az/pOoBFlBR6rgzpcIoefZClCsid/l
	IKKghfsP3Xgihr6h4BYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm11-0000000A2uz-3jAl;
	Thu, 11 Jun 2026 20:28:39 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm0x-0000000A2tP-3Wce
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 20:28:38 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-486badc02ecso179036b6e.3
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2026 13:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781209714; x=1781814514; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ujUOWYjkgDPSRJzQ0aFRyemjYWsqusJ3rUsMa9F2Mr0=;
        b=IDvBeLXhyz2S6Kinr4T3EV7CRkmjI061AossMpPV+1+pvsCK3ISfHZAns3K22collp
         szYcVWGc3IvofmKrzim4lLD+mM3F/99IESNDc89BjKcFMNNv8sNOLF1HSRAySNiqpXHy
         uW08TtBu/DijF2OWCOEkAcw2b9cmAc/fvq2ugF+SXLOfDAkxbxNMGPVXe09Oqgem2gWx
         Uvr+CO66bxI4H2VIjJE4nLJiZHj6vuSJk1vykxHQ3iOGA9ETr8jkMvUz1TgaQiE+hgsd
         W2KTPGDi4A4CUpNqkX98RdkhJI5Vy6/qgvByUsGqkwymEewDXgf0yNdzYKcYvZG5xpSU
         nneg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781209714; x=1781814514;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ujUOWYjkgDPSRJzQ0aFRyemjYWsqusJ3rUsMa9F2Mr0=;
        b=DoYM3Yk+yX9j9DxUfgLQOYJpikfqGw7f39MHtwkVQA3oMVnrx+SC5sHpdAb6Epvba8
         UHCbYjPWvDaDB/PKga7fzbk0C4NmuhfiZk6UnrRz2y0jhLXWDyzh0dcSaPxniSxAfrLo
         jMtfK/hivTLqHFxAJurIGo5LFK2UBZckdzAvsio8xR+Zpgct6wIBOTP721v70QhNlkwB
         AIQ9IjxJYZDdugqMx4jEb4LBRnV9rppfl7BjQNTUx4Tu0iWNJj1Al6ZyINaas+UqlZKd
         gYegYuLZ4uz6hcYCAftqLjtn+QYYyJ9WZ7XUZoarcWAccnbUufnRjD77TBeE8TwNtw6U
         JyVA==
X-Forwarded-Encrypted: i=1; AFNElJ+0Sp7o5+TmcvS1Z6XoDnI+0aS+BAEYWcKbLDGFqKDFbm8PL87MjICFbP/1cWMqqmFaVl36KtcgQ39oysHsJw==@lists.infradead.org
X-Gm-Message-State: AOJu0YySsyFfq3/oMzGHpNAIiKdNxEHk0Ter6ly3iAXVuDRoQygzDayH
	SXuaiTR13SBvSklMRAymA0fldDBMdUVZ+JB2aFI8ceZZJqohT6U38OZ+raxs330K
X-Gm-Gg: Acq92OFSlGiKv4Q4FkIpZFolXPhE5PJ0/gfI6qGsguDkC96u4N04RGu2K11gL8LonEY
	GWhL/dAeKMC13Zek8Hpk/sAUAWkYuEGeUHBUbHb8oSttols/FMzXdtTOwL+h8lcyc1i8yjwd33o
	Wez1iHwMcSLcNsJGKrqIPKfJ6MCUieK9xi3JcARYqDe7/SzPcTpmIFT+xA5ndov0ooXqmSpxQsu
	z+mxlE5LutWk8M0M8GpO120/JdFwHQ1wSk9tvNwxtimiyQL3NpVJ3dIKXkdAARitfXI8pDKfY6p
	jm/w3ru3qt6tH69Mr2+1irHpjKlVFD9Bk7uZaBcuWRT0r8cOAa+434Ua7fP9sZzHkVT6OoaKl6W
	KzUG51CYdhc0DCA8oXa9JA7J24vxytX2rlOBlcV2CwcAIe1NVqtghXB6tFXlwLNOhqa/O58SWS2
	GfLIwJ9aUEkn2QP2RyvacVDw==
X-Received: by 2002:a05:6808:6901:b0:486:b56c:f786 with SMTP id 5614622812f47-4871a1a62e9mr2753925b6e.30.1781209714324;
        Thu, 11 Jun 2026 13:28:34 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-44244cd05c9sm1796134fac.18.2026.06.11.13.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:28:33 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V12 0/9] Add Invensense ICM42607
Date: Thu, 11 Jun 2026 15:25:57 -0500
Message-ID: <20260611202607.85376-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_132835_918847_ED1CEA0A 
X-CRM114-Status: GOOD (  30.55  )
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

Add support for the ICM42607 IMU. This sensor shares the same
functionality but a different register layout with the existing
ICM42600.

This driver should work with the ICM42607 and ICM42607P over both I2C
and SPI, however only the ICM42607P over I2C could be tested.

Changes Since V1:
 - Instead of creating a new driver, merged with the existing inv_icm42600
   driver. This necessitated adding some code to the existing driver to
   permit using a different register layout for the same functionality.
 - Split changes up a bit more to decrease the size of the individual
   patches. Note that patch 0004 is still pretty hefty; if I need to split
   further I may need to create some temporary stub functions.
 - Used guard() and PM_RUNTIME_ACQUIRE_AUTOSUSPEND() on the new functions
   per Jonathan's recommendations.

Changes Since V2:
 - Went back to using a new driver on advice from Invensense engineer.
 - Further split changes up into smaller chunks of functionality. Note
   still that the largest patch is approximately 900 lines, and that while
   the driver compiles cleanly at each commit it is not able to drive the
   hardware until the commit that adds the Interrupt (as it also adds the
   Makefile).
 - Change the error to a warning when the devicetree binding does not match
   the hardware ID.
 - Dropped the ack on the devicetree bindings, as I am creating a new file
   (for a new driver) instead of modifying the existing one.

Changes Since V3:
 - Numerous small fixes (too many to list here). Thank you to everyone who
   provided feedback.
 - Split power management additions into an additional commit to break
   things up further.
 - Consolidated devicetree documentation in existing
   invensense,icm42600.yaml file.
 - Removed most of the FIELD_PREP from header file to c files to make code
   easier to read.
 - Changed scale values to 2D arrays for Gyro and Accelerometer.
 - Removed IIO_CHAN_INFO_CALIBBIAS attribute.

Changes Since V4:
 - Additional numerous small fixes, thank you again for all the feedback.
 - Dropped power control API and instead run device in low noise mode.
 - Split devicetree bindings into two distinct changes.
 - Reordered adding of enums and structs to main header file so that they
   are only brought in when needed.
 - Stopped using enum for driver data and instead am using pointer to
   device specific driver data.

Changes Since V5:
 - Corrected use of "dev_warn_probe" to just "dev_warn".
 - Fixed some return scenarios which would unconditionally return 0
   when an error was present.
 - Corrected use of max() to min() for bounds checking. max() was
   incorrect.
 - Fixed using "st->conf.accel.odr" in the gyroscope function. It
   should have been "st->conf.gyro.odr" which it now is.
 - Additional small fixes suggested by "sashiko.dev".
 - Added a regmap cache. I used the datasheet to try and determine
   which registers might change without explicit writes.

Changes Since V6:
 - Corrected additional errors identified by sashiko.dev, mostly
   fixing potential deadlocks, missing calls for pm runtime, and
   potential overflow issues.

Changes Since V7:
 - Dropped Wake on Movement patches, since some of the functionality
   was only available for a device on which I cannot test.
 - Dropped support for SPI 3-Wire mode, since it complicated the
   bus setup (and I lack the hardware to test such features anyway).
 - Fixed a few additional bugs identified by sashiko.dev bot.

Changes Since V8:
 - Added back IRQ dropped accidentally when dropping wake on movement
   patches.
 - Dropped "Reviewed-By" tag on patch 2 because of substantial changes
   made to devicetree binding documentation.
 - Additional small fixes as suggested.

Changes Since V9:
 - Removed interrupts (and buffers) from the driver. I previously was
   unable to detect deadlocks because it turns out my IRQ was not even
   wired correctly in my device.
 - Updated devicetree binding commits to make interrupts optional for
   users of the icm42607 driver.

Changes Since V10:
 - Explicitly specified enum values in header file.
 - Removed additional dead code for buffer handling.
 - Cleaned up headers.
 - Added additional locks as requested by sashiko.dev bot.

Changes Since V11:
 - Since driver has shrunk in size considerably, moved i2c bits into
   first code commit. This ensures that the very first commit with code
   can now be compiled. The commit after that adds SPI support as it
   was in the previous versions.
 - Used pahole to optimize inv_icm42607_state. Reordering elements
   reduced size in memory from 384 bytes to 256 bytes.
 - Added a map of all readable registers and all writeable registers
   according to the datasheet.
 - Added back some missing headers pointed out by the maintainers.
 - Added FIELD_PREP in a few more places to make the code more
   obvious on what it's doing.
 - Added a comment to the power management code to note that
   temperature sensor being enabled doesn't matter as the clocks
   are off by default when the gyro and accel channels are off.
 - Removed iio_device_claim_direct() calls since it was no longer
   needed.
 - Fixed shared_by_all attributes for temperature sensor.
 - Additional miscellanous fixes as requested.

Chris Morgan (9):
  dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
  dt-bindings: iio: imu: icm42600: Add icm42607
  iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
  iio: imu: inv_icm42607: Add SPI For icm42607
  iio: imu: inv_icm42607: Add PM support for icm42607
  iio: imu: inv_icm42607: Add Temp Support in icm42607
  iio: imu: inv_icm42607: Add Accelerometer for icm42607
  iio: imu: inv_icm42607: Add Gyroscope to icm42607
  arm64: dts: rockchip: Add icm42607p IMU for RG-DS

 .../bindings/iio/imu/invensense,icm42600.yaml |  20 +-
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |   8 +-
 drivers/iio/imu/Kconfig                       |   1 +
 drivers/iio/imu/Makefile                      |   1 +
 drivers/iio/imu/inv_icm42607/Kconfig          |  30 +
 drivers/iio/imu/inv_icm42607/Makefile         |  13 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 417 ++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 376 ++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 543 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 370 ++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  98 ++++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 108 ++++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  76 +++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  37 ++
 14 files changed, 2096 insertions(+), 2 deletions(-)
 create mode 100644 drivers/iio/imu/inv_icm42607/Kconfig
 create mode 100644 drivers/iio/imu/inv_icm42607/Makefile
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607.h
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_temp.h

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
