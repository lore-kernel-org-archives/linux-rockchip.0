Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C8F0C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 06:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3guBPq7Zqza14XKJr2uA4mpS7+PAw7S1xFSprDZJCVs=; b=kY+pngbaVRh1Sz
	q4O2XuiA5Vb4p4A4MEluZvhF/hqYB1bWwoUJRj5I1Oc2Nj+mtiiYYWlaGu9DWGf1DCP4JPnN3/yOg
	7qMRSZrXfLkTrVC+oCoTJAzUlG4pjU4xIiK67Y/Ua3moDq77G1WKNbj5JbK0QE0uOSXPL9bU0Qb3v
	P8o2GNx4GufXpBIBztdTvvntjJnCJBAs/BE6CUwV4fmvJHQySCbWhk6W3d6s8j+q3llaCZUbkfddE
	kvJ2RT2bbA7ZJGFPn5ORj/cr2GSsIM7thL3VhaZkHuotU1H+Yv3TpWIhN57SFOyM7o/PfIXWjrKqV
	84M9tQferD7sdFmf6C9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9LNB-00EGKJ-MY; Thu, 07 Jul 2022 06:52:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9LN7-00EGI6-TP
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 06:52:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9039D62252;
	Thu,  7 Jul 2022 06:52:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DB2DC3411E;
	Thu,  7 Jul 2022 06:52:18 +0000 (UTC)
Message-ID: <c8f5c146-10d2-dcc8-f492-62fa34a1d648@xs4all.nl>
Date: Thu, 7 Jul 2022 08:52:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 37/55] media: mc-entity: Add a new helper function to get
 a remote pad
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
 dafna@fastmail.com, heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
 jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
 linux-rockchip@lists.infradead.org
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-38-paul.elder@ideasonboard.com>
 <6a718a13-e441-f093-d86e-5480d0a46103@xs4all.nl>
 <Yrc/Qs7dtciy22dv@pendragon.ideasonboard.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <Yrc/Qs7dtciy22dv@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_235222_117671_5DF2A17B 
X-CRM114-Status: GOOD (  35.27  )
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



On 6/25/22 19:00, Laurent Pinchart wrote:
> Hi Hans,
> 
> On Fri, Jun 17, 2022 at 01:48:05PM +0200, Hans Verkuil wrote:
>> On 6/14/22 21:11, Paul Elder wrote:
>>> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>
>>> The media_entity_remote_pad() helper function returns the first remote
>>> pad it find connected to a given pad. Beside being possibly ill-named
>>> (as it operates on a pad, not an entity) and non-deterministic (as it
>>> stops at the first enabled link), the fact that it returns the first
>>> match makes it unsuitable for drivers that need to guarantee that a
>>> single link is enabled, for instance when an entity can process data
>>> from one of multiple sources at a time.
>>
>> Question: of all the callers of this function, are there any that really
>> need media_entity_remote_pad() instead of media_pad_remote_pad_unique()?
>>
>> Would it be possible to replace all callers of the old function with the
>> new function? If that's the case, then the _unique suffix can be dropped,
>> since that would effectively be the default. And if a function is needed
>> to handle the case where there are multiple enabled links, then a new
>> function should be created.
> 
> I don't think so. media_entity_remote_pad() operates on a pad, switching
> to media_pad_remote_pad_unique() wouldn't work on subdevs that have
> multiple sink or source pads with one active link each.

Do we have those today in the mainline kernel? Just checking...

Regards,

	Hans

