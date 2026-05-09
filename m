Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F3D4CD3447
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 19:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M3ahodxVYSLImqyH2O/FWbDerqfk3j083aatJhZJltM=; b=uF8vJhCyOSXjRj
	NcqYteHucupLMLEKhAS7G2vJNGa32KFIal8I4Sw04QntFRAHebMRpdsUybJxmBU2YiNoALUBAGThr
	UgFuki0QurCY/2c4FGo/BRMkxk0f6KLrDl3v1FcnOPGDPJed3SNLzIlj33ey1nJokzy2mJTyESUNj
	ka0b5whh4vIPmG18NFXAVwB0+J8rsRH18N4Nu0OPNhTFY9Y/HzB9MXdNtXBnqDFZWVEpfQJv65IuX
	WqC1o94kYpfqKESXklZqalfOPU8fK1QmYQLJq1vfS4L/pQabmcV8w7Ar1H/IcgFmTKttArP2mFWlU
	fSCSrXnlB+Jr9+LGN2zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLnF7-00000009W1W-18Yw;
	Sat, 09 May 2026 19:21:41 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLnF5-00000009W0W-00oP
	for linux-rockchip@lists.infradead.org;
	Sat, 09 May 2026 19:21:40 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-4042905015cso2415057fac.0
        for <linux-rockchip@lists.infradead.org>; Sat, 09 May 2026 12:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778354497; x=1778959297; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bWX8jEbkkLX6d2SDTNLRmYT9TMQ3k8bI+ub8fyb0z+g=;
        b=RDBVmTRbKX320UfxyZqc1hpeeg7UZzhJ9t1zFjbOWtohkl7y85em+wzuSkqAnu9Jwu
         YAPi530MaDT7gjdc/ogwfs07V8LlgDD+YQuwddJo4nW18WNU93Zm4xk0YxP/NwTZMW3a
         o43ToqigjxEUB5lhozHKXgTQ4A9ZWvUP2HMI11Oph7XH7EBbBv8wlBZObyJKMgwnkUHp
         AGXA6UgYtaXCowOXQOLCzGV6NzXkKtWgJebbXZE66OwjIuoL4J4RSzU7bu3hw83UtctV
         /F+9eetWeugigZ1RIZ25GWLU7MqnYh4saRwo+CcYekg5CrO3sWeCMwkCuWuAV7VGXptR
         /9Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778354497; x=1778959297;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bWX8jEbkkLX6d2SDTNLRmYT9TMQ3k8bI+ub8fyb0z+g=;
        b=gPdLQndWMhzVq8f5rjQ5SxERQIrtMc7VPHNalw9BaF0omRaSx9zpkhoMsFnPBJsXtR
         NVJNbQ1nB4RbFmXHfly+YYJkSKJl657hozo5KMGqT3YkLwVuIT2GHHiqxdfOqskaDjal
         FOKgNzxgeozTQl2bLl31LENsGqtEenhdqFzOtf8iFGoxoWSFNh91uxIm+Y8ryS1d+QMQ
         J/eokkbgO0qWl2wJo7k/MQcmGYh92NT7So8zhZBXRvKIjevGlHtExs0KSwthx4OJMJfU
         SNkwiomX5zTZJKdhe8PpPvIzpYH/or0c/vlI5VuhyfuitN07WH5O7dNdhxIv2Teiffsm
         lyzw==
X-Forwarded-Encrypted: i=1; AFNElJ+utHX+mzGfcmLzCm6F0yv2SsTVpOGV0jPB9LTN5DL2hzVm3rsigW8gdjnLvM0iS04H+apPZwdfMiKikF7BSA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyXqnU/PfgyrEGOQ/DFlpsNN8hhWDiyDVDi+ufbWjQZLjRJWdFF
	vHp9s2wEnZx+zyg/tWq3RtrArURsd5RuhpUlvhs1fAnH68aAEeNyNSwy
X-Gm-Gg: Acq92OF+SWh0ikqEYIzbnKao4sExHFXTUvrAqoSHLJMk+isyzbuybcs3aZp9EDsBKDm
	GgTjs5ZMZhQSyB6sSifySdSfX7jbRJjTgQv5mzGqXsoZ9uQK4CY5g7x7cNoQoBPg3KykcUSC75h
	X1K/+FKFzCDkp/trUGxmP/Xrd/kT1a8Ifd4BWGHRmGM5O+9cDORcm2eZbl/h3hmbnp+PLz3I48M
	pM1W8QORsbHIWVzUSOn9UPkEguE/VHyj9n+sFXH62MU4vzVpl5z+/AQmPI2lBUoYym1ImY7V3EN
	AvxUR3OqlOlWx6e4aRturKBtqbSvlXmHiqNOIaaqmQ6I2GE8BkJR6CUIrVTOwvBZFT81YpVALL/
	xJVg6qHatgoqJkbWHcNkoyag5xZl/o4c/+9AP9DfA34lyeo/EAXUcul/6djTCSIfL48XbrtQVoh
	CNdXeRdWdZZte5qv7u7gBS
X-Received: by 2002:a05:6870:249b:b0:42c:111b:73fe with SMTP id 586e51a60fabf-434f64e9244mr11273892fac.18.1778354497428;
        Sat, 09 May 2026 12:21:37 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4355736f517sm5243896fac.12.2026.05.09.12.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 May 2026 12:21:36 -0700 (PDT)
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
Subject: [PATCH V5 00/11] Add Invensense ICM42607
Date: Sat,  9 May 2026 14:18:54 -0500
Message-ID: <20260509191907.24734-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260509_122139_056875_66EC8D85 
X-CRM114-Status: GOOD (  23.29  )
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
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 437 +++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 875 ++++++++++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.c    | 552 +++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.h    |  95 ++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 795 ++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 509 ++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  85 ++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   |  92 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  80 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  33 +
 16 files changed, 3622 insertions(+), 1 deletion(-)
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
