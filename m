Return-Path: <SRS0=ahIP=CO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65CCEC43461
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2020 21:54:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7AF0220760
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2020 21:54:48 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Se9Gy1vf"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7AF0220760
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e13UDChpRcup7JCWoF7WUp7Hdi5qwkHTf/FC0okiTEQ=; b=Se9Gy1vfPEjnPCaVDksqB0MMI
	cSMZPJXr+UBHf+CXchVDm2PcdWyx8n80Knc7R09dcVA+2ifqRqgyNP4rNtndD9vda7MSYCYx1qqkH
	ODbB2iJPqdf5giEhuArlHUc8LhiAMKUia/miq5qv7f1V3OK//4iFYIQv8ygnRlpeioh7Nc1tXD8Uy
	RVHX7XvTzo9om6QrL1NBpYH1MHWlp2NLRnBb0ksqUakoAtu7SKFuTqQ3k0ZIN2n2sDRr0z/D7gccJ
	/XTSaMtiJ6u518I9xJ3AZCCB3MGOY9XX9z4DzvR/+E18tnzop4rDZ29XySMO+VDiu99bbWqY4L+ci
	fZwcpaY5A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEg8x-00062J-5N; Sat, 05 Sep 2020 21:54:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEg8v-00061Y-1J
 for linux-rockchip@lists.infradead.org; Sat, 05 Sep 2020 21:54:41 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kEg8t-0005am-Mf; Sat, 05 Sep 2020 23:54:39 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH 2/6] pinctrl: rockchip: enable gpio pclk for
 rockchip_gpio_to_irq
Date: Sat, 05 Sep 2020 23:54:39 +0200
Message-ID: <5350783.eb3pjRP6yQ@diego>
In-Reply-To: <20200831084753.7115-3-jay.xu@rock-chips.com>
References: <20200831084753.7115-1-jay.xu@rock-chips.com>
 <20200831084753.7115-3-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200905_175441_098838_4BAE419B 
X-CRM114-Status: GOOD (  13.66  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 31. August 2020, 10:47:49 CEST schrieb Jianqun Xu:
> There need to enable pclk_gpio when do irq_create_mapping, since it will
> do access to gpio controller.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 24dfc814dee1..54abda7b7be8 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -3155,7 +3155,9 @@ static int rockchip_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
>  	if (!bank->domain)
>  		return -ENXIO;
>  
> +	clk_enable(bank->clk);
>  	virq = irq_create_mapping(bank->domain, offset);
> +	clk_disable(bank->clk);
>  
>  	return (virq) ? : -ENXIO;
>  }
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
