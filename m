Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0516BC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 17:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5/TWq5//dW8O0cUMfDWpx+wHEFT4G8l0sqRpz0vNvs=; b=iAW5ojliVIJ8ZD
	lp0LDUPvX4x0BnPt0etahT8Rzxwge6zzBNXydp7GaRxlWX91/LdwMfbw1a4vaOcXfIV4bHcOIidcd
	S+q0pMB3ykA4GiX7OX9mznjI6/pVOs3R9zmR7BkLIIP6gvIQBJSAuiCrWdbbphBp8bPbCuV+8fbFN
	hc7wvc/08PjHcPDoOEPi6M4ZKaS8n4hENUyMz18wuyozJjZolXVfMRB9UN6z7E7rdUgzDDIBH5e0J
	k96HoX6fhW6c2yx5KieFWvMKRvvwj3oZIE5C558N1SQv2DVbQ4nrVlgWTj7oroIBlAL2hZHfG5KDG
	HTGmxRqSDAQgXLl/3tKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o599l-006sV4-Un; Sat, 25 Jun 2022 17:01:13 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o599h-006sTj-RS
	for linux-rockchip@lists.infradead.org; Sat, 25 Jun 2022 17:01:12 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8AA4031A;
	Sat, 25 Jun 2022 19:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656176467;
	bh=6Du3+IGlBlFKqyOitRNOCyu4tCJZhzoq5Tnx3JgF7zw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I4TgqHkd4sK18TpxPZ1dnHGBKDHETJiAJWIP4KC3+UaJCjswcatH1Dc+zUxyxgvyJ
	 P8UlZTtp/uH3W7hIKxi5HS6uljBgLFfs7Kiws0LqMbOb6HpBO4POPPC35HFjmla9OS
	 1oWj6d/ZqFA/049Ctp6of+WnSksxfWbpNfcRKIg8=
Date: Sat, 25 Jun 2022 20:00:50 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
	dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 37/55] media: mc-entity: Add a new helper function to get
 a remote pad
Message-ID: <Yrc/Qs7dtciy22dv@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-38-paul.elder@ideasonboard.com>
 <6a718a13-e441-f093-d86e-5480d0a46103@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6a718a13-e441-f093-d86e-5480d0a46103@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220625_100110_066655_C6CD1C5E 
X-CRM114-Status: GOOD (  42.53  )
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

Hi Hans,

On Fri, Jun 17, 2022 at 01:48:05PM +0200, Hans Verkuil wrote:
> On 6/14/22 21:11, Paul Elder wrote:
> > From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > 
> > The media_entity_remote_pad() helper function returns the first remote
> > pad it find connected to a given pad. Beside being possibly ill-named
> > (as it operates on a pad, not an entity) and non-deterministic (as it
> > stops at the first enabled link), the fact that it returns the first
> > match makes it unsuitable for drivers that need to guarantee that a
> > single link is enabled, for instance when an entity can process data
> > from one of multiple sources at a time.
> 
> Question: of all the callers of this function, are there any that really
> need media_entity_remote_pad() instead of media_pad_remote_pad_unique()?
> 
> Would it be possible to replace all callers of the old function with the
> new function? If that's the case, then the _unique suffix can be dropped,
> since that would effectively be the default. And if a function is needed
> to handle the case where there are multiple enabled links, then a new
> function should be created.

I don't think so. media_entity_remote_pad() operates on a pad, switching
to media_pad_remote_pad_unique() wouldn't work on subdevs that have
multiple sink or source pads with one active link each.

> Also, media_entity_remote_pad() should really be renamed to
> media_pad_remote_pad_first() or something like that, right? I'm not saying
> you should, but that's really what it does, as I understand it.

Yes, I think that would make sense, and it would freethe
media_entity_remote_pad() name, so the new function wouldn't need the
_unique suffix. I'll give it a try.

