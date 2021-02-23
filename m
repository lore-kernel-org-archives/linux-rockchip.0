Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F32CCC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 10:13:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0E37164DBD
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 10:13:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0E37164DBD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M2X/8QnNu5k5nbC5hCF/UNIFaQ6jvFsEVYtTIwCDU78=; b=cnGpyRQS/m9sqwlKwPzhg04hf
	aMFAbDB31Nlmwr6eBH/RknCoUHjqOyKl/ufyPjRnXnQs0LiRUzm831EBrQQVOPRE7YOo4SO0GpqK+
	XSjEXfm3+8MrYjVHeCmfUrD+Y4AnFdsBMS7EuUsNYggCHVONEN4FcCP/OhXQofyLeBRTRti3SM/p4
	c/C9rXmcgPgrn/QSNHLGQvm/LDPkISJenKcY9oaN6d8M1bmX91MuOXtfLYCEUF6ljrfUOHFqv5FmH
	zhaUKH6dgWUfnanHfSpDxS3LLIVPhih0kU8Y+uBG0djf/xEP29DPuKXB10guuMf/djnX8wtZqBTqk
	Yj3ubPSXQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEUhC-00080a-Jy; Tue, 23 Feb 2021 10:13:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEUhA-0007zx-DY
 for linux-rockchip@lists.infradead.org; Tue, 23 Feb 2021 10:13:33 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lEUh9-0008Tf-AQ; Tue, 23 Feb 2021 11:13:31 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH] pinctrl: rockchip: fix restore error in resume
Date: Tue, 23 Feb 2021 11:13:30 +0100
Message-ID: <9688540.oDFzTOozpa@diego>
In-Reply-To: <20210223100725.269240-1-jay.xu@rock-chips.com>
References: <20210223064807.121358-1-jay.xu@rock-chips.com>
 <20210223100725.269240-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_051332_528534_A90578D4 
X-CRM114-Status: GOOD (  18.96  )
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
 Wang Panzhenzhuan <randy.wang@rock-chips.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jianqun,

Please add a version to the subject when sending updated patches.

So this would be :
[PATCH v2] pinctrl: rockchip: fix restore error in resume

And in general, kernel tooling will grab received Reviewed-by tags
automatically nowadays, so no need to send new versions just for that.


Heiko

Am Dienstag, 23. Februar 2021, 11:07:25 CET schrieb Jianqun Xu:
> From: Wang Panzhenzhuan <randy.wang@rock-chips.com>
> 
> The restore in resume should match to suspend which only set for RK3288
> SoCs pinctrl.
> 
> Fixes: 8dca933127024 ("pinctrl: rockchip: save and restore gpio6_c6 pinmux in suspend/resume")
> Reviewed-by: Jianqun Xu <jay.xu@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Wang Panzhenzhuan <randy.wang@rock-chips.com>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index aa1a1c850d05..53a0badc6b03 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -3727,12 +3727,15 @@ static int __maybe_unused rockchip_pinctrl_suspend(struct device *dev)
>  static int __maybe_unused rockchip_pinctrl_resume(struct device *dev)
>  {
>  	struct rockchip_pinctrl *info = dev_get_drvdata(dev);
> -	int ret = regmap_write(info->regmap_base, RK3288_GRF_GPIO6C_IOMUX,
> -			       rk3288_grf_gpio6c_iomux |
> -			       GPIO6C6_SEL_WRITE_ENABLE);
> +	int ret;
>  
> -	if (ret)
> -		return ret;
> +	if (info->ctrl->type == RK3288) {
> +		ret = regmap_write(info->regmap_base, RK3288_GRF_GPIO6C_IOMUX,
> +				   rk3288_grf_gpio6c_iomux |
> +				   GPIO6C6_SEL_WRITE_ENABLE);
> +		if (ret)
> +			return ret;
> +	}
>  
>  	return pinctrl_force_default(info->pctl_dev);
>  }
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
