Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D620EECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 11:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZtOuheDx2tWyACUpKDitypx91q2ZWK/lTcaGKxL4s0=; b=A5Gjx85cUFO+Ux
	mlR/cxkHEadk4gWh57/wpVrAnZcIcJ9VFtUELu000fKshZRR24JFWWTSNeeGqTlfO447FJrvFShl8
	6RyPdmF7dRebrBbEOKxX/UGK1smDzdpf2W3lTNtWtYasgsFnQNtNLUAAuMp3rwcyabud8A4QIMjoJ
	7vpJ8urAriBqmlagbYsWOayA65aSErkYsMIybS/nF/EjC8H5JGkmV6c3gJRjBT497klqnsvjQFCMA
	feRZAECpiAhJY3GCmlIYnPXHvjUbD/qD9d4MH7jicTaL0xW2D6jkSDxzqEW39nbonQATcsFoUzC0d
	+cnctojReyOXFJTB3Zog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTigj-00BQan-84; Thu, 01 Sep 2022 11:48:49 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTigg-00BQa1-ES
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 11:48:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 78979B825B0
	for <linux-rockchip@lists.infradead.org>; Thu,  1 Sep 2022 11:48:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35469C4347C
	for <linux-rockchip@lists.infradead.org>; Thu,  1 Sep 2022 11:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662032921;
	bh=H40Hcw3YDT3fZZMhWj6pRboTmPnykZhkK4GHgnnzzqY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=EAXpEQmd7VaMRjFdn8U/7hzBrXMMwJlKgB2V0cQTQrMoTaVR0ds0I/QEndIwN6MEs
	 /kMuku/bajLYJ8UHnTsXGqy2/rY70cur8JKJVxuGpy4vC8iZyUTm5zYmAt99JUx0JY
	 JaMc3E01xm28wFpt01uIEOV9LYn/uNooLy7Q1/M3gSWlrqcDM9/eI5XZjgLAqTM773
	 EYJdLAGDXEApRB3SMmyviWaHZm3RWWOtwJlbtEi8Fe+NNqNbowBjqPPOUDbaHgRHHD
	 euWCJW7Z5MpQTVRq2MDwFRXgf2A8y8p00SO04MoS8yqq8s+hBbAPMlpw5UBmKzoCqo
	 iYMRISi8KYA8g==
Received: by mail-ua1-f49.google.com with SMTP id e3so6528570uax.4
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 04:48:41 -0700 (PDT)
X-Gm-Message-State: ACgBeo3r/CT0zXLU3j3cA9CTDVMHNcHTYb/Z86V2CJp37ecmwBK+cayn
	anUc4FphsrdxpHR+FdKKmTiE4I41Zq4BIkvlMA==
X-Google-Smtp-Source: AA6agR646OvzP8c+uue3VJKjAFana4OhGGo9Cf75fRYLJ4CDBSm1sB999ps//oRyOqNdcqbWZVi6T6zf6sWKD8SO8Kg=
X-Received: by 2002:ab0:70c8:0:b0:39f:7528:6289 with SMTP id
 r8-20020ab070c8000000b0039f75286289mr8072133ual.36.1662032920121; Thu, 01 Sep
 2022 04:48:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220901012944.2634398-1-jay.xu@rock-chips.com> <20220901012944.2634398-2-jay.xu@rock-chips.com>
In-Reply-To: <20220901012944.2634398-2-jay.xu@rock-chips.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 1 Sep 2022 06:48:27 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ+i873aVYwNuiDeXsyOgzE_E7XG1QMCEeuMHKdoZjwTQ@mail.gmail.com>
Message-ID: <CAL_JsqJ+i873aVYwNuiDeXsyOgzE_E7XG1QMCEeuMHKdoZjwTQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpio: rockchip: add clock-names
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, "heiko@sntech.de" <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_044846_665160_9B905A49 
X-CRM114-Status: GOOD (  14.54  )
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

On Wed, Aug 31, 2022 at 8:36 PM Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> Add 'clock-names' to the gpio dt node. so the driver could get clocks by
> a const char id, this patch names the clock-names as
>   - 'bus': the apb clock for cpu to access the gpio controller
>   - 'db': the debounce clock for cpu to set debounce clock rate
>
> Since the old dt nodes may have no clock-names, this patch not make them
> as part of 'required properties'.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  .../devicetree/bindings/gpio/rockchip,gpio-bank.yaml        | 6 ++++++
>  1 file changed, 6 insertions(+)

Please resend DT patches to the DT list, so they are tested and reviewed.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
