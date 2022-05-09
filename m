Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07BEBC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 May 2022 14:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9of6OIqMkXJut961MVVElhbBBVhrpQeiauAuQ7bkzU=; b=OdBvduQIni5scY
	7FK9ZylkJE39pBQWIX9R50tX38BjpZy3i5qnU+V2qNHNkru1DkaQtrZwLmSMm8NlH8SCIYqrKUqv3
	6xjk/NWQKYcdURNPm86bthkOUGei9JAv71rWfHE45JRrbDID51omjCaGksDlki7vU6cHxkTXffRRW
	kKs4Pi2Ki7nxuBz0O1ip6kRtBnUZZbNfBXYcw+e55kMsS1vImRL0wqW0FTJHJODTvDwFV7qOOz/xr
	jM36jb9S0Cz3+XlCQhz+ySf8TrIrwZp90J6CYgx1Vbg8XDpXAlWz7GBiLUM7DeNg88VA1YhMfp/87
	DEaa9RKhLLiBuDsOOyzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1no4Cb-00Elh3-Oo; Mon, 09 May 2022 14:17:33 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1no4CN-00ElZb-Us
 for linux-rockchip@lists.infradead.org; Mon, 09 May 2022 14:17:21 +0000
Received: by mail-ej1-x62c.google.com with SMTP id ks9so20692971ejb.2
 for <linux-rockchip@lists.infradead.org>; Mon, 09 May 2022 07:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+8+QqXVKL5wTk1USxhSJy91rHhDM1q+WdZU6lGP6JQ4=;
 b=Se5eMb8Ygo8+NTsu2WGGmLwSiZe3RssFpzMyc+7jXSDykSJnAVSZVnd/OngGPWZciL
 TqOhSSgSmDT040EiixkOlRjSjs+ukuyf54/dNj07uwd2adCU7iAHQeyZ6NPWcbIYVPwR
 pnseMj0cI03Ui9b5xM9w/yOlvf2/OlxlznUm1jexmSPMmaEiax93PQoJ/G6Q+n7fow9z
 IeuitDasdXBRSpB+6VIA+P3OanKlTTP+m6n8bakAwn+q9cJfZqwF1lR8LLdZPHpM+15i
 QZvAmWZBOy2/SBull0eHOksCzYbIomn1nr2T6ttdbSEDr1YAhsbO0VVKPlHOwot8XrnA
 S8LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+8+QqXVKL5wTk1USxhSJy91rHhDM1q+WdZU6lGP6JQ4=;
 b=N1DWMRX4zSgcdy/EomMz9/KLN/DWg39dnt8T3LQMz9LceWxZ3mfSelHzGWh6N3QVi1
 Lkr3mfGKsYz92JYwEOR+ffdTaR7I/ss1YgclmiSLXZAOPCjFbwrrrasNgYx4egCKGA9B
 PeuGfhg1Z428gK3jI9aVn+uBJ0X+JuR5ugTdnIZasDpRvI/rgYaWYoUcbKX8TASdGwhI
 +8H9sVQd+qMiQdcOkv+TOwn7vZIkInbTynw0GkzoZnOc+cG6IE/eKFifjDygN7Mbf68V
 bYpUqV6sX3zeO688SWkU7NyJELLJKpGeCXF1GaVgdWd5ewZUEva0I+G8r6JWsZcUyZVy
 TZLw==
X-Gm-Message-State: AOAM532r1rQYMuzmOLli/G/VkA1ePImxasPNyIbpgoL2RPYPx3FibIa/
 SzMwDzr7MwXAwHUF9+3sO/Q5KHAzB2ZyCSQspPcCrQ==
X-Google-Smtp-Source: ABdhPJz4oPKheaglIPZCKrUFsKejt51Mh50V9/DGs7u8F7syBlw3wHnbVvg9K8d9bl9luUK/vJye5kZrXA5cwi3Keig=
X-Received: by 2002:a17:907:a0c8:b0:6f7:492e:e74c with SMTP id
 hw8-20020a170907a0c800b006f7492ee74cmr11393092ejc.670.1652105834875; Mon, 09
 May 2022 07:17:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220508202544.501981-1-frattaroli.nicolas@gmail.com>
 <20220508202544.501981-4-frattaroli.nicolas@gmail.com>
In-Reply-To: <20220508202544.501981-4-frattaroli.nicolas@gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 9 May 2022 11:17:03 -0300
Message-ID: <CAAEAJfC5aoFmk7hKZ-CSv1=RhzO8YU38Abz8PhD26MvV+X0r-Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Hantro encoder node to
 rk356x
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_071720_394570_3F8EF2FF 
X-CRM114-Status: GOOD (  19.87  )
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

Hi Nicolas,

On Sun, May 8, 2022 at 5:26 PM Nicolas Frattaroli
<frattaroli.nicolas@gmail.com> wrote:
>
> The RK3566 and RK3568 come with a dedicated Hantro instance solely for
> encoding. This patch adds a node for this to the device tree, along with
> a node for its MMU.
>
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 7cdef800cb3c..2e3c9e1887e3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -508,6 +508,27 @@ gpu: gpu@fde60000 {
>                 status = "disabled";
>         };
>
> +       vepu: video-codec@fdee0000 {
> +               compatible = "rockchip,rk3568-vepu";
> +               reg = <0x0 0xfdee0000 0x0 0x800>;
> +               interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> +               interrupt-names = "vepu";

It this block "encoder only" and if so, maybe we should remove the
"interrupt-names" [1]?

The driver is able to handle it. See:

https://elixir.bootlin.com/linux/latest/source/drivers/staging/media/hantro/hantro_drv.c#L962

You might have to adjust the dt-bindings for this.

[1] https://lore.kernel.org/linux-media/20210324151715.GA3070006@robh.at.kernel.org/

Thanks,
Ezequiel

> +               clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
> +               clock-names = "aclk", "hclk";
> +               iommus = <&vepu_mmu>;
> +               power-domains = <&power RK3568_PD_RGA>;
> +       };
> +
> +       vepu_mmu: iommu@fdee0800 {
> +               compatible = "rockchip,rk3568-iommu";
> +               reg = <0x0 0xfdee0800 0x0 0x40>;
> +               interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
> +               clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
> +               clock-names = "aclk", "iface";
> +               power-domains = <&power RK3568_PD_RGA>;
> +               #iommu-cells = <0>;
> +       };
> +
>         sdmmc2: mmc@fe000000 {
>                 compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
>                 reg = <0x0 0xfe000000 0x0 0x4000>;
> --
> 2.36.0
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
