Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FE4CC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 12:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vLJzI0ai9RoeLIp+5qcm6w7VwvK5jAk8B4Lq6C0iSU=; b=UpctXJmj7UFapm
	2qqGJXgonx0iVDqgGPAjorenpYsNE8sPq/Hnl3gfB+Fi3RSB5LRAYRZknZ153eEoTF7Zg//0fwrGK
	V374NA20Hb2Tc55qrFF7DIm+xYCfJqdfLEzmRrUI9oOPjU5P1oG+qbTGvj82mNHv/frXnigDOjPvb
	0n8LQ5GmJ72bvvnuFpBqZy8DvROGRdzI0tIbuESjoXvdg6s0LcTtWmOJrhqEsnyXJlzkKMShLYiUJ
	Q8eMWjtftgiaejXLYlQ258IvmcSBpTLVO7KTV9z6Qj6rFuiSs6GUFE+bzOlQ0VClFg0z7czAjrYwL
	WTpjiRh5auVH4uYv747Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ6wO-009vw2-GF; Fri, 04 Mar 2022 12:21:48 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ6wL-009vvJ-QM
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 12:21:47 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3210C51C;
 Fri,  4 Mar 2022 13:21:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1646396504;
 bh=+/sWkafIYykGXXV68IAO5+//sEh6HhhitwIknxA0TAc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uMjUq0nPGm8K5Rdd2lXTlcCpyVtfD5EUEdbtjBaHlhcxvIITGUP8koOXqGILZMEHe
 me+ozqGEy8S4xd6Pr7LeKPzFw83RbhpKn0NUJUvcBt3M7VpZGlIj/rhIFuNY1aAbIR
 BKLavyfBqSRm0UetWHkInYMVuNmLFqbtcD1eI0YU=
Date: Fri, 4 Mar 2022 14:21:31 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 02/16] media: rkisp1: capture: Fix and simplify
 (un)registration
Message-ID: <YiIES2Q6G4FPTQQ8@pendragon.ideasonboard.com>
References: <20220227160116.18556-1-laurent.pinchart@ideasonboard.com>
 <20220227160116.18556-3-laurent.pinchart@ideasonboard.com>
 <20220302171040.bem4jeinzowppzx6@guri>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220302171040.bem4jeinzowppzx6@guri>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_042146_027165_810060BC 
X-CRM114-Status: GOOD (  23.07  )
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

On Wed, Mar 02, 2022 at 07:10:40PM +0200, Dafna Hirschfeld wrote:
> On 27.02.2022 18:01, Laurent Pinchart wrote:
> > The rkisp1_register_capture() and rkisp1_unregister_capture() functions
> > don't destroy the mutex (in the error path for the former). Fix this and
> > make rkisp1_unregister_capture() and rkisp1_capture_devs_unregister()
> > safe to be called on an unregistered capture node to prepare for
> > simplification of error handling at probe time.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  .../platform/rockchip/rkisp1/rkisp1-capture.c | 26 ++++++++++---------
> >  1 file changed, 14 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > index 9c11f2b8e5f5..18be7c982db7 100644
> > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> > @@ -1312,8 +1312,12 @@ static const struct v4l2_file_operations rkisp1_fops = {
> >  
> >  static void rkisp1_unregister_capture(struct rkisp1_capture *cap)
> >  {
> > +	if (!cap->rkisp1)
> > +		return;
> > +
> >  	media_entity_cleanup(&cap->vnode.vdev.entity);
> >  	vb2_video_unregister_device(&cap->vnode.vdev);
> > +	mutex_destroy(&cap->vnode.vlock);
> >  }
> >  
> >  void rkisp1_capture_devs_unregister(struct rkisp1_device *rkisp1)
> > @@ -1390,6 +1394,8 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
> >  
> >  error:
> >  	media_entity_cleanup(&vdev->entity);
> > +	mutex_destroy(&node->vlock);
> > +	cap->rkisp1 = NULL;
> >  	return ret;
> >  }
> >  
> > @@ -1425,26 +1431,22 @@ rkisp1_capture_init(struct rkisp1_device *rkisp1, enum rkisp1_stream_id id)
> >  
> >  int rkisp1_capture_devs_register(struct rkisp1_device *rkisp1)
> >  {
> > -	struct rkisp1_capture *cap;
> > -	unsigned int i, j;
> > +	unsigned int i;
> >  	int ret;
> >  
> >  	for (i = 0; i < ARRAY_SIZE(rkisp1->capture_devs); i++) {
> > +		struct rkisp1_capture *cap = &rkisp1->capture_devs[i];
> > +
> >  		rkisp1_capture_init(rkisp1, i);
> > -		cap = &rkisp1->capture_devs[i];
> >  		cap->rkisp1 = rkisp1;
> > +
> >  		ret = rkisp1_register_capture(cap);
> > -		if (ret)
> > -			goto err_unreg_capture_devs;
> > +		if (ret) {
> 
> I would set 'cap->rkisp1 = NULL' here instead of in rkisp1_register_capture
> so that 'rkisp1l' field is set and unset in the same function

I'll fix that, and in the resizer patch too.

> > +			rkisp1_capture_devs_unregister(rkisp1);
> > +			return ret;
> > +		}
> >  	}
> >  
> >  	return 0;
> >  
> > -err_unreg_capture_devs:
> > -	for (j = 0; j < i; j++) {
> > -		cap = &rkisp1->capture_devs[j];
> > -		rkisp1_unregister_capture(cap);
> > -	}
> > -
> > -	return ret;
> >  }

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
