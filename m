Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A9E1D3B7D1
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Dec 2025 11:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tvHPDkwd49yhUU8eNmAtuarOtqNZyDIzeIdki6jOPnE=; b=H7PDILqA6qWQFkF44cxxzKY1bE
	E+vh6+QRzIcxd+Oxb0BojsU+cF6xIlDpSrma+vmNzuHkOAmS2bHTyci2aJOTyEyoa0ApsI+Y/dDkJ
	Vpmc9TdY4SLHX+dHrPN8ti04FlUTuw8twerx+puI37BUwzRqc6W2jBR/3uv35aamx3ThkwBPMYQpl
	1fvQ+XdHlXZ7fSvjh52hPIDuuc89K4Nj9GkzS85M3/6K5hvpi+9TjhpwnIb1cNb5JVRaXuWood3/1
	oXag/voOMYbhS3cH+zZVDNT30lARDYPop0zwRdBtrK76J/UrEKcamM0q8nfeR9xK3CIhO3tbrBUE9
	323ZdzQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRq5Z-0000000Aqfk-0qpF;
	Sat, 06 Dec 2025 11:04:33 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRq5Y-0000000AqfJ-2tbo
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Dec 2025 11:04:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CDB416015E
	for <linux-rockchip@lists.infradead.org>; Sat,  6 Dec 2025 11:04:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84656C116C6
	for <linux-rockchip@lists.infradead.org>; Sat,  6 Dec 2025 11:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765019071;
	bh=LQa7x2Xqo1R3BU1iXV2K28BQPa/asQzgGrxZOPXc3Xk=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=RkVE+rKuk6vqlW3wOjGewK6yLFURkkY7rICN6MN5rU4SJTIsmQoiC4q44ybmi+W/O
	 8vof5AApEEZckXAaTSIJcYUA4p8LjKvFUv0eg9TbeQFektaikX5c8Rb/eqdgaX/TiH
	 KD1SfaZT1/IfEDFSbgGQ2Psp+i/TBZ3oZzCXEy22LnLBg3LiA0ddhZsrL/zFC/mhDJ
	 0oFKxVNkqNi85aLI8J4+iCDTQqx70VA8LQTkxUByU26b/DZSsF/9GjpQMoJSGT9zPX
	 aW6suAvEjHbDaWcz0ikDiOpjYsuwtTnmtIjniizKq84SW/bCH5WG1AcPAbL4G4CaWc
	 SuR4Q46lX32Bg==
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59584301f0cso3225380e87.0
        for <linux-rockchip@lists.infradead.org>; Sat, 06 Dec 2025 03:04:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUlkVNTecLZku+Tam90H7WZhnbj0CdTv+jnloq/TTBE2v7veMIQV3EJtXrnlOxcO5PtyaWRK4lvEkaBHMkgSg==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywj3aF7FiYWtg1Z0ep1EDm02Oj2Y6/pJWWHYoOB2GqXBv0V/iFQ
	2HEy3oA6s09dwEuYXho4Ih4Rxk7ik53QE7TZQmtjR970w3qFDEK4+FDGb8kviUmqp3H78OIa3rt
	AJ5z3SxqbYaZJ2YCUlmyg6FZYfSRfNAuT5qSeM9kY6Q==
X-Google-Smtp-Source: AGHT+IGzVIVocC6EzRFxCGvPhOPXFCCvOsJH5zhVLbERuSaCGM4g0MgyH12GWd9f4cyL9Esvb2xyvVlzmOz3yFQy3CQ=
X-Received: by 2002:a05:6512:2212:b0:594:2c51:f27b with SMTP id
 2adb3069b0e04-5987e88b210mr601668e87.18.1765019070175; Sat, 06 Dec 2025
 03:04:30 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 6 Dec 2025 03:04:28 -0800
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 6 Dec 2025 03:04:28 -0800
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20251206050844.402958-6-ye.zhang@rock-chips.com>
MIME-Version: 1.0
References: <20251206050844.402958-1-ye.zhang@rock-chips.com> <20251206050844.402958-6-ye.zhang@rock-chips.com>
Date: Sat, 6 Dec 2025 03:04:28 -0800
X-Gmail-Original-Message-ID: <CAMRc=MdNNkQpXiaK7J12QjsQiL-DjxGUarvveeYze19-1wqfxw@mail.gmail.com>
X-Gm-Features: AQt7F2qQ1dE8DUY3pPJ8f0x-A-FdXwUF1S4eurzNXEEc-e8MOcdtpskXb3-4gCU
Message-ID: <CAMRc=MdNNkQpXiaK7J12QjsQiL-DjxGUarvveeYze19-1wqfxw@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] gpio: rockchip: support new version GPIO
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	tao.huang@rock-chips.com, Linus Walleij <linus.walleij@linaro.org>, 
	Heiko Stuebner <heiko@sntech.de>
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

On Sat, 6 Dec 2025 06:08:41 +0100, Ye Zhang <ye.zhang@rock-chips.com> said:
> Support the next version GPIO controller on SoCs like rv1126b.
>
> Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
> ---
>  drivers/gpio/gpio-rockchip.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index 47174eb3ba76..c3e831c6bcf1 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -36,6 +36,7 @@
>  #define GPIO_TYPE_V2		(0x01000C2B)
>  #define GPIO_TYPE_V2_1		(0x0101157C)
>  #define GPIO_TYPE_V2_2		(0x010219C8)
> +#define GPIO_TYPE_V2_6          (0x01063F6E)
>
>  static const struct rockchip_gpio_regs gpio_regs_v1 = {
>  	.port_dr = 0x00,
> @@ -674,6 +675,7 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>  	case GPIO_TYPE_V2:
>  	case GPIO_TYPE_V2_1:
>  	case GPIO_TYPE_V2_2:
> +	case GPIO_TYPE_V2_6:
>  		bank->gpio_regs = &gpio_regs_v2;
>  		bank->gpio_type = GPIO_TYPE_V2;
>  		bank->db_clk = of_clk_get(bank->of_node, 1);
> --
> 2.34.1
>
>

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
