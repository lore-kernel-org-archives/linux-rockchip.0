Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85FEDC021B8
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Mar 2025 10:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rz8Jlx9W+9GIks26CtD2LLZEgxWCrC/XO2jtJAW3Eso=; b=D1oM/ewV5tOlji
	TOIvl4SmGiP1sKSwc0+pSpJyqFbrXZMo2KBGp73R6EbzisxPrVn5toibRUZ0kddhPUa71Se/6TM7l
	lTGakSjjItDckk590UBRwW0vBNvd8JK8K85vHRfq4oQN+P5KkWuKlg9I+LN5o7GnjIdIF2bkiUXA1
	YWTeSsSBVfITM2oq4iHjXDUxZNmdKt6NsovARVUsikVUMP3S3mXlIxe4X2hPN5M5dEGT/uXzqsBDx
	l9Nhwcmy0w4DpdkBlKaVh7jWUKUR9jl90r7+0+wJbjboThL8hkmA0XABYLraRqd0KH2fFFTbXmsdW
	VQ/UtpC+LxmlMlx0/+oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1toKAL-0000000DlIy-3Aj0;
	Sat, 01 Mar 2025 10:33:53 +0000
Received: from mail-wm1-x364.google.com ([2a00:1450:4864:20::364])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1toK8l-0000000DlF9-2Ie3
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Mar 2025 10:32:17 +0000
Received: by mail-wm1-x364.google.com with SMTP id 5b1f17b1804b1-43989226283so18717235e9.1
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Mar 2025 02:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1740825133; x=1741429933; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=284ud8KZgsvJe3kKyqpcZEuN7Tvtd5nIkzcKwoRr0sg=;
        b=a7R4ztmB4G6O0nqV1aGVGNeCnf67FONlQ8SUkDWp7OQ+IcwGslZ5v91FU5s9zjVSQ9
         UMFAFaEZ35Vf1ZnsP5A4kPQGUqDkz6VmINy3wLU4AclyDwPOk9i1sWufm2MczL/hw/qa
         8XxnD0I7hSxSPyCOgwHEe4st/87D22AeaHTiWAu8oKrtyYTefJGCBPMEgXiigQvjK9v0
         U9NDbG2RdhFqXJgW6fER8OphkqWWc06oA0WUiPjeYEoK95CxjAPYcdgNR/ZwlYSpf2Xq
         6YZa5PJHbkG7BUokyRPVR/S+y2VGqUM3eGKo7b+hsXotkKpSTHM/OHUIyexFYhJc8yBF
         5ObA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740825133; x=1741429933;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=284ud8KZgsvJe3kKyqpcZEuN7Tvtd5nIkzcKwoRr0sg=;
        b=ehqxFqqCTvunhaWsuDVtPl0K5ZCCAeXGuk1Ylh8AtgkyT3IMSM1mvs12PLgo8R2gAB
         uErmONhhZuAvdPzVgCz4rCnWfl37by/mJuUfBTKyabt+sd/b8AHZP18NeHgHiXiUIMM2
         2RdtSJb4V+nAJ/hLkuSXB8zo/zTguzsInUxvNLuV+kabFCa05EsVZUI807dtf8OEryto
         RQE+wV2gHYcB3rXgF7c8PPd76+zbQNRoledlDMuTnpTIZwJXDf8rRWzQnz8CV73PteFw
         wNQEBC/VA5BwbJlSkn7MSXnxb2MPTD8dtuQCLYhAYOOr0xGNt2DkzoAFGBlouphZJzYT
         weRg==
X-Gm-Message-State: AOJu0YyVeJEOwPGaurMHejh+OLoC2vjvtgh3dCMYJiMGuA2GQY4AYcj/
	T1mdx+qbciG96HwnDBi0fu9nY5S9SW8XOd99e3TDrW3ZHqMNMQ2ethoa1kDA58pdbo0zVtw2wCM
	xugy5bn0QBH+kOjybJwzHsMiRItr1rgFy
