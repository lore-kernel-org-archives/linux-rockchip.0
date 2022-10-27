Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69FBFC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 00:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QpJD9s8UaaH2BwLvtADem/MGX86bwHGVqcxsCxLx2fk=; b=O2ePn8KjKuY+tg
	FEKFidzaocYVUiTUy0XcPFxZ9ZETWqk8DzkYeZqL7uc6OtJzFxiypJwv2md5uDuoLiK0B22TexVnq
	JL/48rje9n4yaj9oEsggaq4k8WRDlVsx8gJ77COnIniJIWZYs+DJJ8u0YCOPAHKDf64SqCvQ6lau5
	Vx4fVMfuFItbkJjBTVXMTFMomSfy5Fqg5V33KzXJMAwCmysyxwx575tG1Q4gI3ifqMWm6S05NStHp
	F7CRCjOrgoQBlLEHe0852QP2nGC6PUTl8v9fa/WzymQpAMjzIZhwGx1JgS+9xkbhHwYASRgfXvSnV
	0T1iHFcwstv1tBpgRNAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onr6g-00BOKJ-1X; Thu, 27 Oct 2022 00:50:50 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onr6Q-00BOIs-22; Thu, 27 Oct 2022 00:50:35 +0000
Received: by mail-lj1-x231.google.com with SMTP id o4so5876ljp.8;
        Wed, 26 Oct 2022 17:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jt3MIRMKXjXJnnd81rELlMmSLDWwlHxTIiZ16VJwbbw=;
        b=ldaVpeXnNCizOC81BoRZpy0h3vlJqWMvSMySEkRZ8RTWUhzLCXCG2mzZUhcQyWzYAp
         +53PxdCtY+eC7j7sDd8eOPmBzNwH0Z5YDD9VlcE4HVmlDhAoo5lBwtbsCbkITU9ciGZ7
         /RD97MuWjjKSnr3CJ9AEcU8efAWzwCWCLCfSxfDQI5lY0BkxBkq1TwEIhp0noV3G9Nka
         f5CE8BMYF0vCYxm4Srcts/Tc9B5IGgfk5SdaqiXMPrH57jqggQHoY+XA7Mk4z8qHNb0E
         z6ki+TvbuRhUjzcIFGcm0airNcaT5p4t8p7EpHEK2aj47IScVThsAu+BYehnss9igfcH
         rSWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jt3MIRMKXjXJnnd81rELlMmSLDWwlHxTIiZ16VJwbbw=;
        b=APoQKumRvX9HfXN2emRccYmxjxHb6nLh+t4UzzH5w/jDiWQxk+LU1/MUyJ0U6YVTOS
         v1iHpf2dNvt1deyS8yPvPqcsCPuABcogt8PKavIF1U2uZIborwIM9qvZwURR8rrMajwR
         CTErUxeLqVr4R1aPyzB1pgwLJXDDLoOa9ECXgUZXQs1fFin5SOV7tH/AOL7sRrqYYbr8
         WD+UfGj/pwlNfYd/Pqh6ynqLbDF/PF1BNxMMP8np4Zil+Kv+EXUUzaPC+MqMj0mVZNv8
         2FcMuzRRCBQHTpEzJDsFFsCZ5+rISolRWk0YMZevg4yNaNdjoZAU5q2fvkgYOMhtVh5o
         uvJw==
X-Gm-Message-State: ACrzQf0vLNSAMHXiS+o/4vDBB6zpncUkIEvvJqjyEam+iObnp1YdBh2h
	jLqTHhomJP636MkeaQphUz4LNNsLH20=
X-Google-Smtp-Source: AMsMyM4UN8PRjyzxfcCMWbPkvysSgG57BxsgajhoMihbcJPaMRC9bTJ77a01K1tO4L3Qm2mElKka7w==
X-Received: by 2002:a17:907:6e9e:b0:78c:5533:4158 with SMTP id sh30-20020a1709076e9e00b0078c55334158mr37883433ejc.417.1666831819650;
        Wed, 26 Oct 2022 17:50:19 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id n3-20020a170906724300b007a7f9b6318asm3632975ejk.50.2022.10.26.17.50.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 17:50:19 -0700 (PDT)
Message-ID: <da1252eb-85e9-bdb8-0542-207173523523@gmail.com>
Date: Thu, 27 Oct 2022 02:50:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 0/4] Add basic Rockchip rk3128 DT support
To: kever.yang@rock-chips.com, heiko@sntech.de
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, zhangqing@rock-chips.com,
 hjc@rock-chips.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 daniel.lezcano@linaro.org, tglx@linutronix.de, arnd@arndb.de,
 olof@lixom.net, soc@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_175034_153068_535D8ABC 
X-CRM114-Status: GOOD (  10.48  )
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

Add basic Rockchip rk3128 DT support.

Features:
  Quad-core ARM Cortex-A7MP Core processor
  Clock & reset unit
  Power management unit
  Interrupt controller
  DMAC
  6x 64 bits Timers
  4x PWMs
  1x 32 bits watchdog

Internal memory:
  Internal BootRom
  Internal SRAM 8KB

External memory:
  Dynamic Memory Interface (DDR3/DDR3L/LPDDR2)
  Nand Flash Interface
  eMMC Interface
  SD/MMC Interface

Connectivity:
  SDIO interface
  SPI Controller
  3x UART controller
  4x I2C controllers
  4x groups of GPIO (GPIO0~GPIO3), 32 GPIOs per group
  USB Host2.0
  USB OTG2.0

===

The Linux kernel has added a rk3128 clock driver in the past,
but the DT is still missing.

In U-boot the rk3128 DT doesn't conform the latest bindings
and also the pin definition don't match the TRM.

On request from the U-boot maintainers I submit a basic rk3128 DT.
https://lore.kernel.org/u-boot/258c2dbf-436d-5935-83f5-a2dbb8cf62d7@rock-chips.com/

Based on:
https://source.denx.de/u-boot/u-boot/-/blob/master/arch/arm/dts/rk3128.dtsi
https://github.com/rockchip-linux/kernel/blob/develop-4.4/arch/arm/boot/dts/rk312x.dtsi

rk3128 TRM:
https://rockchip.fr/RK312X%20TRM/

rk3128 datasheet:
https://rockchip.fr/RK3128%20datasheet%20V1.2.pdf

===

NOT TESTED WITH HARDWARE
NO THERMAL PROTECTION

===

Request:
  Review of nodes and pin definitions.

  Help with testing on hardware.

  Help with correct "arm,armv7-timer" properties.

===

Johan Jonker (4):
  dt-bindings: arm: rockchip: Add Rockchip RK3128 Evaluation board
  dt-bindings: timer: rockchip: add rockchip,rk3128-timer
  ARM: dts: rockchip: add rk3128.dtsi
  ARM: dts: rockchip: add rk3128-evb.dts

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../bindings/timer/rockchip,rk-timer.yaml     |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/rk3128-evb.dts              | 105 ++
 arch/arm/boot/dts/rk3128.dtsi                 | 930 ++++++++++++++++++
 5 files changed, 1042 insertions(+)
 create mode 100644 arch/arm/boot/dts/rk3128-evb.dts
 create mode 100644 arch/arm/boot/dts/rk3128.dtsi

--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
