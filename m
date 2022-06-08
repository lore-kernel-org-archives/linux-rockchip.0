Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2330C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jun 2022 15:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DOriAI9fjY6ZXigN//59xL9KWLNw7V5vtubF0MBG2k=; b=1iJjJONYrUIMwO
	+n32cIXufRdFY+TgyfuvGuTPzd4W+zL5xw3aArzFaGOqfW85GG58e60mSbNNEQAtds9yMhGsTK7Cm
	Aqg+5hupVb24z4k9P5TFsddOyavFBRgM1jnOVzcRYlXcH9Vqey8FzKOvbAHsudT+EaCHcSQ/ccyVN
	Enw+VdMksHlavAfvtBAHsMHWu/yZpInWf1PlQsj6s3LHvwgxh/c2VX3ZWuIepxJ53/d9uiWN+kSgE
	j0GreszXLXNZ5XoFypAeh/3Yb3HsalF5xAouiHjh7iitLwNFWHIL7stXppkaCemUBDUxN+xpCZO1B
	LQM9VgBoC52shgI+RW7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyxhU-00E3Au-9z; Wed, 08 Jun 2022 15:34:28 +0000
Received: from relay11.mail.gandi.net ([2001:4b98:dc4:8::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyxhQ-00E39z-QT
	for linux-rockchip@lists.infradead.org; Wed, 08 Jun 2022 15:34:26 +0000
Received: (Authenticated sender: jacopo@jmondi.org)
	by mail.gandi.net (Postfix) with ESMTPSA id 364F9100009;
	Wed,  8 Jun 2022 15:34:17 +0000 (UTC)
Date: Wed, 8 Jun 2022 17:34:16 +0200
From: Jacopo Mondi <jacopo@jmondi.org>
To: Daniel Scally <djrscally@gmail.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	dafna@fastmail.com, heiko@sntech.de, foss+kernel@0leil.net
Subject: Re: [PATCH] media: rkisp1: Don't create data links for non-sensor
 subdevs
Message-ID: <20220608153416.ciwiwg4tbfyetprh@uno.localdomain>
References: <20220606225149.2941160-1-djrscally@gmail.com>
 <20220607164125.oabtqz6kh5bo6k6v@uno.localdomain>
 <c328e7e6-8d22-2480-38f0-f05528c548dc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c328e7e6-8d22-2480-38f0-f05528c548dc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_083425_216688_C3918BB2 
X-CRM114-Status: GOOD (  29.94  )
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

Hi Dan,

On Wed, Jun 08, 2022 at 03:25:36PM +0100, Daniel Scally wrote:
> Hi Jacopo
>
> On 07/06/2022 17:41, Jacopo Mondi wrote:
> > Hi Dan
> >
> > On Mon, Jun 06, 2022 at 11:51:49PM +0100, Daniel Scally wrote:
> >> With the introduction of ancillary links, not all subdevs linked to
> >> the ISP's v4l2_dev necessarily represent sensors / bridges. Check the
> >> function for the subdevs and skip any that represent lens or flash
> >> controllers before creating data links.
> >>
> >> Signed-off-by: Daniel Scally <djrscally@gmail.com>
> >> ---
> >>
> >> This should fix the issues that have been noticed, but perhaps a new flag like
> >> MEDIA_ENT_FL_HAS_SOURCE or something would be a better way to denote subdevs
> >> that need data links?
> >>
> > I agree this a bit fragile...
> >
> > I noticed ancillary links are only created for subdev notifiers,
> > which have a populated 'sd' and consequentially an entity. Could an
> > helper that walks the links of the notifier's subdev links and checks
> > if the subdev at hand is already linked, help ? Maybe with an optional
> > set of link flags to match on ?

This is actually a mess, as the list of links to be walked is the list
of the sensor's notifier, not the one of the rkisp1. Bad advice,
sorry..

>
>
> Or maybe just check if the subdev's notifier is the same as the rkisp1's
> notifier? Like:
>
>
> if(sd->notifier!= &rkisp1->notifier)

Not all subdevs will have a notifier, won't they ? In facts only
sensor that registers a notifier for their connected lenses/flashes
will have one.

Anyway, I think the issue here is that we walk the list of all subdevs
registered to the root notifier's v4l2_dev.

All async subdevices matched in the notifiers chain will end up being
registered to the root notifier's v4l2_dev, hence also lenses and
flashes will appear in this list.

        list_for_each_entry(sd, &rkisp1->v4l2_dev.subdevs, list) {

        }

Can't we do like the CIO2 does, by walking the list of async subdevs
registered to the root notifier only ? This list should not include
lenses and flashes if I'm not mistaken.

	list_for_each_entry(asd, &rkisp1->notifier.asd_list, asd_list) {

        }

You can cast the struct v4l2_async_subdev back to the wrapping struct
rkisp1_sensor_async and from there get the sd to create the links on.
Could this work in your opinion ? I'm sorry I can't test it right
away...



> continue
> That's a bit less clunky than both other solutions I think
> >
> >
> >>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 4 ++++
> >>  1 file changed, 4 insertions(+)
> >>
> >> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> >> index 3f5cfa7eb937..e90f0216cb06 100644
> >> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> >> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> >> @@ -134,6 +134,10 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
> >>  		    sd == &rkisp1->resizer_devs[RKISP1_SELFPATH].sd)
> >>  			continue;
> >>
> >> +		if (sd->entity.function == MEDIA_ENT_F_LENS ||
> >> +		    sd->entity.function == MEDIA_ENT_F_FLASH)
> >> +			continue;
> >> +
> >>  		ret = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
> >>  						  MEDIA_PAD_FL_SOURCE);
> >>  		if (ret < 0) {
> >> --
> >> 2.25.1
> >>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