X-Gm-Gg: ASbGncv3cA6MV+K1bY8X0oE4Jcb1LPwIBN06EmJ3xWFQmmuXti1YvTbS/Tcba4fnjEf
	4aOrSesAfV65eNApbafJx7PuMw4cePSXwLEmaNC9uV8bC8IRprqNW7arlQo4lzzNXneVR33zDs7
	vj70sK1cypz9E9sUrnFKU7ZrxkxY3ocfckBgmegPKRqFoEGVLugRGSR+R5Pl3xfCxRCZ0pB5xBB
	d92qSKgO9aun241g3wtnKvYFCX9VJWaxlTaHCpuugxMlk7/WKGoHB/od81s5SWowbcgwycze6ha
	rgocqKJsSm+hvMhDBV04On73agT6rD4ZZylzje7bs7k=
X-Google-Smtp-Source: AGHT+IHrWDWJfyJus07zvqX5oGbCjo4A7NTax9luZq+BhbhEr0aXxJ5c0xg7yw9lm3Lg0IMqKXRt7tZuCCjr
X-Received: by 2002:a05:6000:401f:b0:38f:38eb:fcfc with SMTP id ffacd0b85a97d-390ec7c7fefmr5243899f8f.7.1740825133251;
        Sat, 01 Mar 2025 02:32:13 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id 5b1f17b1804b1-43b7a28b278sm5090285e9.45.2025.03.01.02.32.12
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sat, 01 Mar 2025 02:32:13 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Sat, 1 Mar 2025 11:32:06 +0100
From: Patrick Wildt <patrick@blueri.se>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: add MNT Reform 2
Message-ID: <Z8LiJgNkurF3xt3k@windev.fritz.box>
References: <Z7OaTzIpeJ-IACrl@windev.fritz.box>
 <Z7OahO_OtwYSmtmQ@windev.fritz.box>
 <2700899.tdWV9SEqCh@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2700899.tdWV9SEqCh@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250301_023215_844197_492A626B 
X-CRM114-Status: GOOD (  29.20  )
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

On Sun, Feb 23, 2025 at 12:38:40AM +0100, Heiko Stuebner wrote:
> Hi Patrick,
> 
> Am Montag, 17. Februar 2025, 21:22:28 MEZ schrieb Patrick Wildt:
> > MNT Reform 2 is an open source laptop with replaceable CPU modules,
> > including a version with the RK3588-based MNT RCORE[1], which is based
> > on Firefly's iCore-3588Q SoM:
> > 
> > - Rockchip RK3588
> > - Quad A76 and Quad A55 CPU
> > - 6 TOPS NPU
> > - up to 32GB LPDDR4x RAM
> > - SD Card slot
> > - Gigabit ethernet port
> > - HDMI port
> > - 2x mPCIe ports for WiFi or NVMe
> > - 3x USB 3.0 Type-A HOST port
> > 
> > [1] https://shop.mntre.com/products/mnt-reform
> > 
> > Signed-off-by: Lukas F. Hartmann <lukas@mntre.com>
> > Signed-off-by: Patrick Wildt <patrick@blueri.se>
> 
> bureaucracy question, what is Lukas' relationship with the patch?
> Two options:
> (1) Lukas initially developed the patch, then the "From:" should be
>     set accordingly
> (2) Both of you developed it together, then we should have a
>     Co-Developed-by: Lukas F. Hartmann <lukas@mntre.com>
>     up there
> 

Thanks, will send a v5 with Co-developed-by tag added! :)

> 
> Some more style things below...
> 

Are there further execptions to the alphabetical rule? For regulators
I often see min before max, which I think makes sense to understand
the range but isn't technically alphabetical. The same for pinctrl-0
and pinctrl-names.

Thanks,
Patrick

