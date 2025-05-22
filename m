Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 091C8C54E90
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 16:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXiYkKgnU6FvFrg51VgRID0kys7kiT1BPsyL0Eg2ODE=; b=Hsml96sfG4PEfA
	/zGOGluhZapdZAqszjH1Xoc3s8PstVAhodIr/kHiGWoOj+nBiNJSkxJQLA3DzhwAF37AEgzDtihe9
	wNNJCcpQLcocesg+GdgbzLmDa8OgqLMGEAdjIeG649DWdaDu66y5wFHDpc1wGxKAEISH1AngUO23M
	WUcipDvvGu0jJVq0s9vVhhd9Dh9iraAvp2ia1BWD4kIxchTmkU8567RSc+PsV1agjT/M9xR7J0jwU
	FAMtMjeR/ZkzV54wEK65OVWgMPp6+RoE9pE/StuWt5zvKt8BUvDidogVqdPsadZI7eJwgCYl4Xdq4
	0jQVZoZKxBNcTwLlPtxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI8t7-00000001bOT-3tGQ;
	Thu, 22 May 2025 16:35:21 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI8oP-00000001afG-3G0v;
	Thu, 22 May 2025 16:30:30 +0000
Received: from ideasonboard.com (unknown [IPv6:2a00:6020:448c:6c00:30c3:8bbb:632f:b0c9])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3A740165B;
	Thu, 22 May 2025 18:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1747931405;
	bh=9w6AYxG86+ShRJPYPhJz6k6F0yijUzIA6kRpB5v/haw=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=LJoybMKE0uXs+gwjKFQvbLyn6wocyrg3eCl8WJTj/sXmpHKBUm+AM3k9a5zKRFdSS
	 g5piWZPdx2GI3MLodcLSG5eI6ECcYbSPmoYoMlXJwF51Krs6c4Ju7n4+X65mlQ890g
	 2eaoiPS9Yuhf3RDo+4YYHObk40iw7ZpnAoPXTFJw=
MIME-Version: 1.0
In-Reply-To: <20250522154210.GT12514@pendragon.ideasonboard.com>
References: <20250522150944.400046-2-stefan.klug@ideasonboard.com> <20250522150944.400046-3-stefan.klug@ideasonboard.com> <20250522154210.GT12514@pendragon.ideasonboard.com>
Subject: Re: [PATCH 1/3] media: rkisp1: Cleanup error handling
From: Stefan Klug <stefan.klug@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Thu, 22 May 2025 18:30:25 +0200
Message-ID: <174793142530.244022.2578213319638259858@localhost>
User-Agent: alot/0.12.dev16+g501a9541e2e6.d20250519
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_093029_952149_F2272871 
X-CRM114-Status: GOOD (  19.53  )
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

Hi Laurent,

Thank you for the review.

Quoting Laurent Pinchart (2025-05-22 17:42:10)
> Hi Stefan,
> 
> Thank you for the patch.
> 
> On Thu, May 22, 2025 at 05:08:38PM +0200, Stefan Klug wrote:
> > Do not call media_entity_cleanup() when media_entity_pads_init() fails.
> 
> Why is it an issue ? The media_entity_cleanup() documentation clearly
> states
> 
>  * Calling media_entity_cleanup() on a media_entity whose memory has been
>  * zeroed but that has not been initialized with media_entity_pad_init() is
>  * valid and is a no-op.
> 
> This is by design to simplify error handling in drivers.

Oops. It was simple mechanical thing. I'll remove it in v2.

Regrads,
Stefan

> 
> > As a drive-by fix handle an (very unlikely) error in
> > rkisp1_params_init_vb2_queue().
> > 
> > Signed-off-by: Stefan Klug <stefan.klug@ideasonboard.com>
> > ---
> >  .../media/platform/rockchip/rkisp1/rkisp1-params.c    | 11 +++++++----
> >  1 file changed, 7 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > index b28f4140c8a3..918eb06c7465 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > @@ -2763,7 +2763,9 @@ int rkisp1_params_register(struct rkisp1_device *rkisp1)
> >       vdev->queue = &node->buf_queue;
> >       vdev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_META_OUTPUT;
> >       vdev->vfl_dir = VFL_DIR_TX;
> > -     rkisp1_params_init_vb2_queue(vdev->queue, params);
> > +     ret = rkisp1_params_init_vb2_queue(vdev->queue, params);
> > +     if (ret)
> > +             goto err_mutex;
> >  
> >       params->metafmt = &rkisp1_params_formats[RKISP1_PARAMS_FIXED];
> >  
> > @@ -2777,19 +2779,20 @@ int rkisp1_params_register(struct rkisp1_device *rkisp1)
> >       node->pad.flags = MEDIA_PAD_FL_SOURCE;
> >       ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
> >       if (ret)
> > -             goto error;
> > +             goto err_mutex;
> >  
> >       ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
> >       if (ret) {
> >               dev_err(rkisp1->dev,
> >                       "failed to register %s, ret=%d\n", vdev->name, ret);
> > -             goto error;
> > +             goto err_media;
> >       }
> >  
> >       return 0;
> >  
> > -error:
> > +err_media:
> >       media_entity_cleanup(&vdev->entity);
> > +err_mutex:
> >       mutex_destroy(&node->vlock);
> >       return ret;
> >  }
> 
> -- 
> Regards,
> 
> Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
