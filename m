Return-Path: <SRS0=KV8+=EO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20728C388F9
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 15:41:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8BD3E221E9
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 15:41:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xceYsbzK";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1b7mIEm"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8BD3E221E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X9BgguvniE5IHtx4IcBlKQNg1KayUQL1ZL9twqneus8=; b=xceYsbzKbLe9+EyK088z1NkSx
	vUaYedAyiOnQSliaNVf0Qdts6eBjxSL7vpmD/qqYZZDQUhaEZQ6yTYeKPEtD6S5/1ScVcZXEyHWVU
	jopp2EXBKmTkKX0sm2MnDu/c5aolfQPQ5cYdwgdXhmqDgTG0xsV8woPDPg0gG+cH8wCa/Um7xBAop
	+MtmFTJV0g9e1kRt5FvCsShkzEGnWpSFF5CKIgYWVVvoF5O42JkFp6YFpJCSvJxTY+eVtlYlkc6Qo
	CfzK+obHcTHcbmVKh00LEsgqpuzZJiX7LK0LOwsW3p+c5NtEtlBNaI5edd8phUIEifF1WbSd/S6OS
	nnO2tShlw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbmp0-0006Kt-I3; Sun, 08 Nov 2020 15:41:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbmow-0006K9-Q3; Sun, 08 Nov 2020 15:41:35 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EBEC206ED;
 Sun,  8 Nov 2020 15:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604850093;
 bh=Ro0XFlRfJTxsmdUsm+VsUuYHfoz4ChDTnZqn6A2mBCw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=a1b7mIEmiDKom1i3FfZH1EVwV11OCSXeE0soCh2G3P8PGWCvIHVZMi0yfXvajA/Mg
 kuCeEFjysVB/RasYm7Lw6qC+ERq59s2Nfl1fZM6Hi+hsk1NlSM/uNXt4QChYPn6b4D
 IRjdwhtdGkADNnqSjA6f2Rt8wdsCERmh9riR07rY=
Date: Sun, 8 Nov 2020 15:41:28 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Qinglang Miao <miaoqinglang@huawei.com>
Subject: Re: [PATCH v2] iio: adc: rockchip_saradc: fix missing
 clk_disable_unprepare() on error in rockchip_saradc_resume
Message-ID: <20201108154128.57f4162f@archlinux>
In-Reply-To: <20201103120743.110662-1-miaoqinglang@huawei.com>
References: <20201103120743.110662-1-miaoqinglang@huawei.com>
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201108_104134_937266_7B513701 
X-CRM114-Status: GOOD (  21.66  )
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
Cc: Lars-Peter Clausen <lars@metafoo.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 3 Nov 2020 20:07:43 +0800
Qinglang Miao <miaoqinglang@huawei.com> wrote:

> Fix the missing clk_disable_unprepare() of info->pclk
> before return from rockchip_saradc_resume in the error
> handling case when fails to prepare and enable info->clk.
> 
> Fixes: 44d6f2ef94f9 ("iio: adc: add driver for Rockchip saradc")
> Suggested-by:Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Qinglang Miao <miaoqinglang@huawei.com>

Looks good to me.  I'll just give it a little longer on the list so Heiko
and others have a chance to sanity check it.

Thanks,

Jonathan

> ---
> v2: remove useless braces because early return is pointless.
> 
>  drivers/iio/adc/rockchip_saradc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index 1f3d7d639..12584f163 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -462,7 +462,7 @@ static int rockchip_saradc_resume(struct device *dev)
>  
>  	ret = clk_prepare_enable(info->clk);
>  	if (ret)
> -		return ret;
> +		clk_disable_unprepare(info->pclk);
>  
>  	return ret;
>  }


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
