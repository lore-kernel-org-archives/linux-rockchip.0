Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F279DCCFA13
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 May 2026 22:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yzJ9Eyodpc+P9NfLXpKfGnb7FOwiz7He1QbQqkCqLek=; b=nX+u0ZslLNwgdW
	lIGtbttrDOBBrMNNZdtozUG3OyjwioTu2XPpU16vLjP/hGgUo0I+/eEjXGLcyVa5egzNK7WUGUwiZ
	fnYnHnc9Q+zvDBlIczY0OK2W1+DwCZ+kIKvDm+JbOt0tn1hRxQVbjD6Vucnvfoa1fhi27NkWAiW6E
	jZG0gElwolQyezl0lyt42JsMqmQyeRqJxhUx2irrk+Lv0pHLDpqFmnkbA07Xwh8vWSBd5O8mgSFVY
	1SLtawUJ9s5kbiXaie4rLUNCgUEEi08PPPmstNu6Elgy5PcM6mwS0GrDaVY/JjD8HC1WZ2lDlTDVl
	Qi0+0HlRpbp9emT+QMog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIw7t-00000007kSi-2eig;
	Fri, 01 May 2026 22:14:25 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIw7q-00000007kRT-2wMe
	for linux-rockchip@lists.infradead.org;
	Fri, 01 May 2026 22:14:24 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-7dbca22dbfeso1333373a34.1
        for <linux-rockchip@lists.infradead.org>; Fri, 01 May 2026 15:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777673661; x=1778278461; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=McHLo3cj7iFPLZcReAQtNpsae+Pg1Wjxhu0OhYjCJIg=;
        b=N667zo+pW2SvjO5Aobsad+x3bwVAFwTw0sFfoKI5qlQj+8Sohh+sMJ4jDuqVUoulM/
         zZLZtMkB2G+Ako7UrTWjZ8nbxaamtv362cR2fd38j8ed9d3dxibXPKF4N4puYyh1feSe
         6N9uBWpQf19qFkZ8q3/fiBsghRwRIRxFI+ZQeal/j+DPHrz4kyT171qUaOAGvOhxA3Zo
         nwjBsoInqUuTaHJuINQ6VJwl8KQavBCoQrs8U8OE10CX7HtIlqDZqWW/12BxvExlGFvH
         PIflxYI+bukjqjyWwJdIfs7KJIh7MZ7T+Hu28hgAgsZBGgDip5ZlH9YCth0MRX9aXR09
         nLqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777673661; x=1778278461;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=McHLo3cj7iFPLZcReAQtNpsae+Pg1Wjxhu0OhYjCJIg=;
        b=amonn7cT6yNQW13ZUkwdlXvwh0KAIrSLZfRATOQzYyTP6OCxq1Hgr6Rtuh2dLeC0wx
         5AR3PZvWjGdu39YNkPt1WKd8lA0RC+C69RYOATWxP6xxVPgEwOPt9fO4YwhOcAZgQp82
         SRTAfCkbWcYGefODwum5pVkNxtAnIP8FKbEUeevsAUh2DrTv8C33ilaHF+S2tydzmYQT
         JAmUt5GjJc0vO5uklU8eXdyyJ1M+qz1HHj0h2TNIyYcfMRtUwpF+Uo2YZK6M5vId+tOP
         /cCSvNTu8jPOiSnNrCq97hFHgUWhVRxenY/4LwbXPNSHtxj1oDWzBadTQs2NrdheLjFs
         wEyw==
X-Forwarded-Encrypted: i=1; AFNElJ9Sm5lnM0ImE/xlsJTy0CukKVNQ1Y8Z0rxlZgQk35sun408R3+NbQPT/fHXWf0Bna6MVKjUXl1Z+IIP+ZuiMw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxhZtBQhdlQ+kQwTMUCMeBLQJyxZ+fn/sBP2nBxjjrNQ8dE8hUn
	DxnLsFWNjBCBVm9Yjra3dWdGyaeGB7+e0VJ750+I1pGbUxdOjPQqa7iT
X-Gm-Gg: AeBDies+X3nuZWCHpDM6W1sRdl0iigCaG5Em2ro/QFf78S+5Km+2dUo2XGjqE/qTKTq
	+94rVQHZKis9k9NvOGyeg6pgQyOWpK4ofVykVIB0pwoR9Jek9rK/cNdPEwiJEykptaZF/8zVEv2
	mcfMxkZeXaU8txH3Hnk4iQGk2+rTlk1AKnTpNL/o4G0asTn2t6jbhIKZJDwFGWzHAKFELRnF8L5
	kSXs5iGAG4dIYlr1A9t248sZ6zH56YpSagmWv2O68PpH1MPakVbcH/9JIfx18iG4/iQ6dWSq2Hd
	NynUqzL92b17nV5xQihAMIKZ3VcRYnY1I2JD7tB0t3xkjEgnISRpFNpkVmrUTyLkCeIBKlOi0hw
	gH3bcieXAioobQ/85wYi5ZacgHxliXsVuFkIjoGvF2evISioOjae4yjbcPWSH7Xvsqdt1elfoJ1
	IFfvlzHZ9t95wE/R3LKnbLOueoMqPFvmM=
X-Received: by 2002:a05:6830:8d1:b0:7dc:cd0b:58b0 with SMTP id 46e09a7af769-7dee121bb21mr834710a34.3.1777673660884;
        Fri, 01 May 2026 15:14:20 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ded51a9612sm1827337a34.26.2026.05.01.15.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2026 15:14:20 -0700 (PDT)
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
Subject: [PATCH V4 00/10] Add Invensense ICM42607
Date: Fri,  1 May 2026 17:11:39 -0500
Message-ID: <20260501221152.194251-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_151422_754040_54F21821 
X-CRM114-Status: GOOD (  21.39  )
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

Chris Morgan (10):
  dt-bindings: iio: imu: icm42600: Add icm42607 binding
  iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
  iio: imu: inv_icm42607: Add I2C and SPI For icm42607
  iio: imu: inv_icm42607: Add PM support for icm42607
  iio: imu: inv_icm42607: Add Buffer support for icm42607
  iio: imu: inv_icm42607: Add Temp Support in icm42607
  iio: imu: inv_icm42607: Add Accelerometer for icm42607
  iio: imu: inv_icm42607: Add Wake on Movement for icm42607
  iio: imu: inv_icm42607: Add Gyroscope to icm42607
  arm64: dts: rockchip: Add icm42607p IMU for RG-DS

 .../bindings/iio/imu/invensense,icm42600.yaml |   4 +
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |  20 +-
 drivers/iio/imu/Kconfig                       |   1 +
 drivers/iio/imu/Makefile                      |   1 +
 drivers/iio/imu/inv_icm42607/Kconfig          |  30 +
 drivers/iio/imu/inv_icm42607/Makefile         |  14 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 438 ++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 989 ++++++++++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.c    | 559 ++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.h    | 101 ++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 809 ++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 536 ++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  91 ++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   |  97 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  81 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  30 +
 16 files changed, 3800 insertions(+), 1 deletion(-)
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
