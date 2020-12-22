Return-Path: <SRS0=uCGj=F2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D94C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Dec 2020 17:23:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D2A8422D73
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Dec 2020 17:23:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D2A8422D73
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pwnlXrIL4Xa8WtJO2YEcCYJmt/yJoBWn5tBp6li4Tpc=; b=dXnX6F0iwWGkG+dhikleKMz63
	frN2D4NGIg+DhqgSG9oLpTRkhB5e7b5A57Mx8SvP9fCvd5DKhKVN81QlyAijK+OchO9/jtAjodVx7
	b3T2hjLt87HiUXkkYlkqEEqLJz2+yDj2aKN8uZoupzwKoSqm6/khDlzIl4F08db6SahrBODXP1lSg
	0XQF5Aw0YgBYBcwcI1qvwY1HUn1bxpiZkuAjCLJsltN8H6MY38mtVnDYJkyifYE9Zx4LXQNWpBCRg
	IHuPkO6MssWzFBF5uVaVPjJO5ft4mz641OcTHQIA4yCK/miARS2oT9flMStywojWu131YEhk9sY6z
	6vCIYDmzw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1krlNc-00077U-8V; Tue, 22 Dec 2020 17:23:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1krlNY-00076N-Dd; Tue, 22 Dec 2020 17:23:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C532E30E;
 Tue, 22 Dec 2020 09:23:14 -0800 (PST)
Received: from [10.57.34.90] (unknown [10.57.34.90])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50D9F3F66E;
 Tue, 22 Dec 2020 09:23:13 -0800 (PST)
Subject: Re: [PATCH v2 3/3] pwm: rockchip: Do not start PWMs not already
 running
To: Simon South <simon@simonsouth.net>, tpiepho@gmail.com,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 lee.jones@linaro.org, heiko@sntech.de, bbrezillon@kernel.org,
 linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <cover.1608407584.git.simon@simonsouth.net>
 <0acdf3a78f670a2678e03b0bbbb01aa58a11ce9a.1608407584.git.simon@simonsouth.net>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ff2bf1bb-e95f-138c-df5a-12ed73568572@arm.com>
Date: Tue, 22 Dec 2020 17:23:12 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <0acdf3a78f670a2678e03b0bbbb01aa58a11ce9a.1608407584.git.simon@simonsouth.net>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201222_122320_524213_7C8D4680 
X-CRM114-Status: GOOD (  23.57  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-12-19 20:44, Simon South wrote:
> Currently the Rockchip PWM driver enables the signal ("bus") clock for
> every PWM device it finds during probing, then disables it for any device
> that was not already enabled (such as by a bootloader) when the kernel
> started.
> 
> Instead of starting PWMs unnecessarily, check first to see whether a device
> has already been enabled and if not, do not enable its signal clock.
> 
> Signed-off-by: Simon South <simon@simonsouth.net>
> ---
>   drivers/pwm/pwm-rockchip.c | 28 +++++++++++++---------------
>   1 file changed, 13 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
> index f286a498b82c..b9faef3e9954 100644
> --- a/drivers/pwm/pwm-rockchip.c
> +++ b/drivers/pwm/pwm-rockchip.c
> @@ -327,19 +327,6 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
>   		return ret;
>   	}
>   
> -	ret = clk_prepare_enable(pc->clk);
> -	if (ret) {
> -		dev_err(&pdev->dev, "Can't prepare enable bus clk: %d\n", ret);
> -		return ret;
> -	}
> -
> -	ret = clk_prepare_enable(pc->pclk);
> -	if (ret) {
> -		dev_err(&pdev->dev, "Can't enable APB clk: %d\n", ret);
> -		clk_disable_unprepare(pc->clk);
> -		return ret;
> -	}
> -
>   	platform_set_drvdata(pdev, pc);
>   
>   	pc->data = id->data;
> @@ -353,12 +340,23 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
>   		pc->chip.of_pwm_n_cells = 3;
>   	}
>   
> +	ret = clk_prepare_enable(pc->pclk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Can't enable APB clk: %d\n", ret);
> +		return ret;
> +	}
> +
>   	/* Keep the PWM clk enabled if the PWM appears to be up and running. */
>   	enable_conf = pc->data->enable_conf;
>   	ctrl = readl_relaxed(pc->base + pc->data->regs.ctrl);
>   	enabled = ((ctrl & enable_conf) == enable_conf);
> -	if (!enabled)
> -		clk_disable(pc->clk);
> +
> +	ret = enabled ? clk_prepare_enable(pc->clk) : clk_prepare(pc->clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Can't prepare bus clk: %d\n", ret);

Since you're touching it, I guess it might be a good idea to update this 
message to say "PWM clk" for clarity.

I suspect there might also have been some historical confounding in the 
fact that when there is only one clock (pclk_pwm), it's merely a gate 
whose parent is pclk_bus, which serves all the peripherals in the 
usefully-named PD_BUS domain...

Robin.

> +		clk_disable_unprepare(pc->pclk);
> +		return ret;
> +	}
>   
>   	clk_disable(pc->pclk);
>   
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
