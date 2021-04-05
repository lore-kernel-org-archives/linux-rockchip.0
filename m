Return-Path: <SRS0=J5Gw=JC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A647C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 08:14:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 90B6461380
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 08:14:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 90B6461380
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1aOS5J8e+kJW/n1cq2kxFeXuDJAXgKnhmGRVAj0zQ78=; b=QqoJoZcJ/ZIjRlbIcrRrtcJQv
	FgiouHqAyv0cnIxDE2UDi72KzVLvOqm3Y8AgALl4DVYSP2/1iEoRAGQVumFGagJDJyasDo5f6et7E
	KW+Qh4LRo+PfZmfQbcct/mt1OlBeWRA2OQn/rwScAaxwsjZDfhmDqEOC8g7A701Dy/xlQfZsGnoeQ
	d4yPUGMjrcM4F+4ngOyqwQzwSz1DSvnW2G2ed+D0qAjfdc94fpqxoj9lHoYxfN3HzIJZH0uAdvn/P
	Io1MgU0aw+3rSMmn32WO4EqGpfqiS7rIrNLlMo51MSl/GscNpbgvCS/50romEjgSCA/Et3hAsvqvl
	RRbevnXVA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTKNO-00GvmZ-AU; Mon, 05 Apr 2021 08:14:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTKN5-00GvhW-NE; Mon, 05 Apr 2021 08:14:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 276516138E;
 Mon,  5 Apr 2021 08:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617610443;
 bh=a92XBC6+vQ67hke8nAq6hrsWpIpBDgHPoei6eyrljaU=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=pOtsEywCGZwF0vLb6gApQRc+BRTznECgwuZqvx1mhV1u3aLV4KB3/bYPVaxAKo02c
 YLl6Tz9HZNP+UTznonbxRwWspAkH8j6P+Qk0Q25NfpxXZOvi+CQiWPXv/yxmXj3EuF
 iIsvT7dAut/IkWF6P4g3MKo6OMM1MrNobhy2FPdPkQpLpdubp4cZCl/LvSmVeZug7M
 bPCnzkySQW3g6uYhy8rQEAEtIfaUet84+yY8NITdqPghcZs+OWb6U7OzLTSEjIL3sG
 XosBM8IGc8wc3jND3L0LR3lwSwhvM1nCaIVFJa1na4RtZDf9auGcKuqxaAPg9ROk6G
 0iH1B0USB5YAA==
Received: by mail-lj1-f173.google.com with SMTP id u20so11850592lja.13;
 Mon, 05 Apr 2021 01:14:03 -0700 (PDT)
X-Gm-Message-State: AOAM533qXbtem3Mbp5Qr9iJVPL3vmr1bCedMXtJUq100GJy2h8CRCjRd
 omEkQrysqkNIwVmlgbhdyu2X3e+rwww3rgkSxzo=
X-Google-Smtp-Source: ABdhPJw0+QWtwYYDXiy1mXyiNkRuNjehDVi+EMUMSiAzw/0A0was8kKG5w3L1MXHhXNVeSTsG/ZcIW3PS9Fr/6+o13s=
X-Received: by 2002:a2e:7d04:: with SMTP id y4mr15991236ljc.94.1617610441474; 
 Mon, 05 Apr 2021 01:14:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210405074459.4217-1-cnsztl@gmail.com>
In-Reply-To: <20210405074459.4217-1-cnsztl@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 5 Apr 2021 16:13:49 +0800
X-Gmail-Original-Message-ID: <CAGb2v66K3SFSkm9T_D6X5o7jSYOoYpYeS_yMp1k6nMonmjiHZA@mail.gmail.com>
Message-ID: <CAGb2v66K3SFSkm9T_D6X5o7jSYOoYpYeS_yMp1k6nMonmjiHZA@mail.gmail.com>
Subject: Re: [PATCH] rockchip: enabled LAN port on NanoPi R2S
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, David Bauer <mail@david-bauer.net>, 
 Robin Murphy <robin.murphy@arm.com>, devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210405_091408_517688_E94A04BA 
X-CRM114-Status: GOOD (  19.82  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Mon, Apr 5, 2021 at 3:46 PM Tianling Shen <cnsztl@gmail.com> wrote:
>
> From: David Bauer <mail@david-bauer.net>
>
> Enable the USB3 port on the FriendlyARM NanoPi R2S.
> This is required for the USB3 attached LAN port to work.
>
> Signed-off-by: David Bauer <mail@david-bauer.net>
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3328-nanopi-r2s.dts   | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> index faf496d789cf..6ba9799a95c5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> @@ -37,6 +37,18 @@
>                 };
>         };
>
> +       vcc_rtl8153: vcc-rtl8153-regulator {
> +               compatible = "regulator-fixed";
> +               gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&rtl8153_en_drv>;
> +               regulator-always-on;
> +               regulator-name = "vcc_rtl8153";
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;

This is just a simple switch, not an actual regulator.
It would make more sense to drop the voltage range and
instead have the implementation pass-through voltage
constraints from its parent.

> +               enable-active-high;
> +       };
> +
>         leds {
>                 compatible = "gpio-leds";
>                 pinctrl-0 = <&lan_led_pin>,  <&sys_led_pin>, <&wan_led_pin>;
> @@ -265,6 +277,12 @@
>                         };
>                 };
>         };
> +
> +       usb {
> +               rtl8153_en_drv: rtl8153-en-drv {
> +                       rockchip,pins = <2 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
>  };
>
>  &io_domains {
> @@ -364,6 +382,11 @@
>         dr_mode = "host";
>  };
>
> +&usbdrd3 {
> +       dr_mode = "host";
> +       status = "okay";

Please also add a device node for the actual Ethernet controller, and
set up an aliases node for it, so that the bootloader has some place
to fill in a MAC address.


ChenYu

> +};
> +
>  &usb_host0_ehci {
>         status = "okay";
>  };
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