> > For those use cases, add a new helper function,
> > media_entity_remote_pad_unique(), that operates on an entity and returns
> > a remote pad, with a guarantee that only one link is enabled. To ease
> > its use in drivers, also add an inline wrapper that locates source pads
> > specifically. A wrapper that locates sink pads can easily be added when
> > needed.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  Documentation/driver-api/media/mc-core.rst |  4 +-
> >  drivers/media/mc/mc-entity.c               | 38 ++++++++++++++++++
> >  include/media/media-entity.h               | 45 ++++++++++++++++++++++
> >  3 files changed, 85 insertions(+), 2 deletions(-)
> > 
> > diff --git a/Documentation/driver-api/media/mc-core.rst b/Documentation/driver-api/media/mc-core.rst
> > index 02481a2513b9..a2d1e32e3abb 100644
> > --- a/Documentation/driver-api/media/mc-core.rst
> > +++ b/Documentation/driver-api/media/mc-core.rst
> > @@ -186,8 +186,8 @@ is required and the graph structure can be freed normally.
> >  
> >  Helper functions can be used to find a link between two given pads, or a pad
> >  connected to another pad through an enabled link
> > -:c:func:`media_entity_find_link()` and
> > -:c:func:`media_entity_remote_pad()`.
> > +(:c:func:`media_entity_find_link()`, :c:func:`media_entity_remote_pad()` and
> > +:c:func:`media_entity_remote_source_pad()`).
> >  
> >  Use count and power handling
> >  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> > diff --git a/drivers/media/mc/mc-entity.c b/drivers/media/mc/mc-entity.c
> > index 11f5207f73aa..1febf5a86be6 100644
> > --- a/drivers/media/mc/mc-entity.c
> > +++ b/drivers/media/mc/mc-entity.c
> > @@ -9,6 +9,7 @@
> >   */
> >  
> >  #include <linux/bitmap.h>
> > +#include <linux/list.h>
> >  #include <linux/property.h>
> >  #include <linux/slab.h>
> >  #include <media/media-entity.h>
> > @@ -920,6 +921,43 @@ struct media_pad *media_entity_remote_pad(const struct media_pad *pad)
> >  }
> >  EXPORT_SYMBOL_GPL(media_entity_remote_pad);
> >  
> > +struct media_pad *
> > +media_entity_remote_pad_unique(const struct media_entity *entity,
> > +			       unsigned int type)
> > +{
> > +	struct media_pad *pad = NULL;
> > +	struct media_link *link;
> > +
> > +	list_for_each_entry(link, &entity->links, list) {
> > +		struct media_pad *local_pad;
> > +		struct media_pad *remote_pad;
> > +
> > +		if (!(link->flags & MEDIA_LNK_FL_ENABLED))
> > +			continue;
> > +
> > +		if (type == MEDIA_PAD_FL_SOURCE) {
> > +			local_pad = link->sink;
> > +			remote_pad = link->source;
> > +		} else {
> > +			local_pad = link->source;
> > +			remote_pad = link->sink;
> > +		}
> > +
> > +		if (local_pad->entity == entity) {
> > +			if (pad)
> > +				return ERR_PTR(-ENOTUNIQ);
> > +
> > +			pad = remote_pad;
> > +		}
> > +	}
> > +
> > +	if (!pad)
> > +		return ERR_PTR(-ENOLINK);
> > +
> > +	return pad;
> > +}
> > +EXPORT_SYMBOL_GPL(media_entity_remote_pad_unique);
> > +
> >  static void media_interface_init(struct media_device *mdev,
> >  				 struct media_interface *intf,
> >  				 u32 gobj_type,
> > diff --git a/include/media/media-entity.h b/include/media/media-entity.h
> > index a9a1c0ec5d1c..33d5f52719a0 100644
> > --- a/include/media/media-entity.h
> > +++ b/include/media/media-entity.h
> > @@ -859,6 +859,51 @@ struct media_link *media_entity_find_link(struct media_pad *source,
> >   */
> >  struct media_pad *media_entity_remote_pad(const struct media_pad *pad);
> >  
> > +/**
> > + * media_entity_remote_pad_unique - Find a remote pad connected to an entity
> > + * @entity: The entity
> > + * @type: The type of pad to find (MEDIA_PAD_FL_SINK or MEDIA_PAD_FL_SOURCE)
> > + *
> > + * Search for and return a remote pad of @type connected to @entity through an
> > + * enabled link. If multiple (or no) remote pads match these criteria, an error
> > + * is returned.
> > + *
> > + * The uniqueness constraint makes this helper function suitable for entities
> > + * that support a single active source or sink at a time.
> > + *
> > + * Return: A pointer to the remote pad, or one of the following error pointers
> > + * if an error occurs:
> > + *
> > + * * -ENOTUNIQ - Multiple links are enabled
> > + * * -ENOLINK - No connected pad found
> > + */
> > +struct media_pad *
> > +media_entity_remote_pad_unique(const struct media_entity *entity,
> > +			       unsigned int type);
> > +
> > +/**
> > + * media_entity_remote_source_pad - Find a remote source pad connected to an entity
> > + * @entity: The entity
> > + *
> > + * Search for and return a remote source pad connected to @entity through an
> > + * enabled link. If multiple (or no) remote pads match these criteria, an error
> > + * is returned.
> > + *
> > + * The uniqueness constraint makes this helper function suitable for entities
> > + * that support a single active source at a time.
> > + *
> > + * Return: A pointer to the remote pad, or one of the following error pointers
> > + * if an error occurs:
> > + *
> > + * * -ENOTUNIQ - Multiple links are enabled
> > + * * -ENOLINK - No connected pad found
> > + */
> > +static inline struct media_pad *
> > +media_entity_remote_source_pad(const struct media_entity *entity)
> > +{
> > +	return media_entity_remote_pad_unique(entity, MEDIA_PAD_FL_SOURCE);
> > +}
> > +
> >  /**
> >   * media_entity_is_streaming - Test if an entity is part of a streaming pipeline
> >   * @entity: The entity

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
