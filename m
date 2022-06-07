Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4570C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jun 2022 16:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MmFm/E5mkwMtyS9Kse78MRRQnmrpGeAgkc2Q1gNnHgs=; b=OsmP1uG89NTxqc
	xRldTPt64NO+q4uihN+hv7qg5bG/OzQzJ7U4EVKYSrKKWsGRDSRy322WV8f/uWiRdg/OGB2t0jd6l
	v0lgxSK88+ElPMU3Qyt3WVi4AaH3b6yFLy4q6IGVqzEHSQb/bPQdf9Jcp8bpC9KZvtjmDywDz5+hJ
	6aodjDUsNxShmvKqaAji/TczO2az9GtI4RgXzpoirCzgpiWLqSHODC4lnlIh1eI/cQWAAJd2YcGeq
	OClwUeVO1SsB9oeVe6bygVjlH4pyOqQLoFz8/4lzDhFTAtVLYB5Nalg7QwfQXEtdDK2pw7UokV1oJ
	qQGYBzrTpShltMag5Z/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nycGx-008S77-Rk; Tue, 07 Jun 2022 16:41:39 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nycGv-008S3y-2Q
	for linux-rockchip@lists.infradead.org; Tue, 07 Jun 2022 16:41:39 +0000
Received: (Authenticated sender: jacopo@jmondi.org)
	by mail.gandi.net (Postfix) with ESMTPSA id 6C931E0004;
	Tue,  7 Jun 2022 16:41:27 +0000 (UTC)
Date: Tue, 7 Jun 2022 18:41:25 +0200
From: Jacopo Mondi <jacopo@jmondi.org>
To: Daniel Scally <djrscally@gmail.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	dafna@fastmail.com, heiko@sntech.de, foss+kernel@0leil.net
Subject: Re: [PATCH] media: rkisp1: Don't create data links for non-sensor
 subdevs
Message-ID: <20220607164125.oabtqz6kh5bo6k6v@uno.localdomain>
References: <20220606225149.2941160-1-djrscally@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220606225149.2941160-1-djrscally@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_094137_281314_D5311B0B 
X-CRM114-Status: GOOD (  18.22  )
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

Hi Dan

On Mon, Jun 06, 2022 at 11:51:49PM +0100, Daniel Scally wrote:
> With the introduction of ancillary links, not all subdevs linked to
> the ISP's v4l2_dev necessarily represent sensors / bridges. Check the
> function for the subdevs and skip any that represent lens or flash
> controllers before creating data links.
>
> Signed-off-by: Daniel Scally <djrscally@gmail.com>
> ---
>
> This should fix the issues that have been noticed, but perhaps a new flag like
> MEDIA_ENT_FL_HAS_SOURCE or something would be a better way to denote subdevs
> that need data links?
>

I agree this a bit fragile...

I noticed ancillary links are only created for subdev notifiers,
which have a populated 'sd' and consequentially an entity. Could an
helper that walks the links of the notifier's subdev links and checks
if the subdev at hand is already linked, help ? Maybe with an optional
set of link flags to match on ?


>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 3f5cfa7eb937..e90f0216cb06 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -134,6 +134,10 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
>  		    sd == &rkisp1->resizer_devs[RKISP1_SELFPATH].sd)
>  			continue;
>
> +		if (sd->entity.function == MEDIA_ENT_F_LENS ||
> +		    sd->entity.function == MEDIA_ENT_F_FLASH)
> +			continue;
> +
>  		ret = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
>  						  MEDIA_PAD_FL_SOURCE);
>  		if (ret < 0) {
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
