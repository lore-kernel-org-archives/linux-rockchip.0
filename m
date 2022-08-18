Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56583C28B2B
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 06:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6keszfYOHuZ2Bg4+caM25p5LM5EUQRMqSb4iuj8ptQ=; b=wLfCt0pJxNOxd4
	GI1eq/9aQJVfoMnv6Ta4pP9t/D4IqRhCW6FCBRYtWIEgUKEOb2NwlUvqyJq+LNQ217vJT9ueAag9t
	wrSkzX2lGwX9yMkjBZB1+iL6B5g3QRSq6T1qv25zd4b71U/OBLWtkThfD5BtdpYNJ36krY+7PKosl
	voizA4h/LghbzIh1um23jZu0fx8mmuoBPkfH4y6dsHUd/U0xmJyC5EEzEhriVCRpM53qlK+8FT37j
	dLRx5EJ6nE23yoro5Sy77HKVxn7Jr4cnoVaio3uoTbAft83L2VJ9HQZ5dE8MuhveDg7zVcotjpI9p
	D6MXxNR9dM+AlpEf8o/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOYqm-00GuLQ-9B; Thu, 18 Aug 2022 06:17:52 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOYqj-00GuBf-IO
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 06:17:51 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5EF284A8;
	Thu, 18 Aug 2022 08:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1660803464;
	bh=goZ1R9D1iHsR8zf7gllkopZFRe5ycHMZIdobrgf6Qro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NDyyeAZaXHtiuk3tUyj/LbuTJ+cnQAuIPu6DlvhHOWZJGIjsFqwf1GDtlPQY27uXw
	 IgC57WL7AFnB87bxGi59hKDBc6GjCjoIKTJx6Mn5TOsVfKqfjhJzWcGKmHCrT6VhUM
	 sEQH8ZQ7YXAWt4wGpCdmLpBTbfmOLTmDRfF1DupU=
Date: Thu, 18 Aug 2022 09:17:42 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: Re: [PATCH 4/5] media: rkisp1: Use RKISP1_CIF_ISP_LSC_GRAD_SIZE()
 for gradient registers
Message-ID: <Yv3ZhsIqWSu4wT4m@pendragon.ideasonboard.com>
References: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
 <20220817021850.20460-5-laurent.pinchart@ideasonboard.com>
 <20220818025029.y4jbmpzgnebla4t2@guri>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220818025029.y4jbmpzgnebla4t2@guri>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_231749_796338_3465DFFE 
X-CRM114-Status: GOOD (  17.08  )
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

Hi Dafna,

On Thu, Aug 18, 2022 at 05:50:29AM +0300, Dafna Hirschfeld wrote:
> On 17.08.2022 05:18, Laurent Pinchart wrote:
> > The rkisp1_lsc_config() function incorrectly uses the
> > RKISP1_CIF_ISP_LSC_SECT_SIZE() macro for the gradient registers. Replace
> > it with the correct RKISP1_CIF_ISP_LSC_GRAD_SIZE() macro. This doesn't
> > cause any functional change as the two macros are defined identically
> > (the size and gradient registers store fields in the same number of bits
> > at the same positions).
> >
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > index aa6efa4c6e9e..421ade177b2d 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > @@ -334,7 +334,7 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
> >  		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XSIZE(i), data);
> > 
> >  		/* program x grad tables */
> > -		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->x_grad_tbl[i * 2],
> > +		data = RKISP1_CIF_ISP_LSC_GRAD_SIZE(arg->x_grad_tbl[i * 2],
> >  						    arg->x_grad_tbl[i * 2 + 1]);
> 
> maybe the GRAD macro should change to:
> 
> RKISP1_CIF_ISP_LSC_SECT_GRAD
> 
> ?

Good idea, I'll do that.

> >  		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_XGRAD(i), data);
> > 
> > @@ -344,7 +344,7 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
> >  		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YSIZE(i), data);
> > 
> >  		/* program y grad tables */
> > -		data = RKISP1_CIF_ISP_LSC_SECT_SIZE(arg->y_grad_tbl[i * 2],
> > +		data = RKISP1_CIF_ISP_LSC_GRAD_SIZE(arg->y_grad_tbl[i * 2],
> >  						    arg->y_grad_tbl[i * 2 + 1]);
> >  		rkisp1_write(rkisp1, RKISP1_CIF_ISP_LSC_YGRAD(i), data);
> >  	}

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
