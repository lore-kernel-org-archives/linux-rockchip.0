Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E9CAC7EE30
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Jun 2025 18:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1mpQR3kzaXHz0PO5MyvHIfl0UzHliru0C2tpXxI7htE=; b=2F9OihAvxuT7zK
	VkMDUh+tUvMdG39vA0zDLEMe9NUvEnUVuvpebLaTN7NRwCPq2cOvDYi/H2dL55bCK1x1s4W8I7wqu
	luCs4cXA3jP+9x77NivkllMxJaH4KABpN/tdC+mhNJq36RlXPO8fAN6tO1ntL6hC8sm9QiuNhvoDn
	YNMoqiMWj9JXK1mqU1Ijh5FHYTMxyaW6Hxfr1iucOlHV2Q5Jw9ToftOBwcv57Ir7R04hIQH8vCQoA
	30c9jv+s19gGTe4kiTF1D1Av6u+wIFd4+bKGEqMrdN91tJrPLqeJYriDqAimDGNb/yvc6xlqpZWzX
	SU0gOirMS5tP/HUOUS0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uT2ZE-0000000071S-0Nmy;
	Sat, 21 Jun 2025 18:03:52 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uT2ZB-000000006zs-00hg
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Jun 2025 18:03:50 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-735a53ef4feso2069704a34.0
        for <linux-rockchip@lists.infradead.org>; Sat, 21 Jun 2025 11:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750529027; x=1751133827; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H0KfXV/NBkTDKDWD/tI/EX8MZ/lbEEpoIni8SgACMHs=;
        b=T9I8cMUjqvdE1Q72NO/v4e3EQAxpV/ZxABEg8a9tZLrxLXyHjbrR9n4b74Z7dyUPOI
         4+UG52MdgwGLp5PkjpX2Byb/ZQ4le97YXrCXeWf0RhUpZHsrjwaQ8mKukerXy95CV24Y
         cocw+J5oTJ5uQqts9XAWmAMDsiZ3dkaLYA6Vu7gAie32v6A5pCE4G5qOjra6AuEXm67S
         c+vz07P/S6vuXgLiXfGlrMjYiQSaLjv3zfNWU24VAtSShUN2D++nq62MQhKqPiQt3CU3
         W9WEp32CGTYKp39ygoX6fITvy7Euas8GtvN+/R5EHbC3I/oJOvRxn5iG+FgiWXTw0437
         Ddjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750529027; x=1751133827;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H0KfXV/NBkTDKDWD/tI/EX8MZ/lbEEpoIni8SgACMHs=;
        b=mqmuE+JeudVoFRl4MX4ijCJisW1pLLCnKgbcrVvJB3NhFpgSeJLKCHSPIhaDGo81cK
         aHVKv+fHvKzYBLjvhVkuQz4fw6n57QhigJLCWRvDGTTeayq7734FztnmNNCtLK8qla56
         J3XyP8+JJCKwZmAGkgzBRFc8TxI2cRL8Da4N45I2sW+NaHuawoUafVZUBeOSrY1wnQKB
         WNJl1AlBtGfaotv7nrrbLlW03w3fZKPHY7MXmyuIxnOrgoQCnn/+E5KwIQw7mMOTwqmz
         zf8Iqnd+czWK1qwK5igwZQzNJVBY6adGaQzB2Hup2m3l6H+bqJZSNlWmae/jwHqOOiVk
         K3gQ==
X-Gm-Message-State: AOJu0Yx48wlWr3p9mSw0+aYoKFtpr/otB7j9oOrt7Dw0Jtg6F3GEXmZt
	hS5mW9CXcywVlJpY9va6E8k3ID1i3hAT7PRpaMI2jmpidg0Ba7mCzfiI
X-Gm-Gg: ASbGncuZ56ghR/GdEuTFfaH9Z7P4923Z6ly7pxroNR7ZZcEij3a+tRIBBJCS3UIocg7
	QKmFCS5dgc5Cv3zHRCcWblJ/es76DHFFnDV+I47A5b4LjR/tWCHFtEPu0Kk7dUZHXTuaCsW6nzu
	df3JAKubcYmVTqdpmKUUqA7X55qux2pd6+3mSl0RCJzSN6EK1x2DRAbsndEWZHMdN4f0wsfoyA4
	+dEe81OSdKoDmOfD+YK5bzBgCOM76p+iNhanxF9RPRHOx59koJaRlD1tOQ0278/vwDI73vYs8GS
	OFHVOr532+j/UiZq7eLElVgDpQU/+H3zodgfi9rvM86wh8kd+nzCcBosRO8hBueBrr+Di28=
X-Google-Smtp-Source: AGHT+IEpLQefJADPG3T9ukhtS1GxjWsZURA3VRvt3Yp99VT5aqi6GnzI066BJQk1hduPPv/oDf+1Mw==
X-Received: by 2002:a05:6830:2d84:b0:72b:87bd:ad5b with SMTP id 46e09a7af769-73a91a78267mr3701418a34.4.1750529027551;
        Sat, 21 Jun 2025 11:03:47 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73a90ca8707sm782895a34.46.2025.06.21.11.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Jun 2025 11:03:47 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/5] Add Texas Instruments BQ25703A Charger
Date: Sat, 21 Jun 2025 13:01:14 -0500
Message-ID: <20250621180119.163423-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250621_110349_063382_BBF8A0B1 
X-CRM114-Status: GOOD (  11.33  )
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

Add support for the Texas Instruments BQ25703A charger manager. The
device integrates a boost converter with the charger manager. This
series adds the device as an MFD with separate regulator and power
supply drivers. This allows us to manage a circular dependency with
a type-c port manager which depends on the regulator for usb-otg
but supplies power to the BQ25703A charger.

---
Changes since RFC
 - Corrected some minor issues with code and device-tree labels.
 - Replaced most of the manufacturer specific device-tree properties
   with monitored-battery properties.
---

Chris Morgan (5):
  dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
  mfd: bq257xx: Add support for BQ25703A core driver
  power: supply: bq257xx: Add support for BQ257XX charger manager
  regulator: bq257xx: Add bq257xx boost regulator driver
  arm64: dts: rockchip: Add USB and charger to Gameforce Ace

 .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 123 +++
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 122 +++
 drivers/mfd/Kconfig                           |  11 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/bq257xx.c                         | 104 +++
 drivers/power/supply/Kconfig                  |   7 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/bq257xx_charger.c        | 754 ++++++++++++++++++
 drivers/regulator/Kconfig                     |   8 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/bq257xx-regulator.c         | 188 +++++
 include/linux/mfd/bq257xx.h                   | 108 +++
 12 files changed, 1428 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
 create mode 100644 drivers/mfd/bq257xx.c
 create mode 100644 drivers/power/supply/bq257xx_charger.c
 create mode 100644 drivers/regulator/bq257xx-regulator.c
 create mode 100644 include/linux/mfd/bq257xx.h

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
