Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A63A8CD6E7D
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 20:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AFJTESswU7uWotApE8wSm0vRtQ9HHPbKQByo+et7KNY=; b=S7VRsUhBmxKm7w
	WWz/gr8YqFNfBC96R0u5QiNH5QBL385cm8HCHRAGH9a195my4oR2N72OdUcmU6eFZSqe0KOS5aaLl
	lo8bQRxhLOVxzd8QgYlPfA0RtqKL4JrZQucN1iQ4TY5ApkUwJQlNGjVYe+v5n9DlwSmZmmfahjITR
	R0Z9VMLg8SEX34wRHYaecABaKulYZijFWBvHyEkTnch+fUfuWosbb2vA2vpHgN0bwyRiGdUGVqnJi
	WuARXp+Tn2EDdzMHsylkWcd25RJQQI4BRcJu5ranguxpOtzvwHfhkxbBCkw9VCyHejf9RjiW/2j+j
	CPUOKls5exkHgfIENh9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVEYi-0000000HFgJ-1LF4;
	Thu, 04 Jun 2026 20:20:56 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVEYf-0000000HFf4-3JYf
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 20:20:55 +0000
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-7e6cfdc8382so769043a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 13:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780604452; x=1781209252; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9oEuLk7XB9tvetuqp5vhLFFB3pUTzFDIh+xJJF43t34=;
        b=EFgWKP1ksSPCrFxLNlwy/TykCEcEu44VsRY5p1kR/rQpyriuhTDGJrLjCD1bzrkxzo
         QQ8GqKua9NtIt6Jrb25V3b5+AoCJqwvTUaIAQtsIHRZ3ab6iO1BrVcjyJecy1ohEYRYU
         +WSUkjNQHmcH1amc1Kx68Vct4ojcRKbo6lkEI/DzIBHgKWPoYp47T+Zc+ELLXAkRNyB7
         Rk5unkfAuK+dqfWvP2tL9fTENjJseQU9TCtN9MkqkLZHEwshYEKAlXi/GD/qbLSr8GtT
         PkxjI+amRYvZrzMaMb39hVY1kpn5qRQGbsvJ5RIuI9zJMZ2zVa9BHPXK0vdreL36Ajpm
         BaTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780604452; x=1781209252;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9oEuLk7XB9tvetuqp5vhLFFB3pUTzFDIh+xJJF43t34=;
        b=pKRZ+3Q95q7wX6HjfKwaH+UmJ3VwMrrgtJqEXI7US4wbUqGxrur/zRuiJHE8l9/DXr
         Mtz+n5md1bUBArx50cdZUmmPqoZGtjnEm2YPAAqfsomnqvcXmcQ+dscTgqAZ1V2AcfP9
         8HN3735/uv2CuTEdmB79BecliuBDQoKZkaB9/3z8mxC8ncsaAHn8pcEVO0+TWCQ0GC6C
         v7jnqofAYmdrrN26GU0h64prIXwZuQ2zVunWyZR/bpL+06TZuSFSs28inMcRE7dRQlYC
         xtWzcV9/A8nxGNz5Vvhb7ZujbzNMt3DtkUhQdKw7XB4AoHy3wV3bpG+bXYqxRNs4nwg6
         PvBA==
X-Forwarded-Encrypted: i=1; AFNElJ+hrDxkLlrfPGjBXrLkvjuK2iD3gMJOUtc8JJcqJfeUOn0ICuIqpZdS/DFMsazSMJchMoHam9a5bZ1AjG4WZg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4YtKr5VOh+/ol56rHRc6ErJNUo3XODxQdyHjIQdumiA1ZQ4gZ
	KNe05axsWf/sA6Tm8HVA7myv/Qd4cTav58i1RR+w1+kPyvLPxvAYFiFG
X-Gm-Gg: Acq92OG2/IUSTBLkG1hjdQASZnkVE+QKBn/QVjmqHiBSb288Pb53BxIvOE/M4vjKhD9
	svhDmajX3bm/mpXMciqu9VkRXQbIzmSjPjfP0RfUVD2/EFrddmlC2jtY6t6vPcZ0AIZtzRuIpYk
	9zHCQQpRPiTTai0K2WWdQ/FRE1Nsddll5y0sgEUoWGMm4W+nSuYy/6QLMgJcKKFj82xTYM4K0u0
	xYDT+nhcd+Hzy9r2mHTigKKmRVExerLmlUal+PK7vFhKFmyDzPvfGbzuqeWpe92Y6SGzUkYP3JR
	cJWxTjbHOPSiQ4rzfF2uWlbdD0xdw5dMpyx+dXetep4FDlZPaE4l469LmvZtPMGPRx0iYCPkGL4
	PNlSZrsy/EZK8Z5QcO351wOQTIr+IuBPHIznAnCtqnyU8qoiB4q8/06svHo1FyHNqgmEXfz4DPv
	a3061AqPqIKze2E3F/e2DQB2BC65q1WN0=
X-Received: by 2002:a05:6830:2643:b0:7e6:fed6:3c33 with SMTP id 46e09a7af769-7e70caa9215mr135327a34.22.1780604452284;
        Thu, 04 Jun 2026 13:20:52 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e6e796c675sm4541800a34.24.2026.06.04.13.20.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 13:20:51 -0700 (PDT)
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
Subject: [PATCH V10 0/9] Add Invensense ICM42607
Date: Thu,  4 Jun 2026 15:18:22 -0500
Message-ID: <20260604201832.60656-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_132053_845615_0F24F3D3 
X-CRM114-Status: GOOD (  28.66  )
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

Chris Morgan (9):
  dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
  dt-bindings: iio: imu: icm42600: Add icm42607 binding
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
 drivers/iio/imu/inv_icm42607/Kconfig          |  30 +
 drivers/iio/imu/inv_icm42607/Makefile         |  13 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 421 ++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 465 +++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 539 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 437 ++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  95 +++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 107 ++++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  82 +++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  33 ++
 14 files changed, 2250 insertions(+), 2 deletions(-)
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
