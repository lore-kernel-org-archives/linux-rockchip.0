Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D1C2C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jun 2022 09:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8n395fLfDnmRElNq1nHs2AYE7AYg7vjHkxMgyKdwTE=; b=lsrRfPzQ92qUAH
	08c7HqyEWZnoIlN5Wr3eMtg6RW6xXy6GT3PYGePz2MOZDixK+0xntXx4EzJ2OEvejC78DlEokvuhd
	5VYpwIkSMa6M60g7Lfn/hKREe8GDuTlxrphvVjRN+LhOyI3+R9B3XnjVa8DKEDRTZPP0Rmla8l48n
	vHC6qXfIWl6TFQ2cFH0N3JtVBLjoZmkbI9eRj8D1q3zKW/SKd+sN7rfSMBYRzCi9mk1HMFFs3o/q5
	DmqbifMp9kB9P8Z2UlnOngi1BIo/tXF7XRed9UuwbI/z2MJOQBbUdIaePFHwcQcOQtniK7SUYZNcM
	cjB3o9fMyA8WRcgmXfuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2UrY-00AvDF-2p; Sat, 18 Jun 2022 09:35:28 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2UrM-00AvBF-AH
	for linux-rockchip@lists.infradead.org; Sat, 18 Jun 2022 09:35:18 +0000
Received: by mail-wm1-x332.google.com with SMTP id s21-20020a1cf215000000b0039ee8149524so1902179wmc.5
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Jun 2022 02:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0VTiPzVD6qYuJGQ4wfTWvsWiQxPV36KQBft5zrb1bok=;
        b=JRg+brz/qC6EH62lPeCcwvV5McvTmrGxM72XChksqEmOXcc4qJb2x/oHKC9XlivLPv
         sqf3TnxLnnoo3In9Jl71iJTv8w6Rm4rtvTJRNFaekF25VJwnZ3V8J8UD1oUWW3CLNgLa
         +aKtOWVlxDqdgd925x1Uq3rCPjaKBGNFFqMsZJkTD2lR+spTQTMOq5jUBhsoBiHypJJc
         Stv3dkgYyf5XOj/HknMtoZUXcq8Nsd0Qlp1EzyDzKl4JqMb2lNID1EFS9jrGMfSPkScR
         LON41vTOofqCAEdOEhNjg1857tzk7ihDOmEH9wi3tSkYrH+UDnuxMlkD8W5cCzkY8I1U
         MTlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0VTiPzVD6qYuJGQ4wfTWvsWiQxPV36KQBft5zrb1bok=;
        b=rONyhqIt4ZLgoJTSFHy8Yu/VR2fLG87QaaOxNoF+m9fgPmCi4gYI+Y6Eocq5e4ntYu
         B8fM9R/aHRWxjeB7O8+LiX3kEZBJ4A+M5jkbc5nXPAclmeekWhRF/OfSFVe9BBEL2MgL
         Uh5vQ9I+/KbEJmSulmfJFQcjWmfBY++vIWnY9YtT9GmM/CnqZAK+VHEBpTsspiD2E14E
         i10YdC4CAO6oxwNa+FZAAy+CeDbE9rR4lrZ35wt5KmvDIyyrFMTS36GtUR9MD+C6j7OD
         DS2fIYTCjbuCgiTYXuQstQuwDRnjKiySb5lTDdBv7pNe+GkRgq7oqI1SrSlyWmqwx7sk
         FfwA==
X-Gm-Message-State: AJIora9kPcvHtLw6Wek8B3E1y7VQq6I+z3XqFXihyL+D7quBOUaFJ9ti
	iHVI1RyRnNmW004qp6drcOw=
X-Google-Smtp-Source: AGRyM1ufoDFCwVH+JcGRA626l4jqiLxesakhfx3KjDC10Wlc0c6nc6wCGYzUcNAFUl0agHvr3uXJSQ==
X-Received: by 2002:a1c:4b06:0:b0:39e:eb6e:6fc8 with SMTP id y6-20020a1c4b06000000b0039eeb6e6fc8mr6358560wma.188.1655544913451;
        Sat, 18 Jun 2022 02:35:13 -0700 (PDT)
Received: from [192.168.0.14] (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net. [86.13.91.161])
        by smtp.gmail.com with ESMTPSA id h30-20020adfaa9e000000b0020c7ec0fdf4sm8562687wrc.117.2022.06.18.02.35.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jun 2022 02:35:13 -0700 (PDT)
