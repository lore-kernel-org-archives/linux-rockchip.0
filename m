Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29B78C35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 09:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6mBY1ZBxs9sh4GsWRR1wHCuKEcsJ2fUxzMW60LNG74=; b=g3i7uFochpFkT4
	BhIFsLo/Iff95Hk3l5ezCVzxPJ4FqYzpSGCsbHb5cWEzNaqLOnslvK0lmZS4tXD+lnkZddHsNv9+D
	/y7NL96HD+T5AT7uKVIGljVPcN578Nonurnz0APZ9ikj0qPT6uIaS2BbhLoIl1ysKKuuOO+wh2iXl
	b77u9bZkgycMP1Tew/L4bAUPk2LFm+QVaGAvI3mb042NMoiLlmPtW1wmPoT9PfetRm0KCdt/Ma5Mh
	pYjog3umaZ6yX+Qoht94/3DOha6/1pwvYyt7bJvRA61JVV9mu23/Xd6YLBenFzJyvewB0OKiIMRB1
	gPFBK4zbaZZuAdrVDtaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9jg-009dF3-1A;
	Mon, 18 Dec 2023 09:16:28 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9jc-009dDK-29;
	Mon, 18 Dec 2023 09:16:26 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7EBD357E;
	Mon, 18 Dec 2023 10:15:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1702890931;
	bh=sscAUNZitIjJpr6VsUmcITrudmZ/lgKq7hsyj3Gukj0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tN6LLOb4d3ZT1ULBijF6IjtiIzb8WrV3yrzSn0wdbaPQwPZR5CCkTiuR1FWrQ9LOq
	 mloPNfvfcYQEJqN4bfCULUkUgPqxPlTU4y1kZRkmfUVInZK6vWAMLgzauzOB9Dl6wI
	 MaoCb9GHkk03udvhOmgUFwHD/UgvvCCAzEClmmTM=
Date: Mon, 18 Dec 2023 11:16:27 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Mikhail Rudenko <mike.rudenko@gmail.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] Revert "media: rkisp1: Drop IRQF_SHARED"
Message-ID: <20231218091627.GA26540@pendragon.ideasonboard.com>
References: <20231218-rkisp-shirq-fix-v1-0-173007628248@ideasonboard.com>
 <20231218-rkisp-shirq-fix-v1-1-173007628248@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231218-rkisp-shirq-fix-v1-1-173007628248@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_011624_846086_729E1945 
X-CRM114-Status: GOOD (  18.48  )
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

Hi Tomi,

Thank you for the patch.

On Mon, Dec 18, 2023 at 09:54:00AM +0200, Tomi Valkeinen wrote:
> This reverts commit 85d2a31fe4d9be1555f621ead7a520d8791e0f74.
> 
> The rkisp1 does share interrupt lines on some platforms, after all. Thus
> we need to revert this, and implement a fix for the rkisp1 shared irq
> handling in a follow-up patch.
> 
> Reported-by: Mikhail Rudenko <mike.rudenko@gmail.com>
> Closes: https://lore.kernel.org/all/87o7eo8vym.fsf@gmail.com/
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index f96f821a7b50..acc559652d6e 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -559,7 +559,7 @@ static int rkisp1_probe(struct platform_device *pdev)
>  				rkisp1->irqs[il] = irq;
>  		}
>  
> -		ret = devm_request_irq(dev, irq, info->isrs[i].isr, 0,
> +		ret = devm_request_irq(dev, irq, info->isrs[i].isr, IRQF_SHARED,
>  				       dev_driver_string(dev), dev);
>  		if (ret) {
>  			dev_err(dev, "request irq failed: %d\n", ret);

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
