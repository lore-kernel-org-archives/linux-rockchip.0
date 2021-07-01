Return-Path: <SRS0=qNMI=LZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB016C11F64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 11:46:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 695EE6145F
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 11:46:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 695EE6145F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X2cpm36Zl5ijuxG64IxDM5hypdERpLP1h0TgLiBVaus=; b=SzPSh+6Lntrkm56oCLOt6ebVcQ
	KxNb6RNFQ31DFBEOZdDnxUMZYsgbnyV9DtbFykJsGRkbyjUMRyH7ryO3JsAm52SmSOshY3nBFEKmx
	S2qtyb2E1LjQqxf8GFC9NzvSQh/RYSIUgola+ZgJ3suOCOuJr4Cw7uEMEB47R6M3J5KIQ5wuSGIOU
	q262VzFY3rFz/MDdNG9mG/BZb1v2D3sq2zeYEGCMAHNeFboyRrPJCNOGVnV14Sukcn6Xz5rSefjhG
	NiVYBycBozRjET3IlvZWqeGu8IQ3/Lhf3/bpCuyigTfXj3IZmLE1IK86OSY5rGHArquVvB4bEis6H
	mucpWXCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyv9A-00H6iI-Vc; Thu, 01 Jul 2021 11:46:21 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyv98-00H6hm-AM
 for linux-rockchip@lists.infradead.org; Thu, 01 Jul 2021 11:46:20 +0000
Received: by mail-wr1-x429.google.com with SMTP id u6so7812212wrs.5
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Jul 2021 04:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RnoFHbySsO23YoUQT/RW9bLehNP70tip4G89jqJv0F4=;
 b=rEVWlO/r5lAEA6c0iANF3zaGKCCdRarsN+VbXnFhyDTktX/kmdYPal6dvWdJmeTfas
 XVyBWAdyg8IYjTduUl0tAQTa52JJcsYGUPbFZ+je3T60F/nx6IcBs7lIAxo/GTwADz9/
 EDdaIJrUVbfeitAowZ6ChI8BDB4GMQ9C3dd8/YzsafDCX0Byj8PeD0DJYkKSmvZftNG5
 vyrz34PbEub+nM8tAYUegYbC+iEClzKnzFXpJRJzt6DP+6FLA7+Geo42X929lPyTzLwl
 TBx83hEMGj1P2h1zfpVNWfUU7bK855vDeXYy1SHrgtmfmwGZaPzHIRXPAbQDniVmuClR
 9qUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RnoFHbySsO23YoUQT/RW9bLehNP70tip4G89jqJv0F4=;
 b=QtF5sAVM6JRWNfUhycpesVSdYSuwlADztEwa3/tA2EuJkemlyvHuwo+uz+/EuTYWXQ
 bBunKibyXwvt0wZNnPrU+x60usdaWcXZFiaXR1XLjlUGtOOBg139EundbObTxeOaqI3t
 kBJL59NQ0pemclCPeQ/uKCk6AtBQBcIuW2fIzrtFREm7ctZKecFzxAn9VROe6zsTSNoI
 UPwoeSaJmplqXHHx59w28nFANIqIfqdwTbP3YK3uUIGKxoKROlk40QIqmQd52PtJ47Hg
 fAjXXWH8v2Q2Yu+L3qQXCIrY4OoPl9YOuVBvvcHkFJm+70YnZIjm4OZF5RUGqBX8Y7L4
 5law==
X-Gm-Message-State: AOAM531QF4nKHRPj1PYzL7QqEJhhyHVNHpqjUAng4PvxXA8ausMxro+n
 5+McV+rvqXX8Fu5JfGko+g+ayHHtqYQe
X-Google-Smtp-Source: ABdhPJyZGEZSg+fz7iUIhhqIAO5w1jpyerHJK9rozloX4XJdyA8ocfWLYcfYPNIyAzHa+bMm3r5Riw==
X-Received: by 2002:a05:6000:1a43:: with SMTP id
 t3mr22333019wry.112.1625139975821; 
 Thu, 01 Jul 2021 04:46:15 -0700 (PDT)
