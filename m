Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60336C54EBC
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jan 2023 18:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QtCKIUbYFVzFGzkh1TgQ8kg+9TyodRqeUSr1/9usazY=; b=yruytZUsGQInxH
	1StfklQdCr3LbmbeOpqs2cK8FgoVYcahIP+5yd0BaTPkmxE/f23fCz6XZbSE0s/TbQcrFL9XGKVfz
	huImjvElE5YLPCUmRa67LOTzpSNqWeskW2n+V7Gv/LGd4XpdLzPIMBzGWEfHEtgpjTl6ezjLmTm9S
	lKW/M7Cpe+G3hGwWqbfJyzHH8NC0UJHubgbu+/M5IIn7aK/t0haZZP7wGGvyviZdpRINnk8FwDK5z
	+b18ByZD4WFhjw0JeEOeA9xu2mJitKPyKtTfs9g+w84zSK3t3COBmJahfjrILlLkE64QRUMdNqRKS
	R3bJYlRADadejmuWXkNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDVA1-00DjnQ-6X; Thu, 05 Jan 2023 18:40:17 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDDSy-00DvQQ-Vi
	for linux-rockchip@lists.infradead.org; Wed, 04 Jan 2023 23:46:42 +0000
Received: by mail-wr1-x42e.google.com with SMTP id d17so14873501wrs.2
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jan 2023 15:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cIoeoBnzOOAGqeOtpvoRND1khckiJoQ7+BSoBb2i2Xw=;
        b=U0VCkcHFHVpP+10R3jp3dtU+YCGAJreTp2cYw2tS9ERExSZY/nXGYpxWCX4i9xYPfX
         UjnonZQmsyMEeYlMNxA8oICFuAxXT2plDCxnYsByi1FxN1EhPtZG5Phc/O7aMMR7O78R
         BFMmrgANp/rpf7zHrDjnWBd5UudIWbr1qdrJA1GCItgGjC8AnSxToVP4Gb8sD5afmdwu
         ++gLmmvdKXAqrDlcVKWVYUWaf/0x2xU/6wnxmDOs9JU0z5S642TBy7CHr8tA3UyMZMc+
         RwHXn11QSm4mUPRFYGLu/ZO1T46Bpyx+xpA05Mup6HPItPWikBz5R4S7OnbYvj08YTph
         ibQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cIoeoBnzOOAGqeOtpvoRND1khckiJoQ7+BSoBb2i2Xw=;
        b=547weXyShQ4dxr625aOBFrBAtW4U7hMTKu7bBbq6BjTHMC4hwBlEa6uVLQ0J5TjHrT
         yx3Kn20Xg3NModVRSOhRPe/Bo+lImrBzG1MZ1+lWKBgyhAYyXdHj6qTLpyQupzswCtI4
         flXiY3i8gk+jP/lzqXKQ5oMKMuKMSgL5DUDUgBfWfKv4GWxlJmmiDJm7vAT8tWDuXLww
         a0giRzCH0eH0jv7FiC+dBvbiisWTZ0cHMfskCfu6ss7cEG8dF4Z0yKpK8I/Zxw114437
         TpHESXSBx3L5/5D3V/nrroSgQCZZrzIeU7Zdyb08MbN9/fkuSq+AkYF7YpEPKZP67nly
         9GfQ==
X-Gm-Message-State: AFqh2koTRH+WanlogP9uorPTpWjm8kL46DtQHfWdjDs2nuBA3aN8GFUU
	AS74bxSgY6Cav4tWpdm3z2oChLi0deVGOQfDYCw=
X-Google-Smtp-Source: AMrXdXumu/Yq84IssEqiLt4y8CftFLNsXOJ1gr+pLlBELwp//nfkMn7nwiyc5TU0BsgqQEQ9ciP+FLwYCJJDLk10iTE=
X-Received: by 2002:a5d:4534:0:b0:2ad:569d:5e07 with SMTP id
 j20-20020a5d4534000000b002ad569d5e07mr102930wra.685.1672875997748; Wed, 04
 Jan 2023 15:46:37 -0800 (PST)
MIME-Version: 1.0
References: <20230104205434.867219-1-lorenz@brun.one>
In-Reply-To: <20230104205434.867219-1-lorenz@brun.one>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 4 Jan 2023 18:46:25 -0500
Message-ID: <CAMdYzYq4Nev1Vya7Bw9M5x5Fv_QNh0tCjfn4e33T5wkA6iwijQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix USB regulator on ROCK64
To: Lorenz Brun <lorenz@brun.one>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_154641_102752_C3F7C92A 
X-CRM114-Status: GOOD (  24.48  )
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

On Wed, Jan 4, 2023 at 3:55 PM Lorenz Brun <lorenz@brun.one> wrote:
>
> Currently the ROCK64 device tree specifies two regulators, vcc_host_5v
> and vcc_host1_5v for USB VBUS on the device. Both of those are however
> specified with RK_PA2 as the GPIO enabling them, causing the following
> error when booting:
>
>   rockchip-pinctrl pinctrl: pin gpio0-2 already requested by vcc-host-5v-regulator; cannot claim for vcc-host1-5v-regulator
>   rockchip-pinctrl pinctrl: pin-2 (vcc-host1-5v-regulator) status -22
>   rockchip-pinctrl pinctrl: could not request pin 2 (gpio0-2) from group usb20-host-drv  on device rockchip-pinctrl
>   reg-fixed-voltage vcc-host1-5v-regulator: Error applying setting, reverse things back
>
> Looking at the schematic, there are in fact three USB regulators,
> vcc_host_5v, vcc_host1_5v and vcc_otg_v5. But the enable signal for all
> three is driven by Q2604 which is in turn driven by GPIO_A2/PA2.
>
> Since these three regulators are not controllable separately, I removed
> the second one which was causing the error and left a comment explaining
> that this regulator actually controls multiple rails.
>
> Signed-off-by: Lorenz Brun <lorenz@brun.one>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index f69a38f42d2d..bd82bc80444d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -37,6 +37,9 @@ vcc_sd: sdmmc-regulator {
>                 vin-supply = <&vcc_io>;
>         };
>
> +       // vcc_host_5v also controls the vcc_host1_5v and vcc_otg_5v rails
> +       // but there is only one common control signal (USB20_HOST_DRV) at
> +       // GPIO_A2
>         vcc_host_5v: vcc-host-5v-regulator {
>                 compatible = "regulator-fixed";
>                 gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> @@ -48,17 +51,6 @@ vcc_host_5v: vcc-host-5v-regulator {
>                 vin-supply = <&vcc_sys>;
>         };
>
> -       vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
> -               compatible = "regulator-fixed";
> -               gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&usb20_host_drv>;
> -               regulator-name = "vcc_host1_5v";
> -               regulator-always-on;
> -               regulator-boot-on;
> -               vin-supply = <&vcc_sys>;
> -       };

Fixed-regulator supports multiple regulators sharing a gpio, the issue
is you have the pinctrl assigned multiple times which is not
supported. Simply removing the pinctrl from all but one of the
regulators will solve this issue.

> -
>         vcc_sys: vcc-sys {
>                 compatible = "regulator-fixed";
>                 regulator-name = "vcc_sys";
> --
> 2.38.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
