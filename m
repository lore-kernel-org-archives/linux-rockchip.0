Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5C22ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 14:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kjLPd+lbzW1mancupyd5ZClv/euVDTPhR495vEXCg2E=; b=MOeTCV6Zp2cJmF
	GiYz5WG6ev85QrfR6Etf9qdjRaYN7xlIre4z/eizw3itWGm61o1yaXyCnGC45ZBZTwZGqj7nZr7Gj
	UYUp+/0MFu5JB+3rRMdfb0GEMg4cR3S51BRp3mf+htks6160zIO9ezQBT1YwRTDuGnxqNQt8X9I6M
	cIwuLdi0/hHdGO/prQiP/r0QQQep45oMGFVjLhNNrvWvUKJzPV07nX0gNH11+ndgZaWUqqBjvTiZJ
	q/tpzmnKbvKy3pB0Iky7fPsDNbCePWdoCp5TPOvH01rEE8eWS1HkYH46qVCmYb+ZuYV9u3C6xkfW3
	1seE6hnXGbH1k3Q2iGHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQWA-0009Oz-NF; Fri, 28 Oct 2022 14:39:30 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQVz-0009Ih-KE; Fri, 28 Oct 2022 14:39:21 +0000
Received: by mail-ej1-x62c.google.com with SMTP id kt23so13359483ejc.7;
        Fri, 28 Oct 2022 07:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=438MwCH9BTrA9BcLzWtnTn0JobWEvRhTpMnkj9ZVmww=;
        b=D6fblxQFn5vZbZOLKFcWYLtI+c5zEeyTAZFyxcD1/OuwZbjwiAe7Rx2XzqRykO7NB4
         FD3Urrlg6EwzXqeeeBNgNG9L6NGUf7kpLhdjTANcQw2PJyshDO1qdJS3j9dfllmSO+iF
         fitc0zBqXUiIdk3ZmY3elt03yduCSbxd8TDrrJ1EPruopt/jKNNHQf9V/ACPqJHvlXia
         Ai7z3Ow9ZFsPEGz/dt5LHnZDFLU7Lw/HQV2e3+9Ta1gfOhN3LHYGmslCk+z29lv0Ds2J
         5pdseKa35npP7brfhnpTl9nLjdYEbwiDiXAD3Kh7VYpGwghSFsUEAkd94mmCWgh+PtT3
         hWLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=438MwCH9BTrA9BcLzWtnTn0JobWEvRhTpMnkj9ZVmww=;
        b=vSP0lZ2cR43bEnZosAelO+IY0kod49FGq8CoXNLuketzJUnYZqIBSjG7vC7IHPS8IQ
         uDUJapG6W/8NR+FDQwiZIr+sz4u97D17FvPRcrZ1p6x7BFJ3+NpiMkYfRlkChkrZw6w6
         lv2x790P6rBnBYLeeVmHRf98+r1auw7hYIjtGplR3Viakseiw0bf5BJkeVQKgRoupFmi
         6zNDmBf5wT1onY/5wLjaB0SbzAXGiXn6a9mtdzFvTq24SAF/YO3N1b3t0hNifB5heY8a
         SBwDyCXuyi52MRh8Ka4hsIQyP+730Ph1zaLsxtZSO0FQ93tDO8PPp6TK5yk+8awArHf0
         q40A==
X-Gm-Message-State: ACrzQf0xUDpeGrUBafzF9LJLHuf7JW5MBzLIVpmk/ED/8C97zq17DLAT
	rPW1HjBFaWZFCYlZVfbsvPwnZBZhFLg=
X-Google-Smtp-Source: AMsMyM62WjvitZ/M1z2g9r8bWwHww4iANV4p1qKSM1aGXF74m8W47uJXLz8akxUC5+rl6g/WQgKGBg==
X-Received: by 2002:a17:907:6288:b0:78d:ab30:c374 with SMTP id nd8-20020a170907628800b0078dab30c374mr48265363ejc.266.1666967946292;
        Fri, 28 Oct 2022 07:39:06 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id e2-20020a170906314200b0077e6be40e4asm2293971eje.175.2022.10.28.07.39.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 07:39:05 -0700 (PDT)
Message-ID: <e83964fe-ad87-0905-4586-e235757c6b2b@gmail.com>
Date: Fri, 28 Oct 2022 16:39:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 0/4] Add basic Rockchip rk3128 DT support
To: kever.yang@rock-chips.com, heiko@sntech.de
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, zhangqing@rock-chips.com,
 hjc@rock-chips.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 daniel.lezcano@linaro.org, tglx@linutronix.de, arnd@arndb.de,
 olof@lixom.net, soc@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_073919_717131_46B4A6B1 
X-CRM114-Status: GOOD (  10.69  )
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
  Help with testing on hardware.

===

Changed V2:
  rk3128.dtsi:
    remove aliases
    add gic interrupts mask defines
    add virtual timer interrupts

  rk3128-evb.dts:
    use generic node names
    remove underscores in node names
    add more aliases
    sort

===

Johan Jonker (4):
  dt-bindings: arm: rockchip: Add Rockchip RK3128 Evaluation board
  dt-bindings: timer: rockchip: add rockchip,rk3128-timer
  ARM: dts: rockchip: add rk3128.dtsi
  ARM: dts: rockchip: add rk3128-evb.dts

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../bindings/timer/rockchip,rk-timer.yaml     |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/rk3128-evb.dts              | 110 +++
 arch/arm/boot/dts/rk3128.dtsi                 | 916 ++++++++++++++++++
 5 files changed, 1033 insertions(+)
 create mode 100644 arch/arm/boot/dts/rk3128-evb.dts
 create mode 100644 arch/arm/boot/dts/rk3128.dtsi

--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
