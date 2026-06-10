Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E70EBCD8C90
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xxuSGySTP5YJOl+wyWxu0qVjUuT+NJag7lz6BBibsY8=; b=K1EWzR/M1t0qDy
	/S/Xy1xKJxDjrnyZ6ELLD+Gs+UD3TxJ25Rc9q/BXw20UqHLUM7acuEMjwySIzda/K57kFCE44z3m+
	3m+B822nTUPFmEHGUNsJ8zElUgTA0jzmQYjoonwGRbbvoWpJrgGbwmwXDfO4kPNH2IqH1UYTrHQWT
	3h77wH980/hFrfvwbl9AwyIwWJeETrIH2vbRHao6k7pHUM3w3ZkyrtIpYBkq1bF4Tll5WUL7bHrwN
	gMOQcukwiy05/PDUlAKMAPwsuzz1QH5W3eJyffYyyfmbV8TWW1RcnXCAQH8wroIshThj/36aLcPgl
	xgUrS270/62/45gU4hHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNB9-00000008DHn-3AXf;
	Wed, 10 Jun 2026 17:57:27 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNB7-00000008DGz-2mrE
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 17:57:26 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-487135fd4f9so194060b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2026 10:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781114244; x=1781719044; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gutVdtz4CinnpieRqcTWignYTqVgqqCK7KQYfyHnkpY=;
        b=BCE3r6jNPdOZl4UMEHyC1/a/UD4jwDm+C6J5vQGr91uStz3yaUZt4/sMbnjqLd2nst
         7giRfEJ5OCPuE4mP590MOpsLL2ySWuzxkDN1ty6DiJJwPlPjaDkbVTbwIYWJLsDSWVYO
         yDxWY2zmWz/EmNOqMugXosfdZYTgv3GJlq8LXeoloSR2zn8yXrjECKQsqvPMGh7Qd8bw
         e6Oc39zYxiJuMSuwZob67qmvbuxuemGtW0WNwQ9KWcfU+WLOYXOhqif8u9CfSi07BIxd
         DWknwra8IMNxqyj944URE7Bv5s1hCcR2FckYH4B3n2zo2Y+lJPWDVAb8oBCzqL5HY4Kj
         Lu2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781114244; x=1781719044;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gutVdtz4CinnpieRqcTWignYTqVgqqCK7KQYfyHnkpY=;
        b=dg0XS9wgUCSnXvoHoI7YlRz7nSj+5ah4yZBRGd1fDZ2Tz1N+Fu5teQDMzJMKWOFUO8
         xtMIzBM2IDVuuMxS+M3HInPwbD5IdxYgUkAdoUMQ/5b187bK4WAfXmRXxKaUlLyewx8d
         P8EUmoI2mf759tNgcH+vs1OYwGruBcEFgzyFo2P6XYz3VAegEzMF8m6EzD150gYlHD/W
         4taW4+2zXxN9YZq1sWUBXMrYYx6Sotd0GTrO99sYPb1WpSpC/InG7qSJLY36zFTIcgg5
         4BeuemgKm4rxoRqQBe1D8wtIRFJYJWVXiC2j1id3pmArB3JxveLtS8FEw6xKL/V9ywQ0
         EcNQ==
X-Forwarded-Encrypted: i=1; AFNElJ/CbtoqqSaW7aQDVxUBXpxxM5k1ffX+2bLSL+ruAjVKKwspzcbSf6sCPbdV0hQ5ZzWQev8vVf/Li7lUWVwdKQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyKD4XE5OJvMHS6a/UcrcB8aRbgvgpwndGPP1YkUV9aP/cME9XV
	LrwlqMKlGutU51O3Rl8c3BFs7cIDa6oWaU00m0wnwEVcfWoni7qm23o/
X-Gm-Gg: Acq92OF+G4ZS0LSm0thzp94TMjcslptdGCRFa0sDmsKlrttSFV0jHwTYYtRlNkGhtoD
	55I4daAbYqHO05Cmme/IxGaXxleVD0FMJMyF4m08PoHyXXG+ziZxg32SOSTwzdYfPQgtCH/sqia
	SdYhFzWQnEQKJZ5ZnU/izZcRz63x9u2ftJ3+M1w+dJ0EypmTy/+Tsm5BPHK/WVfzmuQYsVnV7Ug
	2CvdJHj45sZ9w3mHyr7eFdF2ZPf2U3Mg9tuuZJj5/OOJdBHjFaHazZ04IfuMhEGilQ8w/MFmKu+
	BarvZbTxRBbBxzYfNqlQ32LjztI9SXKqP6DmNBA4JLLFoKdsiSYZ+OQjMdFagMbt3zykQ9J+Lyc
	TbrdJTxClH1PghWZQA6aFBh4Ibg8+rs9xTvvsZudQ6hZ5wSbHt7H+1X8BgaWICWd5oyUbk3K8l2
	OJ1i54VDgd/DimYrJKMggM8qw2EZrb3wNORNWy1i4fPi5lYkz09KMKcA==
X-Received: by 2002:a05:6808:3442:b0:486:523b:3c03 with SMTP id 5614622812f47-4868dc827camr15600027b6e.18.1781114244214;
        Wed, 10 Jun 2026 10:57:24 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:b86b:51ed:28ca:695f])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d7d4f449sm21180794fac.8.2026.06.10.10.57.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 10:57:23 -0700 (PDT)
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
Subject: [PATCH V11 0/9] Add Invensense ICM42607
Date: Wed, 10 Jun 2026 12:54:44 -0500
Message-ID: <20260610175455.19006-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_105725_749489_722C7FFF 
X-CRM114-Status: GOOD (  29.00  )
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

Chris Morgan (9):
  dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
  dt-bindings: iio: imu: icm42600: Add icm42607
  iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
  iio: imu: inv_icm42607: Add I2C and SPI For icm42607
  iio: imu: inv_icm42607: Add PM support for icm42607
  iio: imu: inv_icm42607: Add Temp Support in icm42607
  iio: imu: inv_icm42607: Add Accelerometer for icm42607
  iio: imu: inv_icm42607: Add Gyroscope to icm42607
  arm64: dts: rockchip: Add icm42607p IMU for RG-DS

 .../bindings/iio/imu/invensense,icm42600.yaml |  20 +-
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |   8 +-
 drivers/iio/imu/Kconfig                       |   1 +
 drivers/iio/imu/Makefile                      |   1 +
 drivers/iio/imu/inv_icm42607/Kconfig          |  30 ++
 drivers/iio/imu/inv_icm42607/Makefile         |  13 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 415 ++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 379 +++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 506 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 369 +++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  93 ++++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 105 ++++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  82 +++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  33 ++
 14 files changed, 2053 insertions(+), 2 deletions(-)
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
