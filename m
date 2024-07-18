Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1134C3DA60
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 07:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+9gpfMrhxNQTDq2oFW4bzTgX6X1ON9y53B1lAaoi2Y=; b=xV6ptejLDvhHCz
	tO6UHVDdN97YBRr5ejSlcsAFhRNTVWJqKm6slnuZUdLqELRAfjVJfHXzGVu+ZVvsQpNwC/AuZeF0+
	sDBkavsuZc66L5aCHR4qgAw5NxyKtK62mKet+XLGjyWjhN9K+8HsLY1xlkyCqR3x6k5cFYol5Mif7
	NgkgxwBIdmu/47ZBmq/K0pnEvgPt0+OYytKvHuM7AONLBExS8SoM777UkZcJYK//Q4FrATkakbBgS
	ezWVrWFyNEfZg58HlQ6/zL1fdWZZVKZHC46qqF7fZgl5ABhuWa1qP6BOfP8a33NEqvcbV/vOcBI1B
	h20E5nMcMrt6Ge6tNypQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sULXv-0000000GBAq-3V0c;
	Thu, 18 Jul 2024 07:27:23 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sULXZ-0000000GB6g-3EV3;
	Thu, 18 Jul 2024 07:27:03 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-5c44ec4f2dbso224272eaf.2;
        Thu, 18 Jul 2024 00:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721287620; x=1721892420; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WSvSUpNQZRp2YKhgVtO8QG42U2eOtSDdmhMTp/cDq/E=;
        b=jIfULOgaQRNMeUCG96rmwyt/T/I8HEK771+5vo+a3hKoAMdckWQ5hzi3iuGVbLxygn
         eI6uD9yBdWhQI3an8RLl/Mt97ibm99f9dtaF+sw6w3xZpG0roajOtyVXD8eazDECdolC
         wIb4d96YDdkuOz1s6dhlhIkYcYenbtV49/wHX01YusOzaRtkC871+uNRhWAQe0Iuz3eb
         +4jooE4hXN+9kLJJFlv6v5N46Pp0glPNUrXhpPHJ/26WZhRi/GlM55/pykaXJt5jLEjK
         rhGEM9hNDngxYU7wbWQHgCJgQnB7j9gjgHr1ndff21GAri4D3L12dvm2GVY16bM49bxv
         MSpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721287620; x=1721892420;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WSvSUpNQZRp2YKhgVtO8QG42U2eOtSDdmhMTp/cDq/E=;
        b=Qc/68QXXXSnTpwAX8Sr0Jk5eOX8/bSekzTUlg9OHWnvESmjIFYwtfvV6G4BvtTQVJt
         PMfyKtarL4g/lffHXVkyQ/d3ESV1Lti6hfUGuWLkNi5nuL0dStTRKroTVvUYZ8C8AOog
         kIHg6D5kDYL2tzGLRfvgMtUcngvhdsye5XoRgkJr0LK/g8mCwHFKaZSN9bb13mhZcKPl
         rmdnt6YJ4xJmDkXCH9a+yCSoXThtKJgr6/OdrLdG6KEfpnPrJPEkDfVBnWuJCppCV+um
         durhcQegFtEvrIeo+aAos/MwMdAQSWlZLU1FGToZhuMcWQuU8atSP9sAtnAzyUA8KNKK
         725w==
X-Forwarded-Encrypted: i=1; AJvYcCXmKRjRd0yXtn7xSjmS0xrXf0tfRN0R9xJwldHY3FqaSn9cR5y4rFOsLnW7ZxRQgvCmsvdX5JVIjMRG0GA7MuzlmWIUJAPED6gQF0XraVXAWcVfpLzr+hS0zd5zjs9t/ncgYHOz86JQgkP9ZndLf8aw1tdba/TO9HY=
X-Gm-Message-State: AOJu0YzKHDWurq72ai/a/nDcZK6GAv5nzh8MPZsJyOzDd6Qwuw60Cw3Z
	poAQ5D6onf29+AMcozQp1BXdQ6COrtGV9oIi95QM26e+4OLTY+c/14BBQXUOTSQl6zAdjKMxNjK
	p3nbuvxWRr/7/mZxkLbsQkb3MQLch4O1y
X-Google-Smtp-Source: AGHT+IHAWI3Xg3mDtfREDUCxHyoF4gTS2b1DQd8tHuhgBypbHELjTsim3tbP/m0LxVCn39FYamneM1MkEQiw2eIcPmQ=
X-Received: by 2002:a05:6820:2017:b0:5c6:4807:2d1f with SMTP id
 006d021491bc7-5d41d3b833dmr5554884eaf.8.1721287620137; Thu, 18 Jul 2024
 00:27:00 -0700 (PDT)
