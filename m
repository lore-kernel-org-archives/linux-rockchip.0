Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54264CD343F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 13:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y5Zq9RDdOD6mamnkexNIjS80eH6CPcDRtx+AmMtrRuY=; b=2EMr9n+fximbaQ
	6y2d9K+qoXiVwjtM7sY5W6ZOdQCkJi9vbqIQjUYQae+uMPsPro2Zkg3XFyUCYuhWbWZZ29+zpDsPQ
	BzBSTZSz37g5MPEmy4ExTtjm8rPh1Xav5ap1sMrCG53wwz7B/3qvrF4Nz6Jh5Ik0xj37DmDX9KD5G
	Ja4Yw5H7DnqfTDbqhhxzrAals7KI1QOM/Jh43W7Aq9YFuPfeOaWYfLHfmDq0QSz3iEnaOXzxl8S7s
	Eui/Rai7m+gHrQDO/Idt8OmA4dXpwVUJJldnJeTlfyPhLGm252VfnxT60pV2P5jMJOwFsSY96Q03B
	Z1dcSXLXkzmDQdlu8+dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNsBg-00000008OEW-0hhF;
	Fri, 15 May 2026 13:02:44 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNsBe-00000008ODV-2RfF
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 13:02:43 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-43587e63a8eso3953315fac.0
        for <linux-rockchip@lists.infradead.org>; Fri, 15 May 2026 06:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778850161; x=1779454961; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j4KVzd01T5sf0R9FhB15rxjDpz8yPmArKGvd/XLI4lM=;
        b=cI5h0cFfmnIMTlLPvQ/EXlJV+4hK9uKQk2Io63/dXul8eWMrycLQjOqx4Y64huFlPZ
         z+JObN788W6elLIxHlLFwnsVINXy/Rr0RIwP7VHOdx4TmZbp6+BK8XvrA//LVOJLs7x/
         N8PHsb/4BwdPrCdvhWB4AzN9Fd21+SS/5ikXjwH+z00tfrq7EfKrZkSx7l0MsrCaSjwE
         i/96PIJeRj+mjojcsXF/wvi5IAeHOB9OaNkQIKzBC69bQ+bSfoia1i2cFQ49CrDIb8TL
         yhJjkAYJXxClf2dYMGtL6Mj+ZHDJEk0dLz9ddEUri6RHW4pCD99MTlusFD68A8kY45oJ
         LKtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778850161; x=1779454961;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4KVzd01T5sf0R9FhB15rxjDpz8yPmArKGvd/XLI4lM=;
        b=bRZgmfG7s5gsskNHp420F4Lo1W/4UG7cg4VFkx5dR7og7r0drBspKUC+Q9LKWMtSiH
         /ZZ+HKRdiC22xqfOhXETx5fddx3Q1S7cWY0RD4WfcsCNVTDOSQUIKvCMlRycWhjle+A3
         jkICCaZl2HYXvxntWmmYk8+a7TTqaBx2roSGQxbyUYxxQDWhs2S7nNw78TMwmRzZzi0I
         ZZHSDLENTw8zXs0+0uK+hSNX3ZP4RJgwW/5MdKEFd6tpIGSA8Cw6xnC0vKm1Vv8rvCMg
         OU+az4Wc2ZNtSmbDbDMgxLW/qia2Cbb+VRv0/jOHvzeukdbmJSMH5Jc1rTDHnQ7zMWn8
         SRxw==
X-Forwarded-Encrypted: i=1; AFNElJ9mejtgpY2iRzttQhOcERZapzy8D90IIL9Z/qbouCBs8rfhD2n8ipUv+6IM//OnLv4XzxWukRLPs/EHo6APTA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzmeXv73XI/iiBDMtM0rvrIPxeIhJhqGFevtU4aVGfCnD8j5KHh
	/JcscQBY1EwePaJI+17EixewoXLSSVcnoR7B9LgCnR9MYs9A45mIR04L
X-Gm-Gg: Acq92OE7c45hk/am4+EJKfeIG26KHJBCngukXI33ARF4XqlLboIo3g5Aoo73LHely2i
	LBYgzvBJMCnJW0EDphYx8X38WGGjmkHylLvsc7az+SfpGLpoPZQs7IPuzBa44EFUahAq1ZQGRcc
	RwFArJdOAUHtmfpwnbnRhnk3Ny/q+3d2+jAO/ZYgb5lTsuywpPGpPU5AEGoUBloUyGU9ljInXpr
	8KLlG2LgodtVZXoNPUVM/DaA1hi201qI1R7CXw4t8SwsQwy5ssAvMrPmk5bKNOz9p1RnhnDpJvC
	kR0Y/+fpDoNWCktZHS5s8XG/ocxSRVXLNGhtF0F0cyP+zgUCClv/ATnPI+uCgNKrXy+1wn8bDLT
	aFfKWEe3swLbzuJJA6cdH44lwDTmyboHwk506t3jxKTTj1C8TaMbUoKosTW7TUUNxblVCHGyLwe
	eTrGYR2CouJ318EkyopMbFcbiX4XjAZnlWICAOpKhYBA==
X-Received: by 2002:a05:6870:31b6:b0:42c:24e7:f074 with SMTP id 586e51a60fabf-43a2defc241mr2647034fac.17.1778850160475;
        Fri, 15 May 2026 06:02:40 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:8c2e:6a8e:445a:9169])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-439fc53f2acsm4155822fac.14.2026.05.15.06.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 06:02:39 -0700 (PDT)
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
Subject: [PATCH V7 00/11] Add Invensense ICM42607
Date: Fri, 15 May 2026 08:00:05 -0500
Message-ID: <20260515130018.237378-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_060242_636580_60E40969 
X-CRM114-Status: GOOD (  24.19  )
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

Chris Morgan (11):
  dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
  dt-bindings: iio: imu: icm42600: Add icm42607 binding
  iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
  iio: imu: inv_icm42607: Add I2C and SPI For icm42607
  iio: imu: inv_icm42607: Add PM support for icm42607
  iio: imu: inv_icm42607: Add Buffer support for icm42607
  iio: imu: inv_icm42607: Add Temp Support in icm42607
  iio: imu: inv_icm42607: Add Accelerometer for icm42607
  iio: imu: inv_icm42607: Add Wake on Movement to icm42607
  iio: imu: inv_icm42607: Add Gyroscope to icm42607
  arm64: dts: rockchip: Add icm42607p IMU for RG-DS

 .../bindings/iio/imu/invensense,icm42600.yaml |   4 +
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |  20 +-
 drivers/iio/imu/Kconfig                       |   1 +
 drivers/iio/imu/Makefile                      |   1 +
 drivers/iio/imu/inv_icm42607/Kconfig          |  30 +
 drivers/iio/imu/inv_icm42607/Makefile         |  14 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 457 +++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 890 ++++++++++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.c    | 565 +++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.h    |  95 ++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 863 +++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 545 +++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  90 ++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 103 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  80 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  33 +
 16 files changed, 3790 insertions(+), 1 deletion(-)
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
