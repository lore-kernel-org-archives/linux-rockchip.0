Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ACA0CDB479
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 10:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCAgj175J4DgzvRKoiuhcdPqg8GVF2a9IPLGDfoob/8=; b=O2ykglzuV1ATo0
	4crU22vOsIsZnRJMmvfofUmLkf2YPMTlB/4KiS6PeKSCekTXsXG2J5FvmlXfr7QsxjseUCZXhfWxT
	IizpdWZgPqesV1y7iwugb6ahjrOvpmeGL/wOK51ldfJpQg9mGNK98VlvsXm1vJCCv1ZcptNepL9Iv
	ZxTURfagJ+tYboJLxm5OliXOs1Licq8u9KuLsVORWRxG0K0rQJQrkWqNg3Cn1+EdWN+ikINxA0DKh
	UCC6gZM4LS55BiwS1VcQlVR87uUFc9FhN87cNR4LDrWmouF9KFmVURL4slmLUDlR56YVACYBqEh9P
	mu6QPBlp3pWg0E6shX+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcL1U-00000007cKg-2uMh;
	Wed, 24 Jun 2026 10:40:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcL1N-00000007cJ0-1L7J;
	Wed, 24 Jun 2026 10:39:55 +0000
Received: from monstersaurus.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5DD70236;
	Wed, 24 Jun 2026 12:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1782297548;
	bh=thCjLnMnHDEA+uaCidNvZgy5TW4QwT+r7j77chD0W0g=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=syg4sbhdM0lwnrUa4lFbOd1+Ak9feDj9YAPLz16X9kqmtjr2ORGmgPrTddn8IabEb
	 GNja17mQJga10ONStA3L2E5tOBzdAvGFuBwM9YzWkVCA8ryejYEzQTJ8aKhbr0yUp5
	 EdN4DfzoHNwL0D8lwuNfUjyyoSE9z+JEGbBTjHpM=
MIME-Version: 1.0
In-Reply-To: <20260619052637.1110672-2-paul.elder@ideasonboard.com>
References: <20260619052637.1110672-1-paul.elder@ideasonboard.com> <20260619052637.1110672-2-paul.elder@ideasonboard.com>
Subject: Re: [RFC PATCH 1/6] media: mc: Implement shared media graph
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, michael.riesch@collabora.com, xuhf@rock-chips.com, stefan.klug@ideasonboard.com, dan.scally@ideasonboard.com, jacopo.mondi@ideasonboard.com, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, hverkuil+cisco@kernel.org, nicolas.dufresne@collabora.com, ribalda@chromium.org, sakari.ailus@linux.intel.com
To: Paul Elder <paul.elder@ideasonboard.com>, laurent.pinchart@ideasonboard.com
Date: Wed, 24 Jun 2026 11:39:44 +0100
Message-ID: <178229758404.3075020.12553514371020830845@ping.linuxembedded.co.uk>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_033953_984249_57045007 
X-CRM114-Status: GOOD (  40.57  )
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

Hi Paul,

I'm taking a first read through, some  comments inline, but not
necessarily a full review:

Quoting Paul Elder (2026-06-19 06:26:28)
> Currently, a media graph contains a main device whose driver is
> responsible for creating the media device. We have however recently run
> into devices that have multiple devices that can quality as a main

s/quality/qualify/

> device. Examples are the RK3588 which has a VICAP and two ISP
> instances, and another example is the i.MX8MP which has an ISI and two
> ISP instances. As there is currently no way to reconcile who the main
> device is in the media device, these setups simple cannot be used
> simultaneously.

I'm very excited to see how we could apply this to the NXP i.MX8MP to
resolve the ISI+ISP issue!


> This patch extends the media controller API with a "shared media graph"
> framework. This allows drivers to share a media device, thus enabling
> the setups mentioned above. Instead of owning and creating a media
> device, drivers can join-or-create a shared media device via the shared
> media graph API. The matching is done automatically based on the
> detected endpoints in the device tree.

Sounds great! I'll read on...

> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> ---
>  drivers/media/mc/Makefile          |   2 +-
>  drivers/media/mc/mc-shared-graph.c | 335 +++++++++++++++++++++++++++++
>  include/media/mc-shared-graph.h    |  92 ++++++++
>  3 files changed, 428 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/media/mc/mc-shared-graph.c
>  create mode 100644 include/media/mc-shared-graph.h
> 
> diff --git a/drivers/media/mc/Makefile b/drivers/media/mc/Makefile
> index 2b7af42ba59c..1d502fdc52ad 100644
> --- a/drivers/media/mc/Makefile
> +++ b/drivers/media/mc/Makefile
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  
>  mc-objs        := mc-device.o mc-devnode.o mc-entity.o \
> -          mc-request.o
> +          mc-request.o mc-shared-graph.o
>  
>  ifneq ($(CONFIG_USB),)
>         mc-objs += mc-dev-allocator.o
> diff --git a/drivers/media/mc/mc-shared-graph.c b/drivers/media/mc/mc-shared-graph.c
> new file mode 100644
> index 000000000000..c4067e5b861d
> --- /dev/null
> +++ b/drivers/media/mc/mc-shared-graph.c
> @@ -0,0 +1,335 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * mc-shared-graph.c - Media Controller Shared Graph API
> + *
> + * Copyright (c) 2026 Paul Elder <paul.elder@ideasonboard.com>
> + */
> +
> +/*
> + * This file adds the Media Controller Shared Graph API. This allows drivers
> + * to create shared media graphs or join existing media graphs from other
> + * drivers, so that they can all be in the same media graph. This allows us to
> + * have more complex media graphs chaining more complex hardware together,
> + * instead of simple async subdevs.
> + */
> +
> +#include <linux/device.h>
> +#include <linux/fwnode.h>
> +#include <linux/kref.h>
> +#include <linux/property.h>
> +
> +#include <media/media-device.h>
> +
> +#include <media/mc-shared-graph.h>
> +
> +static LIST_HEAD(media_device_shared_list);
> +static DEFINE_MUTEX(media_device_shared_lock);
> +
> +struct media_device_shared_member {
> +       struct device *dev;
> +       struct fwnode_handle *fwnode;
> +       struct list_head list;
> +};
> +
> +struct media_device_shared_link {
> +       struct media_entity *source;
> +       u16 source_pad;
> +       struct media_entity *sink;
> +       u16 sink_pad;
> +       u32 flags;
> +       struct list_head list;
> +};
> +
> +// TODO figure out locking for when multiple drivers touch the media graph;
> +// maybe macros for shared versions?

Do you mean for when drivers are trying to change link state directly?

> +struct media_device_shared {
> +       struct media_device mdev;
> +       struct list_head members;
> +       struct list_head links;
> +
> +       struct list_head list;
> +       struct kref refcount;
> +
> +       struct device *removed_device;
> +};
> +
> +static inline struct media_device_shared *
> +to_media_device_shared(struct media_device *mdev)
> +{
> +       return container_of(mdev, struct media_device_shared, mdev);
> +}
> +
> +static void media_device_shared_release(struct kref *kref)
> +{
> +       struct media_device_shared *mds =
> +               container_of(kref, struct media_device_shared, refcount);
> +
> +       dev_dbg(mds->removed_device, "%s: releasing Media Device\n", __func__);
> +
> +       mutex_lock(&media_device_shared_lock);
> +
> +       media_device_unregister(&mds->mdev);
> +       media_device_cleanup(&mds->mdev);
> +
> +       list_del(&mds->list);
> +       mutex_unlock(&media_device_shared_lock);
> +
> +       kfree(mds);
> +}
> +
> +/* Callers should hold media_device_shared_lock when calling this function */

Lets add a lockdep_assert then?


> +static bool __media_device_shared_find_match(struct media_device_shared *mds,
> +                                            struct fwnode_handle *fwnode)
> +{
> +       struct media_device_shared_member *member;
> +       struct fwnode_handle *ep;
> +       struct fwnode_handle *remote_ep;
> +       bool match = false;
> +

is it just as easy as:

	lockdep_assert_held(&media_device_shared_lock);
?

> +       // TODO: parse the device tree endpoints graph instead of finding just the
> +       // first-level neighbours
> +       fwnode_graph_for_each_endpoint(fwnode, ep) {
> +               list_for_each_entry(member, &mds->members, list) {
> +                       remote_ep = fwnode_graph_get_remote_port_parent(ep);
> +                       match = (member->fwnode == remote_ep);
> +                       fwnode_handle_put(remote_ep);
> +
> +                       if (!match)
> +                               continue;
> +
> +                       goto match_complete;
> +               }
> +       }
> +
> +match_complete:
> +       fwnode_handle_put(ep);
> +       return match;
> +}
> +
> +/* Callers should hold media_device_shared_lock when calling this function */

