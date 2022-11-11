Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E9ABC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Nov 2022 13:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxC8QeLpJY61J3JTbx3o/wzIk8FZpb8WEQsG3nr9qQY=; b=pltb3x2D89r6Y6
	2HrVfsURntqKG9lehb2lFA/A1Zm42FjOUcdLTXGoq9Hn9duPyjzdMTdVWQwcsEoPjuoug7QpIw28O
	0QI5iuqDfM8j7Jfi/yIp7L5SnNQOtUoARn6/ltn6nKV8M4WScP+vJjRJn2tksnJCMOBc2YqKd9lef
	6uDUixk5MrhpZ1bxMnLi2kt0KamM7fYoW5GLBddMSbqsiR6mrTuWQSyM0zYr0VZoxk1JR1EZzgOza
	YyIYwAwrsIPlWpu/JeQZnjLGICBaO1n1z0x8/NB0tVqDhaGpTdysZNjMw4za/gDBz1cKKNW1JOqIv
	q1laWmtt3UcU2y+uXyRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otTgQ-00FkLy-EN; Fri, 11 Nov 2022 13:02:58 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otTgE-00FkGL-Uo; Fri, 11 Nov 2022 13:02:48 +0000
Received: by mail-wr1-x42b.google.com with SMTP id z14so6393870wrn.7;
        Fri, 11 Nov 2022 05:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3S2DscFDKOisfe/7QhwL8EOoAAX7HJSuLBDke3HfeGI=;
        b=fhD2KG3fyrR/elnNcqdC1pKXS0NJAuHip0HJD2eKYXzSE1Hjug6LodObkiKrZB+HJp
         23IQYKiGuv5CPsn8djSbiMFXcT1SVF40QmTYbZxCeMwGVA6vIRpiHZ5xNT/o1cW5Anc0
         hSTEFLtVTyYJeXb3A5yqkQa3DSxdOg1f4ZX0MztvcamVPiPe8X8y7V/P7v4+VoVqJ5k9
         4DMkS6E52wkHxew6H32PaH1TFuFzFl+MJ9keRABz/pK4y690Rs0XA651Ngl7C5RtD8CD
         QhLuNGjAzjxf6PY/0/mGxq14CNFAo1Bp16v/2sFWby80ZtL06IiFDmUXFWD9+5znzJqp
         T7DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3S2DscFDKOisfe/7QhwL8EOoAAX7HJSuLBDke3HfeGI=;
        b=PgO/dugZRxrwFZ/3x0WRAnKqDyvVegqwbvqB5uirfXHWXDIGgoDBPPp1W+UQ3uQPPv
         trWrsjvhORh3faWjLfpNmoixZh9+UqTZNMKIBrs+2TEPkIAkb7BEJTanju3PKsMjPiVd
         OUxJy54IP4pga3vXTU1r9SDAQPLD3uZD6us75AUhZS4unOs5OWT++ocK4n49esxxngGE
         n9k7cnx4DgQIifMzEpAB/eKbv1j6v8bGWAQ9JtE3LilhmJlQPJX1LrUP6WF8jxcHvfNs
         l9bFvUdUltd+2tS+Fg94OXGBNWuiFQ1V38g/3UD/RBaOlUkuOuMlsOjVjRgLn19ovAk2
         ybDg==
X-Gm-Message-State: ANoB5pnDtcvcIwuUP9lBk+gXUcyuSj0d781qUI80szOu7BgxhDzdFTNI
	EhNhZkKhsGf/uKWi7TnCZyZVhIoKZfBwNLvVmf2iFEKBfL4=
X-Google-Smtp-Source: AA0mqf6Ew0qTtY1BpiYUfphPuFQMrP1NABbOdgxC2939enujZC2E1CwJ0kG7bAOdgjb6ijpKQ1/G7I2V/SNaLy9zX/w=
X-Received: by 2002:adf:fec8:0:b0:228:d897:228 with SMTP id
 q8-20020adffec8000000b00228d8970228mr1176189wrs.539.1668171763729; Fri, 11
 Nov 2022 05:02:43 -0800 (PST)
MIME-Version: 1.0
References: <20221111094238.1640-1-linux.amoon@gmail.com> <20221111094238.1640-3-linux.amoon@gmail.com>
In-Reply-To: <20221111094238.1640-3-linux.amoon@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 11 Nov 2022 08:02:31 -0500
Message-ID: <CAMdYzYpi_9B+riQSMk+cjRLd-b_TTi2rQUD7P5PUg_Fd5dGeMA@mail.gmail.com>
Subject: Re: [linux-next-v1 3/3] arm64: dts: rockchip: Fix ethernet reset node
 Rock 3A sbc
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Michael Riesch <michael.riesch@wolfvision.net>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_050247_011755_E37B992D 
X-CRM114-Status: GOOD (  18.10  )
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

On Fri, Nov 11, 2022 at 4:44 AM Anand Moon <linux.amoon@gmail.com> wrote:
>
> Add support for snps,reset-gpio reset ethernet gpio pins and
> drop the mdio reset code.

Nack, the snps,reset-gpio is depreciated in favor of the mdio-reset
code. See [0].

>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3568-rock-3a.dts      | 19 ++++++++-----------
>  1 file changed, 8 insertions(+), 11 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 16fff1ada195..9172cf60b867 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -258,6 +258,11 @@ &gmac1 {
>         assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
>         assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
>         clock_in_out = "input";
> +       snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
> +       snps,reset-active-low;
> +       /* Reset time is 20ms, 100ms for rtl8211f */
> +       snps,reset-delays-us = <0 20000 100000>;
> +       phy-supply = <&vcc_3v3>;

The phy supply shouldn't be part of this patch.

>         phy-handle = <&rgmii_phy1>;
>         phy-mode = "rgmii";
>         pinctrl-names = "default";
> @@ -267,6 +272,9 @@ &gmac1m1_rx_bus2
>                      &gmac1m1_rgmii_clk
>                      &gmac1m1_clkinout
>                      &gmac1m1_rgmii_bus>;
> +
> +       tx_delay = <0x4f>;
> +       rx_delay = <0x26>;

Delays should move to your rgmii patch. Have you tested these to
ensure they are in the middle of the functional range for this board?

>         status = "okay";
>  };
>
> @@ -583,11 +591,6 @@ &mdio1 {
>         rgmii_phy1: ethernet-phy@0 {
>                 compatible = "ethernet-phy-ieee802.3-c22";
>                 reg = <0x0>;
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&eth_phy_rst>;
> -               reset-assert-us = <20000>;
> -               reset-deassert-us = <100000>;
> -               reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
>         };
>  };
>
> @@ -625,12 +628,6 @@ vcc_mipi_en: vcc_mipi_en {
>                 };
>         };
>
> -       ethernet {
> -               eth_phy_rst: eth_phy_rst {
> -                       rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
> -               };
> -       };
> -
>         hym8563 {
>                 hym8563_int: hym8563-int {
>                         rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
> --
> 2.38.1
>
[0] https://elixir.bootlin.com/linux/v6.1-rc4/source/Documentation/devicetree/bindings/net/snps,dwmac.yaml#L222
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
