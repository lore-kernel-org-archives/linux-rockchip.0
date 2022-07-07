Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBC73C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 07:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBNhHLGJfzKmZF/iyobnzeSqShJ5A6eHz/rPd9/eJWk=; b=ep7SE/jEyYitKr
	FPldDo3cbimK4HMOHQt0/xDF87yfA2kE/B/a0Xema7Ghx+dpzKiPltyH7/+tFRX00slACxjXfNMgU
	JUlvnr0FnjRZPV/Dbe7LF1Rvvk31Q2v78zo4lVEAVMuPLBY+RuM54Uhb0wTl1ZBBttFiG0rwrWNi1
	4ujipHp0FYZ7wwzwTBbasUXCKpjFo7pIA6cCqCe9UEK5YgTT1SqtrrZC4p8qN5bmgCXBqu3SIqZkl
	HimfZ9Jcew9PZk+CgcGorx7dtAUr3YBSXhvt9eZAUmy2HOjwySmt1eikDF4k/FugjA3V7DuO9rAsX
	r1ckRq2aVp/AO6+N58hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9LXC-00ELF4-4g; Thu, 07 Jul 2022 07:02:46 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9LWN-00EKYF-5a
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 07:01:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id EF2B9B81EFB;
	Thu,  7 Jul 2022 07:01:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F97EC3411E;
	Thu,  7 Jul 2022 07:01:47 +0000 (UTC)
Message-ID: <f905cf1b-0201-12b9-4183-6d28d79d3b29@xs4all.nl>
Date: Thu, 7 Jul 2022 09:01:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 04/55] media: mc-entity: Add a new helper function to
 get a remote pad for a pad
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, Dafna Hirschfeld
 <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Helen Koike <helen.koike@collabora.com>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-5-laurent.pinchart@ideasonboard.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20220630230713.10580-5-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_000155_576932_E3984D82 
X-CRM114-Status: GOOD (  30.50  )
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



On 7/1/22 01:06, Laurent Pinchart wrote:
> The newly added media_entity_remote_source_pad() helper function handles

Same here: this should be media_entity_remote_source_pad_unique().

> use cases where the entity has a link enabled uniqueness constraint
> covering all pads. There are use cases where the constraint covers a
> specific pad only. Add a new media_pad_remote_pad_unique() function to
> handle this. It operates as media_entity_remote_source_pad(), but on a

Ditto.

The commit message of this and the previous patch must be updated, either
in a new v3 or separate v2.1 follow-up patches for these two, or before
making a PR. It's very confusing to mix old and new names :-)

Regards,

	Hans

> given pad instead of on the entity.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
> ---
> Changes since v1:
> 
> - Rename media_pad_remote_pad() to media_pad_remote_pad_unique()
> ---
>  Documentation/driver-api/media/mc-core.rst |  5 ++--
>  drivers/media/mc/mc-entity.c               | 31 ++++++++++++++++++++++
>  include/media/media-entity.h               | 18 +++++++++++++
>  3 files changed, 52 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/driver-api/media/mc-core.rst b/Documentation/driver-api/media/mc-core.rst
> index 66801506b2dd..644911936ad9 100644
> --- a/Documentation/driver-api/media/mc-core.rst
> +++ b/Documentation/driver-api/media/mc-core.rst
> @@ -186,8 +186,9 @@ is required and the graph structure can be freed normally.
>  
>  Helper functions can be used to find a link between two given pads, or a pad
>  connected to another pad through an enabled link
> -(:c:func:`media_entity_find_link()`, :c:func:`media_pad_remote_pad_first()` and
> -:c:func:`media_entity_remote_source_pad_unique()`).
> +(:c:func:`media_entity_find_link()`, :c:func:`media_pad_remote_pad_first()`n
> +:c:func:`media_entity_remote_source_pad_unique()` and
> +:c:func:`media_pad_remote_pad_unique()`).
>  
>  Use count and power handling
>  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> diff --git a/drivers/media/mc/mc-entity.c b/drivers/media/mc/mc-entity.c
> index bd7145932137..7082403d5800 100644
> --- a/drivers/media/mc/mc-entity.c
> +++ b/drivers/media/mc/mc-entity.c
> @@ -960,6 +960,37 @@ media_entity_remote_pad_unique(const struct media_entity *entity,
>  }
>  EXPORT_SYMBOL_GPL(media_entity_remote_pad_unique);
>  
> +struct media_pad *media_pad_remote_pad_unique(const struct media_pad *pad)
> +{
> +	struct media_pad *found_pad = NULL;
> +	struct media_link *link;
> +
> +	list_for_each_entry(link, &pad->entity->links, list) {
> +		struct media_pad *remote_pad;
> +
> +		if (!(link->flags & MEDIA_LNK_FL_ENABLED))
> +			continue;
> +
> +		if (link->sink == pad)
> +			remote_pad = link->source;
> +		else if (link->source == pad)
> +			remote_pad = link->sink;
> +		else
> +			continue;
> +
> +		if (found_pad)
> +			return ERR_PTR(-ENOTUNIQ);
> +
> +		found_pad = remote_pad;
> +	}
> +
> +	if (!found_pad)
> +		return ERR_PTR(-ENOLINK);
> +
> +	return found_pad;
> +}
> +EXPORT_SYMBOL_GPL(media_pad_remote_pad_unique);
> +
>  static void media_interface_init(struct media_device *mdev,
>  				 struct media_interface *intf,
>  				 u32 gobj_type,
> diff --git a/include/media/media-entity.h b/include/media/media-entity.h
> index aecd1691b297..cd0690cff4c2 100644
> --- a/include/media/media-entity.h
> +++ b/include/media/media-entity.h
> @@ -859,6 +859,24 @@ struct media_link *media_entity_find_link(struct media_pad *source,
>   */
>  struct media_pad *media_pad_remote_pad_first(const struct media_pad *pad);
>  
> +/**
> + * media_pad_remote_pad_unique - Find a remote pad connected to a pad
> + * @pad: The pad
> + *
> + * Search for and return a remote pad connected to @pad through an enabled
> + * link. If multiple (or no) remote pads are found, an error is returned.
> + *
> + * The uniqueness constraint makes this helper function suitable for entities
> + * that support a single active source at a time on a given pad.
> + *
> + * Return: A pointer to the remote pad, or one of the following error pointers
> + * if an error occurs:
> + *
> + * * -ENOTUNIQ - Multiple links are enabled
> + * * -ENOLINK - No connected pad found
> + */
> +struct media_pad *media_pad_remote_pad_unique(const struct media_pad *pad);
> +
>  /**
>   * media_entity_remote_pad_unique - Find a remote pad connected to an entity
>   * @entity: The entity

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
