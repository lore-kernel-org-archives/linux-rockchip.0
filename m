Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B7A7CD6E53
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 03:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WOllEpxOXA0AEHHv7awmW+qlrHTAo3jtfWS2MbIihcY=; b=uBmtzWQs73M4b9
	xA/sMuzZDCOoojGQGNUJ3OpuEh3UUlVG+BtMb9uo2JlltSBTjAyp0xGI4ikkMra+bZrgSaixQEjf+
	fFkHqHzSG7lWU1o/y82nv1kPBrGXuLGBFI1X9/I8IOnWmDUU5vmF/MXq2sdJZd+EZMwdZJlQBRc0m
	Ur8Wt0HkkMfcMGs1Kgw65U+hM5wi+vN6/XpHkxqmPXN7hzBSO/XG7M/URr9YYg1/Or22dowXXCa/k
	PYwIzb3DwkTPViVwtFBZNXZwymOCbABxdBTwdJHzleriDoke5VJ3bvrURsCxGOTlpUddSYNEcQ5dq
	UNiEDkfTAs9zLfFcHWoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTAFJ-00000008PH4-1MHn;
	Sat, 30 May 2026 03:20:21 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTAFE-00000008PEu-1fdk
	for linux-rockchip@lists.infradead.org;
	Sat, 30 May 2026 03:20:18 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-7de4be15125so13506662a34.0
        for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2026 20:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780111215; x=1780716015; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tUr91O3haAau1lya5SbGJW5FOuVPHJMzYdG+hkCJ83I=;
        b=EvcUbEPAKLu8IEX8S0xxmD5L1FcNrmh9LqLFdIgPWG+y+pcCmB+HnzJbLmf5oMmyKW
         coGKp4OekSvGhN9w3GdWm/ddGw3Tq6z5BtoQN/lTlIu4EzaH/lV1eh64mkk4aTOkaGbC
         XzbnmaCUQDsOLlRZOAZWcW/LNDhgyryBaKcbF3afPPNygQ5OpmCZ3Omezp+hhzYOGSQH
         +nW7/0euFwIj4iV2SifXlN9zDMauDiBHveHv0+LItdlC4SzAk8wXRXyYCFSSjMBWbu98
         My+/6egWKg9GqEKLgaoInoHruQwGa27kgR8RLA6mfa8ZCvJOW1Tp8laggWBLAKNutIKc
         dPhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780111215; x=1780716015;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tUr91O3haAau1lya5SbGJW5FOuVPHJMzYdG+hkCJ83I=;
        b=j8YC7/QnDuXDc/+OkLj86aLTZ/wuDbvUHRV3zj9JS9bMpiJUblDmP/JuI82uffBiAm
         4P7bgQAOyFkni7nEcJ2kWdu0VgH6NfauCcjzLA8SG7A4rb0zBhdBlAd/MFdyETYUjrho
         ldeR1ol+qlXkVZPzGv7F7JE1oqTs++D5yn8epD1tR9C0KXqy+i8AkUl03VL55suYaC7D
         tG36/NxGQLkSfLPPYiO+D1Vv56KXuacihuGZgSfN+XvxsIb9tCv69ctridfgSUezeAJt
         EdTGHAzfDro6g/at2kmFPMLQ/EyNPnkrTAyraSrbdjYm5SPBh/Td+gGxpQSsdAFtKYTT
         3YPw==
X-Forwarded-Encrypted: i=1; AFNElJ/C7I2kXpK+Az5lHtjNspj/lSdla64fGlo1ClP3CBX1wFnIpJfDG3/D/Jl8oThy2e6Puo/nJ5kt/3FmXZlV7w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzNSIjTjiMxdZDqL2zZvlOyMUc3BdcNLIgVmGu0s/HroM6HyfW3
	AAseoeTwr9Dlgmf3x91pz4z9pfyQ5Lyb1o8p3i7pHofenl5fCgcE9nLr
X-Gm-Gg: Acq92OGUVgaBtEeIf9jBbjgImdH0x3iz/ZaxUiyU0l5OuGx9YcMvFnPwJnu00vD5aQU
	do/Qew+IbQ2YbMPPR/qWAS7C7B6NSsNdSybKPrrlD1EfYmwpJGZOdyaQxACNTfv7rYQDsxq+TBI
	i0/EaODWjGKLaFJFkdgfRGavJlEK/mcg8AMlDElJ0hDhcDcEBrk9qHeFRMPna/g1csAX8Qdd0Su
	x7DO/ps9K7K1cyROppnlBV91Jml7LvCtiKvp6gwMOwH1SQIHdUQnkVRfQfrU9KPg52gQa3wsLD3
	Qaga1umVvC834L/FVcUE7D5Xbsh/59gBiZP7ggHgw6sRuhjDKRvTktX3OqOSCkWbfphWk62q+AM
	e1LOX/zVoTAzkFb7fFHPZBpk3k17xdTwn3dFr2u/222XJ4eBBfWTodfthTDTpgE0goizxPNNEm9
	TfrFV94uG/tgXodG8EZZVxnakXvYFJgFKy3iRDyflVHA==
X-Received: by 2002:a05:6820:f01:b0:69d:7777:75a0 with SMTP id 006d021491bc7-69e10308647mr1117894eaf.24.1780111214885;
        Fri, 29 May 2026 20:20:14 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69e067e911csm2130737eaf.5.2026.05.29.20.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 20:20:14 -0700 (PDT)
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
Subject: [PATCH V9 00/11] Add Invensense ICM42607
Date: Fri, 29 May 2026 22:17:27 -0500
Message-ID: <20260530031739.109063-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_202016_484074_F2E35D29 
X-CRM114-Status: GOOD (  27.33  )
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

Chris Morgan (11):
  dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
  dt-bindings: iio: imu: icm42600: Add icm42607 binding
  iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
  iio: imu: inv_icm42607: Add I2C and SPI For icm42607
  iio: imu: inv_icm42607: Add PM support for icm42607
  iio: imu: inv_icm42607: Add Buffer support for icm42607
  iio: imu: inv_icm42607: Add Temp Support in icm42607
  iio: imu: inv_icm42607: Add Accelerometer for icm42607
  iio: imu: inv_icm42607: Add IRQ for icm42607
  iio: imu: inv_icm42607: Add Gyroscope to icm42607
  arm64: dts: rockchip: Add icm42607p IMU for RG-DS

 .../bindings/iio/imu/invensense,icm42600.yaml |  14 +
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |  20 +-
 drivers/iio/imu/Kconfig                       |   1 +
 drivers/iio/imu/Makefile                      |   1 +
 drivers/iio/imu/inv_icm42607/Kconfig          |  30 +
 drivers/iio/imu/inv_icm42607/Makefile         |  14 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 436 +++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 589 +++++++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.c    | 574 +++++++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.h    |  95 +++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 693 ++++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 559 ++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  95 +++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 107 +++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  81 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  33 +
 16 files changed, 3341 insertions(+), 1 deletion(-)
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
