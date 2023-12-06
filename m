Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E685CC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 20:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=np6Fv41kh+pVOSkaT+pyJ7s3nMogIJ7PUEbFQv8wTRk=; b=nSdbYAcgl+vy/5
	Fbfkh/SAjVLh2ZhXxmK3NzzfmVaelrqRJD333JWKR2fPhwhl48O85djsAMCNe7jkmCZ519LlWiuL1
	qcJju5mrSzoo2F57XQa7YmdneAHA2EtimAPwkIQ4j1iw6f4Lyaah6gY5ahV87ua5HQl5PI+CGg3Ep
	srLAFdoTMRKNQIw7Azx4WwV4JikOPQKVBx1Qd6E0NuFfoOcBAITIBBIixRyj1RsqswXJMHtTWfCBw
	LouXGeYaTiMsc/X5qL6fiSy4LgGXSOq9kxQDF5ExdPh2/CETEfiTCLXU/NXH62hIhhbC9Q3h4j8Mn
	g3rJwhJyWdZp9ee7an4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAyrt-00BFcq-1u;
	Wed, 06 Dec 2023 20:51:41 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAyrp-00BFbO-37;
	Wed, 06 Dec 2023 20:51:39 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B7702720;
	Wed,  6 Dec 2023 21:50:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701895848;
	bh=l0ZcHpyWY6UMwv/hikDR8riOCq1MNunta8UDL42xOPs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pt8MhQ3u2yXCm1EjjVxWv5Zv/bL8rSKARO3l7kpOwKjkmNtj9aOQmXDHNL8OJNuAC
	 ifKaRvsnm4BZC5RjcQr8zgm6YG8WPbEDJy7NpSPazH1u686mAPUNYdxIbyMdJftgFx
	 nhNkYYUVJnEvzrkcaMGYkmNQrmUkvzsPzG+54/ss=
Date: Wed, 6 Dec 2023 22:51:35 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	kieran.bingham@ideasonboard.com, umang.jain@ideasonboard.com,
	aford173@gmail.com, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] media: rkisp1: Drop IRQF_SHARED
Message-ID: <20231206205135.GB29417@pendragon.ideasonboard.com>
References: <20231206-rkisp-irq-fix-v2-0-6ba4185eeb1f@ideasonboard.com>
 <20231206-rkisp-irq-fix-v2-1-6ba4185eeb1f@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206-rkisp-irq-fix-v2-1-6ba4185eeb1f@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_125138_166956_93E794E8 
X-CRM114-Status: GOOD (  19.29  )
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

On Wed, Dec 06, 2023 at 12:12:28PM +0200, Tomi Valkeinen wrote:
> In all known platforms the ISP has dedicated IRQ lines, but for some
> reason the driver uses IRQF_SHARED.
> 
> Supporting IRQF_SHARED properly requires handling interrupts even when
> our device is disabled, and the driver does not handle this. To avoid
> adding such code, and to be sure the driver won't accidentally be used
> in a platform with shared interrupts, let's drop the IRQF_SHARED flag.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 2b9886fd0800..d4950294b7b9 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -573,7 +573,7 @@ static int rkisp1_probe(struct platform_device *pdev)
>  		if (irq < 0)
>  			return irq;
>  
> -		ret = devm_request_irq(dev, irq, info->isrs[i].isr, IRQF_SHARED,
> +		ret = devm_request_irq(dev, irq, info->isrs[i].isr, 0,
>  				       dev_driver_string(dev), dev);
>  		if (ret) {
>  			dev_err(dev, "request irq failed: %d\n", ret);
> 

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
