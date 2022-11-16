Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82E46C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 20:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v82keCmPrKCtx5TOP5gvDH/TfkDtrFjeqYaGn9C5kcY=; b=LwL1mWfMU3fYd1
	Mp+tL7SrM6Siph+OAHSARqJu8MZB2yYWfDY40JrbYIZ1abIbc5Lyl1rf8wT7vi0AhkpiglOp3hFhO
	IQmJwTjrla6KxNiOZyIuh2rUSlZD1uVC9HpoafT6z0oONFqfC0vz3ojoIflEllgANLLh8o1/66Fme
	bP3RKPAxEtPZBceZUR72z/E16ToYFJspnaJsoB/mL3Iq2RSxipWMwzNAgiHtKrQ1A+uIjyVf3dhmo
	4nxuPlyf7qvkMgX3yB8ygO/stHU7SfXBgj0YIS76709OXQVhx/+M9AMofZ+HwyAdJ41htAOt+KPo9
	O46Pviw5BuzGkP4vgK1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovP9T-007kjl-JY; Wed, 16 Nov 2022 20:36:55 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovP9F-007kHq-48; Wed, 16 Nov 2022 20:36:42 +0000
Received: by mail-wr1-x433.google.com with SMTP id bs21so31930711wrb.4;
        Wed, 16 Nov 2022 12:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0IcH5gFiwo2T5jEqATk0ifRG4QlIgMjRCMEKXYZaC28=;
        b=K30djvpRBS+52IixL7ukZ+0jdbjNIQmzHPRzhFd/anfccasAqrR++8AAu1D2Rvo91N
         gUsrV56AcZQ77FR7TOGtE8tv7pstD4I8jBjpFi6104beoj8rZ9t1x1MKGKV/cARyUxdy
         1b2iOkowkFU20taFzrFt4U0K2KgMceRSfCzSUFlvHY0m765sBa5HXw8vaazf90bnDqgp
         sInfNWcrOu9xV6306OpEx1xwn6pWa7mOff/SE+9hsNP430Zm/fzSspy8RwygAZ5qPXSt
         kdhj9mVLX8Pe0Hz6id9j4Gb63BP2CDOu8Lk71wKQIkVWzwfgAzQ5quGeYx+EHEuwmY6T
         f62g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0IcH5gFiwo2T5jEqATk0ifRG4QlIgMjRCMEKXYZaC28=;
        b=pv0DERdkxzFe51TuIzw8LHQ8qaD1byUZ6qDenQzgGcO1CzWeXLa4jmCxKug3OKtfFe
         EW+DuW1uH8Ki7q64EHuoHiaFdz21DcwXiujhnQ5EgDgLYvdA4tuDHZMfKh8KBs7vm+Zx
         WTGEctx63WuR6UX/lYjPEZzDzxREwq7B+LTPGmt9D9zTIgdxJcX5gq/t7nyWvn8w1wAm
         xJtmE2lHm09ZLkAmqBdc71j850DoJopE57DxfymYOMFoyfopGzRvbuFbLKqEGyyUe4Lj
         wI4CU3nShysJ4qAPmPjlJf8077BgR+7NH5hZsU20bOzYDFPRLhamRT85hnFLzAPhruhS
         oNFw==
X-Gm-Message-State: ANoB5pkI0cZHm/PEvC+pILr3LThLGXSGI2aIZssQNZurLM7IWxp/h/Z1
	A4lim82/EyyQpiHafAr3H+pEsTeeI4cAqd1uhog=
X-Google-Smtp-Source: AA0mqf5/qvPoxAdwcYY6fUPkyWyWz+qeGrX/B7SAMbTEW+Ju9vU/fYPg1UsuNtRk2tQOOmsjgygqX9sl0CbgiY33+JM=
X-Received: by 2002:adf:fec8:0:b0:228:d897:228 with SMTP id
 q8-20020adffec8000000b00228d8970228mr14745392wrs.539.1668630996952; Wed, 16
 Nov 2022 12:36:36 -0800 (PST)
MIME-Version: 1.0
References: <20221116200150.4657-1-linux.amoon@gmail.com> <20221116200150.4657-2-linux.amoon@gmail.com>
In-Reply-To: <20221116200150.4657-2-linux.amoon@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 16 Nov 2022 15:36:24 -0500
Message-ID: <CAMdYzYrgtzeP2OL2Vw0pDHQuJDhRbUy3X4xq9+XchgTGB9dqpg@mail.gmail.com>
Subject: Re: [linux-next-v2 1/5] arm64: dts: rockchip: Fix gmac phy mode to
 rgmii on Rock 3A SBC.
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Michael Riesch <michael.riesch@wolfvision.net>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_123641_231335_E2648926 
X-CRM114-Status: GOOD (  19.54  )
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
> On rk356x ethernet phy support reduced media independent interface (RMII)
> and reduced gigabit media independent interface (RGMII).
> So set the phy mode to rgmii to support clock delay, also
> add TX and RX delay for phy-mode.

Controller based clock delay, the various rgmii-id modes (rgmii-txid
and rgmii-rxid are also valid) apply the delays in the phy. They are
usually at a fixed amount, but some phys support variable delays.

You want your commit message to accurately describe the problem, such
as "In rgmii-id mode, the phy on the rock-3a is unreliable due to
incorrect delays. Switch to rgmii mode in order to handle the delays
in the controller."

>
> Fix following warning
>
> [    7.365215] rk_gmac-dwmac fe010000.ethernet: Can not read property: tx_delay.
> [    7.365219] rk_gmac-dwmac fe010000.ethernet: set tx_delay to 0x30
> [    7.365224] rk_gmac-dwmac fe010000.ethernet: Can not read property: rx_delay.
> [    7.365228] rk_gmac-dwmac fe010000.ethernet: set rx_delay to 0x10

I've been meaning to make this a dev_debug message, because in the
various rgmii-id modes it is feasible for these to be non-existent in
the device-tree. In rgmii-id mode these are disabled, no matter what
they are set to in the dt.

>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> V2: Fix commit message and added the RX and TX clock delay.
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index ea74ba32fbbd..e1c75532dcee 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -253,13 +253,16 @@ &gmac1 {
>         assigned-clock-rates = <0>, <125000000>;
>         clock_in_out = "output";
>         phy-handle = <&rgmii_phy1>;
> -       phy-mode = "rgmii-id";
> +       phy-mode = "rgmii";
>         pinctrl-names = "default";
>         pinctrl-0 = <&gmac1m1_miim
>                      &gmac1m1_tx_bus2
>                      &gmac1m1_rx_bus2
>                      &gmac1m1_rgmii_clk
>                      &gmac1m1_rgmii_bus>;
> +
> +       tx_delay = <0x4f>;
> +       rx_delay = <0x26>;

These are pretty far off from the default, have you verified the upper
and lower bounds for the rock-3a? These should be roughly in the
middle of that range.

>         status = "okay";
>  };
>
> --
> 2.38.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
