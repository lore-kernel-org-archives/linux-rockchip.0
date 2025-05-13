Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8833CC3ABC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 May 2025 19:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xb+pfD81zkq4QGHn9lH8/fJIF/lZ1xY+4YNfr2sdbAA=; b=l5V5zvSJ0lAjLF
	4v6RZcVIfrZh9gPuuh46S+N6u5GA8c0B1SHboTYKu54O7c0/ZYtZPOOwVRTdAkluCDRWb8cXifKH2
	FvmpLjNnc3iUhn5+dSkl0eS76z57hpFjFr838m05Hb9BVsYtTstLyfJTDKAQWRKKN0MzB2UzLRLD9
	dNc9aURssrSeAMVgvnICbJqAKuw/1J2sMN8erIh3E23PWUe2w5MiaUbv5utOCKC19sY6MElrjVQaY
	AybEcjhyHCKpoxmxrwVDon8ddqnwqNLwFpi5WhjRfgpXcrvAer7UUCEu/W3J4xDjtF6CIOCaktxd4
	X9M+H9ep5TEXnj4X2Gow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEuvL-0000000DJzY-1lsz;
	Tue, 13 May 2025 19:04:19 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEuLF-0000000DEmJ-3ECN
	for linux-rockchip@lists.infradead.org;
	Tue, 13 May 2025 18:27:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1747160806; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=BDN2uLpmb50QwQwa/P9J15Qxa/kcCUN0fkH5pPVUyWnmOGJLtv6yVIYWC3/B6n/5ma1/KKObI8PN5j/BQQNci5W8p1CoazkWNlB0NbCbtl065gJIKIfhOZx+KaxhVQebHz0BsI9S7DyLG+rFA66N71hjfwmYI9XUJivfmtxzNJM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1747160806; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=WDJ1pkoSIf5LYVV5V3cWH1euKlozzC9b22/qCMaxKas=; 
	b=m9sQo/9XK0EqfVX2Y79Ld+LdnGNGgI3ShAM95Is62vFeQsDCtnVK0Br77lXqbbHWtS0F1GvTHJ8ksRZaubhoIvQK5Ob49HjpUli1aWRQXmk7O6UTlALu2NyW+EgED1f7sc7schrJ/aAR434buc8sHmNZWSG3aiOiQBoYoTr00F0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1747160806;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=WDJ1pkoSIf5LYVV5V3cWH1euKlozzC9b22/qCMaxKas=;
	b=R5ebRiJvkrVzmthIehK3yjSnSQK/4djfu8/nL5LrJ1snc9W15P3lC+FWIGQKo7X5
	dy2Wx/hPJ5MiXh5lrd5LQ5Q65IrhVO5qfmBFBv/7YWsTTDqzDbyHy0d21+YxG3MxtPx
	Y8QIKMPNeA1ob9oAK7Fc9/Erjc4Qj4hi7TVMZqkM=
Received: by mx.zohomail.com with SMTPS id 1747160803944695.383741776804;
	Tue, 13 May 2025 11:26:43 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: Re: [PATCH] media: rkvdec: Restore iommu addresses on errors
Date: Tue, 13 May 2025 14:26:42 -0400
Message-ID: <6185929.lOV4Wx5bFT@earth>
In-Reply-To: <20250508-rkvdec-iommu-reset-v1-1-c46b6efa6e9b@collabora.com>
References: <20250508-rkvdec-iommu-reset-v1-1-c46b6efa6e9b@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_112701_890626_264CC914 
X-CRM114-Status: GOOD (  26.39  )
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

On Thursday, 8 May 2025 17:00:15 EDT Nicolas Dufresne wrote:
> On errors, the rkvdec chip self resets. This can clear the addresses
> programmed in the iommu. This case is signaled by the
> RKVDEC_SOFTRESET_RDY status bit.
> 
> Since the iommu framework does not have a restore functionality, and
> as recommended by the iommu subsystem maintainers, this patch
> restores the iommu programming by attaching and detaching an empty
> domain, which will clear and restore the default domain.
> 
> Suggested-by: Detlev Casanova <detlev.casanova@collabora.com>
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---

I tested it on the Radxa Rock pi 4B (rk3399) and Radxa Rock 5B (rk3588), so

Tested-by: Detlev Casanova <detlev.casanova@collabora.com>

And the patch looks good to me, so

Reviewed-by: Detlev Casanova <detlev.casanova@collabora.com>

Regards,
Detlev.