Received: from [192.168.200.247] (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.gmail.com with ESMTPSA id q5sm11277332wrx.57.2021.07.01.04.46.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 01 Jul 2021 04:46:15 -0700 (PDT)
Subject: Re: [RFC PATCH v1 0/6] add rk3318 A95X Z2 board
To: Johan Jonker <jbx6244@gmail.com>, kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, heiko@sntech.de,
 mail@david-bauer.net, ldevulder@suse.com, wens@csie.org,
 banglang.huang@foxmail.com, matwey.kornilov@gmail.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org
References: <20210630162251.7378-1-jbx6244@gmail.com>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <9982a30b-7842-38a6-4391-29dfaa6bdf08@gmail.com>
Date: Thu, 1 Jul 2021 13:46:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210630162251.7378-1-jbx6244@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_044618_414595_EDDE64CE 
X-CRM114-Status: GOOD (  22.84  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Johan,

Am 30.06.21 um 18:22 schrieb Johan Jonker:
> With a new board from a recent Linux DT the U-boot rk3328.dtsi
> is in need for an update.
> 
> Please advise what to do with usb3 regulators, aliases and
> other stuff that has to change.
> 
> Also some of the U-boot board files could use some
> dtbs_check for bogus properties and restyling... ;)

While at bogus properties:
The ddc-i2c-scl-* properties you are defining in the hdmi node of
rk3318-a95x-z2.dts look like an leftover from vendor kernel: they do not 
exist for the upstream dw-hdmi driver in neither u-boot nor kernel.
(Not sure this would pop up with dtbs_check currently)

Alex.
> 
> rk3328 USB2 and USB3 only roughly tested.
> 
> ===
> 
> Howto use:
> 
> Compile bl31.elf:
> 
> git clone --depth 1 https://github.com/ARM-software/arm-trusted-firmware.git
> cd arm-trusted-firmware
> make realclean
> make CROSS_COMPILE=aarch64-linux-gnu- PLAT=rk3328
> 
> export BL31=/<path-to>/arm-trusted-firmware/build/rk3328/release/bl31/bl31.elf
> cd ..
> 
> Compile U-boot:
> 
> git clone --depth 1 https://github.com/u-boot/u-boot.git uboot
> cd uboot
> make CROSS_COMPILE=aarch64-linux-gnu- a95x-z2-rk3318_defconfig all
> 
> ===
> 
> Use U-boot to create a GPT on a SD card,
> because of partition GUID and sizes.
> 
> mmc dev 0
> mmc info
> gpt write mmc 0 $partitions
> mmc part
> 
> ===
> 
> Write to SD card:
> 
> export DISK=/dev/mmcblk0
> sudo dd if=./idbloader.img of=${DISK} seek=64
> sudo dd if=./u-boot.itb of=${DISK} seek=16384
> sync
> 
> ===
> 
> Format boot partition with fat16.
> Add /Image and /rk3318-a95x-z2.dtb
> Add extlinux dir with extlinux.conf
> 
> label kernel
>      kernel /Image
>      fdt /rk3318-a95x-z2.dtb
>      append root=/dev/mmcblk0p5 rw console=tty0 console=ttyS2,1500000n8 earlycon=uart8250,mmio32,0xff130000,keep $
> 
> ===
> 
> Use fastboot:
> 
> Hit any key to stop autoboot:
> usb start
> usb dev 1
> fastboot usb 1
> =
> sudo fastboot devices -l
> sudo fastboot erase loader1
> sudo fastboot erase loader2
> sudo fastboot flash loader1 idbloader.img
> sudo fastboot flash loader2 u-boot.itb
> =
> ctrl-c
> reset
> 
> ===
> 
> Johan Jonker (6):
>    arm: dts: rockchip: update rk3328.dtsi
>    arm: dts: rockchip: remove usb_host0_xhci node from rk3328-u-boot.dtsi
>    arm: dts: rockchip: move mmc aliases to board files
>    arm: dts: rockchip: move spi0 u-boot,dm-pre-reloc and alias to rk3328
>      board files
>    rockchip: rk3318: add a95x-z2-rk3318_defconfig file
>    arm: dts: rockchip: add rk3318 A95X Z2 board
> 
>   arch/arm/dts/Makefile                      |   1 +
>   arch/arm/dts/rk3318-a95x-z2-u-boot.dtsi    |  59 +++++
>   arch/arm/dts/rk3318-a95x-z2.dts            | 384 +++++++++++++++++++++++++++++
>   arch/arm/dts/rk3328-evb-u-boot.dtsi        |   2 +-
>   arch/arm/dts/rk3328-evb.dts                |   8 +-
>   arch/arm/dts/rk3328-nanopi-r2s-u-boot.dtsi |   2 +-
>   arch/arm/dts/rk3328-nanopi-r2s.dts         |   6 +-
>   arch/arm/dts/rk3328-roc-cc-u-boot.dtsi     |   4 +-
>   arch/arm/dts/rk3328-roc-cc.dts             |   7 +-
>   arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi  |   4 +-
>   arch/arm/dts/rk3328-rock-pi-e.dts          |   7 +-
>   arch/arm/dts/rk3328-rock64-u-boot.dtsi     |  10 +-
>   arch/arm/dts/rk3328-rock64.dts             |   7 +-
>   arch/arm/dts/rk3328-u-boot.dtsi            |  21 --
>   arch/arm/dts/rk3328.dtsi                   | 109 ++++----
>   board/rockchip/evb_rk3328/MAINTAINERS      |   6 +
>   configs/a95x-z2-rk3318_defconfig           | 102 ++++++++
>   doc/board/rockchip/rockchip.rst            |   2 +
>   18 files changed, 661 insertions(+), 80 deletions(-)
>   create mode 100644 arch/arm/dts/rk3318-a95x-z2-u-boot.dtsi
>   create mode 100644 arch/arm/dts/rk3318-a95x-z2.dts
>   create mode 100644 configs/a95x-z2-rk3318_defconfig
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