Lets add a lockdep check too then :D (same everywhere/anywhere it's
needed)


> +static struct media_device *__media_device_shared_get(struct device *dev)
> +{
> +       struct media_device_shared *mds;
> +       struct media_device_shared_member *member;
> +       struct fwnode_handle *fwnode = dev_fwnode(dev);
> +       bool ret;
> +
> +       dev_dbg(dev, "%s: searching for media device for %pfwf", __func__, fwnode);
> +
> +       list_for_each_entry(mds, &media_device_shared_list, list) {
> +               ret = __media_device_shared_find_match(mds, fwnode);
> +               if (ret)
> +                       break;
> +       }
> +
> +       if (!ret)
> +               return NULL;
> +
> +       member = kzalloc_obj(*member);
> +       if (!member)
> +               return NULL;
> +
> +       member->dev = dev;
> +       member->fwnode = fwnode;
> +       list_add_tail(&member->list, &mds->members);
> +       kref_get(&mds->refcount);
> +
> +       dev_dbg(dev, "%s: %pfwf joined media device of %pfwf",
> +               __func__, fwnode,
> +               list_first_entry(&mds->members, struct media_device_shared_member, list)->fwnode);
> +
> +       return &mds->mdev;
> +}
> +
> +/* Callers should hold media_device_shared_lock when calling this function */
> +static struct media_device *__media_device_shared_create(struct device *dev)
> +{
> +       struct media_device_shared *mds;
> +       struct media_device_shared_member *member;
> +       struct fwnode_handle *fwnode = dev_fwnode(dev);
> +       int ret;
> +
> +       mds = kzalloc_obj(*mds);
> +       if (!mds)
> +               return NULL;
> +
> +       member = kzalloc_obj(*member);
> +       if (!member)
> +               goto err_free_mds;
> +
> +       media_device_init(&mds->mdev);
> +
> +       ret = media_device_register(&mds->mdev);
> +       if (ret)
> +               goto err_free_member;
> +
> +       INIT_LIST_HEAD(&mds->members);
> +       member->dev = dev;
> +       member->fwnode = fwnode;
> +       list_add_tail(&member->list, &mds->members);
> +
> +       INIT_LIST_HEAD(&mds->links);
> +
> +       kref_init(&mds->refcount);
> +       list_add_tail(&mds->list, &media_device_shared_list);
> +
> +       // TODO figure out how to reconcile this with multiple members

Aha, right - becuse the 'media_device dev' becomes whoever registers first.
I wonder where it's actually used, and maybe that's ok ?

> +       mds->mdev.dev = dev;
> +
> +       devv_dbg(dev, "%s: Allocated media device with %pfwf at %p\n",
> +                __func__, fwnode, &mds->mdev);
> +       return &mds->mdev;
> +
> +err_free_member:
> +       kfree(member);
> +err_free_mds:
> +       kfree(mds);
> +       return NULL;
> +}
> +
> +// TODO figure out how to resolve the identifiers (model, driver name, etc);
> +// atm it's racy and whoever gets it last wins

Maybe that's something we need to pass or set up explicitly then, so
it's clear it's a 'specific graph'

Would this give us a way to represent the hardware in a new form - i.e.
thinking about IMX8MP - the existing graph wouldn't be available - so it
wouldn't be any worry from a UABI perspective because it's just a whole
new interface/media-device name....



