Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AB66C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Mar 2022 04:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEymmRXK+6dBRGcgbSJZiotyRblr9keEkkFnCAl16F4=; b=Y7g0E/QodvK9Ww
	W8X0f9mBElCiZhJwlHY2CR7JP8eq3wHOdyVZlDAG5Qy3sGU5S6q3LX3hNjIN5k00I9oRTWL98LcI6
	6XMDRxwJlKoHL4/5vPoL/aNi8lNsrdtWAO9zCjHqsI7m8Wf1nTXakZGyPYeLyfe58ODgMI+9qzBDa
	w1ccJdUV2luni11I380W50WE0LPUL0v7BGZtRjMPQ3rwcGc0ccBsEBngSEo/B+ARV95DUlNE0NQt3
	GqOQApMV05NrllaJBAQ3VP0vJTkUW9Jw3BxcDMV3qqjWMtMN2NS3u3C4egk5nsyesttxopcTXD/BA
	3x9wqsjz7nPpLEwCmHiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWW7K-009y1H-C9; Tue, 22 Mar 2022 04:27:34 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWW7H-009y0d-7w
 for linux-rockchip@lists.infradead.org; Tue, 22 Mar 2022 04:27:33 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 98D5A5C01F1;
 Tue, 22 Mar 2022 00:27:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 22 Mar 2022 00:27:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
 cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm3; bh=PqHUd5owomIzelxDKzbf0e/+f2e+1gCCrGI+eC
 zjIQs=; b=POj6JxTzuV1ESQEX1nyLq/c9BNS73SkyRWbME/cw+EMxbmAOhI+Xx2
 ObfN2gRuVJ11cCt5MuwVTt7ml9Tn9fALp1HzH7M4T1RNGQb6ZQQtVbAWKK0JRvFp
 FH2yiocRq3QKghNqOS27RN6YI2/o4vORYBg9EKg1e94hnoaUPkFzp8ZmMlEsKLOL
 aGPOSrZ/BrUJo5wspE68byanAEtXORYirPu75yNZJNrlRjaixJkblLwNP5jcW/jw
 5C4JHW4oegtxSxund37eqQqtjrpXogJIhzb0KQoUK5U/badLzwCT3SiLllrzW6gO
 uDHPqY34xAmI8Lc5HXxR0boWA8jyC1LA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=PqHUd5owomIzelxDK
 zbf0e/+f2e+1gCCrGI+eCzjIQs=; b=ZQdFqPHG1HhEmHJqTyI75NRdObQGqgZa4
 N9I/QV4g6ar0Ubahj4JuvJeYB1kHODvdhATWzxTHTb+tkMbEYe1zMt1cI75UNapH
 c6jYtMiKheZqUylmhViDMenQB+xqLcVDjY/QoCBjTAFcbGWgp3d+0nwGF9au6BCJ
 C51ZNnBC/ORQ/b0epd0+P7UKe1b1BDfnZtGtQ4bXJdDyJ9l26mCMXinpZIxcz1TL
 GT9Lv4JoVZpfeFll/suFCCs0mb6gNz0yQ/7HJYaZKSG+xtQGYb3zQd46z+BqYSXo
 0PGujcWjGtmJ0EjjfBSYYEfoYX+uvTF8FmHrLk7ZobbiUXbWcoCaw==
X-ME-Sender: <xms:MVA5Yvbj_y5gLP1AHzc03oWXDey_Ik-Whv_IhQpJVsQfsUXfzADyMw>
 <xme:MVA5YuYvgazr2Lz_HOq9OkdpNihPuS58E0Ovr4lqIb84feQoEvgFoEqseVViImevg
 ijee-6bCLWoplOtFjM>
X-ME-Received: <xmr:MVA5Yh9hchcm67Tul3kHuGCSA6ExkXHiFdvv85XfxF0KcA9j69kb5T21BKbwDub0MkpvLdAiq3Z-0oeSD2rd7OUP>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeggedgieelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghfnhgr
 ucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqnecugg
 ftrfgrthhtvghrnhepffelvddujefgieetvdelveetudeukeektdejvdegvdfgudelteff
 ueejvdevkeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
 homhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:MVA5YlqgbG7qMfnsPMT5VG6iN5U02q1nbRdS0E6v7ei7e7UauJpv5A>
 <xmx:MVA5YqrmjLfznqXuw5Ex_lF7hxuMOSd3xRMpOEkj4DE2nB_ssWlbww>
 <xmx:MVA5YrSO2U-4OXyIl8ATT3UwR49xm4Z6EYrfUB6YLIImL7LPIO0ptw>
 <xmx:MlA5Yjk2mEoE0LZklaewUXc1QeeKMRG_anuKICBlLpY1JUST6MOYRQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 22 Mar 2022 00:27:28 -0400 (EDT)
Date: Tue, 22 Mar 2022 06:27:26 +0200
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 05/17] media: rkisp1: params: Fix and simplify
 (un)registration
Message-ID: <20220322042726.ifcrbleogwedgebe@guri>
References: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
 <20220319163100.3083-6-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220319163100.3083-6-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_212731_400607_15EFAE01 
X-CRM114-Status: GOOD (  17.67  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 19.03.2022 18:30, Laurent Pinchart wrote:
> The rkisp1_params_register() and rkisp1_params_unregister() functions
> don't destroy the mutex (in the error path for the former). Fix this,
> simplify error handling at registration time as media_entity_cleanup()
> can be called on an uninitialized entity, and make
> rkisp1_params_unregister() safe to be called on an unregistered params
> node to prepare for simplification of error handling at probe time.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-params.c      | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index 8f62f09e635f..d41823c861ca 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -1844,16 +1844,21 @@ int rkisp1_params_register(struct rkisp1_device *rkisp1)
>  	node->pad.flags = MEDIA_PAD_FL_SOURCE;
>  	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
>  	if (ret)
> -		return ret;
> +		goto error;
> +
>  	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
>  	if (ret) {
>  		dev_err(rkisp1->dev,
>  			"failed to register %s, ret=%d\n", vdev->name, ret);
> -		goto err_cleanup_media_entity;
> +		goto error;
>  	}
> +
>  	return 0;
> -err_cleanup_media_entity:
> +
> +error:
>  	media_entity_cleanup(&vdev->entity);
> +	mutex_destroy(&node->vlock);
> +	params->rkisp1 = NULL;
>  	return ret;
>  }
>  
> @@ -1863,6 +1868,10 @@ void rkisp1_params_unregister(struct rkisp1_device *rkisp1)
>  	struct rkisp1_vdev_node *node = &params->vnode;
>  	struct video_device *vdev = &node->vdev;
>  
> +	if (!params->rkisp1)
> +		return;
> +

For the capture devices, you did:
       if (!video_is_registered(&cap->vnode.vdev))
               return;
Better be consistend and do the same here and for stats?

Thanks,
Dafna


>  	vb2_video_unregister_device(vdev);
>  	media_entity_cleanup(&vdev->entity);
> +	mutex_destroy(&node->vlock);
>  }
> -- 
> Regards,
> 
> Laurent Pinchart
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
