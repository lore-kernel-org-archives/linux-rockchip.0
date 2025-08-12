Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C20D3CA0EDC
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 21:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J+N7HXe6wnCNKxLJwE/ILRU0uzzGMoCxhH1b38WQy1g=; b=C0sRccMP8Z7er5
	VpqXQx2j73OGPZIhCXZQ/27EUWxAe3CJFS143w1CAEgE2eN1QgalDkJpao1kO4R+D2YcBDFcyLzIW
	fTTowq8KdKGdvfsaafcMZl6W5P62Ei2MGr254aCS6VInM2eKcOYKeyfV8KQsg27b8zeSQOPylUjUV
	hZTDVJwsgxXpX5kxl2XB2C1jVb+LuH4KfCsBJNmYNDdLeO7eKfOqUm8vVVJ5LEOFi7vyLIMMXfJuA
	faBgrOjK/7rTNpEzH49TXvgGy8Bv0FA6MSmUHSq6ZjPymngWr/lg0D7O8Y/UgY6DNdz3EgcItDPBm
	G2cyWO3dW17YlGi0x7MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulwoE-0000000C4xh-1dJU;
	Tue, 12 Aug 2025 21:45:30 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulwoC-0000000C4wn-1oRo
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Aug 2025 21:45:29 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-2ea34731c5dso4698039fac.0
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Aug 2025 14:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755035127; x=1755639927; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gorU7XJ9pBdmE8Ks9apeoV5DdUg3YQoanjxR648tULg=;
        b=juD2fImbr0pU2FeRnpP69Y4XTBRDw0eRlX/ga4Y60+GnGhyvRSW6fPPRfSpcy//SLQ
         N5wVyz7x7d/FpiKqE1QkerGREDhEX2HrBDVDXW9+EO92wR/dyFW8OVhNwxX9gUI6Ajqi
         t7KtLR38qF/EVsZb4PChBz0UPd4aFgV+l9r+4BqtVVFnDeQC7btEmcKYASGaPQE76tGS
         juPBs3aPf32rSUMsqleMwlUFZLywP1Do/ub5L4/FG0xGMT48/5Q3hcRP+r//lEHRiHYu
         A+w6qmhSC7g6Q5czOx+7hMwLi7qtNuV2QUEQsny2jmiXnJFA4Me9bQmjdD/amzuoys2V
         5kSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755035127; x=1755639927;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gorU7XJ9pBdmE8Ks9apeoV5DdUg3YQoanjxR648tULg=;
        b=Y44ITfjMZaRdxb1ApPCoyBJFcLNaL2nk+V6pUUZfe9uLSxvpjLZI8oEUoTWdWbadoZ
         koy+RrbS/libboIj0K2bsT0a7u4eqi/rxF65W5sfYSCza7+5EsvbvKaD3OdGczRMQ3lA
         hjMgWX18G1M3eU/kmr0SakBnRiCMiRQ+H3UdaVqCeLQJmkCABktT2Zi2RcWK9wl5Kr9Z
         C/9DwPhjlngUWVm7Fe99VgGNK8ogZT6pNssyhAt+VH57vPAXtqQ6scZSDgvCUKz+R8FP
         dMVbwqvupWNg3sxrTZf7P9BhFpfOiuSLSVv/AFVBM63GDOeYeKka9byAgA0fxzu72t0Q
         Khxw==
X-Gm-Message-State: AOJu0YwlnD7xTP8ALC0yEwtBan3f1BjwDPXcG7evZghuvU+GArLUsYjB
	TaH28T4YNpbZiOusYmieCN3VMnefc2LZTrLHMSZcl1MK0Svp5ZArITDIv64ODw==
X-Gm-Gg: ASbGncsdIH6hVZun3zKcxwfg4JZ4uHzuyZbCQ1z8say8JhJxMZkybgPmDu7tZKYpTbK
	rs11juzj9Lyvy31XHKhBrcUIgX2+K7qGqBLgX9NXyPvRkgtVNt2GUpmjckGquM03tcLEkUrlFJ5
	j8Xg5+zVUH6ckhZ4mSv5MowUgZi8TpsR0W8Lmpj1SLp5Ifkat52jPXOYoi4ZPh+40WE0yfCfyLO
	aXKDMM3ahw2SEM5WnD1XsR3ICFkNXtabDCmLA23c63smfuccWnnwVb8L9/y2/jLSGDKTpTh0Ztw
	pCOy6NYROjD/kwRK5wM/RAp8WreDwKTuS7M9tyssHfftXHJ7XDVjRXLvwvrFbAuepQ2nCswU4Dg
	W9kIn/ksoyFRyxURCq+C/wnnVmfJLtwo/M4/W300HMtoLFrcOrzDw
X-Google-Smtp-Source: AGHT+IFKN3KekUT9Wl4OUeEZLoTEscX14VE8cYp+aWp3cWz2mPuHWaB0SViDjcUk8/bHCAmKlMFdAg==
X-Received: by 2002:a05:6870:cb96:b0:2b8:78c0:2592 with SMTP id 586e51a60fabf-30cb5bc35fcmr491182fac.23.1755035126982;
        Tue, 12 Aug 2025 14:45:26 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:d904:cea9:a76b:d0a3])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-30c10c7a694sm4092741fac.9.2025.08.12.14.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 14:45:26 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lee@kernel.org,
	lgirdwood@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V6 0/5] Add Texas Instruments BQ25703A Charger
Date: Tue, 12 Aug 2025 16:42:55 -0500
Message-ID: <20250812214300.123129-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_144528_474987_863DC4C6 
X-CRM114-Status: GOOD (  16.40  )
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
Changes since V3
 - Changed name of regulator from usb_otg_vbus to just vbus to align
   with datasheet.
 - Additional cleanup of the device tree documentation.
Changes since V4
 - Replaced instances of dev_err followed by a return in the probe
   functions with a return of dev_err_probe instead.
 - Simplified cell definition of main driver for probe.
 - Updated copyright year to 2025 on copyright strings.
Changes since V5
 - Removed erroneous Reviewed-by tag from mfd patch.
 - Made mfd_cells static const in mfd probe function.
 - Removed unneeded enum from header file.

Chris Morgan (5):
  dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
  mfd: bq257xx: Add support for BQ25703A core driver
  power: supply: bq257xx: Add support for BQ257XX charger
  regulator: bq257xx: Add bq257xx boost regulator driver
  arm64: dts: rockchip: Add USB and charger to Gameforce Ace

 .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 117 +++
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 122 +++
 drivers/mfd/Kconfig                           |  11 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/bq257xx.c                         |  97 +++
 drivers/power/supply/Kconfig                  |   7 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/bq257xx_charger.c        | 750 ++++++++++++++++++
 drivers/regulator/Kconfig                     |   8 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/bq257xx-regulator.c         | 188 +++++
 include/linux/mfd/bq257xx.h                   | 104 +++
 12 files changed, 1407 insertions(+)
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