> +struct media_device *media_device_shared_join(struct device *dev)
> +{
> +       struct media_device *mdev;
> +
> +       mutex_lock(&media_device_shared_lock);
> +
> +       mdev = __media_device_shared_get(dev);
> +       if (!!mdev) {
> +               dev_dbg(dev, "%s: found media device for %pfwf", __func__, dev_fwnode(dev));
> +               mutex_unlock(&media_device_shared_lock);
> +               return mdev;
> +       }
> +
> +       mdev = __media_device_shared_create(dev);
> +       if (!mdev) {
> +               dev_warn(dev, "%s: failed to create media device for %pfwf", __func__, dev_fwnode(dev));
> +               mutex_unlock(&media_device_shared_lock);
> +               return ERR_PTR(-ENOMEM);
> +       }
> +
> +       dev_dbg(dev, "%s: created media device for %pfwf", __func__, dev_fwnode(dev));
> +       mutex_unlock(&media_device_shared_lock);
> +       return mdev;
> +}
> +EXPORT_SYMBOL_GPL(media_device_shared_join);
> +
> +void media_device_shared_leave(struct media_device *mdev, struct device *dev)
> +{
> +       struct media_device_shared *mds = to_media_device_shared(mdev);
> +       struct media_device_shared_member *member;
> +       struct media_device_shared_member *member_tmp;
> +       bool removed = false;
> +
> +       mutex_lock(&media_device_shared_lock);
> +
> +       list_for_each_entry_safe(member, member_tmp, &mds->members, list) {
> +               if (member->dev == dev) {
> +                       list_del(&member->list);
> +                       kfree(member);
> +                       removed = true;
> +               }
> +       }
> +
> +       if (!removed)
> +               dev_err(dev, "%s: %pfwf trying to leave from graph in which not a member",
> +                       __func__, dev_fwnode(dev));
> +
> +       mds->removed_device = dev;
> +       mutex_unlock(&media_device_shared_lock);
> +       kref_put(&mds->refcount, media_device_shared_release);
> +}
> +EXPORT_SYMBOL_GPL(media_device_shared_leave);
> +
> +int media_device_shared_join_link_source(struct media_device *mdev,
> +                                        struct device *dev,
> +                                        struct media_entity *source,
> +                                        u16 source_pad, u32 flags)
> +{
> +       struct media_device_shared *mds = to_media_device_shared(mdev);
> +       struct media_device_shared_link *link;
> +       struct media_device_shared_link *link_tmp;
> +       int ret = 0;
> +
> +       mutex_lock(&media_device_shared_lock);
> +
> +       /*
> +        * TODO Figure out flags. Should we use greatest common denominator? Or
> +        * prioritize sink? Or whoever wins the race? For now we just take the flags
> +        * from the sink.
> +        *
> +        * TODO Figure out how to actually do the matching. For now we just match
> +        * whoever comes in first. This works with the simple example we're running
> +        * with now (rkcif + one rkisp2) but with setups with multiple copies of
> +        * hardware this will cause problems, like with rkcif + two rkisp2 and
> +        * imx8-isi + two rkisp1.
> +        */
> +       list_for_each_entry_safe(link, link_tmp, &mds->links, list) {
> +               if (link->sink) {
> +                       ret = media_create_pad_link(source, source_pad,
> +                                                   link->sink, link->sink_pad,
> +                                                   link->flags);
> +                       list_del(&link->list);
> +                       kfree(link);
> +                       goto exit_join_link_source;
> +               }
> +       }
> +
> +       link = kzalloc_obj(*link);
> +       if (!link) {
> +               ret = -ENOMEM;
> +               goto exit_join_link_source;
> +       }
> +
> +       link->source = source;
> +       link->source_pad = source_pad;
> +       link->flags = flags;
> +       list_add_tail(&link->list, &mds->links);
> +
> +exit_join_link_source:
> +       mutex_unlock(&media_device_shared_lock);
> +       return ret;
> +}
> +EXPORT_SYMBOL_GPL(media_device_shared_join_link_source);
> +
> +// TODO deduplicate from above

Indeed, it does look like an opportunity.