>  drivers/staging/media/rkvdec/rkvdec.c | 43
> +++++++++++++++++++++++++++++------ drivers/staging/media/rkvdec/rkvdec.h |
>  1 +
>  2 files changed, 37 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c
> b/drivers/staging/media/rkvdec/rkvdec.c index
> dd7e57a902640d363d26be887cb535c2668d5b15..38043b1877e221db58f5834ba51e085cf
> 9127e73 100644 --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -11,6 +11,7 @@
> 
>  #include <linux/clk.h>
>  #include <linux/interrupt.h>
> +#include <linux/iommu.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
> @@ -1000,24 +1001,42 @@ static void rkvdec_v4l2_cleanup(struct rkvdec_dev
> *rkvdec) v4l2_device_unregister(&rkvdec->v4l2_dev);
>  }
> 
> +static void rkvdec_iommu_restore(struct rkvdec_dev *rkvdec)
> +{
> +	if (rkvdec->empty_domain) {
> +		/*
> +		 * To rewrite mapping into the attached IOMMU core, attach 
a new empty
> domain that +		 * will program an empty table, then detach it 
to restore
> the default domain and +		 * all cached mappings.
> +		 * This is safely done in this interrupt handler to make 
sure no memory
> get mapped +		 * through the IOMMU while the empty domain is 
attached.
> +		 */
> +		iommu_attach_device(rkvdec->empty_domain, rkvdec->dev);
> +		iommu_detach_device(rkvdec->empty_domain, rkvdec->dev);
> +	}
> +}
> +
>  static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
>  {
>  	struct rkvdec_dev *rkvdec = priv;
> +	struct rkvdec_ctx *ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
>  	enum vb2_buffer_state state;
>  	u32 status;
> 
>  	status = readl(rkvdec->regs + RKVDEC_REG_INTERRUPT);
> -	state = (status & RKVDEC_RDY_STA) ?
> -		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
> -
>  	writel(0, rkvdec->regs + RKVDEC_REG_INTERRUPT);
> -	if (cancel_delayed_work(&rkvdec->watchdog_work)) {
> -		struct rkvdec_ctx *ctx;
> 
> -		ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
> -		rkvdec_job_finish(ctx, state);
> +	if (status & RKVDEC_RDY_STA) {
> +		state = VB2_BUF_STATE_DONE;
> +	} else {
> +		state = VB2_BUF_STATE_ERROR;
> +		if (status & RKVDEC_SOFTRESET_RDY)
> +			rkvdec_iommu_restore(rkvdec);
>  	}
> 
> +	if (cancel_delayed_work(&rkvdec->watchdog_work))
> +		rkvdec_job_finish(ctx, state);
> +
>  	return IRQ_HANDLED;
>  }
> 
> @@ -1085,6 +1104,13 @@ static int rkvdec_probe(struct platform_device *pdev)
> return ret;
>  	}
> 
> +	if (iommu_get_domain_for_dev(&pdev->dev)) {
> +		rkvdec->empty_domain = iommu_paging_domain_alloc(rkvdec-
>dev);
> +
> +		if (!rkvdec->empty_domain)
> +			dev_warn(rkvdec->dev, "cannot alloc new empty 
domain\n");
> +	}
> +
>  	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
> 
>  	irq = platform_get_irq(pdev, 0);
> @@ -1124,6 +1150,9 @@ static void rkvdec_remove(struct platform_device
> *pdev) rkvdec_v4l2_cleanup(rkvdec);
>  	pm_runtime_disable(&pdev->dev);
>  	pm_runtime_dont_use_autosuspend(&pdev->dev);
> +
> +	if (rkvdec->empty_domain)
> +		iommu_domain_free(rkvdec->empty_domain);
>  }
> 
>  #ifdef CONFIG_PM
> diff --git a/drivers/staging/media/rkvdec/rkvdec.h
> b/drivers/staging/media/rkvdec/rkvdec.h index
> 6f8cf50c5d99aad2f52e321f54f3ca17166ddf98..0eb3fd598664bc5af19de120ff6efac13
> 417541f 100644 --- a/drivers/staging/media/rkvdec/rkvdec.h
> +++ b/drivers/staging/media/rkvdec/rkvdec.h
> @@ -105,6 +105,7 @@ struct rkvdec_dev {
>  	void __iomem *regs;
>  	struct mutex vdev_lock; /* serializes ioctls */
>  	struct delayed_work watchdog_work;
> +	struct iommu_domain *empty_domain;
>  };
> 
>  struct rkvdec_ctx {
> 
> ---
> base-commit: 48dbb76cef65fabaa3ac97461eda90495e954ecd
> change-id: 20250508-rkvdec-iommu-reset-d8a96b8436c0
> 
> Best regards,





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
