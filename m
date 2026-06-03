Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4A99CD6E4A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jun 2026 06:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bWiJhT07frzPTUW2uxCoZusN4oCQCS/9b8qbMicZwU=; b=SDCygV/7pZfxCq
	Rd4XPMd+A66EnJf19xsvZomWffKECzcCPSZgkaSPx8QPLaOng7QUBwtBJ6KrrOLht3nAHUuTO+4z3
	eD7IPE+ba5p6s07KiLGUxRVacA7IHcfvbuw0vxiCU+q4z9BMTcB/c2ZIVwaDJyrS4ytOrnR3RR2oL
	8gkNgZyU9ljCeDN2MzutfiJlBPynQwLZ6CllYUPlvdrX5HkFIK0/4NfLNLDV6gxL7x/8dkbgkE8VM
	/aTMQWbesRR3a96GH5rOKhNLC47XmXTLBH+ywzPZ/ooFzleu7lYAEqZdJpjf62uF5zs+p6EfNpO3U
	Z5s5uNkSYDCjuh+75ntA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUfRo-0000000EPcI-2Y6q;
	Wed, 03 Jun 2026 06:51:28 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUfRm-0000000EPbq-1cO4;
	Wed, 03 Jun 2026 06:51:27 +0000
Received: from mail.ideasonboard.com (unknown [IPv6:2401:4900:1c66:476d:c684:fe78:389f:7375])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 755CA12D6;
	Wed,  3 Jun 2026 08:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1780469460;
	bh=37wavJyg6SyRdh6uzGTnJBIV1BDGJHxKUDF92QE7Q6Y=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=d0/RtgBZUkCQ7kmP+mo1Ttv+Pq6rT82bsC0HVjAR/JlJDtZWxmcE4UW3taxOPW+ye
	 zOxQBpmcYLR7rNQKegn+4vKuKUNjC3XLkmjeBfFLIoS8d83QkkAKqFuTobzCuTuIX6
	 sJkiSqS5vN1NRoqEnunNO95OX3C2MuRM/DAH+1rY=
MIME-Version: 1.0
In-Reply-To: <20260522065548.2438545-1-nichen@iscas.ac.cn>
References: <20260522065548.2438545-1-nichen@iscas.ac.cn>
Subject: Re: [PATCH] media: rockchip: rkcif: Fix error handling for media_entity_remote_source_pad_unique()
From: Jai Luthra <jai.luthra@ideasonboard.com>
Cc: mchehab@kernel.org, heiko@sntech.de, hverkuil+cisco@kernel.org, gerald.loacker@wolfvision.net, bryan.odonoghue@linaro.org, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Chen Ni <nichen@iscas.ac.cn>
To: Chen Ni <nichen@iscas.ac.cn>, mehdi.djait@linux.intel.com, michael.riesch@collabora.com
Date: Wed, 03 Jun 2026 12:21:18 +0530
Message-ID: <178046947892.1525445.1023288239828130272@freya>
User-Agent: alot/0.13.dev20+g31692a239
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_235126_569501_724CA9DE 
X-CRM114-Status: GOOD (  12.01  )
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

Quoting Chen Ni (2026-05-22 12:25:48)
> The media_entity_remote_source_pad_unique() function returns an error
> pointer on failure, not NULL. Fix the check to use IS_ERR() and return
> PTR_ERR() to correctly handle allocation failures.
> 
> Fixes: 501802e2ad51 ("media: rockchip: rkcif: add abstraction for dma blocks")
> Signed-off-by: Chen Ni <nichen@iscas.ac.cn>

Reviewed-by: Jai Luthra <jai.luthra@ideasonboard.com>

Thanks,
    Jai

> ---
>  drivers/media/platform/rockchip/rkcif/rkcif-stream.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> index 3130d420ad55..542aa877919d 100644
> --- a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> +++ b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> @@ -466,7 +466,7 @@ static int rkcif_stream_link_validate(struct media_link *link)
>         struct rkcif_stream *stream = to_rkcif_stream(vdev);
>         int ret = -EINVAL;
>  
> -       if (!media_entity_remote_source_pad_unique(link->sink->entity))
> +       if (IS_ERR(media_entity_remote_source_pad_unique(link->sink->entity)))
>                 return -ENOTCONN;
>  
>         sd = media_entity_to_v4l2_subdev(link->source->entity);
> -- 
> 2.25.1
> 
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
