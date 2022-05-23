Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E976C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 May 2022 09:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GCBXp5AkckdNqstu3qC9wXdQNNqOUUS9WNywdNKnnQs=; b=C2XSvTkStyySOD
	5ATMOkmP0kkjF145R2u+da+D36T4LIe6pz9PLxQHKSf7P40YuOHmdHgo0AzOzrP+5UOOk++6Z3LlF
	51OlBjzWsvXb+0CVV5IuA3EoesqLfcNxIhzVJZjKPvfOG3NvaU25vekWCnk/JSHAPhMwjdrGX0DwP
	cRBPYXFJrbjkH7PLu4ZeO0GYnfT+Y04+r50ksiXdC4W6dG0X5jGum1PkTYP/8VOVrtGp91x5Wgcm5
	rJp78g62y5mQXzv9/reuMzSvTHrLJxKMi4hvbW9SGNXO4PdOHaZXlxK72PH7gYh4qkJL07vmGUyvA
	oHjDezchF9w4rW209PSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt44e-002j16-QF; Mon, 23 May 2022 09:10:00 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt3GU-002Mr5-Tu
 for linux-rockchip@lists.infradead.org; Mon, 23 May 2022 08:18:12 +0000
Received: by mail-pj1-x1035.google.com with SMTP id
 o13-20020a17090a9f8d00b001df3fc52ea7so16808802pjp.3
 for <linux-rockchip@lists.infradead.org>; Mon, 23 May 2022 01:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Dy4PRGOoGRp4CN77V+ahn71XloGT7JKOsY/m9WJCOgs=;
 b=AzXaGiokChbNSYAcaNoEb68tNdvAPafice8elKmzBRDkx67VTOkzB0UfvczZtXkNbU
 PPtGg234U0xXDj+rxpktTyxqq2uZ3s4MrO7EDM1P3BTMbxkA+4PzI695hFFTQMF9dt1N
 eP6rOZW+CIaEHzJv/DwyL9KOVWvV7r7cY9yqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Dy4PRGOoGRp4CN77V+ahn71XloGT7JKOsY/m9WJCOgs=;
 b=cRY4HeJilF6TBCg+GiUEb9YHmg1nporjajg4Br6njERIVXpScawofEWcX/SdQd4QHD
 buVuoRLPYb9u4S9FFZFMrByvfBQo6wZErVEbwYffjtEnyv+kzywJPOy7tX6Mbac2D7sW
 4d+ccQAe8gbcv5mgzewCOMS7q7N2xjqC8xm1cIcZaztmBBVS6e7nqX5Fj24mIFvuwV/8
 k2YicJzZ+n5c+G1nhhapjFwwfPeak9qEVzJAVqdqXRJerFx74y3pqE4t070ldXgPHCuM
 wSpLLJKPo3EFnpJbfuyy7yCvSpInro1Utnwr81JPc9tPY44b8z1Uje2CDuUZ8SM7crie
 biBQ==
X-Gm-Message-State: AOAM5329Ae0cIvvjM60+LMkJEI+q/veJJWgbDwiNmbwVejJSiCm06rYR
 4xS6fvmtz8m3zzeXptvD9ozFW6U8rg7oW10smOrPDA==
X-Google-Smtp-Source: ABdhPJxHY9GMvf0RIC495y4Lpy5llzcH99rikFg9l4mAhhiFP1DtpUB+uoazLXEXCSmo0XrRCTzyP9muVQ5LoOg8CIc=
X-Received: by 2002:a17:902:b10f:b0:161:f196:b4e with SMTP id
 q15-20020a170902b10f00b00161f1960b4emr15830929plr.134.1653293858455; Mon, 23
 May 2022 01:17:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220519075117.1003520-1-tommaso.merciai@amarulasolutions.com>
 <20220519075117.1003520-3-tommaso.merciai@amarulasolutions.com>
In-Reply-To: <20220519075117.1003520-3-tommaso.merciai@amarulasolutions.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Mon, 23 May 2022 10:17:26 +0200
Message-ID: <CAOf5uwmjBgSpQEqCswDt02H4e5jahO92TaQnk-91syskM_PZ_Q@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: px30: max drive-strength for
 cif_clkout_m0
To: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Cc: linuxfancy@googlegroups.com, linux-amarula@amarulasolutions.com, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_011810_988229_EE36B9BC 
X-CRM114-Status: GOOD (  15.80  )
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

Hi

On Thu, May 19, 2022 at 9:51 AM Tommaso Merciai
<tommaso.merciai@amarulasolutions.com> wrote:
>
> Add max drive-strength for cif_clkout_m0. This fix the issue that
> sometimes camera ov5695 is not probed correctly.
> Tested on PX30_Mini_EVB_V11_20190507
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
> Tested-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30-evb.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> index 848bc39cf86a..53930e28eadf 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> @@ -537,6 +537,13 @@ wifi_enable_h: wifi-enable-h {
>                                 <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>                 };
>         };
> +
> +       cif-m0 {
> +               cif_clkout_m0: cif-clkout-m0 {
> +                       rockchip,pins =
> +                               <2 RK_PB3 1 &pcfg_pull_none_12ma>;
> +               };
> +       };
>  };

This is the same now on rockchip bsp

Reviewed-by: Michael Trimarchi <michael@amarulasolutios.com>

>
>  &pmu_io_domains {
> --
> 2.25.1
>


-- 
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
