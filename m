Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1BA3C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 May 2022 21:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDvqo0Bf8uTWFymDN/RQCpOXZa76QhdbsxGwa9tjYy4=; b=YTU5MM6QsY+Ko9
	pRJw+KtbzShaPgrfiXZ7U3CCz423a6ijpaai8oMZGU//RCf/mn0g+ZkW2hPNU6riH9BgWFAy9o5/f
	iC3Yw17Znd8SflOtantp9ABn0Q6OIQi83ar3d2XQGpK+lzwapcLL+dQJZFsykMhD9g5Fe19UfJoc5
	wHNftU8k5ZIGNx4mOABxogduele3e4svbra3oeO5i7vFMdSGfBoHWUDSiz37Vyk6E1tRdteq7+0hY
	s8xlMYzH5ThSy+njfKAPaRVxVA4Rd0oSpOL1pRnnTxR6zB4lmdj7z2E0W/snmi3oC3PjL9FyXC6rG
	pYxe6Y1j6plL/G6v9YEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrnw2-009TKt-8I; Thu, 19 May 2022 21:43:54 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrnvz-009TKP-4G
 for linux-rockchip@lists.infradead.org; Thu, 19 May 2022 21:43:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E679AB8289E
 for <linux-rockchip@lists.infradead.org>; Thu, 19 May 2022 21:43:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7913C385AA
 for <linux-rockchip@lists.infradead.org>; Thu, 19 May 2022 21:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652996627;
 bh=5aMdAvTCHVLlyDNppzS55+XVjRG2HfXHSwjwsdpbSDI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BMt93s2vM6p1ZI2XQ3Q86EEKTlBzjLxQUlSqkcYfmBCuijxIW8eKhLsfShbku5Bni
 zw3xcNBXu42bakrmqkgx7Sx+HK5LomkerwtRcOxJeW1buvwdgeRM3TLSNrtSA4hH4B
 V4Jy0L99TanxomZmIYpNPRTY6mLx9bYu+528EZYuUCawqZyRFdPuXmWVos1Cky8MWH
 TCDCb1g3fGDCRq1Xl91+jgBd6hgumhWAS43BzNHksnwPasQJ3Q4toKemfk9DIMKf69
 soVGYAnTKx2/uY/p7F/d3wPqEPE9QHq8nQ5SR6QoHZeEatCuVanGM+i+jdrfX1eM/o
 1FaPIttreRubQ==
Received: by mail-ej1-f44.google.com with SMTP id i27so12298192ejd.9
 for <linux-rockchip@lists.infradead.org>; Thu, 19 May 2022 14:43:47 -0700 (PDT)
X-Gm-Message-State: AOAM530YSOyG/v+5y3uCG0ok57gZleq29RdXXvsZDKHzKh+o+VltnHT1
 IRtjZqSvzW5FfeoPPaqxXGph8HbYZ2b25Rcr0A==
X-Google-Smtp-Source: ABdhPJy/FmQBVx6CrhZAtN/k6CFbQ9CkVxk9EXYwaAWWsAYZzAOadTHWIasmQ9mr78AgZlMNI2cC8j+VFKqwl5z/bJ8=
X-Received: by 2002:a17:907:9602:b0:6df:e82c:f84 with SMTP id
 gb2-20020a170907960200b006dfe82c0f84mr6180859ejc.590.1652996625948; Thu, 19
 May 2022 14:43:45 -0700 (PDT)
MIME-Version: 1.0
References: <20220519164533.1961-1-macroalpha82@gmail.com>
 <20220519164533.1961-2-macroalpha82@gmail.com>
In-Reply-To: <20220519164533.1961-2-macroalpha82@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 19 May 2022 16:43:33 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLOknvm2E8hU9Hd_5S0ZCnPxzbgq4BQL4m6UqC9+tC1tw@mail.gmail.com>
Message-ID: <CAL_JsqLOknvm2E8hU9Hd_5S0ZCnPxzbgq4BQL4m6UqC9+tC1tw@mail.gmail.com>
Subject: Re: [PATCH 1/4 v7] dt-bindings: Add Rockchip rk817 battery charger
 support
To: Chris Morgan <macroalpha82@gmail.com>
Cc: "open list:THERMAL" <linux-pm@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Lee Jones <lee.jones@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "heiko@sntech.de" <heiko@sntech.de>, 
 Sebastian Reichel <sre@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
 Chris Zhong <zyw@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
 Chris Morgan <macromorgan@hotmail.com>,
 Maya Matuszczyk <maccraft123mc@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_144351_361303_3C34F8AF 
X-CRM114-Status: GOOD (  14.54  )
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

On Thu, May 19, 2022 at 11:45 AM Chris Morgan <macroalpha82@gmail.com> wrote:
>
> From: Chris Morgan <macromorgan@hotmail.com>
>
> Create dt-binding documentation to document rk817 battery and charger
> usage. New device-tree properties have been added.
>
> - rockchip,resistor-sense-micro-ohms: The value in microohms of the
>                                       sample resistor.
> - rockchip,sleep-enter-current-microamp: The value in microamps of the
>                                          sleep enter current.
> - rockchip,sleep-filter-current: The value in microamps of the sleep
>                                  filter current.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>
> Note that this patch requires the following commit (still pending):
> https://lore.kernel.org/linux-rockchip/20220519161731.1168-1-macroalpha82@gmail.com/
>
>  .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)

Please resend to the DT list so that automated checks run.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
