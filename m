Return-Path: <SRS0=SS7Y=EJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20000C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 11:11:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 569B5223BD
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 11:11:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jr6y+k6y"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 569B5223BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/jO8lakWk+r8rfKXAcXkGY1QJeAPsFiR6dSFLzz+usA=; b=jr6y+k6y1m9dMkMs45+o2cbOH
	BdfBkpr39S90rRGRGir2DInML1FZxvWBcsS9RZHDKs4TX1zd4XfpGCrlvC5LP1U5dXdfqEGZFe8/D
	FW2jeCgqULf3Xj3vUN2Lj7o1xYRnXk1AOezBT5Yd0QA1Xw0aLP+zhbJU8Cx95dgiNH0d0SBt8ektq
	TUkGvTyaKUeUZaz6Hkgs+tNHWmQawE5wuZIfqnc6E6f6b7feIWHTa/+bTxeeUt5sG5/v6Gy1ytVaU
	nhFMLIuztgqYzZIpUhEZdjhAaLK5k5cPDQSNUpL9eXOGgN2SUeFbh4FUnhr4TEROyykwD5fiInBWe
	0O7LNCOvg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZuE4-0002xP-V4; Tue, 03 Nov 2020 11:11:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZuDz-0002wB-L0; Tue, 03 Nov 2020 11:11:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BA75101E;
 Tue,  3 Nov 2020 03:11:37 -0800 (PST)
Received: from [10.57.54.223] (unknown [10.57.54.223])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5B3AE3F66E;
 Tue,  3 Nov 2020 03:11:35 -0800 (PST)
Subject: Re: [PATCH v2] iio: adc: rockchip_saradc: fix missing
 clk_disable_unprepare() on error in rockchip_saradc_resume
To: Qinglang Miao <miaoqinglang@huawei.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Heiko Stuebner <heiko@sntech.de>
References: <20201103074909.195465-1-miaoqinglang@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <50da9bf1-7317-b24b-9a87-e9dfb4e4a694@arm.com>
Date: Tue, 3 Nov 2020 11:11:34 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201103074909.195465-1-miaoqinglang@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201103_061139_819501_CBFB407D 
X-CRM114-Status: GOOD (  19.56  )
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
Cc: linux-iio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-11-03 07:49, Qinglang Miao wrote:
> Fix the missing clk_disable_unprepare() of info->pclk
> before return from rockchip_saradc_resume in the error
> handling case when fails to prepare and enable info->clk.
> 
> Fixes: 44d6f2ef94f9 ("iio: adc: add driver for Rockchip saradc")
> Signed-off-by: Qinglang Miao <miaoqinglang@huawei.com>
> ---
>   drivers/iio/adc/rockchip_saradc.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index 1f3d7d639..5eb566274 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -461,9 +461,10 @@ static int rockchip_saradc_resume(struct device *dev)
>   		return ret;
>   
>   	ret = clk_prepare_enable(info->clk);
> -	if (ret)
> +	if (ret) {
> +		clk_disable_unprepare(info->pclk);
>   		return ret;

No need to add braces, just replace this utterly pointless "early" return ;)

Robin.

> -
> +	}
>   	return ret;
>   }
>   #endif
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
