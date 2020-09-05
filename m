Return-Path: <SRS0=ahIP=CO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4919CC433E2
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2020 22:14:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 65CA220663
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2020 22:14:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qC5duntF"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 65CA220663
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VZUTjoXRHOOVc2iqOPDQwGI4bEf0gGJCz2fNTTlHqSY=; b=qC5duntFHyozNXIHASpT/+LEO
	LjgVpo+LJe/IQLj4igCOMurNyR2ykRCZKHL7KxI3geH0yP3NG8qFxJ2hQA4Y3CRvCh23f8e3f+cwb
	BQ2wfgEu2ouVpiYvDAQ8Sh/yHtje4Mgzzejfu/8UztQGUskGBrwKk4tid48VBkrpAQ6FJ8FMlg/vQ
	PPKAEnVrVtyeXaoM7nwaMyxChXAaspvTukXNVICUDwOu0R3JsyDpyiFnri5sZztxCCSCVFx1AUxBf
	pGWf3e2809wmRbfoHSS0jWFi3ZnZe8LemaFPIDnzNFmcrfniOZH4IR3kpC1he+o4PS3SbBPNn6V/T
	taLf+PDZg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEgRs-00070p-Cu; Sat, 05 Sep 2020 22:14:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEgRq-00070Q-E4
 for linux-rockchip@lists.infradead.org; Sat, 05 Sep 2020 22:14:15 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kEgRp-0005oz-3h; Sun, 06 Sep 2020 00:14:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH 5/6] pinctrl: rockchip: fix crash caused by invalid gpio
 bank
Date: Sun, 06 Sep 2020 00:14:12 +0200
Message-ID: <6529745.9OfISSL0U5@diego>
In-Reply-To: <20200831085010.7235-1-jay.xu@rock-chips.com>
References: <20200831084753.7115-1-jay.xu@rock-chips.com>
 <20200831085010.7235-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200905_181414_486600_A7B22625 
X-CRM114-Status: GOOD (  20.21  )
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

Hi,

Am Montag, 31. August 2020, 10:50:10 CEST schrieb Jianqun Xu:
> Add valid check for gpio bank.

Please add more description on where this happened.


> Change-Id: Ia4609c3045b5df7879beab3c15d791ff54a1f49b

Please drop the change-id.


> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 6080573155f6..5b16b69e311f 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -2526,9 +2526,9 @@ static int rockchip_pmx_set(struct pinctrl_dev *pctldev, unsigned selector,
>  			break;
>  	}
>  
> -	if (ret) {
> +	if (ret && cnt) {
>  		/* revert the already done pin settings */
> -		for (cnt--; cnt >= 0; cnt--)
> +		for (cnt--; cnt >= 0 && !data[cnt].func; cnt--)

This looks unrelated and as it's not a "check for a valid gpio-bank" it
should become a separate patch with a commit message describing it nicely.

>  			rockchip_set_mux(bank, pins[cnt] - bank->pin_base, 0);
>  
>  		return ret;
> @@ -2599,9 +2599,13 @@ static int rockchip_pmx_gpio_set_direction(struct pinctrl_dev *pctldev,
>  					      unsigned offset, bool input)
>  {
>  	struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
> +	struct rockchip_pin_bank *bank = &info->ctrl->pin_banks[offset / 32];
>  	struct gpio_chip *chip;
>  	int pin;
>  
> +	if (!bank || !bank->valid)
> +		return 0;
> +
>  	chip = range->gc;
>  	pin = offset - chip->base;
>  	dev_dbg(info->dev, "gpio_direction for pin %u as %s-%d to %s\n",
> @@ -3022,6 +3026,8 @@ static int rockchip_pinctrl_register(struct platform_device *pdev,
>  
>  	for (bank = 0; bank < info->ctrl->nr_banks; ++bank) {
>  		pin_bank = &info->ctrl->pin_banks[bank];
> +		if (!pin_bank->valid)
> +			continue;

Please add a blank line here

>  		pin_bank->grange.name = pin_bank->name;
>  		pin_bank->grange.id = bank;
>  		pin_bank->grange.pin_base = pin_bank->pin_base;
> 


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
