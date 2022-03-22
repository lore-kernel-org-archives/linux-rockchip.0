Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF73FC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Mar 2022 10:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HcPw/qvbOp7RanbW2Ehmufs/Y7vXUXbPPrJU31OjFrc=; b=MdvGhfss1H6SeK
	gh8tjCr0q8lARS+4QTPzKAzDLvXUsaIs0iG49ECysMncf+MO2aiNYKzKa3cNfE1fRAmjTQTTrOPaB
	b7CZGKfP6EHkAeln8Ec7MYRcYcLWQxX+Pdd/SbRO4VD7cC9tIy5wSLLBinK/tbnAizxe0KllYt/I5
	RS8TVE1KVnzXaVFpkLfOwYpU2RRhjRd5n/IDMWSvASpyOUb5WBwuafMXnzpIi1h+gQ/FhDP4gifgV
	K/eR15KycZ6XCX0kv8FqzMxu6n6jOMnEFj5r+YlhW0agir8V7gTMkYfwR3AxOp7T+22lpJRKGFS2b
	DvGGUeSRX9I0ZKqXLMfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWbLB-00AfQ9-FE; Tue, 22 Mar 2022 10:02:13 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWbL8-00AfPZ-PA
 for linux-rockchip@lists.infradead.org; Tue, 22 Mar 2022 10:02:12 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 01AF49DE;
 Tue, 22 Mar 2022 11:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1647943329;
 bh=7+BsU3jsCMljdwgQ/u/uOUEzx4PQEdU9rrXgt0tO/Pc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QJWaqjqr5gA+fhrSNP8zW57eJZikGGJEjM3QGM1rbAVqyvWmDHQpqf1uNU9YBwKF7
 ntfM84KXujAABa9HDvTLktU850o4N+dfHP/rPYJ2mJN1xuSoLFjuCIZ62vfevI89m3
 pWWfD2qF/qtrD/ORsxSdPyhjnF1YgFshfjvddTIE=
Date: Tue, 22 Mar 2022 12:01:52 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 05/17] media: rkisp1: params: Fix and simplify
 (un)registration
Message-ID: <YjmekPN/JnTtDWlk@pendragon.ideasonboard.com>
References: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
 <20220319163100.3083-6-laurent.pinchart@ideasonboard.com>
 <20220322042726.ifcrbleogwedgebe@guri>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220322042726.ifcrbleogwedgebe@guri>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_030210_993339_A10C89E3 
X-CRM114-Status: GOOD (  20.57  )
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

Hi Dafna,

On Tue, Mar 22, 2022 at 06:27:26AM +0200, Dafna Hirschfeld wrote:
> On 19.03.2022 18:30, Laurent Pinchart wrote:
> > The rkisp1_params_register() and rkisp1_params_unregister() functions
> > don't destroy the mutex (in the error path for the former). Fix this,
> > simplify error handling at registration time as media_entity_cleanup()
> > can be called on an uninitialized entity, and make
> > rkisp1_params_unregister() safe to be called on an unregistered params
> > node to prepare for simplification of error handling at probe time.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  .../platform/rockchip/rkisp1/rkisp1-params.c      | 15 ++++++++++++---
> >  1 file changed, 12 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > index 8f62f09e635f..d41823c861ca 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> > @@ -1844,16 +1844,21 @@ int rkisp1_params_register(struct rkisp1_device *rkisp1)
> >  	node->pad.flags = MEDIA_PAD_FL_SOURCE;
> >  	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
> >  	if (ret)
> > -		return ret;
> > +		goto error;
> > +
> >  	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
> >  	if (ret) {
> >  		dev_err(rkisp1->dev,
> >  			"failed to register %s, ret=%d\n", vdev->name, ret);
> > -		goto err_cleanup_media_entity;
> > +		goto error;
> >  	}
> > +
> >  	return 0;
> > -err_cleanup_media_entity:
> > +
> > +error:
> >  	media_entity_cleanup(&vdev->entity);
> > +	mutex_destroy(&node->vlock);
> > +	params->rkisp1 = NULL;
> >  	return ret;
> >  }
> >  
> > @@ -1863,6 +1868,10 @@ void rkisp1_params_unregister(struct rkisp1_device *rkisp1)
> >  	struct rkisp1_vdev_node *node = &params->vnode;
> >  	struct video_device *vdev = &node->vdev;
> >  
> > +	if (!params->rkisp1)
> > +		return;
> > +
> 
> For the capture devices, you did:
>        if (!video_is_registered(&cap->vnode.vdev))
>                return;
> Better be consistend and do the same here and for stats?

I'll do that.

> >  	vb2_video_unregister_device(vdev);
> >  	media_entity_cleanup(&vdev->entity);
> > +	mutex_destroy(&node->vlock);
> >  }

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
