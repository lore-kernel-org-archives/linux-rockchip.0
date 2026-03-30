Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 657E71061B1F
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Mar 2026 20:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ki5uV0bKutImogceePPLYvE9lL6tQOEkr0mUlqHqZ+8=; b=GK9Llpw4I3ltx2
	2IU2clJwHYAPVJDdida5l5UHeaPO9wEPBMjuMZwBuceVl8qBcD+/RifhvBNVwNGCwsUAdPCAUhEZW
	v5RjllB5hUS8ANI4F0x6i+BtHRz/qBuDS/2bDpRDoD77mQUTE4kx1WB8y/da1AnE1kUwI6jd+Igrc
	ucsfMzQaA2A2+wLRXZ50vp7qShdk58fqwQX91K8UDPICYt7Edc/ky8WJsGkWzeBuM5WwZ0OfkAhyh
	RH60BQiQ/WlFmlCXN8D14WpGB+JIhtYPAM8IMWqgPuykzkk50NoGhAGBkD5NuSiU3vRJuWU7q7BgW
	Nts7IsI4UosV7rYDX4cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7InO-0000000BoOj-1NTO;
	Mon, 30 Mar 2026 20:01:10 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7InL-0000000BoNM-1Lo9
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Mar 2026 20:01:08 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7d9d929e27aso4017747a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Mar 2026 13:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774900865; x=1775505665; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LLWSGkC1hPKbo8hCDY87YS3QDQG9Xg0HOko4w4pFuyA=;
        b=W+N7obcZAjBYKNyLvRWbEJIzhpnZ0Wekc/tFupIGWFDZjNqMmAz7uWDE8D03A/7DYu
         pJ075GsViTmgE3qwN5Xyx4IJH5UfyE3fFX8v5r0mQfa4QJZjaSDOg/v8I2UrnS00e6KU
         AEhWvVLAra2YRpjHhI7IpT49L1mz1fT711stnBmO6Mtf/tO/iuE+9qTk6Oa5TH+l0K4j
         lQfi092U8i4hdoSF/TUcZE9bGGDdPu+emIes04cnwBw8JVhuUc73aKg79e98wgscuAFo
         mE/ej+IGz89/dWOrmbCx9Qn0/7W+HMYGyUIQkgryc50gBzA1fslAE4R33Ql7wp+uABTo
         51Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774900865; x=1775505665;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LLWSGkC1hPKbo8hCDY87YS3QDQG9Xg0HOko4w4pFuyA=;
        b=TPH3oMugpI/04sASWoKyJ4xqHQRnES2CZ6bv3ZQuI5pjsSAFkY8pM9ReYsgCykqRtn
         dNHyWfMDNckJS+bynZ0V8dI07dHxJhuIcPlAavrDTsxgjn92d1lJU4xcybXEP0xD93jy
         RIsU64B4uz6h3WDNuw/MhgQuEGwlabqrOdkgPDYoOoOyMn/ljGHjLoNQOdkpGdx/143o
         R1w9sbVka9CHOvMUYS/fgTOKgchXWQxYmVgaBS/4V2AGoX2acgF6OyQm/DrbKZy1CJo+
         0s+zY7x/2j1PieA2l5KZw+Qh0rq/X9Y6i5R7q4PQQuZhywCiw2x9dKdHFqdq5lyaPaNL
         5m4g==
X-Forwarded-Encrypted: i=1; AJvYcCWCZfg1yHpTUL7AGbLCQkjBYHoLBsnI96W/pqf3xvTDXUFr01GKDyOK7jblQ2JeHSZCOb87LAWbAx2qHrc5cQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9bssD8WpZrv7zRoF1XztEgcY+RHlwfkhyRN1CIlKfmg3RXDfL
	TwE0ks7IvW7lnJz0hJ7Kv4QHbxD0T8EjfbH4s1IaANkClaB8xdXkkAJf
X-Gm-Gg: ATEYQzxmXZ4gqeRDra2Nf/x0m6AJB+rxPs0X5bvzyqSvzmIjqJeHLKf77r4U8pOmb0Z
	q6Vwr6pSQLBDe7seBrXsFzVYsX3PtrWlWrNs9OKwSDnagxNfBU1ozY06Ak5oDvJYCDZuFdRODJj
	GNhqlQN0aPVlXUrpBcGpScm66tWaK0St0P8U53OFXkI5Zpcw9PvKVwx+oO+LJ0gLGMTZ+qBjbP7
	fmefdwvsKqJ/OG/oikE1cAqIi2LsM5a1Rj89TTsu2WKft09aRavKYn09vkLt5VvH6RDFQ8+tgK3
	x7O0D5E3MJT8AAle63+T5rMpwUx7jrBQQ7z2/DIcHO7IDaSxLGk5Y3d62s5qbUu2DRSexuAjLdJ
	AOELSDhgkHUXpy0WM58zaVBbixsuqWrOOaYYGmfiLpjx2fS//HaQkUyonl7d1x2/mdVg1IhQFyC
	YIQHKuV4TIktyYzbJS4yyk9HsTVyaEPtE=
X-Received: by 2002:a05:6830:67c5:b0:7d7:b85f:25e7 with SMTP id 46e09a7af769-7d9faf3b967mr7706158a34.28.1774900865528;
        Mon, 30 Mar 2026 13:01:05 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7da0a336353sm6601068a34.2.2026.03.30.13.01.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 13:01:05 -0700 (PDT)
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
Subject: [PATCH V3 0/9] Add Invensense ICM42607
Date: Mon, 30 Mar 2026 14:58:44 -0500
Message-ID: <20260330195853.392877-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_130107_392390_3CD7E72D 
X-CRM114-Status: GOOD (  20.05  )
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

Chris Morgan (9):
  dt-bindings: iio: imu: icm42607: Add devicetree binding
  iio: imu: inv_icm42607: Add Core for inv_icm42607 Driver
  iio: imu: inv_icm42607: Add I2C and SPI For icm42607
  iio: imu: inv_icm42607: Add Buffer support functions to icm42607
  iio: imu: inv_icm42607: Add Temperature Support in icm42607
  iio: imu: inv_icm42607: Add Accelerometer for icm42607
  iio: imu: inv_icm42607: Add Interrupt and Wake on Movement for
    icm42607
  iio: imu: inv_icm42607: Add Gyroscope to icm42607
  arm64: dts: rockchip: Add icm42607p IMU for RG-DS

 .../bindings/iio/imu/invensense,icm42607.yaml |   95 ++
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |   20 +-
 drivers/iio/imu/Kconfig                       |    1 +
 drivers/iio/imu/Makefile                      |    1 +
 drivers/iio/imu/inv_icm42607/Kconfig          |   30 +
 drivers/iio/imu/inv_icm42607/Makefile         |   14 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  472 ++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 1028 +++++++++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.c    |  566 +++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.h    |  100 ++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  |  806 +++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  |  579 ++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |   93 ++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   |  100 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |   81 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |   30 +
 16 files changed, 4015 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml
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
