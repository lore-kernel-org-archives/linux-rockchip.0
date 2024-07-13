Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3383BC3DA42
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jul 2024 07:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+8SESKxwTkrgyxcTEpxpJnS0Y4dyS4wrgog9279SdQ=; b=wCZrWSUbtfXy38
	w5IxmJdojydY+l8RJbe4lrMim0oHXp6HC/i8zWLY2A6rYafeMUJHENuZH84an3ZNBtM6a8p+RsvC9
	bBsQAQpxyG/ELziOCbUFjchtRB/4gpwaYj8IwH6AP088JEQr8Kgz6wgjxrwgP03QG/8GvoUR81KbC
	eeEXFHSyBP9+7qAI7lb66jI3t2IKzIXZgntRv/ZZTEwpZBVjVk+X7YJNVawD2EhKEpbvTnk1FMUOY
	8l7A8BpQCU1p7TOZES8HkVHiueiQ6i1Pmgs36z1QUBIdtSYSXWCFWqHLLOf8hsMpSeAZ261lNfQZH
	xoRx7tHxUM8ODCWIXEDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSWsD-000000024UO-34g1;
	Sat, 13 Jul 2024 07:08:49 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSWru-000000024Qp-2fY4;
	Sat, 13 Jul 2024 07:08:32 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-25e0663de76so1201866fac.1;
        Sat, 13 Jul 2024 00:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720854509; x=1721459309; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fjlpCsYbCH3cdJRtayFHDpxKbTqwk5kyQNPmsXVKhUc=;
        b=DpiMivcZzMZLt72xVwuYNkG4YPgDcmYYkHMPG23ib7n/pT06nqth/ECGDmCeREhPUg
         nfMnAb0n0235R5m4gEE+OaDp2L2wfrb5ZC5mtk9yG0l5rHtC/d4jc43RmPUIkVGi09Pw
         k8UsznEz+dLGwueZclO/KcoaC8T+g8YRArCRqGdjp3NdZ85bybnEFTttoUHqpBCA6/PB
         +4r4qMm7atLs6QzHQrTluCwdYyjzUrjf1Kx9oiFhUpshKHqyoV7gfhiMQo0MfNHEgun3
         XHnG5CgMSUsjoSWUv2koVJTG0jg1gORhqkEQnvC38/BQUK7PF0nHRduRl1ZEipUycJNN
         vOvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720854509; x=1721459309;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fjlpCsYbCH3cdJRtayFHDpxKbTqwk5kyQNPmsXVKhUc=;
        b=tNU9abFmJ9l6bRBaV6Af0L9P9nNTk6KLIad5+SWczAuqO7F7VQToEPtvlKOotMDdNL
         iyFVxxD2S9Pg3aJoE2JAG/AOTIkKtON/ZsekX/Ic5VPHt9boYc0yq3DFdwzbcMoWmLOR
         SSswKSOX8XDm8tF7L2KqdcAdmdSEApq6sMnHeFSlyUu+Hu2jRu1ySbXlERi3k1vaeoUx
         CyGmHo/ovkHARbakcAPhStEqxrNKdnELR9Lti1z02xBzPXhO6P27Yr0OqZeMUWDfgnfG
         AY0cAtDP8zKLyouab3tq3mYgPQSTbFAQjAZu7AFz6HjcAcqkX+22ajyvzFKzCOXaLVga
         HHbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqrh6tV6SrliySSI8QliyRByDl6bU7cdTfQV9n738aeoD5uFaTWMluHwc24Nz7ymp/AkWqIaZNLIHgqvLS3MAnedcvccmXA1Ktqv8pgH5h954oNC+6n3iYi0r6/tPBCZzZfqe1QJvBAuThSW407uMejjvgAIBdGX4=
X-Gm-Message-State: AOJu0Yywasu2CW+hRMp7LvrLBt32nvrayNJ3mZHSobL5l6btss/LVGo0
	G3yt1XzUhI3DX/StcYGDJ/lhfPjhFKo0xQa8xhxOSnUD0lOM7F4aW419E2Gio3U4RO4lq+DCloU
	vJ35AoMFJsgxXQTAROjv+Ron1OeQ=
X-Google-Smtp-Source: AGHT+IFWVKyYxz5gy1azAb9yamwL6hAatx9DP1QAZFBlOoFzKR7AUcc67ukMdrKD3FBO1YCxpH6HH13DsqYepYUgQqI=
X-Received: by 2002:a05:6870:c6a5:b0:258:42bd:d916 with SMTP id
 586e51a60fabf-25eae7bace2mr12445788fac.14.1720854509337; Sat, 13 Jul 2024
 00:08:29 -0700 (PDT)
MIME-Version: 1.0
References: <20240712164554.1763-1-linux.amoon@gmail.com>
In-Reply-To: <20240712164554.1763-1-linux.amoon@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 13 Jul 2024 12:38:14 +0530
Message-ID: <CANAwSgT=eNVEk4qzcpD3wa=vZ=TOuJDM_Cz61SCWOsFK2nRsQA@mail.gmail.com>
Subject: Re: [PATCH-next v3 1/3] arm64: dts: rockchip: Add missing pinctrl for
 PCIe30x4 node
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240713_000830_699134_C5AA5EE8 
X-CRM114-Status: GOOD (  23.51  )
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

Hi Jonas,

On Fri, 12 Jul 2024 at 22:16, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
> signals. Each component of PCIe communication have the following control
> signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
> high-speed signals and communicate with other PCIe devices.
> Used by root complex to endpoint depending on the power state.
>
> PERST is referred to as a fundamental reset. PERST should be held low
> until all the power rails in the system and the reference clock are stable.
> A transition from low to high in this signal usually indicates the
> beginning of link initialization.
>
> WAKE signal is an active-low signal that is used to return the PCIe
> interface to an active state when in a low-power state.
>
> CLKREQ signal is also an active-low signal and is used to request the
> reference clock.
>
> Rename node from 'pcie3' to 'pcie30x4' to align with schematic
> nomenclature.
>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> V3: use pinctrl local to board
> V2: Update the commit messge to describe the changs.
>     use pinctl group as its pre define in pinctrl dtsi
> ---
>  .../arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 966bbc582d89..721e87a3a464 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -338,7 +338,7 @@ &pcie30phy {
>
>  &pcie3x4 {
>         pinctrl-names = "default";
> -       pinctrl-0 = <&pcie3_rst>;
> +       pinctrl-0 = <&pcie30x4_pins>;
>         reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>         vpcie3v3-supply = <&vcc3v3_pcie30>;
>         status = "okay";
> @@ -377,14 +377,20 @@ pcie2_2_rst: pcie2-2-rst {
>                 };
>         };
>
> -       pcie3 {
> -               pcie3_rst: pcie3-rst {
> -                       rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> -               };
> -
> +       pcie30x4 {
>                 pcie3_vcc3v3_en: pcie3-vcc3v3-en {
>                         rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>                 };
> +
> +               pcie30x4_pins: pcie30x4-pins {
> +                       rockchip,pins =
> +                               /* PCIE30X4_CLKREQn_M1_L */
> +                               <4 RK_PB4 4 &pcfg_pull_up>,
                            Should -------------^ replace with
RK_FUNC_GPIO ? since its a gpio controlled?
> +                               /* PCIE30X4_PERSTn_M1_L */
> +                               <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>,
> +                               /* PCIE30X4_WAKEn_M1_L */
> +                               <4 RK_PB5 4 &pcfg_pull_down>;
> +               };
>         };
>
Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
