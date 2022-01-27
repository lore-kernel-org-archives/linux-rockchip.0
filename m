Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F3F8C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 23:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jW++w30RTERjKXisps7k7YenKq+lL7NRqaVhLoSxdq8=; b=254PFbO+lfPylk
	VrUXe1IFfD7IghRcT8x/DURG+Uo/4OxrSOBUjd323/hvGog/Cj50Z6iriaTpF1uxe5y38DvLuiGqL
	DkeyNsWBqfh542ioPxeWKBLvP0g6D/Q0F9JCfWBxeLKP4iPG9ZF8dTfnJVj4xqVWMbU+FZEypo5js
	l8JI+CVgrFd7msMceF6WvVp6GnyBvl14IfRwF0nO2F4O3rnHPTQFxHMMvNzCVfoNhUffZCZqQRH1w
	NEm3EcFRGOfXj52arICweNPzj/8djixWPUeRVLoXxcuHsYRh3wt9VJI1VQDo6TM/8W4e4BpIgLCmx
	qkm40DdCOITSLrA5TDGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDEFq-00HOI5-HJ; Thu, 27 Jan 2022 23:32:38 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDEFe-00HOFS-FM; Thu, 27 Jan 2022 23:32:28 +0000
Received: by mail-yb1-xb31.google.com with SMTP id i10so13375480ybt.10;
 Thu, 27 Jan 2022 15:32:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2c/F8gVeTTbHXbx0XQ5ikZShYrhmUzF8uhfDRE9SO80=;
 b=WpbEjen4liuYPof+iDZf0ZkbosXmzOZkuRERavNXbFCEZGGczqon0RMxH9em2slv8l
 H1Jxl8cTk3JWnH/PSxVETJnvej0u1cwaZeJ4EOuA6XmKLZNG5BVU8bJFizUE94p4Yr5H
 /ZDJ/iPWUSs2B0WL7sSPzoQYVcRTtvL9DGhFQADt3sXWYW30ox384tGQ23oqSZtBb5Hc
 WqFxXHC+LlbUgrrStX1j3+ffrxUhWWKrk2FRURd9faFdmGP9SlRtuWi3VIAlWgaWkP+b
 HFLB7KmxjKvSEmHjSGoXw6qWhTmXHQ8BOW5yA/FXD4BJfcWrZw9LTeFRj5medxJRM3nk
 DC1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2c/F8gVeTTbHXbx0XQ5ikZShYrhmUzF8uhfDRE9SO80=;
 b=gJztKnunLv/fHM/SF9/SgfqIJfWel1dUf4m84RsSlSAeHGwsUlzUkfT8mweyjJrE9M
 Ybx/np6vUc2Ifd7+wgTvSnpG5SmjB4/XmOqqk+vOMNozvFtVjMdZ/+ZosG950gbw2bzh
 La3tNvt4M3NpokdqCDVJlrAp74TUE2kmOfQwHCjgtr3KdKAullEsTlzEAb8ptqoOoGLo
 mvCg6PTk6bgI0+VEFJbpoCVyLWPwK4wHTI1VbI9/jWq3rFxXr1GU6IAIVS8LWdDpsCLL
 W4Kh0vs/oK0ddz46rGUgxfIVhyfOh9qUBAkOWeVP7at838t5HNv9Rnt0aR7igcSoHrFC
 SIiw==
X-Gm-Message-State: AOAM530gtM9TA/00YLptZv+jOP5b1osrsLmehxgWuPLS2MOhA88TtCjz
 0ZkL/2F8buZUrnktaDdgnSkle5acJVNY3YqZ910=
X-Google-Smtp-Source: ABdhPJzz8cYjcFa9Tumc8DOoCF9F3XKo4UL0o1Thi3RBfh7bjeK5z7v08IE0yLdguvZSOOx/qEk4+MR1ulKB4l9TECY=
X-Received: by 2002:a05:6902:704:: with SMTP id
 k4mr8607453ybt.355.1643326345421; 
 Thu, 27 Jan 2022 15:32:25 -0800 (PST)
MIME-Version: 1.0
References: <20220127190456.2195527-1-michael.riesch@wolfvision.net>
In-Reply-To: <20220127190456.2195527-1-michael.riesch@wolfvision.net>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 27 Jan 2022 18:32:13 -0500
Message-ID: <CAMdYzYpkXdXDST+N8dEn7UvibXmytwNeJ+KZ9bn9Oq+RJuSaeQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: rename and sort the rk356x usb2
 phy handles
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liang Chen <cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_153226_554948_3AFD4475 
X-CRM114-Status: GOOD (  20.02  )
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

On Thu, Jan 27, 2022 at 2:05 PM Michael Riesch
<michael.riesch@wolfvision.net> wrote:
>
> All nodes and handles related to USB have the prefix usb or usb2,
> whereas the phy handles are prefixed with u2phy. Rename for
> consistency reasons and to facilitate sorting.
>
> This patch also updates the handles in the only board file that
> uses them (rk3566-quartz64-a.dts).

Good Evening,

