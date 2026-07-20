Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E5BDC44515
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 20:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VyyMZkAhvFy3dxXY3myMYv3OM6XfeZFAPEZejGo2vbc=; b=RhP+zwLoZHXTk+
	z/yU95lxY4uCH6PYRWZn4Spb3xAed57keJi1SCLYCMDwu1pcEk2IRDYO5jyzhMEh4Y0lpq1hA04FM
	PNEgUo0ftmnfO8bTbXrirA+tJO/nom3pXKC+gD6+cxMinNr9KrRGweskAOAoZN66SMRBp9/BDNrPd
	SYaj31wLw10/kSC1pCOfi4CSwELJjfpDNONdU1HchrSTPunnrck72SxkU9R/8Ipw+nNF1Kw88iFyS
	ZPDpD31CJ81nAOwETmWiwDviybHJVEuZjsyhFMYj1kOxQTImjG6cu0ttsRiTZv3l9tPjBtAZZBX05
	WQupgOQQsq1t2r7vRufw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wluYy-00000007rZR-0ohe;
	Mon, 20 Jul 2026 20:26:08 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wluYu-00000007rYS-2z9W
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 20:26:06 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-446f87b6de1so5120284fac.3
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 13:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784579163; x=1785183963; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=XgGv8dwczX0vaEZLCkEmThFftXPI/2VXbSxzjWtQbhM=;
        b=Ik6jqLQ0UFpj0cVX+aKDiZqskvJNTK5ZScaCM1l9Jq6XKxxWOoTaCbOv9AD6b0oi5L
         FMl1X0KojO1ZfefS76V8vPJ9oa5JppcgsL+iJn6rE550xbobb1ep3XAdk92i2Y6OIfz0
         nrG+X61CHl1db/eOU+1mcc5mu9mEhUItSL5W32SpPc0pMVByDE3v9d6OqBD0P6FfPalD
         rapAgMPh1juozPQS9D571Ra4OUPcLuIhQKLYOd5op5bmFdz/LYQZ+5FUX6bWJAEPo3M3
         M82OAs2p+Vw+Ad2DNhGEhR0qCHcDETDR/5QaeOH64F05cK9CGlAENzjVk95//Gwor/Pb
         Wccw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784579163; x=1785183963;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XgGv8dwczX0vaEZLCkEmThFftXPI/2VXbSxzjWtQbhM=;
        b=Bi2NFFsdG1xK/I4pwJyUXwbRbbIHUfbxWpDIguEUZ3DJImYz1q3SZmEqnpmPoXaPWh
         iyfc6p/mFM/+B1Vi14SvbNSOv7jXeVJgGPgvIzg7CD605j0VVReMVRIcQSUZZ4TN+tmt
         4hkg5SWpKGrsNfEbZ8CQLjZKk+N1IDSkYlM3KUFkAJaatEwYnqHyU6Vs4iBEBaWU+RLE
         hunaGnvT1LAWJPHb7aQ5dz2s+0ZYMU+CGmgONC0V8bWT79DzGyaNFtsL1i/R+h/poj02
         ptrVs8FBUob3NYnMYOfCIdHRUUzQpPCgMhqE7oevXhU6IBA5qHl8kdvqAOCZ/nyw1wCi
         RU7A==
X-Forwarded-Encrypted: i=1; AHgh+Rq+R4o/ztskZNtHcSFTKSxhMwLKtJIOMr8MarJ8QkvlGQIxqgpsKwqkzmGIJIQNPpHVW9VwdX4mRwgE9fzkRA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzH+2DzU31pKyqupVfQO2BcvuQuwzwaJ5Rt/FEsBlaQB1sU+EpG
	/G26pZHI4wzt7b73AFFdpnIYCkLsvWSHnYAFqEDFBxSKpmM+vDQval30
X-Gm-Gg: AfdE7ck0QQj4IPqkBNwY3EYJ3EQfbNFKxb4oLzScAldTsk0H3o/PgzHRg1JCqUb439N
	eSWCA2A5M+xxs0ewezXZhyB5Lenfw4KXfN2Lfdfu3Wrm38oEFNBNLUOb2Oh9rQ6LnymNwyfBM1d
	a7sftWB2CqL9cStzmjAtRT+clv9ZvzDXlFFuKc5INf2t3G36j0V21/swLT/UQiEbD+E/SkEDW1I
	l9hUWlVziXBMcN5xcWOFRQFYnS8zUmmi5Ic+1NwxZw1mGKpW2lbkSZoJhk3UnzFvoLTzMUgh2tg
	oQx4UvUAlT+ukQ0kjJJBxsZNEkzUXrZYGqQwoxbDykMZFTGwRmw3ka7BNICtoBlvAjqkvMdomWb
	9Y0aWBm7utB1OOEyu1rZgMTc/1WptxbYSEWt6K5h5kugHHuC+SWzfQS1rAGUnsvSECOUixVluXf
	WCyoPzZUQQRT83QRQYrBBt0A==
X-Received: by 2002:a05:6808:4fc8:b0:4a4:2654:1a48 with SMTP id 5614622812f47-4a4d05a08bbmr9864324b6e.39.1784579162688;
        Mon, 20 Jul 2026 13:26:02 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:9988:5abf:3c51:d168])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a4d3e5a0cdsm8029550b6e.18.2026.07.20.13.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 13:26:01 -0700 (PDT)
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
Subject: [PATCH V18 0/9] Add Invensense ICM42607
Date: Mon, 20 Jul 2026 15:23:32 -0500
Message-ID: <20260720202343.70138-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_132604_853301_B72CC4EF 
X-CRM114-Status: GOOD (  41.38  )
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
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 312 +++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 641 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 309 +++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   | 104 +++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 114 ++++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  98 +++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  38 ++
 14 files changed, 2108 insertions(+), 2 deletions(-)
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