MIME-Version: 1.0
References: <20240715110251.261844-1-heiko@sntech.de> <20240715110251.261844-4-heiko@sntech.de>
In-Reply-To: <20240715110251.261844-4-heiko@sntech.de>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 18 Jul 2024 12:56:43 +0530
Message-ID: <CANAwSgS_ZaEkt5-kKud9OwdN4za+xvW5SoBr34EmOdU2OQJWnw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: fix the pcie refclock
 oscillator on Rock 5 ITX
To: Heiko Stuebner <heiko@sntech.de>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_002701_836965_A8027CAA 
X-CRM114-Status: GOOD (  27.23  )
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

Hi Heiko,

On Mon, 15 Jul 2024 at 16:35, Heiko Stuebner <heiko@sntech.de> wrote:
>
> The Rock 5 ITX uses two PCIe controllers to drive both a M.2 slot and its
> SATA controller with 2 lanes each. The supply for the refclk oscillator is
> the same that supplies the M.2 slot, but the SATA controller port is
> supplied by a different rail.
>
> This leads to the effect that if the PCIe30x4 controller for the M.2
> probes first, everything works normally. But if the PCIe30x2 controller
> that is connected to the SATA controller probes first, it will hang on
> the first DBI read as nothing will have enabled the refclock before.
>

I just checked the rk3588-rock-5-itx.dts in the linux-next.
You have not enabled sata0 and sata2, which might be the problem
for the SATA controller not getting initialized.

Thanks
-Anand

> Fix this by describing the clock generator with its supplies so that
> both controllers can reference it as needed.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../boot/dts/rockchip/rk3588-rock-5-itx.dts   | 38 ++++++++++++++++++-
>  1 file changed, 36 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> index d0b922b8d67e8..37bc53f2796fc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> @@ -72,6 +72,15 @@ hdd-led2 {
>                 };
>         };
>
> +       /* Unnamed voltage oscillator: 100MHz,3.3V,3225 */
> +       pcie30_port0_refclk: pcie30_port1_refclk: pcie-voltage-oscillator {
> +               compatible = "voltage-oscillator";
> +               #clock-cells = <0>;
> +               clock-frequency = <100000000>;
> +               clock-output-names = "pcie30_refclk";
> +               vdd-supply = <&vcc3v3_pi6c_05>;
> +       };
> +
>         fan0: pwm-fan {
>                 compatible = "pwm-fan";
>                 #cooling-cells = <2>;
> @@ -146,13 +155,14 @@ vcc3v3_lan: vcc3v3_lan_phy2: regulator-vcc3v3-lan {
>                 vin-supply = <&vcc_3v3_s3>;
>         };
>
> -       vcc3v3_mkey: regulator-vcc3v3-mkey {
> +       /* The PCIE30x4_PWREN_H controls two regulators */
> +       vcc3v3_mkey: vcc3v3_pi6c_05: regulator-vcc3v3-pi6c-05 {
>                 compatible = "regulator-fixed";
>                 enable-active-high;
>                 gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
>                 pinctrl-names = "default";
>                 pinctrl-0 = <&pcie30x4_pwren_h>;
> -               regulator-name = "vcc3v3_mkey";
> +               regulator-name = "vcc3v3_pi6c_05";
>                 regulator-min-microvolt = <3300000>;
>                 regulator-max-microvolt = <3300000>;
>                 startup-delay-us = <5000>;
> @@ -513,6 +523,18 @@ &pcie30phy {
>
>  /* ASMedia ASM1164 Sata controller */
>  &pcie3x2 {
> +       /*
> +        * The board has a "pcie_refclk" oscillator that needs enabling,
> +        * so add it to the list of clocks.
> +        */
> +       clocks = <&cru ACLK_PCIE_2L_MSTR>, <&cru ACLK_PCIE_2L_SLV>,
> +                <&cru ACLK_PCIE_2L_DBI>, <&cru PCLK_PCIE_2L>,
> +                <&cru CLK_PCIE_AUX1>, <&cru CLK_PCIE2L_PIPE>,
> +                <&pcie30_port1_refclk>;
> +       clock-names = "aclk_mst", "aclk_slv",
> +                     "aclk_dbi", "pclk",
> +                     "aux", "pipe",
> +                     "ref";
>         pinctrl-names = "default";
>         pinctrl-0 = <&pcie30x2_perstn_m1_l>;
>         reset-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
> @@ -522,6 +544,18 @@ &pcie3x2 {
>
>  /* M.2 M.key */
>  &pcie3x4 {
> +       /*
> +        * The board has a "pcie_refclk" oscillator that needs enabling,
> +        * so add it to the list of clocks.
> +        */
> +       clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
> +                <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
> +                <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>,
> +                <&pcie30_port0_refclk>;
> +       clock-names = "aclk_mst", "aclk_slv",
> +                     "aclk_dbi", "pclk",
> +                     "aux", "pipe",
> +                     "ref";
>         num-lanes = <2>;
>         pinctrl-names = "default";
>         pinctrl-0 = <&pcie30x4_perstn_m1_l>;
> --
> 2.39.2
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