> 
>> Also, media_entity_remote_pad() should really be renamed to
>> media_pad_remote_pad_first() or something like that, right? I'm not saying
>> you should, but that's really what it does, as I understand it.
> 
> Yes, I think that would make sense, and it would freethe
> media_entity_remote_pad() name, so the new function wouldn't need the
> _unique suffix. I'll give it a try.
> 
>>> For those use cases, add a new helper function,
>>> media_entity_remote_pad_unique(), that operates on an entity and returns
>>> a remote pad, with a guarantee that only one link is enabled. To ease
>>> its use in drivers, also add an inline wrapper that locates source pads
>>> specifically. A wrapper that locates sink pads can easily be added when
>>> needed.
>>>
>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>> ---
>>>  Documentation/driver-api/media/mc-core.rst |  4 +-
>>>  drivers/media/mc/mc-entity.c               | 38 ++++++++++++++++++
>>>  include/media/media-entity.h               | 45 ++++++++++++++++++++++
>>>  3 files changed, 85 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/driver-api/media/mc-core.rst b/Documentation/driver-api/media/mc-core.rst
>>> index 02481a2513b9..a2d1e32e3abb 100644
>>> --- a/Documentation/driver-api/media/mc-core.rst
>>> +++ b/Documentation/driver-api/media/mc-core.rst
>>> @@ -186,8 +186,8 @@ is required and the graph structure can be freed normally.
>>>  
>>>  Helper functions can be used to find a link between two given pads, or a pad
>>>  connected to another pad through an enabled link
>>> -:c:func:`media_entity_find_link()` and
>>> -:c:func:`media_entity_remote_pad()`.
>>> +(:c:func:`media_entity_find_link()`, :c:func:`media_entity_remote_pad()` and
>>> +:c:func:`media_entity_remote_source_pad()`).
>>>  
>>>  Use count and power handling
>>>  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>>> diff --git a/drivers/media/mc/mc-entity.c b/drivers/media/mc/mc-entity.c
>>> index 11f5207f73aa..1febf5a86be6 100644
>>> --- a/drivers/media/mc/mc-entity.c
>>> +++ b/drivers/media/mc/mc-entity.c
>>> @@ -9,6 +9,7 @@
>>>   */
>>>  
>>>  #include <linux/bitmap.h>
>>> +#include <linux/list.h>
>>>  #include <linux/property.h>
>>>  #include <linux/slab.h>
>>>  #include <media/media-entity.h>
>>> @@ -920,6 +921,43 @@ struct media_pad *media_entity_remote_pad(const struct media_pad *pad)
>>>  }
>>>  EXPORT_SYMBOL_GPL(media_entity_remote_pad);
>>>  
>>> +struct media_pad *
>>> +media_entity_remote_pad_unique(const struct media_entity *entity,
>>> +			       unsigned int type)
>>> +{
>>> +	struct media_pad *pad = NULL;
>>> +	struct media_link *link;
>>> +
>>> +	list_for_each_entry(link, &entity->links, list) {
>>> +		struct media_pad *local_pad;
>>> +		struct media_pad *remote_pad;
>>> +
>>> +		if (!(link->flags & MEDIA_LNK_FL_ENABLED))
>>> +			continue;
>>> +
>>> +		if (type == MEDIA_PAD_FL_SOURCE) {
>>> +			local_pad = link->sink;
>>> +			remote_pad = link->source;
>>> +		} else {
>>> +			local_pad = link->source;
>>> +			remote_pad = link->sink;
>>> +		}
>>> +
>>> +		if (local_pad->entity == entity) {
>>> +			if (pad)
>>> +				return ERR_PTR(-ENOTUNIQ);
>>> +
>>> +			pad = remote_pad;
>>> +		}
>>> +	}
>>> +
>>> +	if (!pad)
>>> +		return ERR_PTR(-ENOLINK);
>>> +
>>> +	return pad;
>>> +}
>>> +EXPORT_SYMBOL_GPL(media_entity_remote_pad_unique);
>>> +
>>>  static void media_interface_init(struct media_device *mdev,
>>>  				 struct media_interface *intf,
>>>  				 u32 gobj_type,
>>> diff --git a/include/media/media-entity.h b/include/media/media-entity.h
>>> index a9a1c0ec5d1c..33d5f52719a0 100644
>>> --- a/include/media/media-entity.h
>>> +++ b/include/media/media-entity.h
>>> @@ -859,6 +859,51 @@ struct media_link *media_entity_find_link(struct media_pad *source,
>>>   */
>>>  struct media_pad *media_entity_remote_pad(const struct media_pad *pad);
>>>  
>>> +/**
>>> + * media_entity_remote_pad_unique - Find a remote pad connected to an entity
>>> + * @entity: The entity
>>> + * @type: The type of pad to find (MEDIA_PAD_FL_SINK or MEDIA_PAD_FL_SOURCE)
>>> + *
>>> + * Search for and return a remote pad of @type connected to @entity through an
>>> + * enabled link. If multiple (or no) remote pads match these criteria, an error
>>> + * is returned.
>>> + *
>>> + * The uniqueness constraint makes this helper function suitable for entities
>>> + * that support a single active source or sink at a time.
>>> + *
>>> + * Return: A pointer to the remote pad, or one of the following error pointers
>>> + * if an error occurs:
>>> + *
>>> + * * -ENOTUNIQ - Multiple links are enabled
>>> + * * -ENOLINK - No connected pad found
>>> + */
>>> +struct media_pad *
>>> +media_entity_remote_pad_unique(const struct media_entity *entity,
>>> +			       unsigned int type);
>>> +
>>> +/**
>>> + * media_entity_remote_source_pad - Find a remote source pad connected to an entity
>>> + * @entity: The entity
>>> + *
>>> + * Search for and return a remote source pad connected to @entity through an
>>> + * enabled link. If multiple (or no) remote pads match these criteria, an error
>>> + * is returned.
>>> + *
>>> + * The uniqueness constraint makes this helper function suitable for entities
>>> + * that support a single active source at a time.
>>> + *
>>> + * Return: A pointer to the remote pad, or one of the following error pointers
>>> + * if an error occurs:
>>> + *
>>> + * * -ENOTUNIQ - Multiple links are enabled
>>> + * * -ENOLINK - No connected pad found
>>> + */
>>> +static inline struct media_pad *
>>> +media_entity_remote_source_pad(const struct media_entity *entity)
>>> +{
>>> +	return media_entity_remote_pad_unique(entity, MEDIA_PAD_FL_SOURCE);
>>> +}
>>> +
>>>  /**
>>>   * media_entity_is_streaming - Test if an entity is part of a streaming pipeline
>>>   * @entity: The entity
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
