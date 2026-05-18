Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 116C8CD4F4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 20:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VnXX1PXGq3MuE9pvDmSGcTChXdkjOyBLBnRHgDn1WTk=; b=lnFrZ1PQ2mi9KH
	xCceyqJ9o0KU4hzcEPPnD+0ryY2ZZhFsEhIjoOND2XcuipjOkFeQiGhdI6bn8kElZTqXLgK49fDVy
	RxGP3U1y3LQsq68Ox7R282EdYaMbK2KzZsc1o1ZzJJQnp7z1ZwdIIGIAeVcEKFiGCKHgXUWDLjsOg
	APdw8rjzKH1dOGQ9RT+24RdTbtlNZi/D0gxK6gusXcat/8fwHT9jS+lspYMHQQUBj+xaiqqri61Kr
	GD0XNk67LiVADI6cNu5hR52AtL6gfjkjDC/obUbVaHUIW0vrT1cLlKMQnGaYlxDxM5ZAuFVZYe3QC
	X8nIL18Jgh8Nq7vxIIZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP4Fl-0000000GqDM-2nL1;
	Mon, 18 May 2026 20:07:53 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP4Fj-0000000GqCH-469Q
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 20:07:53 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-7de431da8fbso2556282a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 18 May 2026 13:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779134870; x=1779739670; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2aMdRv6ihcWtjppf7zSbeituA+UJ2sSFZR2RWfS3c1E=;
        b=X73wjoz3xfSQAQbbbUrr5gFFGs7ms9rOkGqy8bY6NG55S7vqQoKik1H/tPYrkBIi8e
         hmtpII3nI2TGY6Kwa3vLe91VeqkxsIdqQVrFY8RpxtQqEW2uSDFR8FFuMiIvLRAVODfS
         JJq11N2etpxd4qwooXqM00y2xczZU2p3U5wr/c1QDBmgSBGhQHatqWKCW5/2o24Z9fKS
         rrgQxl4QwVXBDXp34dXJRWnFygBuS92OeB7sKfD9D5I8+bOBJ9xe2KXAuIuGHeHRhMct
         TMmZfzTgeJTKCR5uirG+PpcPy/4WoGwkto/Xrm3BF1fv8fpYe1Wa4Pc6Ti0pQI31f7lN
         vohw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779134870; x=1779739670;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2aMdRv6ihcWtjppf7zSbeituA+UJ2sSFZR2RWfS3c1E=;
        b=Xqc0ydyv5+NIx/aTB+/BtAxVYxiI42T7s18PJy9+ePM6E3erOaGnJ99n10DxbJEigV
         g5H68SwB84bng83WnTlzw5Dhto2ScTHN5mCd3rKU3IDxMAG19Uu/WYWXgxkXkIBPVezg
         qdAN5yWZ6AUR7mwpgb/NF9ILxxk2MWboByi9RmL8jWSsPHHSymF+1lDvM+YqMuQ5T54Q
         eKHM32Nkn1n8QP7KBWqKobllQyEYRtKKhxUqfqep2EEH5jpeX3+4lsSskR1NPb/5vcqh
         pI9SxxwjT6q25ZCnT8JL5bv7iU+dwW5B8FExYyyRN5d+z1qODzTFqqHDTWe/rl86wByt
         SGYA==
X-Forwarded-Encrypted: i=1; AFNElJ+x2TQR1ZjzKFqKc7A7g7bFlDS/hMYPXn3HgqiFJiS3RdMLfGENmTQOiTCWGSZa/Vi+XnXcDPYdnAOJbguzjg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzy84tYHBOhn5lgjit7VzMU8eB7S3h7zrBkhFpyqB73meP4tTo1
	H38qj7RAGeVSCaYD8ZDiKthmYmhv7kgX2KwS1/wrI0NWTYHHoq+71sl/
X-Gm-Gg: Acq92OEdO6bLQELQPN9POf7Jpr+Kc1VhBnupyFP11nAT6CuGKLqg9GSd4E8Pfs6zSaf
	n5Lx0an8tMG78h6AH0ItdT1y/uErKZD2Yv4FsRATdKJqO+2VYFTvk+mPb9OUeG+PYgFxWKWoCPK
	p+JAued4K81UXfjM+0NPCYUbCbYvWhOxUIczdfJ90MWfA9nE+ZTRzdOwYS6FLbWToJSx5N/K4CA
	hFh597b/ERWWKJJ4nr453MIXLeVRf8r5eqy/zcilV+ya15k/E77PHbxIgs3nrFh0II69H0vigih
	wFLQZGRe4aOqFX7wiIH+FC82zSmCAwnhFeAq1J8rSIkUb4qOCx5Bgc4D00Ol4HMl0EomRYzTQgG
	TGMMhW+TAU8mia0h1qDsT4/c56//nZuBY7OszoVWfwZZZarvmkAj69Loe1/fWWV+OVmlyHWqxck
	ujGLjlVAhfVRIszMQz3cAc
X-Received: by 2002:a4a:ee07:0:b0:694:914f:c18f with SMTP id 006d021491bc7-69c94294299mr9985227eaf.3.1779134870134;
        Mon, 18 May 2026 13:07:50 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69d0462e85esm6113360eaf.6.2026.05.18.13.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 13:07:49 -0700 (PDT)
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
Subject: [PATCH V8 00/10] Add Invensense ICM42607
Date: Mon, 18 May 2026 15:05:15 -0500
Message-ID: <20260518200526.458421-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_130752_028408_5779167F 
X-CRM114-Status: GOOD (  26.87  )
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

Chris Morgan (10):
  dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
  dt-bindings: iio: imu: icm42600: Add icm42607 binding
  iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
  iio: imu: inv_icm42607: Add I2C and SPI For icm42607
  iio: imu: inv_icm42607: Add PM support for icm42607
  iio: imu: inv_icm42607: Add Buffer support for icm42607
  iio: imu: inv_icm42607: Add Temp Support in icm42607
  iio: imu: inv_icm42607: Add Accelerometer for icm42607
  iio: imu: inv_icm42607: Add Gyroscope to icm42607
  arm64: dts: rockchip: Add icm42607p IMU for RG-DS

 .../bindings/iio/imu/invensense,icm42600.yaml |   4 +
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |  20 +-
 drivers/iio/imu/Kconfig                       |   1 +
 drivers/iio/imu/Makefile                      |   1 +
 drivers/iio/imu/inv_icm42607/Kconfig          |  30 +
 drivers/iio/imu/inv_icm42607/Makefile         |  14 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 428 +++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 587 +++++++++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.c    | 573 +++++++++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.h    |  95 +++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 597 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 552 ++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  90 +++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 102 +++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  80 +++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  33 +
 16 files changed, 3206 insertions(+), 1 deletion(-)
 create mode 100644 drivers/iio/imu/inv_icm42607/Kconfig
 create mode 100644 drivers/iio/imu/inv_icm42607/Makefile
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607.h
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.h
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
