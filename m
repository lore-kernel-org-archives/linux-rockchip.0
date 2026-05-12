Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 122C3CD4F24
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 May 2026 22:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZVScZFjau4BDbE6fAwY0pv+pknEWbL5qO6e8qU6FJGw=; b=lxG4jOyf4TR85Z
	s7LrFYOnaQjsF2bL1In2LmnN08VwbofW3Uk3mH6DV79e5YyD5S8vog4i1LZvHnJHuj8RrcnAi/nCg
	LGCodtarfeKeI4LX6JsamSsuBnR2JpGkxcBw8GGaXB06UD+LZrM8WLmmewxMohPWxtVDp7TtYdTnS
	LbGJ2xi7J1KCj+xnmLP6Bk7sMeqzKjN7yikvdYDpwahZ2iXe6ZHzBsbd8J1r2aNM+uRAQgUfQI0Bc
	rAicNoierIhHRYgx/MLYNAUTePKYzHaR6N+GvnejJ3DQKfnhyTrX8zPjnctw1MQwUw+zdfAjlpa98
	G2HFK8c8JNSTSR/IRVQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvRS-00000000ZCM-2Cuv;
	Tue, 12 May 2026 22:19:06 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvRP-00000000ZB3-1K2T
	for linux-rockchip@lists.infradead.org;
	Tue, 12 May 2026 22:19:04 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-479d68a9063so2283257b6e.0
        for <linux-rockchip@lists.infradead.org>; Tue, 12 May 2026 15:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778624342; x=1779229142; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wbOAkAosV36OhwkLLEx/+s1EaAlqex9RxH+DuxyH/Ng=;
        b=qp3z+ltcByHd1yffVE/D1Or2fS4f9T2Tlo+5nAB00jkh5jhBJn/WCl0+epiV7eQfP/
         tUy6jMzvtRkAvOdu4UCE2bMvP9tmJDeeWk8WSy4cZQ6/9ISHnJUH01hZLNTSiGjaya6G
         GzfyrJ+QnhiemSzYkFSWk60Lmnrqq/6YNnPS9sje+uWwbwUtG+8VGmhpd0kVIJOpY84W
         ERAfZ6cE1nCNxezSrrLAnpzFp7iKN581w1K0+zQhuC9k7y/17Ap7v+LL8fajjiveU4WO
         j888wVvJdGr41gsv/xLU5LGSmvCBUbrvVwRQaHq9YpHrpkh/DwWs1OF7zRGMgL51VsMW
         xePA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778624342; x=1779229142;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wbOAkAosV36OhwkLLEx/+s1EaAlqex9RxH+DuxyH/Ng=;
        b=R4szieNFPlI/DzNHJeZTqda51twRNQoe+VDu6GYN5TN5J0q4N94bMQsQ6YeGoAkkEG
         oHqAjMihAFIgVhTv05NEm2vMpztMsPaG23WxxdO31IMjmGC/Gq4T5+IVjYXjlOq4zb8L
         monS9+8Cp6v6ab4UCE4r7eoS18lDOEkykJA2m32gwoHC6xR41azBMvVEMnL9XdRg6Dwz
         UjocjBpRoXGE2BWW+TmjmdfXWPa+APnN9W86SH/OYgLhUgze82R59htoO6rUfxBdM1vJ
         DXRx7Fm9mlw0cdPQaP+09dRYGcNeE7yH+F+Oi7vlvdjCKpOITIEqB6iOj20R1O9Nh+fP
         8cqA==
X-Forwarded-Encrypted: i=1; AFNElJ+Z7v7/AKdvnWXCNe5LdpewSVfogl+j8RY44XIdio+A5TbRVAmijvDVt83CbHHcb6WpKaaJlzdrcI5fkAAFYg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzX/ZUU9W77Ewh4TZNV9cgg5zmYlI5lcAU3B9yR8owMeFrnf68X
	68lXVM6nDBlI5bT2vPDpAYyleoEMXmE8HYs91apluVk5eNyU31bQhcTV
X-Gm-Gg: Acq92OHmgRu5ehdZdxResCYdugcFJnseP6BcZmxw8M6mBvEffLQ859lZXgnWT8fxWII
	L6Xyex2F1KuonTtar7EO9bOnMnaOmScHR2JkFH0TkVeSz2DwsxXftpOSYFNOYjNm/kR6/6RGZ6n
	CObQBL9n7zflM/Cw5pm5e91jIjQ0QpIMR/SfqqsDPZJJQibCLC4uVpLxTzytODJodP/RU0y3plq
	8yBw2aFRMj9pz/RDsJrkL+vg23s97l3SO68DC2faHeM+Qd3qkSLfNQSCh0s/RdBd3UiHstR4Cb4
	cucMnu7Z8BLOAwAEpDlk0wJTUxLS2v8YD/WJnliSsfLPaT8QtN7edbidkhXltul05mM88MLG5ev
	IAC/kvTMndOTj9QdolmXtaF36LEpYcv9dHeOUFWbZ5RGhwxEArpdYU25vSgOCg290ZwEJKmI781
	FTiz+UN/H6vc3hy7Zh9xIt
X-Received: by 2002:a05:6808:4f29:b0:466:fd51:6a65 with SMTP id 5614622812f47-482b2d05a43mr651761b6e.23.1778624341793;
        Tue, 12 May 2026 15:19:01 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-47c76986f87sm23291473b6e.13.2026.05.12.15.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 15:19:01 -0700 (PDT)
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
Subject: [PATCH V6 00/11] Add Invensense ICM42607
Date: Tue, 12 May 2026 17:16:21 -0500
Message-ID: <20260512221634.256747-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_151903_369308_74585CA9 
X-CRM114-Status: GOOD (  25.13  )
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

Chris Morgan (11):
  dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
  dt-bindings: iio: imu: icm42600: Add icm42607 binding
  iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
  iio: imu: inv_icm42607: Add I2C and SPI For icm42607
  iio: imu: inv_icm42607: Add PM support for icm42607
  iio: imu: inv_icm42607: Add Buffer support for icm42607
  iio: imu: inv_icm42607: Add Temp Support in icm42607
  iio: imu: inv_icm42607: Add Accelerometer for icm42607
  iio: imu: inv_icm42607: Add Wake on Movement to  icm42607
  iio: imu: inv_icm42607: Add Gyroscope to icm42607
  arm64: dts: rockchip: Add icm42607p IMU for RG-DS

 .../bindings/iio/imu/invensense,icm42600.yaml |   4 +
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |  20 +-
 drivers/iio/imu/Kconfig                       |   1 +
 drivers/iio/imu/Makefile                      |   1 +
 drivers/iio/imu/inv_icm42607/Kconfig          |  30 +
 drivers/iio/imu/inv_icm42607/Makefile         |  14 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 457 +++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 879 ++++++++++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.c    | 565 +++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.h    |  95 ++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 854 +++++++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 510 ++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  90 ++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 103 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  80 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  33 +
 16 files changed, 3735 insertions(+), 1 deletion(-)
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
