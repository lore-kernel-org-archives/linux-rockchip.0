Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6089C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 20:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJnIqvrHqZBg/aMkqDrtU8+5fiMCUft47qXKQohsG3U=; b=kuowZST8u7bCcs
	ZcVnAmqwHMktzFfzT5WpgbG1/jxwCT4DcJNjVjYZ+BEiMJvvCmwLosrymqAbRN2s7pA7jqmuc3BO3
	0XtNOTSOK56HS6dR8hOKkcgTNUUbs3IggFmlJxL6oJgckD+5itmUt93OEuBvo+NLfhd88Q4Zzpk96
	MUj0GNDjmfl3obXCuQUFsYNVYOU1k17hI4poEGvPNqnPGNu1aaFIzJfyUS7/CVhx82E4n+yh/NIxY
	OjCXwIXZv1N1CT2BbOKrlVPhDRPDbPUGMHGGj/seWPDRQNYonTcZ9HAe6GwHEVuUlLEj3bbmlZIwm
	5i4Cvq9BZqJ3Zfinmp6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovPIx-007rxX-8R; Wed, 16 Nov 2022 20:46:43 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovPIg-007rsr-D9; Wed, 16 Nov 2022 20:46:27 +0000
Received: by mail-wr1-x430.google.com with SMTP id h9so32013000wrt.0;
        Wed, 16 Nov 2022 12:46:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3OB7wrdvxiJFRvhmiue8jC5Fpuj0dFMnx5brAbEwXVA=;
        b=pUKnaYduYgV1XUs2jZu2mdRajyGhoNshkA/qoMX6esDtu5Kqtpy768+SqB+HO0jnqj
         L+m6wiKPXyyNfvVQSBgj1W8pAHury2R+0ytWYBC3WD0FLAyTbpcnd3biN7qULdrEpkd+
         NE9mzT8sSo1tmoyo3p8eO7qwBobD3rJ2PQpkV9qbHQm1rW/eOhy92hhrjlNipEpAld/C
         IvQ5PSHX7kC1tDc7w81UJEmSmv7Zq5pS95eGZEXx/U4S63fWvB7698yg2Is/1xxCPNb0
         u3XlN6gC/bAKZr5pE/WZAGeTIzlfcZA/JYZZ4rjkFzWkKKwh47zlIZd5NFLLsVcb6xcP
         NIUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3OB7wrdvxiJFRvhmiue8jC5Fpuj0dFMnx5brAbEwXVA=;
        b=xtyRqLANxJGyXTnFgdw2XlLhhAAVQXTGs2JPt8kqW9JdA0l8o93RK7nPq4TOEAaxhL
         nwMQlSBcEmf5hcZhcMJu7OpCj3ep937U+I9Rgvp4Z4lQ7mB1ioRA05YIPcH87ziv8hSH
         idKpqssZtTbg1zNnSqHIJdfXyaLIRS3n35Xlblo1Or0YsS498S9p1/2zuZ1m0ssjWAuw
         a3XNBzH3I4NUNexW9RZ7vOCzJeSZ1ceOvY0xtVYFh1anvP/jiIF6gtRmUFe5Sb3tPwUw
         uJFJRhBG4Y7RjiRXnI+d01NHfMWKd8DJGkfkS3gcvdnKrQzC3Z7iWXQ2eT1LZgs61a5a
         t6TA==
X-Gm-Message-State: ANoB5pndx8TWFFJQ7PbiOG//F/Qi0LjHUeNvXbLks8jwFjhuLGGw8AgJ
	h2t/H/yNNpl79oh+3yf3Esc5DrP62yrwPE8qJ1E=
X-Google-Smtp-Source: AA0mqf5V8tXQyCU5dBQqIqiDBcoHdqGQFIeI614+qSzsagnrGq2cT8NBNg6JJ8/wb6ovyMf0bPbapdaxs+ObqZxrr+Q=
X-Received: by 2002:a5d:490a:0:b0:234:ee55:a8a8 with SMTP id
 x10-20020a5d490a000000b00234ee55a8a8mr14595128wrq.689.1668631584012; Wed, 16
 Nov 2022 12:46:24 -0800 (PST)
MIME-Version: 1.0
References: <20221116200150.4657-1-linux.amoon@gmail.com> <20221116200150.4657-7-linux.amoon@gmail.com>
In-Reply-To: <20221116200150.4657-7-linux.amoon@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 16 Nov 2022 15:46:11 -0500
Message-ID: <CAMdYzYo_DGiO0UxJEb3xues7Um=X9AgPvz+Xp_YWb9pp9HaScg@mail.gmail.com>
Subject: Re: [linux-next-v2 5/5] arm64: dts: rockchip: Add missing of
 ethernet-phy-id to reset the phy on Rock 3A SBC
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Michael Riesch <michael.riesch@wolfvision.net>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_124626_486766_EBF13D7F 
X-CRM114-Status: GOOD (  21.03  )
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

On Wed, Nov 16, 2022 at 3:02 PM Anand Moon <linux.amoon@gmail.com> wrote:
>
> Add MDIO description with ethernet-phy-id compatible string
> which enable calling reset of the phy. The PHY will then be probed,
> independent of if it can be found on the bus or not,
> and that probing will enable the GPIO.
>
> ethernet-phy-id is read from ethenet register dump reg2 and reg3.
>
> Fix following warning.
> [   12.323417] rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
> [   12.324078] rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
> [   12.324099] rk_gmac-dwmac fe010000.ethernet eth0: __stmmac_open: Cannot attach to PHY (error: -19)
>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> V2: new to the patch series.
>
> alarm@rock-3a:~$ sudo ethtool -d eth0
> [sudo] password for alarm:
> ST GMAC Registers
> GMAC Registers
> Reg0  0x08072203
> Reg1  0x00000000
> Reg2  0x00000404
> Reg3  0x00000000
> Reg4  0x00000002
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 9f84a23a8789..fe36156a5017 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -585,7 +585,7 @@ &i2s2_2ch {
>
>  &mdio1 {
>         rgmii_phy1: ethernet-phy@0 {
> -               compatible = "ethernet-phy-ieee802.3-c22";
> +               compatible = "ethernet-phy-id0000.0404", "ethernet-phy-ieee802.3-c22";
>                 reg = <0x0>;
>                 pinctrl-names = "default";
>                 pinctrl-0 = <&eth_phy_rst>, <&eth_phy_int>;

Have you tried instead moving the reset to the mdio bus? I've had
success with this, though you'll need to change the reset assert and
deassert timing handles, they are different for the bus.

> --
> 2.38.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