Message-ID: <936ea3d3-530e-1b7b-f96c-1407d3f24abd@gmail.com>
Date: Sat, 18 Jun 2022 10:35:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 37/55] media: mc-entity: Add a new helper function to get
 a remote pad
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
 dafna@fastmail.com, heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
 jacopo@jmondi.org, helen.koike@collabora.com,
 linux-rockchip@lists.infradead.org
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-38-paul.elder@ideasonboard.com>
 <e9b1b46f-e8a5-4481-e70f-d7355b828808@gmail.com>
 <69142509-842a-81e5-2bce-69e2dbb9e4d2@gmail.com>
 <Yq0C6an46kNX1RME@pendragon.ideasonboard.com>
From: Daniel Scally <djrscally@gmail.com>
In-Reply-To: <Yq0C6an46kNX1RME@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220618_023516_422637_633A15A5 
X-CRM114-Status: GOOD (  32.81  )
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

Morning Laurent

On 17/06/2022 23:40, Laurent Pinchart wrote:
> Hi Daniel,
>
> On Fri, Jun 17, 2022 at 11:33:03PM +0100, Daniel Scally wrote:
>> On 17/06/2022 22:34, Daniel Scally wrote:
>>> On 14/06/2022 20:11, Paul Elder wrote:
>>>> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>>
>>>> The media_entity_remote_pad() helper function returns the first remote
>>>> pad it find connected to a given pad. Beside being possibly ill-named
>>>> (as it operates on a pad, not an entity) and non-deterministic (as it
>>>> stops at the first enabled link), the fact that it returns the first
>>>> match makes it unsuitable for drivers that need to guarantee that a
>>>> single link is enabled, for instance when an entity can process data
>>>> from one of multiple sources at a time.
>>>>
>>>> For those use cases, add a new helper function,
>>>> media_entity_remote_pad_unique(), that operates on an entity and returns
>>>> a remote pad, with a guarantee that only one link is enabled. To ease
>>>> its use in drivers, also add an inline wrapper that locates source pads
>>>> specifically. A wrapper that locates sink pads can easily be added when
>>>> needed.
>>>>
>>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>>> ---
>>>>  Documentation/driver-api/media/mc-core.rst |  4 +-
>>>>  drivers/media/mc/mc-entity.c               | 38 ++++++++++++++++++
>>>>  include/media/media-entity.h               | 45 ++++++++++++++++++++++
>>>>  3 files changed, 85 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/Documentation/driver-api/media/mc-core.rst b/Documentation/driver-api/media/mc-core.rst
>>>> index 02481a2513b9..a2d1e32e3abb 100644
>>>> --- a/Documentation/driver-api/media/mc-core.rst
>>>> +++ b/Documentation/driver-api/media/mc-core.rst
>>>> @@ -186,8 +186,8 @@ is required and the graph structure can be freed normally.
>>>>  
>>>>  Helper functions can be used to find a link between two given pads, or a pad
>>>>  connected to another pad through an enabled link
>>>> -:c:func:`media_entity_find_link()` and
>>>> -:c:func:`media_entity_remote_pad()`.
>>>> +(:c:func:`media_entity_find_link()`, :c:func:`media_entity_remote_pad()` and
>>>> +:c:func:`media_entity_remote_source_pad()`).
>>>>  
>>>>  Use count and power handling
>>>>  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>>>> diff --git a/drivers/media/mc/mc-entity.c b/drivers/media/mc/mc-entity.c
>>>> index 11f5207f73aa..1febf5a86be6 100644
>>>> --- a/drivers/media/mc/mc-entity.c
>>>> +++ b/drivers/media/mc/mc-entity.c
>>>> @@ -9,6 +9,7 @@
>>>>   */
>>>>  
>>>>  #include <linux/bitmap.h>
>>>> +#include <linux/list.h>
>>>>  #include <linux/property.h>
>>>>  #include <linux/slab.h>
>>>>  #include <media/media-entity.h>
>>>> @@ -920,6 +921,43 @@ struct media_pad *media_entity_remote_pad(const struct media_pad *pad)
>>>>  }
>>>>  EXPORT_SYMBOL_GPL(media_entity_remote_pad);
>>>>  
>>>> +struct media_pad *
>>>> +media_entity_remote_pad_unique(const struct media_entity *entity,
>>>> +			       unsigned int type)
>>>> +{
>>>> +	struct media_pad *pad = NULL;
>>>> +	struct media_link *link;
>>>> +
>>>> +	list_for_each_entry(link, &entity->links, list) {
>>>> +		struct media_pad *local_pad;
>>>> +		struct media_pad *remote_pad;
>>>> +
>>>> +		if (!(link->flags & MEDIA_LNK_FL_ENABLED))
>>>> +			continue;
>>> Does this need another guard here to make sure the link isn't an
>>> ancillary link? Only likely to happen at least in the immediate future
>>> where the entity represents a camera sensor, so possibly not applicable
>>> here - I couldn't find where the new function is used in the series to
>>> check. I _think_ it would actually work ok regardless...media_gobj
>>> type-punning makes my brain ache, but I think the local_pad->entity ==
>>> entity comparison would actually compare the entity->name member of the
>>> entity at the end of an ancillary link to the entity parameter, not find
>>> a match and so continue the loop without failing, but that feels a bit
>>> sub-optimal.
>> Or perhaps a better approach would be to provide something like a
>> "list_for_each_data_link()" iterator - the potential problem here (as
>> with Quentin's recent issue with the rkisp1 driver) is the assumption
>> that all links are data links, so maybe it's best to just guarantee that
>> if we can.
> I agree with you, without a dedicated iterator, we're bound to repeat
> the mistake over and over.
>
> Would you like to submit a patch to add that iterator, or should I ? I'd
> name it for_each_media_entity_data_link() or something similar.


I've started one - I'll send it later (using your function name though,
naming things was never my strong suit!)

>
>>>> +
>>>> +		if (type == MEDIA_PAD_FL_SOURCE) {
>>>> +			local_pad = link->sink;
>>>> +			remote_pad = link->source;
>>>> +		} else {
>>>> +			local_pad = link->source;
>>>> +			remote_pad = link->sink;
>>>> +		}
>>>> +
>>>> +		if (local_pad->entity == entity) {
>>>> +			if (pad)
>>>> +				return ERR_PTR(-ENOTUNIQ);
>>>> +
>>>> +			pad = remote_pad;
>>>> +		}
>>>> +	}
>>>> +
>>>> +	if (!pad)
>>>> +		return ERR_PTR(-ENOLINK);
>>>> +
>>>> +	return pad;
>>>> +}
>>>> +EXPORT_SYMBOL_GPL(media_entity_remote_pad_unique);
>>>> +
>>>>  static void media_interface_init(struct media_device *mdev,
>>>>  				 struct media_interface *intf,
>>>>  				 u32 gobj_type,
>>>> diff --git a/include/media/media-entity.h b/include/media/media-entity.h
>>>> index a9a1c0ec5d1c..33d5f52719a0 100644
>>>> --- a/include/media/media-entity.h
>>>> +++ b/include/media/media-entity.h
>>>> @@ -859,6 +859,51 @@ struct media_link *media_entity_find_link(struct media_pad *source,
>>>>   */
>>>>  struct media_pad *media_entity_remote_pad(const struct media_pad *pad);
>>>>  
>>>> +/**
>>>> + * media_entity_remote_pad_unique - Find a remote pad connected to an entity
>>>> + * @entity: The entity
>>>> + * @type: The type of pad to find (MEDIA_PAD_FL_SINK or MEDIA_PAD_FL_SOURCE)
>>>> + *
>>>> + * Search for and return a remote pad of @type connected to @entity through an
>>>> + * enabled link. If multiple (or no) remote pads match these criteria, an error
>>>> + * is returned.
>>>> + *
>>>> + * The uniqueness constraint makes this helper function suitable for entities
>>>> + * that support a single active source or sink at a time.
>>>> + *
>>>> + * Return: A pointer to the remote pad, or one of the following error pointers
>>>> + * if an error occurs:
>>>> + *
>>>> + * * -ENOTUNIQ - Multiple links are enabled
>>>> + * * -ENOLINK - No connected pad found
>>>> + */
>>>> +struct media_pad *
>>>> +media_entity_remote_pad_unique(const struct media_entity *entity,
>>>> +			       unsigned int type);
>>>> +
>>>> +/**
>>>> + * media_entity_remote_source_pad - Find a remote source pad connected to an entity
>>>> + * @entity: The entity
>>>> + *
>>>> + * Search for and return a remote source pad connected to @entity through an
>>>> + * enabled link. If multiple (or no) remote pads match these criteria, an error
>>>> + * is returned.
>>>> + *
>>>> + * The uniqueness constraint makes this helper function suitable for entities
>>>> + * that support a single active source at a time.
>>>> + *
>>>> + * Return: A pointer to the remote pad, or one of the following error pointers
>>>> + * if an error occurs:
>>>> + *
>>>> + * * -ENOTUNIQ - Multiple links are enabled
>>>> + * * -ENOLINK - No connected pad found
>>>> + */
>>>> +static inline struct media_pad *
>>>> +media_entity_remote_source_pad(const struct media_entity *entity)
>>>> +{
>>>> +	return media_entity_remote_pad_unique(entity, MEDIA_PAD_FL_SOURCE);
>>>> +}
>>>> +
>>>>  /**
>>>>   * media_entity_is_streaming - Test if an entity is part of a streaming pipeline
>>>>   * @entity: The entity

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
