Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F396CD98C5
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 17:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oO0GhT46myVCqqpEi/vRG6/4oqQKIDKh41Ivwth8bA4=; b=mTzwd54K/M2LFz
	kbmcOiZzGuUqe4650SM6mF/uYa7qrJXkekS6XDUNHxoHp8O+xJ5ocrBifIqHdKPZVH1UtGPI7u2bj
	sHIApViCSoZjAMwPPmISm9hnhxYEBlQx9byiWcZPW3B9HA5+eWqzLglT7w2aQvW+BhIWKod2Kt/IN
	4gBDKvpnrHtlmEAAjo4QAnC2zqEx8wXh3drtsLrD6IH83ZHVptBS8RnG950rYhbM0TERFTdi9x7LK
	JpcBL3NSi1yJVcNi6aaF4knhrFcruQdnHRzx84ZQHSs9rS9MU9pmCFHLjOX2BXICYTgHRDOb9nyrH
	BuVOZOQ1OCZb1lJaxMqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6b-0000000EenX-3LR5;
	Mon, 15 Jun 2026 17:28:13 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6X-0000000EelZ-43D5
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 17:28:11 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7e6b571750bso3027107a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Jun 2026 10:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781544488; x=1782149288; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DtjS7+FokRO/CCMwdq59ej7kactnqHdhl1aTtVDIodY=;
        b=ZICXdYVu/EBSmSj0mBhIm/vSw2MX0ahMvpKVzH6oOhOWhhizwVqEh4SaUNE/+ens1r
         jU/zCeFAfQbRuEgA1RSTvozVuAFTraddm6h6rsY/lo4tpS5UmtCwlDOTbUMvtRheLHUQ
         CTUp/u7wqfz4sfiE4+OKBkOSZewgaU/qX/iP17dAWt6sFvaLt1NdBHVjshOSYcKyp+qW
         VxA8/zUcBH+B5M9mxgjiFPcSu69/vAYHMnFw1NDjvzoC5jF06up4/6B646nOdCr+zUXe
         LT9jHC7e0TlXNk5OFXRInIxRB6+pclcveda1FMbAvYOFarXCK9XOJoweNb6AvyDAW6td
         oC1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781544488; x=1782149288;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DtjS7+FokRO/CCMwdq59ej7kactnqHdhl1aTtVDIodY=;
        b=kzc7z1oJ3BrTkhAmpjnpRrOlL5/Dv9YHru5l2OYR29fZJlSL/07L2RpowhPYm9y6Jm
         r9uPoZUuZ1rIzqvhmrs65V+0+2ISFIMkh4jZux35nkMvSDUgh8wSTxfCKcI0xv+fnUpW
         odjII+z027+6r/J9o708aghpEXL1i2PF1bqAhKzM3acunJe1PnikY1Muk+u1ErLUkjEf
         nuOnDHG092OYeWTpwPjyHOkZ6nVon2HiTgn2G4/ud6eRwmhSnMj22zXZ3F5i7LtukvvK
         ML7ObsdCkjmetr+ihpXSKfklWxhSeYsK5GHgL9SpoF+erY3qMTGB4U3JAax5O1fdR2zB
         ZBzw==
X-Forwarded-Encrypted: i=1; AFNElJ+gU5n4h+uWuPh33WAOksHzwGmMh7u0KdJY3Q88WyCm6WGCacBSB3UhXt13D7DUT9PjeNNR50Wk1K1wPCdFbA==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywzho1gRAnS3aK4g+OFkbBl2Bu8mUCPR1O4BXxLbu6HSxHJo6Px
	RhL2+KBu2Htqw/6rKNtMxNdLL/ALyfJ7b9wgNhmm47oPDHAYQKoEL8FN
X-Gm-Gg: Acq92OE7TLU9LKbao8OV72tZZ900vVN828EsYEkajsTN6Sq4lt6NGEdYgyoBT8KEoPe
	Wgqko1EQ2hbGVejjsWnEmAyMQEij8kY+SeSg5ptMRM71EMqB/Q63uUA/QuwF9Cf5RxzmnqpAJLG
	jrWWbfQ+svhMjfS27Nu48WOVQyQtWB7g+aXx8dBejElqOCmlE4Rfg/qxxqwo6zsdZdbWlSGLN8G
	61Ka6EmwbfgO3vgYt5r4VMg6QL6Uq/aVfmA1xX/P0TMlx7PHuROkh85nJdvH5d8vI3IyxRdcmvI
	mDjztiHdamkqyCfpZ468ecs+hHZOhNutmrIVk/cQ4o4wuAkC/hmH1Sy2Ciivjk6OOCXmZMn6u8E
	5oUxbHx6WypF8S9Zt4tKB4k93vZusO/R0Y+WrgShwvhMTNx4fQqifFx3XaWDtZ4jmE0hVM8PDto
	n4FJO+UeaGjiqIzY6747swXSi89XxWK34+
X-Received: by 2002:a05:6830:d11:b0:7e6:d542:aa with SMTP id 46e09a7af769-7e8fc512f82mr347687a34.23.1781544488082;
        Mon, 15 Jun 2026 10:28:08 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e79f451fe7sm4480033a34.0.2026.06.15.10.28.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 10:28:07 -0700 (PDT)
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
Subject: [PATCH V13 0/9] Add Invensense ICM42607
Date: Mon, 15 Jun 2026 12:25:43 -0500
Message-ID: <20260615172554.160910-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_102810_023314_91E065D5 
X-CRM114-Status: GOOD (  34.54  )
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

Changes Since V12:
 - Removed aligned buffer from inv_icm42607_state struct as we do not
   currently have the need for it.
 - Corrected the order of the odr values in the accel and gyro files
   as the values were out of order (the place in the array corresponds
   to the register value).
 - Stopped setting the clock value depending upon the temp config. The
   datasheet advised to keep using the default value.
 - Corrected logic when changing between states. We only need to pause
   when a sensor changes from off to an on state or when the gyro
   changes from an on state to off.
 - Added missing includes for several files.

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
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 410 +++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 373 ++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 546 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 369 ++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  98 ++++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 108 ++++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  81 +++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  37 ++
 14 files changed, 2093 insertions(+), 2 deletions(-)
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