> 
> > ---
> > Changes for v4:
> > - Added chassis-type.
> > - Removed unused nodes.
> > - Sorted nodes alphabetically.
> > Changes for v3:
> > - Split DT as it's based on a Firefly iCore-3588Q SoM.
> > Changes for v2:
> > - Aligned with bindings and schemas to appease DTB check warnings.
> > - Aligned with format of other RK3588 boards for consistency.
> > 
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../rockchip/rk3588-firefly-icore-3588q.dtsi  | 451 ++++++++++++++++++
> >  .../boot/dts/rockchip/rk3588-mnt-reform2.dts  | 336 +++++++++++++
> >  3 files changed, 788 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index def1222c1907..88381d9a20e3 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -145,6 +145,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-firefly-itx-3588j.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-friendlyelec-cm3588-nas.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-h96-max-v58.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-mnt-reform2.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi
> > new file mode 100644
> > index 000000000000..898a7b29692f
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi
> > @@ -0,0 +1,451 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +
> > +#include "rk3588.dtsi"
> > +
> > +/ {
> > +	compatible = "firefly,icore-3588q", "rockchip,rk3588";
> > +
> > +	aliases {
> > +		mmc0 = &sdhci;
> > +	};
> > +};
> > +
> > +&cpu_b0 {
> > +	cpu-supply = <&vdd_cpu_big0_s0>;
> > +	mem-supply = <&vdd_cpu_big0_s0>;
> 
> you don't need the unspecified mem-supply for the cpu cores,
> that is vendor-kernel voodoo and not part of the upstream binding.
> 
> Same for all cores.
> 
> 
> > +};
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts b/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
> > new file mode 100644
> > index 000000000000..936dd959524f
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
> > @@ -0,0 +1,336 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> > + * Copyright (c) 2024 MNT Research GmbH
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include <dt-bindings/soc/rockchip,vop2.h>
> > +#include <dt-bindings/usb/pd.h>
> > +
> > +#include "rk3588-firefly-icore-3588q.dtsi"
> > +
> > +/ {
> > +	model = "MNT Reform 2 with RCORE RK3588 Module";
> > +	compatible = "mntre,reform2-rcore", "firefly,icore-3588q", "rockchip,rk3588";
> > +	chassis-type = "laptop";
> > +
> > +	aliases {
> > +		ethernet0 = &gmac0;
> > +		mmc1 = &sdmmc;
> > +	};
> > +
> > +	chosen {
> > +		stdout-path = "serial2:1500000n8";
> > +	};
> > +
> > +	backlight: backlight {
> > +		compatible = "pwm-backlight";
> > +		pwms = <&pwm8 0 10000 0>;
> > +		enable-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
> > +		brightness-levels = <0 8 16 32 64 128 160 200 255>;
> > +		default-brightness-level = <128>;
> 
> please sort standard properties alphabetically (compatible at the top,
> status at the bottom, rest alphabetically)
> 
> > +	};
> > +
> > +&pcie2x1l2 {
> > +	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
> > +	pinctrl-0 = <&pcie2_0_rst>;
> 
> more sorting
> 
> > +	status = "okay";
> > +};
> > +
> 
> > +&pcie3x4 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie3_reset>;
> > +	reset-gpios = <&gpio1 RK_PB4 GPIO_ACTIVE_HIGH>;
> > +	num-lanes = <1>;
> 
> again sorting
> 
> > +	vpcie3v3-supply = <&vcc3v3_pcie30>;
> > +	status = "okay";
> > +};
> > +
> 
> > +&sdmmc {
> > +	bus-width = <4>;
> > +	max-frequency = <40000000>;
> > +	no-sdio;
> > +	no-mmc;
> > +	no-1-8-v;
> > +	cap-sd-highspeed;
> > +	vqmmc-supply = <&vcc3v3_pcie30>;
> > +	vmmc-supply = <&vcc3v3_pcie30>;
> > +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> > +	disable-wp;
> 
> more sorting
> 
> > +	status = "okay";
> > +};
> > +
> 
> 
> Heiko
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
