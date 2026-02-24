Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D93C5F3C9B9
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 16:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MkQZl3eyDPjXKM505gjJ4bxSFj/rrC7ZPDRJJ/ClsWY=; b=a9f6uVeeH7EIQR
	mMvTBQnwvZIRC/odzaGWblFqgRY4UTrn4qPzK25yZQUksDh1l1ouZtOowSqDVTqj6ljP8hmpyfzJA
	cr2eXBEOWVcSUtl4pgNL1vJltZ5UaO7syUAonIod63XBlJt15hiX5SmMkPgMj2ydVRMrarMZfygaa
	p1ekuE76TO5ANLQNquGrepOdZnGvn0oKflLuNVgFX6x/5iZmQ8JDZQh3nZxJF/CZgCUoYiX8cQtOI
	PquXAHHNuy+ljO1MWM6b+XKb9sk/RSL6Cg9foYRDwjpXKUXOayzxXscjKwHubV+8mwAWJUDAfMThC
	TCbP5I36W1kDDMyP7rzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuvLr-00000002PO6-0LgL;
	Tue, 24 Feb 2026 16:33:35 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuvLp-00000002PN6-1D4S
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 16:33:34 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-7d556c1a79eso2177121a34.3
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Feb 2026 08:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771950811; x=1772555611; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bU5k+6sNB0KTbcFvy5Ke25ujYH5KIYZfLNb1U8JEui0=;
        b=ira/srWSXT0+S0pRIajIQjnRPzx0n5xJZtGs1XPwQ2Q8On10cU8ZfKL5h2v2nKi6yS
         hooM2lzeUSloc4/CDyIeM5T1ywOez38YuH8X/iE46BMmy9FT1NiQMyuNU3QQZDYAOf7Z
         y3Kn4nxSBfEumJsaKXSsQ71h9y5pL2QNEhYfG6JYA2u/APt/NUbDeioePW2jwzMC2fh+
         T0xcZu4L+WoCLUejIGqvQwrT/K32rUndWKw485B7CyTI4QldZKXwD4sfgikGHQkOEmz+
         pX50b8kCBtH7eBkzJqd166wGtCVcCMdVV6nUxBP2OA0Y7dZwkM/8i5CsvnOzR/4ehKd9
         9hVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771950811; x=1772555611;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bU5k+6sNB0KTbcFvy5Ke25ujYH5KIYZfLNb1U8JEui0=;
        b=RZIKsxIRWgihaphmkRmW/8/2x+HnL8zNEifNzdGdoZohjfidDIdq+7SswHGMt4uw+9
         5zFw49gtUcU19+y/rhAHsbzo5RIoQ/R2N4qIq8xQk7Cfu4/ABGIIQRSkQR/UcnXUmbha
         xOTUthKUkrUsoPlBgmnPEyyeJ6d1h3AIhlOMXJjL+SASs1iTVONBLWhuVlVjWHIj5guc
         vypXf2FC/SZjT/52QV4vr9B+MLDNRnbgr1bKbtW/4YNUViSNL7ZOWShogxbpkEHTkqyB
         SaUjsPKz9kikkai4QgsA1fP/1y4w6IQrlsq0qL2Rrz1Pm8v0qkequbVB6ChMM2CCNryC
         ZICA==
X-Forwarded-Encrypted: i=1; AJvYcCXQT3Tf+Htmyh9tg+mElcJFPMC5no9x1Q1CP20EHwT71iMdHxEykSt/ZrwHyx6lZ94Zl6F+kXNPl147Ao0z2w==@lists.infradead.org
X-Gm-Message-State: AOJu0YynN9H2nOsBRRfijnN7qrmkN67hxZvA5pANK2mc0Wcys0Bp8MDT
	1dh5eioy5DcawsmATk1ze9vfWWzwuhk2k7rpiRWHSlzx3lkee0OoN9Bh
X-Gm-Gg: AZuq6aI+VlX+QGtrqLG4NgYTReZAl9JoQoPYY3wPOfrz7Vstnk5XFqZtCZGQwMsYvBY
	fOtDgmwcJ5wdhItyCkZ+M4caqFQhE1Ed8Bd9lu8HDPgWjSBAjVSjfbFZfDJrRP2OoTxLogpEa6W
	UIKY3nHfh7lzys1iWypadapLczqwudUHqf6b7dPAPAkGTha3yNE15Yb2i+nbo6TqFZkClxMnr+q
	WfIByrsNeudzt+40iN+nBBuQX3cUGQ/21ChDdyX2p3JuzG7eRvk05mPQp8+gZsQEAcVb7eBsbPN
	s862BCJnD3znfrNVpdTmkxjaEODbtXKmOulyG/x7bMmH5AHxWjkYgYd4ifjA/1XTKT8BG4WNQf4
	xFY34/80SRn8X8QvH7VbjD5jiw96bI9MjTVeME/F4RYR2x6iC2XR8laP1hSs6jvXC12eVjCWeIB
	SuZis+VBeEkpokmoklY158
X-Received: by 2002:a05:6830:7317:b0:7c7:62d0:b462 with SMTP id 46e09a7af769-7d52bdf6f21mr8759906a34.6.1771950811307;
        Tue, 24 Feb 2026 08:33:31 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d52d0725c4sm11060130a34.25.2026.02.24.08.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 08:33:30 -0800 (PST)
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Add Invensense ICM42607
Date: Tue, 24 Feb 2026 10:31:02 -0600
Message-ID: <20260224163109.370930-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_083333_331304_4B8D1946 
X-CRM114-Status: GOOD (  10.64  )
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

Chris Morgan (3):
  dt-bindings: iio: imu: icm42607: Add devicetree binding
  iio: imu: inv_icm42607: add new inv_icm42607 driver
  arm64: dts: rockchip: Add icm42607p IMU for RG-DS

 .../bindings/iio/imu/invensense,icm42607.yaml |   92 ++
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |   20 +-
 drivers/iio/imu/Kconfig                       |    1 +
 drivers/iio/imu/Makefile                      |    1 +
 drivers/iio/imu/inv_icm42607/Kconfig          |   30 +
 drivers/iio/imu/inv_icm42607/Makefile         |   14 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  472 ++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 1025 +++++++++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.c    |  566 +++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.h    |  100 ++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  |  811 +++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  |  578 ++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |   93 ++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   |  100 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |   82 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |   30 +
 16 files changed, 4014 insertions(+), 1 deletion(-)
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
