Return-Path: <SRS0=2I9J=OG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16FABC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 19:42:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C803661248
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 19:42:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C803661248
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lBvG0R6xUWeBVMAHV3IWiR8S89KHQj8q4kJ0gJglJ3o=; b=Lxzy36hApeQ0us
	HL2jNQEvEdU1j4REoK8uF5cOl6YPDeQFhPZFNyT/G/yuNALDqqqT0DziV7SMhjsqGtg6bteUcpBIf
	xev+gOPZwIc8GDqNIVxsWzuX+Zn1bmtp/vqow7EI2/rVHmMsFYFUBA+93U+xOcnRntlN/EUIOxmls
	HhyYczapfRoLGZCTfVQqHkkgSNVb0WHzcR4TzOKuQ63CXyJrDkuJ/XKVhUpl2XSrbmyl9Qad3WnEO
	LRxmAZSm3m4Y2S0FoksmECLE6CwEa4Ecrh2xvy3HxbVVSt3fXNkBKauekzWZd6GlHG9n01JWgc+mB
	OSJiknOnP8zcHJVxEVyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQxGz-00CGth-FF; Thu, 16 Sep 2021 19:42:17 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQxGw-00CGsa-Qp
 for linux-rockchip@lists.infradead.org; Thu, 16 Sep 2021 19:42:16 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 y63-20020a9d22c5000000b005453f95356cso2851743ota.11
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Sep 2021 12:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v7s0jc31HPLAs0gXkmeRMnAPIKh72hl0mqHTuEnX+aY=;
 b=dTNR08u17lmNeUCGekNoFNPAymVJ+EvYhpaWHvM3EFTIe2VmVwIoTOF3QkpLsHjlNy
 pd0ZClvLf/KnscJkMwN7Cs3R9D7Jj6V3TLMQ7a7l6eBdPty6zfyEO31AZJB3zGgDTrap
 eVOGDptGIcCdVUNVbjRZRoYyFBDX8u93xWyTf/cKc63suVAtFaFxoT6mLog93rEVdhqR
 d2xPcBOvXbsrw+zL1VBIfrNdWVok02S+E2qE7VTrNcKwnL2FxTdyO2R4/c02HP+Illum
 D/RfAkEn/55XI9dartV1w7KaIcEO74gjLoEc1GH8vo55PBxNWVGC+F7bklXJrA4KkwRP
 y9Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v7s0jc31HPLAs0gXkmeRMnAPIKh72hl0mqHTuEnX+aY=;
 b=53ZANZmPBdX0X7NDRsaljSanVyYOoXlSYiz4WDK1XDJBwOYnRJ+oB3+NiSxCS7dphJ
 65CgFz/5Ovap5SHhdZWIJczV/dGDN0afsuOsDSyU2I2CK++VAHC67ZHKP4ADaAvC62Cw
 i0cl7XsNU9YiuyttuGOMZsmWZN/e3cCH7PVZyM0LH1cBRqOFMlYna2FmmUPygY+4Wn+q
 1X589Vk65Qdc/PC8CIN/SHgcuq8VNEtqeu1wN97xlJYT6rVr8tXBG1FTUrRo27r20M1C
 a5nMYiVMJH93qBR0rzIQC5GzpubkM9f/s9p/NJbXW1lRaEgd5RsZTZCrlzMAFZajWzv5
 kW9Q==
X-Gm-Message-State: AOAM532bjm/ZbKyrbTnfCApPJwQDK7g3n5/EWBW/enbqO4sZAndIgkGu
 X5L3L+OwcwTecobBKZc2Cv3xV6PZubY=
X-Google-Smtp-Source: ABdhPJzIoMzJpohFqllA5LVocwtyw6xysu0DyOhL6PvnjBo49cXhoyjk3ExnnR4ZJ2MwsflFQCseig==
X-Received: by 2002:a9d:71c6:: with SMTP id z6mr6181684otj.382.1631821333103; 
 Thu, 16 Sep 2021 12:42:13 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id c10sm963359ooi.11.2021.09.16.12.42.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 12:42:12 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: lee.jones@linaro.org, robh+dt@kernel.org, heiko@sntech.de, sre@kernel.org,
 maccraft123mc@gmail.com, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v4 RESEND 0/4] power: supply: Add Support for RK817 Charger
Date: Thu, 16 Sep 2021 14:42:04 -0500
Message-Id: <20210916194208.10387-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_124214_932388_284C3883 
X-CRM114-Status: GOOD (  13.11  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This series is to add support for the Rockchip rk817 battery charger
which is present in all Rockchip RK817 PMICs. The driver was written
as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
myself Chris Morgan <macromorgan@hotmail.com>.

The driver requires some basic parameters be described about the
battery in the devicetree such as the maximum capacity, the minimum
and maximum voltage for the battery, the maximum charge current, the
maximum charge voltage, and the value of sample resistors and sleep
currents.

The hardware itself contains an ADC capable of measuring the voltage,
current, and temperature of the battery (though my implementation of an
Odroid Go Advance lacks a thermistor for temperature). It also contains
a columb counter, registers for tracking the measured voltage and
current at boot, and a few bytes of nvram for storing data.

Changes from V3:

 - Corrected issues in device tree documentation.
 - Added additional logic to battery to correct for columb counter
   drift when the device stays plugged in at a full charge state.

Changes from V2:

 - Updated devicetree bindings to use common property units.
 - Removed unneeded includes.
 - Updated rk817_chg_cur_to_reg to make more legible.
 - Simplified formula for displaying calibrated voltage.
 - Updated power supply type to POWER_SUPPLY_TYPE_USB.
 - Implemented get/put_unaligned macros for bulk reads and writes.
 - Changed numerous dev_err() to dev_err_probe().
 - Call power_supply_put_battery_info() at end of probe function.
 - Removed unneeded whitespace.

Changes from V1:

 - Fixed a CLANG warning regarding an uninitalized variable.
 - Fixed a CLANG warning regarding a pointer as a bool value always
   returning as true.
 - Added Maya Matuszczyk to the Signed-off-by.

Chris Morgan (4):
  dt-bindings: Add Rockchip rk817 battery charger support
  mfd: Add Rockchip rk817 battery charger support
  power: supply: Add charger driver for Rockchip RK817
  arm64: dts: rockchip: add rk817 charger to Odroid Go Advance

 .../devicetree/bindings/mfd/rk808.txt         |  38 +
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  26 +
 drivers/mfd/rk808.c                           |  16 +-
 drivers/power/supply/Kconfig                  |   6 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/rk817_charger.c          | 959 ++++++++++++++++++
 include/linux/mfd/rk808.h                     |  87 ++
 7 files changed, 1132 insertions(+), 1 deletion(-)
 create mode 100644 drivers/power/supply/rk817_charger.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
