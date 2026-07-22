Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D3A9C44539
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 15:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dQ2GhJHSGXF28euADiIS60kQ57NZ2XFJ2HHqSBeI5Z4=; b=15iCkx8G3fVzOY
	5q4/m7nELxlprPQRyN6LaSxJktjY56fXRIAqwMVhawABY1pbNJb51zewDBUW5BV3LSKa5uZOqlAbq
	Pj4mGgmz9K6UDi4jfLe0c1f1bL01UsZfcf7D88l/EaYeKxgKdS8u67CAUfN/kBdMOYkT0Mhv0/5c3
	kw9KYkckz0bR/Cz7S88R4Fm0b/6gV6SK4GT5BGNstocEuR8Q0VLgZSXXxY9OBjRA58CyIxKvuFV7j
	TT50qboSDuXGYeK4tnyq7yQ4xPxjVSlt+E6v9VMoA8M2nKCAk/8g8/b/QUOYIUqW3XCcb8MT0LnA/
	UIx/hWo1q0kXKsnFKc5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZ5I-0000000CDOL-41Co;
	Wed, 22 Jul 2026 15:42:12 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZ5G-0000000CDNa-3Jiu
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 15:42:12 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-7e9dc546f40so3190165a34.1
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 08:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784734928; x=1785339728; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fDfIB1prNepqN7rjQ2ThSrbvy4NVRifJm7fXBLYgoKY=;
        b=CxjQ1mxdswmTWoc7qlXoAs4Uslp6RfcMc3i1v75TjGPZij+WboLdVjbZaMHK2brL8X
         XvmWBawMsffM2pEFoV1Nbt7cCoeTkzetD0SRBo7/wjNLW2DTbJHwnnTxdaYzWqSeZph0
         YqQ8PAfkP3xnfqA4+p01IQHIc2L/vKpjGL8PDKvGXubarVVwBQWI85rlmd9IqZFrk4q/
         WyGZyJELqZsCHwTHzyhW4B3aHYmRlR+H2OkogHcOdb8Go0UqDmlohpODKArBEE70ViN/
         Gz9cvMbgmdfXSTpezSDBksbYImQ2YXsKT+O4LV+T4U5dP4jSfblnbo79zw9FAHf2YoOB
         16Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784734928; x=1785339728;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fDfIB1prNepqN7rjQ2ThSrbvy4NVRifJm7fXBLYgoKY=;
        b=V0OXWIsKLc9kzmeF8j2/v69XZSFo8tkwP2WhS7BlZfcuj+ZdZDwDDPapBOHnbv5Kdn
         rgCcVxwRdm24TxwGY/nySoNa7OepoBFnoz9sPSrW+jLQDhUc0hjk0L9Jzqo4tS+pdie0
         ifDIl4y4LzuA85sXh1fyeE44JVWr+34SISP2IV+TG1E33TTzE9aIqXwz+Pqk+b9YzONM
         QSaSjvreFDY6aLIIGOOzsdrPDky/FaEQPvcCrwDmy4TzrholxJmHxfgxW4iFTKqUaM1o
         RZlpmz1PZqItzeTA7hGCR1fBEyrlPSopLPHi9njkX4BIXiCsiqjw+Hh0IbkbMVAG+Vqa
         lDVA==
X-Forwarded-Encrypted: i=1; AHgh+Rq8lMf+vOu24a44fbV+5eEULSbnU95E8FroVfMMyKEtX6h4Z372z2TmkXi9FoWVJDZefFvBIpUKB5cHGu3jCg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwCzpzmD90PZ3FJ+7e2EXg49BKIxmmVu/Q/c4XuCalDbMFGswqs
	9kjzBj8pNLOI9aOPDrp8QVPp7mhZQL2giK+IAzotgZC+FUjcbS36our3
X-Gm-Gg: AR+sD13bcwOs3ajCQt/J47JrAetSQ+ROIKEbfwXh4meUHyJ2DsNfoZ2sERLeLg0mHSE
	KCJBfm4p+FTeumPZaWd0IaLPg3uKZAoTLd4h6iMs7h2TxiXxY/KFS3OZmJefqek4cFJWUzIIcou
	9CN4S3mdUGTS8vMDju6s55UZs1sZ1A4nhDs0ZidC+en1JTN2AP7MLu/Bh6QTWv17u4y/qLEimfx
	K2bOkSSpSkwOyAy3I1KJAU+YWINSd779VeAic9UuMrNp3V/F11vQnP4NJy+P9TEdy9aeZolmHwK
	scphZp23/+8FxE5a6jtda5epLhafCaKisOPcYdPExOrOTr8EI7sIjttwkUClzpgpd9DKInU6GN2
	mrG3vhfQl/grleSRSfUe7fMAteMlB2VPLYh/GmMD9ohjFaA4Cg8Jxl6JTzUSBDYFsuWbHkvVKPo
	7y
