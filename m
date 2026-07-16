Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E5D5C44516
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 18:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aroXsioGYfr3RH3bBWP1HcpdLQCzJrTZtdoDim8WFeA=; b=e4MWODAQwLRXEN
	ZybVUXolBq5/bNDFVsX+iu6hOjnxuO9VHGL2IQ95/NppjIznCo+TKY7ShJyN6j+ALaPWA2cX25F2j
	V5ow/0r1foOeRlcDXAkAsUvhfZ2HzcAwDFc149yyLF+fHqQqi7ZvSufALeG36nvPRlu9C+LxOmp8T
	KYzfSBXUv6habn4rmHwe0HjExvEJnn6Jmu+MbbPigorcT3p0mgKi07pHEDho2K42Z+at4KlsUS/zr
	eYCtvG0YPebDfY+aSuE4IYe9RPvPliKyyZsCe83Qj6JiM4aWjCgddPwg3sy4VWY3vSB+6pqZw+OwU
	f3fXjDX1TVdaChZKg5QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQpU-00000000O67-2A4D;
	Thu, 16 Jul 2026 18:29:04 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQpS-00000000O4x-08Xy
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 18:29:03 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-7e9ecd7216cso1862613a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 11:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784226540; x=1784831340; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=q1yipURJbsiX/1nKvzjzWuuDDQ1PqYXt0N6bz/pUDaA=;
        b=jiDHuukwSY+lWxqmqSuVhxgWzAXo7J1R262m7Xf1Y0ndZOOI7MSlKR5Vj+JQbGTTUp
         pwWdAS9lomc+UprVdnHFaI4fGhKM0jOsLtQBEeBz5XB//FimbR2uvcqTDF4XqS2s5DIH
         GSrvKcilyZVVLzv/Eqm84+NsS1L+PNxTj9aVvdK7Pav643FFZ2FErs03BB0uuRd87iEY
         QjAeFxfvqDlbGwei/0HX6W+Hmz7fFSbeNZz6JDeI5nApHIzaZ5h2nwPpQFZER29CFkbF
         AxYInXAyC5W9sbKb/fraUMHSj5SV0d+rNt6YS4uJkr/M22mCtuqBw92fyvXxFwAOymQ9
         V0aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784226540; x=1784831340;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=q1yipURJbsiX/1nKvzjzWuuDDQ1PqYXt0N6bz/pUDaA=;
        b=NLecg80ShNZAcM1DpYD46Z2/wUyk3EPOkqSpOHItRxGH8rgF/G0Rwppr433hyA+M6J
         Pd2LPfpx6Q1cfWxX0E2Jfo+h0B7QZvPnhnCc4WhzNuQTBh44vp7pqADcM3ObQZd8JD5X
         ocR8f6cFVsuKkLCxAi921R/1zVNnXNVXlikCuFPUDno436mTiSzVPPaSdb6Wo5Yy1AFv
         LncsP0uxrYwcgKYhEud5eDF/lzAXxrXwPqBBFuvUPwidj3jWdWCt3m2KIIu2NQ9pVUmD
         H85gLWM5oYs/TIthPX1gNSIcdladj5VsjTz//TWCjMnvLf1i5muhNA23jLio/UEX+vNO
         ajnQ==
X-Forwarded-Encrypted: i=1; AHgh+RpX4X+3NeXjbsa8w/kceDk1UfKoIP8XqZEUoo0mqIzM/ZLtFbZHxjavuVkY79Hlw0aoAwhZuYDeOo0cpoaEAw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwGRS8HmfUcTveVLTPHnSo86wppO7qc9hr5kft19+gAqvRDK9Wg
	kQLjXiI7o1GP1lEDQ24Fu7iRWbeQoudxubwmEWN4wLbHayOpANK+f9Ba
X-Gm-Gg: AfdE7ckfAuy3zVpZUGX8m79Ap7FgzAUNrQjjiX4Wl0dz+Fm34vfDCnLs98MRAQfHYZO
	DiyFWy7NAHNYrsGQeEIOgIMfSPSd9vgMaLldnioN/9Jb3Z3DGx34BDzOhIs7aR91SCsBrtP5lWX
	yewMxX3Nq0EPu9GrAkh4VauqUH6WpV6Ow4UcUGCuNmrJWM9LCP/zlY3JBgwn2MY0g8SstF5w4aC
	EVJyTGM2PeA4eE5Ko/aqzcPv6G6O6nT0ilG+uTB7we8LnXDHzsDKsNSNUpGoLNLu7zl3S6jznpE
	bH066x2AKvtTrw7juUeTgA35j4nZdO0eOEN6xyaIUfEPbbvgeReLzxgp8MyxaIZA+wyqAI5za/q
	Vledb1UQkApejEA/ItSaXGLAE7ytgUaB8VeoBgn0nTISnZIOYFn/VaR16szuRIzRbLf4Dd8IfAD
	c+
X-Received: by 2002:a05:6830:381b:b0:7eb:3af8:8c1a with SMTP id 46e09a7af769-7ec9fbcd004mr510231a34.9.1784226540468;
        Thu, 16 Jul 2026 11:29:00 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcb3f6826sm19939993a34.27.2026.07.16.11.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 11:28:59 -0700 (PDT)
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
Subject: [PATCH V17 0/9] Add Invensense ICM42607
Date: Thu, 16 Jul 2026 13:26:27 -0500
Message-ID: <20260716182637.24310-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_112902_121626_F198D85C 
X-CRM114-Status: GOOD (  40.72  )
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
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 421 ++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 308 +++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 635 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 305 +++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  95 +++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 108 +++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  98 +++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  38 ++
 14 files changed, 2079 insertions(+), 2 deletions(-)
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