> +int media_device_shared_join_link_sink(struct media_device *mdev,
> +                                      struct device *dev,
> +                                      struct media_entity *sink,
> +                                      u16 sink_pad, u32 flags)
> +{
> +       struct media_device_shared *mds = to_media_device_shared(mdev);
> +       struct media_device_shared_link *link;
> +       struct media_device_shared_link *link_tmp;
> +       int ret = 0;
> +
> +       mutex_lock(&media_device_shared_lock);
> +
> +       list_for_each_entry_safe(link, link_tmp, &mds->links, list) {
> +               if (link->source) {
> +                       ret = media_create_pad_link(link->source, link->source_pad,
> +                                                   sink, sink_pad,
> +                                                   flags);
> +                       list_del(&link->list);
> +                       kfree(link);
> +                       goto exit_join_link_sink;
> +               }
> +       }
> +
> +       link = kzalloc_obj(*link);
> +       if (!link) {
> +               ret = -ENOMEM;
> +               goto exit_join_link_sink;
> +       }
> +
> +       link->sink = sink;
> +       link->sink_pad = sink_pad;
> +       link->flags = flags;
> +       list_add_tail(&link->list, &mds->links);
> +
> +exit_join_link_sink:
> +       mutex_unlock(&media_device_shared_lock);
> +       return ret;
> +}
> +EXPORT_SYMBOL_GPL(media_device_shared_join_link_sink);
> diff --git a/include/media/mc-shared-graph.h b/include/media/mc-shared-graph.h
> new file mode 100644
> index 000000000000..487325163f84
> --- /dev/null
> +++ b/include/media/mc-shared-graph.h
> @@ -0,0 +1,92 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * mc-shared-graph.h - Media Controller Shared Graph API
> + *
> + * Copyright (c) 2026 Paul Elder <paul.elder@ideasonboard.com>
> + */
> +
> +/*
> + * This file adds the Media Controller Shared Graph API. This allows drivers
> + * to create shared media graphs or join existing media graphs from other
> + * drivers, so that they can all be in the same media graph. This allows us to
> + * have more complex media graphs chaining more complex hardware together,
> + * instead of simple async subdevs.
> + */
> +
> +#include <linux/types.h>
> +
> +#ifndef _MEDIA_SHARED_GRAPH_H
> +#define _MEDIA_SHARED_GRAPH_H
> +
> +struct device;
> +struct media_device;
> +struct media_entity;
> +
> +#if defined(CONFIG_MEDIA_CONTROLLER)
> +/**
> + * media_device_shared_join() - Join or create a new shared media device
> + *
> + * @dev:               struct &device pointer
> + *
> + * This is the entrance function for a device to join or create a new shared
> + * media device. It searches for an existing shared media device based on the
> + * neighbours in the device's device tree ports node. If found, then this
> + * functions returns the existing shared media device and joins it. If one is
> + * not found then one is created and initialized and returned.
> + */
> +struct media_device *media_device_shared_join(struct device *dev);
> +
> +/**
> + * media_device_shared_leave() - Leave the shared media device.
> + *
> + * @mdev:              struct &media_device pointer
> + * @dev:               struct &device pointer
> + *
> + * This function makes the device leave the shared media device. When all
> + * members have left the media device it will be freed.
> + */
> +void media_device_shared_leave(struct media_device *mdev, struct device *dev);
> +
> +/**
> + * media_device_shared_join_link_source() - Register a link source in the shared media device
> + *
> + * @mdev: The struct &media_device pointer that is part of a shared media device
> + * @dev: struct &device pointer
> + * @source: The link source
> + * @source_pad: The pad
> + * @flags: The flags
> + *
> + * This function registers with the shared media device the source part of a
> + * link. When the shared media device receives the matching sink part of a link
> + * via media_device_shared_join_link_sink() then the link will be fully created.
> + */
> +int media_device_shared_join_link_source(struct media_device *mdev,
> +                                        struct device *dev,
> +                                        struct media_entity *source,
> +                                        u16 source_pad, u32 flags);
> +
> +/**
> + * media_device_shared_join_link_sink() - Register a link sink in the shared media device
> + *
> + * Same as media_device_shared_join_link_source() but for sink instead of
> + * source.
> + */
> +int media_device_shared_join_link_sink(struct media_device *mdev,
> +                                      struct device *dev,
> +                                      struct media_entity *sink,
> +                                      u16 sink_pad, u32 flags);
> +#else
> +static inline struct media_device *media_device_shared_join(struct device *dev)
> +{ return NULL; }
> +static inline void media_device_shared_leave(struct media_device *mdev,
> +                                            struct device *dev) { }
> +static inline int media_device_shared_join_link_source(struct media_device *mdev,
> +                                                      struct device *dev,
> +                                                      struct media_entity *source,
> +                                                      u16 source_pad, u32 flags) { }
> +static inline int media_device_shared_join_link_sink(struct media_device *mdev,
> +                                                    struct device *dev,
> +                                                    struct media_entity *sink,
> +                                                    u16 sink_pad, u32 flags) { }

Should these two stubs which return an int return an error code? -ENODEV or such ?


> +#endif /* CONFIG_MEDIA_CONTROLLER */
> +#endif /* _MEDIA_DEV_SHARED_GRAPH_H */
> -- 
> 2.47.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