While I'm not against this idea, my main concern still stands.
I spent a great deal of thought on this, and decided to go the route I
did to maintain consistency with previous generations.
As such, I see one of three paths here:
- Pull this patch only and depart rk356x from previous SoCs.
- Do the same for previous SoCs to maintain consistency.
- Drop this patch to maintain consistency with previous SoCs.

I ask that others weigh in here, as offline discussion has produced
mixed results already.

Thanks,
Peter

>
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 18 ++++++++---------
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 20 +++++++++----------
>  2 files changed, 19 insertions(+), 19 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index f1d6bf10c650..3e65465ac7d5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -574,32 +574,32 @@ &uart2 {
>         status = "okay";
>  };
>
> -&u2phy1_host {
> -       phy-supply = <&vcc5v0_usb20_host>;
> +&usb_host0_ehci {
>         status = "okay";
>  };
>
> -&u2phy1_otg {
> -       phy-supply = <&vcc5v0_usb20_host>;
> +&usb_host0_ohci {
>         status = "okay";
>  };
>
> -&u2phy1 {
> +&usb_host1_ehci {
>         status = "okay";
>  };
>
> -&usb_host0_ehci {
> +&usb_host1_ohci {
>         status = "okay";
>  };
>
> -&usb_host0_ohci {
> +&usb2phy1 {
>         status = "okay";
>  };
>
> -&usb_host1_ehci {
> +&usb2phy1_host {
> +       phy-supply = <&vcc5v0_usb20_host>;
>         status = "okay";
>  };
>
> -&usb_host1_ohci {
> +&usb2phy1_otg {
> +       phy-supply = <&vcc5v0_usb20_host>;
>         status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 8ee2fab676f4..69c30992ced2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -214,7 +214,7 @@ usb_host0_ehci: usb@fd800000 {
>                 interrupts = <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>;
>                 clocks = <&cru HCLK_USB2HOST0>, <&cru HCLK_USB2HOST0_ARB>,
>                          <&cru PCLK_USB>;
> -               phys = <&u2phy1_otg>;
> +               phys = <&usb2phy1_otg>;
>                 phy-names = "usb";
>                 status = "disabled";
>         };
> @@ -225,7 +225,7 @@ usb_host0_ohci: usb@fd840000 {
>                 interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
>                 clocks = <&cru HCLK_USB2HOST0>, <&cru HCLK_USB2HOST0_ARB>,
>                          <&cru PCLK_USB>;
> -               phys = <&u2phy1_otg>;
> +               phys = <&usb2phy1_otg>;
>                 phy-names = "usb";
>                 status = "disabled";
>         };
> @@ -236,7 +236,7 @@ usb_host1_ehci: usb@fd880000 {
>                 interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
>                 clocks = <&cru HCLK_USB2HOST1>, <&cru HCLK_USB2HOST1_ARB>,
>                          <&cru PCLK_USB>;
> -               phys = <&u2phy1_host>;
> +               phys = <&usb2phy1_host>;
>                 phy-names = "usb";
>                 status = "disabled";
>         };
> @@ -247,7 +247,7 @@ usb_host1_ohci: usb@fd8c0000 {
>                 interrupts = <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
>                 clocks = <&cru HCLK_USB2HOST1>, <&cru HCLK_USB2HOST1_ARB>,
>                          <&cru PCLK_USB>;
> -               phys = <&u2phy1_host>;
> +               phys = <&usb2phy1_host>;
>                 phy-names = "usb";
>                 status = "disabled";
>         };
> @@ -1195,7 +1195,7 @@ pwm15: pwm@fe700030 {
>                 status = "disabled";
>         };
>
> -       u2phy0: usb2phy@fe8a0000 {
> +       usb2phy0: usb2phy@fe8a0000 {
>                 compatible = "rockchip,rk3568-usb2phy";
>                 reg = <0x0 0xfe8a0000 0x0 0x10000>;
>                 clocks = <&pmucru CLK_USBPHY0_REF>;
> @@ -1206,18 +1206,18 @@ u2phy0: usb2phy@fe8a0000 {
>                 #clock-cells = <0>;
>                 status = "disabled";
>
> -               u2phy0_host: host-port {
> +               usb2phy0_host: host-port {
>                         #phy-cells = <0>;
>                         status = "disabled";
>                 };
>
> -               u2phy0_otg: otg-port {
> +               usb2phy0_otg: otg-port {
>                         #phy-cells = <0>;
>                         status = "disabled";
>                 };
>         };
>
> -       u2phy1: usb2phy@fe8b0000 {
> +       usb2phy1: usb2phy@fe8b0000 {
>                 compatible = "rockchip,rk3568-usb2phy";
>                 reg = <0x0 0xfe8b0000 0x0 0x10000>;
>                 clocks = <&pmucru CLK_USBPHY1_REF>;
> @@ -1228,12 +1228,12 @@ u2phy1: usb2phy@fe8b0000 {
>                 #clock-cells = <0>;
>                 status = "disabled";
>
> -               u2phy1_host: host-port {
> +               usb2phy1_host: host-port {
>                         #phy-cells = <0>;
>                         status = "disabled";
>                 };
>
> -               u2phy1_otg: otg-port {
> +               usb2phy1_otg: otg-port {
>                         #phy-cells = <0>;
>                         status = "disabled";
>                 };
> --
> 2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
