Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5912DC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 18:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jx0jaJvsiC4rVTxIxf6+11sQhiajKYde9jZRwqSVRiM=; b=hTnMUlYW0Jjma0
	5XVh5Jde3eDjgna95x/OePTpyw5zwld4Ea4CPw03y5fH6wqiEGw/LAIHlOBuJ/l7rNIKQwBaL08hh
	jm5DiggOITddnxk8SQI9klRuXkks2JguTm/PfJ0KXl2g+QT6fysopEKfBN0Vb5w+h+eltVaBlFOoK
	gJoCJkESFHK7paXmBomLagPc0uPmenB/b4JIM1pha7ZE9xcRSV4O/7vf0jddO2dGrTgCM36RAc2TR
	IPpeopavpfUOcUXLO/j7vcZ+9OP3O8/8PCX2CKiVoT0XHcQCE04RLFvt2xiW4O7kAnI76eE8tu+c7
	ceSazllL+dwqMOuHz6dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nS1VQ-00AAED-Ts; Wed, 09 Mar 2022 18:57:52 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nS1VE-00AAAS-Vx; Wed, 09 Mar 2022 18:57:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 71E52B82224;
 Wed,  9 Mar 2022 18:57:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2192EC340EC;
 Wed,  9 Mar 2022 18:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646852258;
 bh=823gQkzc3z2Ax/PB0AF2EV05ZOJdbyNdg1TPhRMlf2Q=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=FuJ4NbNq6ZUsKFhmbJ2zFX5viVTa8gA45bLJJZRHiFOzTeSCo3hBGt/tPAM32fL0z
 ooTODTKvoDEPUwxniaQSdeA8mFp02c4vFjMPMLJ4hvz5j+lRhUJds/ZlgHbDqyPr3A
 fD0ZaKpYDQGnxagXfQJ0s4CXXOIeP93L1/3+m/yPbauUZD6dLxFOQ5UrWPIZ/BPnHB
 tkD+2moevzlwOtOY5NVtvxqIFKqQ4cn3FzcfbjYzqUQd2iBEOmE8HZYvbgCuCx+xKL
 gS7if2l5nKWHcrAOCK73sr+mm47SCj3LqlTASTm868D8aSod/TWX98LeI4xfcbMqCz
 VDUrsMZZo2MCA==
MIME-Version: 1.0
In-Reply-To: <20220304011703.2061466-1-chi.minghao@zte.com.cn>
References: <20220304011703.2061466-1-chi.minghao@zte.com.cn>
Subject: Re: [PATCH] clk/rockchip: Use of_device_get_match_data()
From: Stephen Boyd <sboyd@kernel.org>
Cc: heiko@sntech.de, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
To: cgel.zte@gmail.com, mturquette@baylibre.com
Date: Wed, 09 Mar 2022 10:57:36 -0800
User-Agent: alot/0.10
Message-Id: <20220309185738.2192EC340EC@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_105741_199241_8C487C3E 
X-CRM114-Status: GOOD (  17.11  )
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

Quoting cgel.zte@gmail.com (2022-03-03 17:17:03)
> From: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
> 
> Use of_device_get_match_data() to simplify the code.
> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
> ---
>  drivers/clk/rockchip/clk-rk3399.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
> index 306910a3a0d3..b1b67bfb63b8 100644
> --- a/drivers/clk/rockchip/clk-rk3399.c
> +++ b/drivers/clk/rockchip/clk-rk3399.c
> @@ -1634,14 +1634,8 @@ static const struct of_device_id clk_rk3399_match_table[] = {
>  static int __init clk_rk3399_probe(struct platform_device *pdev)
>  {
>         struct device_node *np = pdev->dev.of_node;
> -       const struct of_device_id *match;
>         const struct clk_rk3399_inits *init_data;
> -
> -       match = of_match_device(clk_rk3399_match_table, &pdev->dev);
> -       if (!match || !match->data)
> -               return -EINVAL;
> -
> -       init_data = match->data;
> +       init_data = of_device_get_match_data(&pdev->dev);

The translation doesn't look equivalent. Before we would bail out of
probe if match data isn't there with an error. That isn't possible of
course with further investigation but please make a note of this in the
commit text to aid review. Also, please don't send new versions of
patches in reply to previous versions of patches. It breaks my patch
workflow. Thanks in advance.

>         if (init_data->inits)
>                 init_data->inits(np);
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
