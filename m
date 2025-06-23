Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BA49C77B7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 21:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wUGeq2vcDqWkGgp6LcSGCo3spPLU8s2CBaivs7BHux8=; b=rSHMW1dz7kRgpZ
	d94qPfy7tIE0KW7qeNPiWo23TlIKMD5eVzE2I9gLlzmKodYCD0grQvYr7+4ZVDHoj6n4Y29Peakcv
	M2nNkqSYuyFLjvDZPPX6TwzJrpHhZ0aDOLkipdYWWawCkDb+FlN2VTxriEXVIEu3bjmleZXhVFsOh
	KN4G4qXzFjyGsdPKRIW8b090PxMSPlCUhE6nCjdPPuVloX5m+opUS2uj57KqcGnnFzQ4il6Vg5uni
	17DSMzu+lwaE8x9LNZmdZ8RIIxS2yJT7Xp+l85nHwhiYO6lFjNsFhTLuxHmZ7Iex58kVFHQx92Wgg
	RgOZwc59vkN+jUPbAgqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uToVq-00000003zR9-1K1L;
	Mon, 23 Jun 2025 21:15:34 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTjyZ-00000003PO7-2UjD
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Jun 2025 16:24:56 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-40abe6f8f08so3865497b6e.0
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Jun 2025 09:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750695894; x=1751300694; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bDfb6+7enKdNNKI7hWXp6pY/tJHn80dmYFnrZxONTBk=;
        b=aMhX/+vPGevp7AmVU4DnQbokI54NuG3Lg96oFw9NOx2j+bOr0Ci+krKNFft8G7II9k
         8WPLPujkG6y1tPgWoyRpK9xxNBvYdBGVeje0WNxO8SbQ24WATkmewzLZr4kBMGfdmO3j
         jKGlsZ4SepQSRc400pvaCGf642v5uyU6kMKPOI4/VDqaHdz5d1NtP3vYFWSUlplsHRy+
         mN5XqKEH63A0PL+k1KJo1KmsqXcOWMCPhWdVgFKcG8RcT8+1zb+e8eU+gKM5P8Gilbd7
         QM619wsyXjsRE3vl5J0sP6wBFaokZU25XP3OYVy8yXQ5kf3odjj7TE/1zPUgaWdysNeZ
         qsYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750695894; x=1751300694;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bDfb6+7enKdNNKI7hWXp6pY/tJHn80dmYFnrZxONTBk=;
        b=iimmfJKqPJxiOsI0wxcZ/BJUvY6pGxr5QuYKb7g7UX3/rU4RkjZUZ9260vttqPlnR4
         RMtEqGafF8ZzUIlMwb5XImwGJ9GrngMH8/am3RYkbV9t5pE+WNHASqkEHLKWCWi9HJqQ
         nrEUTtbI/jqpincjG1OEQWTUFzaLLc6RKoFTZA1hJdQo4E1uVZLZz7pPUil1uW4iPnRT
         8R+CJov5KiQv5qHyO7sJj1hrxkMv9XwZHyNSZpH+OilX4xjsSRy+bp9Vy20jBKdxYDlu
         zzwOpT1OBSZIyX2sPfiJhU51W8hnACVP6rHohULSkdsmRYX/ai8u0MUrUHpasF4SRsB1
         YDKQ==
X-Gm-Message-State: AOJu0Yw9z7GtJ53DjRitfrWPKpyeGVLEgJ7YeWdnE5sfnx6dX2AmSuMk
	PWLhOOOkTUTmMVNOpj7ZD9KB25IBAaju9GMoB96WpQJq3e6Jd+5kW8Ao0NtYTw==
X-Gm-Gg: ASbGncsmNnwOoLBno41iZttqFzX//gHPzVoWmsEpg1diSPB4eGPGsf2anuQgHlveqrj
	wj1rI6qPGNcXyomjV7s7RqBQC5E3A7B73L8jzRO/w1Z5JKDxWblr7jqZZmEehfaK0BiU1oqIZ7D
	kNG+fdiDESFahY/4H6ZqJghfwrAntQEDsaHNi0UMQoXHGVxyMmkB1BU7moQNQvpkKSC6PhkUP/+
	HVr5UtzCclMZcZvx1gODXGMuJO5nVEZs0l7zLwiG9y1yKCOf3ZjjEu7NrXlBnSgzGzJ/YYYZN/V
	TKnWNmN/2PK9YmvZ+nNRpNWL1sd5Xd9BSeoJ3Y0yDDx6KJ4rc51mtk9x6nn/yeBniSGO8U1Mwfm
	G5y4lsG68/1FBmQxg
X-Google-Smtp-Source: AGHT+IHFwNmuitlNLVWhiK9CQCYv7O4a8CyNPO3l0DMr0R02Wn1Nuepa3ZpqnzlrDdAIDq3Cr+7z2g==
X-Received: by 2002:a05:6808:2f0e:b0:406:71fd:b610 with SMTP id 5614622812f47-40ac70e22f8mr9345582b6e.33.1750695894243;
        Mon, 23 Jun 2025 09:24:54 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:61a2:e42d:d809:3616])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40ac6ced44esm1427308b6e.24.2025.06.23.09.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 09:24:53 -0700 (PDT)
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
Subject: [PATCH V3 0/5] Add Texas Instruments BQ25703A Charger
Date: Mon, 23 Jun 2025 11:22:18 -0500
Message-ID: <20250623162223.184304-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_092455_643970_E6722F78 
X-CRM114-Status: GOOD (  12.94  )
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
Changes since V2
 - Added reference to power-supply.yaml and removed note for i2c
   address per recommendation from Sebastian.
 - Corrected documentation error for charger driver found by kernel
   test robot.
 - Corrected duplicate POWER_SUPPLY_USB_TYPE_PD entry and corrected
   ichg logic in power supply changed function.
 - Corrected missing linux/bitfield.h header in regulator driver found
   by kernel test robot.
---

Chris Morgan (5):
  dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
  mfd: bq257xx: Add support for BQ25703A core driver
  power: supply: bq257xx: Add support for BQ257XX charger
  regulator: bq257xx: Add bq257xx boost regulator driver
  arm64: dts: rockchip: Add USB and charger to Gameforce Ace

 .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 121 +++
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 122 +++
 drivers/mfd/Kconfig                           |  11 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/bq257xx.c                         | 104 +++
 drivers/power/supply/Kconfig                  |   7 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/bq257xx_charger.c        | 754 ++++++++++++++++++
 drivers/regulator/Kconfig                     |   8 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/bq257xx-regulator.c         | 189 +++++
 include/linux/mfd/bq257xx.h                   | 108 +++
 12 files changed, 1427 insertions(+)
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
