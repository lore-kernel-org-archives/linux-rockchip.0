Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D051BC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 16:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0RRIts/obtVLSFF0YtMi8WCFsWQxddPku6KumPri7UI=; b=uUjW5n157pHRpi
	X5p5UB6p0YQFu6c15wXyB+wevud19aIp3vrFwPk5FqovBdIOSPMysDNO1Fndn0kFFX4CAh3Nz0/Dw
	wEThlBCtOgK58VAh4uzl47j3UVeJ5wYCEuvNMeUxsUOM8wzWch4RfKc+h6qjnhyBLjuIbX0CoNyPW
	RDAKp78hqFkJ+Jzz8drftO0hc6MdFkD5LLkEIz/dD7Jw42mYSijcObuZxDM45SwPhA4f/X9sBH4PK
	Q21SF/VhNoygKx6hWSc4dT9t7+M0m9MlZzVS4XeRqBADD7vZ7fxcg42p7UIFihTJpEenpDbWCSrU6
	MfPGuHtMdU1HaD9bR94g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr0LT-00Eu13-5z; Tue, 17 May 2022 16:46:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr0LQ-00Etx0-Au
 for linux-rockchip@lists.infradead.org; Tue, 17 May 2022 16:46:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E1001042;
 Tue, 17 May 2022 09:46:42 -0700 (PDT)
Received: from [10.57.82.55] (unknown [10.57.82.55])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CFD8E3F718;
 Tue, 17 May 2022 09:46:40 -0700 (PDT)
Message-ID: <0da188fa-efd8-62d0-2ea6-5a8e0c286cb5@arm.com>
Date: Tue, 17 May 2022 17:46:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH] media: hantro: fix compatible string deprecation warning
Content-Language: en-GB
To: Martin Kepplinger <martin.kepplinger@puri.sm>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20220517143521.1670663-1-martin.kepplinger@puri.sm>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220517143521.1670663-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_094648_465185_61C988FE 
X-CRM114-Status: GOOD (  18.81  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2022-05-17 15:35, Martin Kepplinger wrote:
> of_device_is_compatible() in the end uses strlen of the string
> for comparison, so in this case, the condition is true even if
> the requested string "nxp,imx8mq-vpu-g1" is being used. The first
> chars containing "nxp,imx8mq-vpu" are the same.

Have you seen this go wrong in practice? AFAICS, unless you're on SPARC, 
which seems somewhat unlikely for an i.MX8 peripheral, of_compat_cmp() 
should map to strcasecmp(), which should do the right thing :/

Robin.

> Fix this by encoding what the comment says.
> 
> Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> ---
> 
> This is more of a bugreport as the solution doesn't look very elegant
> to me. I'm happy for advice.
> 
> thanks,
>                             martin
> 
> 
>   drivers/staging/media/hantro/hantro_drv.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index ac232b5f7825..014fab637df0 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -923,10 +923,11 @@ static int hantro_probe(struct platform_device *pdev)
>   
>   	/*
>   	 * Support for nxp,imx8mq-vpu is kept for backwards compatibility
> -	 * but it's deprecated. Please update your DTS file to use
> -	 * nxp,imx8mq-vpu-g1 or nxp,imx8mq-vpu-g2 instead.
> +	 * but it's deprecated.
>   	 */
> -	if (of_device_is_compatible(pdev->dev.of_node, "nxp,imx8mq-vpu"))
> +	if ((of_device_is_compatible(pdev->dev.of_node, "nxp,imx8mq-vpu")) &&
> +	    (!of_device_is_compatible(pdev->dev.of_node, "nxp,imx8mq-vpu-g1")) &&
> +	    (!of_device_is_compatible(pdev->dev.of_node, "nxp,imx8mq-vpu-g2")))
>   		dev_warn(&pdev->dev, "%s compatible is deprecated\n",
>   			 match->compatible);
>   

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
