Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3467C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gYkqzulNtWW3F1T1hNB4pqCwJOHEPXkxs9sKpHrPnjE=; b=Yq7ExkEqMSYKjs
	/Ks6seOHbFnRnMiJLBa429r2Fai8XnzCzbN77VAm8YAgTUYeeMeT3Oj7tEhKQICmXHAyaPr2cbjtr
	pgMBEcjuuNhjZhiO0s/BAJDKG77ivt3a46Ap2h/aKwMW2f03f1mq2O9IMMMF1BmbTnZdzR5e1/pYe
	bIbjbsS6EOeuPlNcGs9YHkUdJyr4DXXW6sMSZBgAm0XiZ3+v9ILrAiyDcqgzb/PkQoYGNqVHofgyJ
	bkGxklsyOKDVhr/8funEXfp1VgploxyCWdienDq97bLxjBhEZtDmEsj5moLZ5OzqyHSfT//NenJ3F
	jGyHvw/p9bbzkEMH7OIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Qma-009DTF-2t;
	Wed, 29 Nov 2023 20:03:40 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8QmX-009DQA-1Q;
	Wed, 29 Nov 2023 20:03:38 +0000
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id CA9FC6F0;
	Wed, 29 Nov 2023 21:02:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701288174;
	bh=ePtEL68l/h8jIKMdH/KdbK5MnwM4St0aZoEyLqeClPQ=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=DBnLzbUD+TsO+e3WV22AFZk957r5YVwhcXY4dY1FPHQKsbsJxpQb7dU/if/A/QVYJ
	 zhnTmz94ShZBArJ++gjeUqyOOQPUo4nBZDTaWZxRUa9X/4qzjZYWBH+Lh9uEhhrWhA
	 ONb1jj397BuL+UjLpNFxlX/RPjvX8cXbLn+xHBSI=
MIME-Version: 1.0
In-Reply-To: <20231129092956.250129-2-paul.elder@ideasonboard.com>
References: <20231129092956.250129-1-paul.elder@ideasonboard.com> <20231129092956.250129-2-paul.elder@ideasonboard.com>
Subject: Re: [PATCH 1/3] media: rkisp1: regs: Consolidate MI interrupt wrap fields
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com, Paul Elder <paul.elder@ideasonboard.com>, Dafna Hirschfeld <dafna@fastmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Wed, 29 Nov 2023 20:03:27 +0000
Message-ID: <170128820728.3048548.3243837159240802893@ping.linuxembedded.co.uk>
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_120337_632496_B06A18C6 
X-CRM114-Status: GOOD (  12.86  )
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

Quoting Paul Elder (2023-11-29 09:29:54)
> Consolidate the wraparound fields in the memory interface interrupt
> status registers, so that it can be more succinctly expressed by taking
> the stream ID (main or self) as a parameter.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>

Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> index 350f452e676f..bea69a0d766a 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> @@ -172,12 +172,9 @@
>  #define RKISP1_CIF_MI_FRAME(stream)                    BIT((stream)->id)
>  #define RKISP1_CIF_MI_MBLK_LINE                                BIT(2)
>  #define RKISP1_CIF_MI_FILL_MP_Y                                BIT(3)
> -#define RKISP1_CIF_MI_WRAP_MP_Y                                BIT(4)
> -#define RKISP1_CIF_MI_WRAP_MP_CB                       BIT(5)
> -#define RKISP1_CIF_MI_WRAP_MP_CR                       BIT(6)
> -#define RKISP1_CIF_MI_WRAP_SP_Y                                BIT(7)
> -#define RKISP1_CIF_MI_WRAP_SP_CB                       BIT(8)
> -#define RKISP1_CIF_MI_WRAP_SP_CR                       BIT(9)
> +#define RKISP1_CIF_MI_WRAP_Y(stream)                   BIT(4 + (stream)->id * 3)
> +#define RKISP1_CIF_MI_WRAP_CB(stream)                  BIT(5 + (stream)->id * 3)
> +#define RKISP1_CIF_MI_WRAP_CR(stream)                  BIT(6 + (stream)->id * 3)
>  #define RKISP1_CIF_MI_DMA_READY                                BIT(11)
>  
>  /* MI_STATUS */
> -- 
> 2.39.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