X-Received: by 2002:a05:6820:1608:b0:6a3:d8af:6b89 with SMTP id 006d021491bc7-6aa4b0ea4demr1868140eaf.28.1784734925022;
        Wed, 22 Jul 2026 08:42:05 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6aac3a494d4sm1300804eaf.3.2026.07.22.08.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 08:42:03 -0700 (PDT)
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
Subject: [PATCH V19 0/9] Add Invensense ICM42607
Date: Wed, 22 Jul 2026 10:39:31 -0500
Message-ID: <20260722153942.144387-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_084210_885038_FE9AB856 
X-CRM114-Status: GOOD (  42.86  )
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

Changes Since V13:
 - Refactored inv_icm42607_set_accel_conf() and
   inv_icm42607_set_gyro_conf() into a single function.
 - Refactored inv_icm42607_accel_read_sensor() and
   inv_icm42607_gyro_read_sensor() into a single function.
 - Merged inv_icm42607_set_temp_conf() into initial init function
   since it only really needs to be called once.
 - Saved adding temp sensor for last and updated
   inv_icm42607_temp_read() to either confirm other sensors are already
   enabled or enable the accelerometer so it can get a reading.
 - Updated inv_icm42607_set_pwr_mgmt0() so that it does not update the
   sensor mode and forcibly keep the sensor enabled.
 - Added inv_icm42607_temp_filter_bw enums since it appears to use
   different values than the accel or gyro sensor.
 - Set the temp startup time from 77ms to 77us, as I previously misread
   the datasheet.
 - Additional minor fixes.

Changes Since V14:
 - Added IIO_BE for temp sensor.
 - Switched from ktime_get_real() to ktime_get().

Changes Since V15:
 - Removed interrupts from required property per note from Jonathan.
   As a result of this change I've also removed one of Krzysztof's
   Reviewed-By tags as this change probably requires further review
   from them.
 - Corrected a comment about reserved values from 0-5 to 0-4.
 - Reordered some operations so that only runtime power management
   turns off the sensors now. This removes the "ping-pong" effect
   when switching between the accel and gyro sensor, at the expense
   of leaving either the accel or gyro sensor enabled until runtime
   power management turns it off.
 - Fixed the shared frequency value not being available for the temp
   sensor.

Changes Since V16:
 - Reverted devicetree changes back to removing interrupts only for
   icm42607. Added back "Reviewed-By" tag, hope that's okay since it's
   what was initally agreed upon.
 - Removed PM runtime resume code, as there is currently no need to
   resume; instead the raw read/write calls will enable sensors as
   needed. This also allows us to remove storing the sensor state
   prior to runtime suspend and instead we just use runtime suspend
   to disable sensors while not being used.
 - Additional formatting and minor fixes.

Changes Since V17:
 - Added remove routine to ensure device is properly powered down when
   driver removed.
 - Corrected issue with reading scale and offset values for temp
   sensor.
 - Set regcache as dirty and re-sync when resuming from suspend.
 - Added back driver data to of_device_id table for I2C driver. While
   Uwe told me to remove this in a prior commit Jonathan requested it
   back and it is consistent with other drivers to be there.
 - Removed linux/mod_devicetable.h header for SPI driver.

Changes Since V18:
 - Changed driver remove function to call a new function dedicated to
   setting sensors to "off" instead of calling PM to shutdown sensors.
 - Corrected to add an exception so that read_raw() functions will
   still call the accel/gyro sample frequency.

Chris Morgan (9):
  dt-bindings: iio: imu: icm42600: Add mount-matrix
  dt-bindings: iio: imu: icm42600: Add icm42607
  iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
  iio: imu: inv_icm42607: Add SPI For icm42607
  iio: imu: inv_icm42607: Add PM support for icm42607
  iio: imu: inv_icm42607: Add Accelerometer for icm42607
  iio: imu: inv_icm42607: Add Gyroscope to icm42607
  iio: imu: inv_icm42607: Add Temp Support in icm42607
  arm64: dts: rockchip: Add icm42607p IMU for RG-DS

 .../bindings/iio/imu/invensense,icm42600.yaml |  20 +-
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |   8 +-
 drivers/iio/imu/Kconfig                       |   1 +
 drivers/iio/imu/Makefile                      |   1 +
 drivers/iio/imu/inv_icm42607/Kconfig          |  30 +
 drivers/iio/imu/inv_icm42607/Makefile         |  13 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 423 ++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 316 +++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 646 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 313 +++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   | 106 +++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 116 ++++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  98 +++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  38 ++
 14 files changed, 2127 insertions(+), 2 deletions(-)
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
