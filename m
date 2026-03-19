Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DD031091904
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 18:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S23mnLPgIUNVLegEraVFae78F4xZqKMejpE0WeMYrI4=; b=I9NosVI5o0ECcQ
	pMgly0p6XxBmAqPWc7SRn1goJokq3dPuXxtebfKuvGxcnk/S+xfGhBTEibPFalKeRWPn8R/5H9l/Y
	hMDKzMjWPbgSlUL6N/cJ28yDg6G2uecOExB8J10uWBWxE4udtMSSBmTQK02yu/Af3OF9n7otxBHG1
	8ZdizfHPmW2/USEowhyX7wpOCuJ3bAkITciQWCFA8zakNIL+QVdwmsIjbHLwyvJ8rOyozQwejieMi
	PYNvmxBwf3jMjqA8ysAhvnXfdMzee5EyMU/pu4MLFBQ69TTqM1eKY74x4iTV623vo4Hsib4AmznYe
	bXmmng1b6v01ycp3/1MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IAV-0000000BMBc-2J4n;
	Thu, 19 Mar 2026 18:32:27 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IAT-0000000BMAy-2IX1
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 18:32:26 +0000
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-7d7851e2cc4so1134924a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 11:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945144; x=1774549944; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KTByHItjyR7/RYBQwNnWdmqTMyR9cwK4/f01mIblYeA=;
        b=mcAZ42vQRM0JcOwEunrpLYZI9vkR/UaKN2A9p7glcaogKHvUodzunBHABT3M4R9a/z
         NfvZDG+NAEU4XTqM2GPBekbllXRdRgL4uDmdEea7JhkiASwpJ6U22GgkHzeRRdDrbMF8
         9g4GK5GhBUn+1nX/0IhQvl1CdRTmU9v1W48FKFNgVkrLYJvGqjtPvZdAA3aVFyN2LcZ0
         UpnS28aeYck0hM0+Ljg2N5MSY0c/KA1WRm96nYU2eXL2CMKYxSUffI8cbdVVOJ2k+xA8
         j1Xn2U39bfiY4V+Aqz2VskIlvdyXSy4uLuQC5FigayFQo/E9Fer3/kuo9jEIknUabACz
         GZpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945144; x=1774549944;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KTByHItjyR7/RYBQwNnWdmqTMyR9cwK4/f01mIblYeA=;
        b=FVaRQDThX5VLP6JQ5/jcQAWjKvHuTa+0EqAYqXbdJfeh/vPIIq8vHCl4Us3Yf9X5RG
         XZs2hOItR/BxSoIf5vZvO+DBzWoeu3LHxjFSqfgGKP0o29XXv3UKLekgEEcT9LEp71rc
         1kU349eeas36WoOQbiRJ0seS22n4+95AnhfIPckYbX3Ni+z448WxERU3NSK3s+NCmOXx
         kuMy4GE2hDD5XfjSivti10f3oa0WW6yRzj4hQnqYUVzUAYddpzHuEocNRXve4t0l3TZ6
         cyGVCnQLs3N+o8KxAP9hpJnlZldVWyOqHtew+QacVY5pMDgrl9cBAB2lSXYdi4qV16Y3
         DL7A==
X-Forwarded-Encrypted: i=1; AJvYcCXvd7gZQ2tHWu3GIwxJoqC0hpTbWuQkR3qUtmfnoXskBnnSArDHOvhEBC7gUTHEG8C+A7dhltYvUAaZngjHQQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7+JPUWFgbQLZZJLihybv3rLE10YiN7QoEruswyezxsHMhTs6P
	h1ADn6t1WcYiWO4RMnb9uP7QE9s4YBpqXWKVqFX+CEBUJ40cjkfkN/bM
X-Gm-Gg: ATEYQzyWEvy5MRs2qUvulz9ODbeO25rQU5KMsqckTRaxbnSYb1XuI/A9SOAEBQcmAPx
	qD+xImUDSsqbpaVVd1qpXsCfeYvoz7ID7R0BOohSfSfntESne1FX51/GDKKVjnnRhpXpAIJRCH9
	0C6Ffqf1LBnkvqmAZKBZAkrMpSUIYMGjnfjwVnDMUdN8Mo7dtZ7k+DCpSqxCdVMgb9KEu80aKJF
	JYj+lvcuMRdWTIA38TA6zjHazi8HWfgTkN7kFLY5CWLiBzgk1V/vXPVLnb4J0YLLXQsJkgBS318
	Vl2P/GjvGSx4UrlYNf+7iosfQ+/eSwB4v/dkeq+7q/K47WXBd3H9TjG3IBtAxTVxrU+b45YCL5H
	JLVeiuIDZs5AUcLuWtt/6JdwdZKciUFLiuwxw95hUVlVM9mgEVc6H09RKIqOSAty/SF7eqZmDiQ
	IdWPpfVXSgMKXNCuK+ybEL
X-Received: by 2002:a05:6830:6aa1:b0:7d7:d097:96e2 with SMTP id 46e09a7af769-7d7eae1c964mr190466a34.7.1773945143893;
        Thu, 19 Mar 2026 11:32:23 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d7eadcb11csm172193a34.13.2026.03.19.11.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:32:23 -0700 (PDT)
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
Subject: [PATCH v2 0/5] Add Invensense ICM42607
Date: Thu, 19 Mar 2026 13:29:36 -0500
Message-ID: <20260319182956.146976-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_113225_612978_03B26DC5 
X-CRM114-Status: GOOD (  13.06  )
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

Chris Morgan (5):
  dt-bindings: iio: imu: add icm42607
  iio: imu: inv_icm42600: Add support for using alternate registers
  iio: imu: inv_icm42600: Add registers for icm42607
  iio: imu: inv_icm42600: Add support for icm42607
  arm64: dts: rockchip: Add icm42607p IMU for RG-DS

 .../bindings/iio/imu/invensense,icm42600.yaml |   4 +
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |  20 +-
 drivers/iio/imu/inv_icm42600/inv_icm42600.h   | 333 +++++++-
 .../iio/imu/inv_icm42600/inv_icm42600_accel.c | 497 ++++++++++-
 .../imu/inv_icm42600/inv_icm42600_buffer.c    | 240 +++++-
 .../imu/inv_icm42600/inv_icm42600_buffer.h    |   5 +
 .../iio/imu/inv_icm42600/inv_icm42600_core.c  | 795 +++++++++++++++---
 .../iio/imu/inv_icm42600/inv_icm42600_gyro.c  | 379 ++++++++-
 .../iio/imu/inv_icm42600/inv_icm42600_i2c.c   |  53 +-
 .../iio/imu/inv_icm42600/inv_icm42600_spi.c   |  59 +-
 .../iio/imu/inv_icm42600/inv_icm42600_temp.c  |  64 ++
 .../iio/imu/inv_icm42600/inv_icm42600_temp.h  |   4 +
 12 files changed, 2289 insertions(+), 164 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
