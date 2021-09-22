Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBA49C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 16:45:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2D55360F70
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 16:45:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2D55360F70
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npc5AjyirARSPUi1RYSn5ZmeNQWqHRWmZ/mjFTmaMUM=; b=a1uRdNJsdPfrRo
	C86XzJn8G/gqHhzIcC5KMr9tk1Wjh18a48CuLduCjBT4AXNKGSsPKoWb2gawuKqAecsxa/EBZH/SS
	ohwZyM2SljdMg2JjQnJh2mnjiGboa/gNsOXOhfb9AURKGssiU+tTOaHR9Wtrza02X7gXiNDUyHxd7
	K1jBYnd/PNA2XJK3RDOXokPkDlSDNOrAS/8RIelEM5jRYsFuICWxrXDdNVIje4k0PyKpKHycWSGPL
	wf4qhAoAegfPt4QbYsyP1x+Igrhqv3p8mdHCf/eH8H1I6Bc1ZjTalIA4wCzJj9jVyu0qjzsRghpY2
	yZrJVZwvF3L/ubjpGq5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT5NS-009AMF-FK; Wed, 22 Sep 2021 16:45:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT5NG-009AKR-CI; Wed, 22 Sep 2021 16:45:35 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mT5N7-0001Oz-HF; Wed, 22 Sep 2021 18:45:25 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Colin King <colin.king@canonical.com>, Sandy Huang <hjc@rock-chips.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Alex Bee <knaerzche@gmail.com>
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH][next] drm/rockchip: Remove redundant assignment of
 pointer connector
Date: Wed, 22 Sep 2021 18:45:24 +0200
Message-ID: <22365175.EbdSka62eY@diego>
In-Reply-To: <27c79f7a-8e4c-fad8-c6cf-a89793f2e3c6@gmail.com>
References: <20210922112416.182134-1-colin.king@canonical.com>
 <27c79f7a-8e4c-fad8-c6cf-a89793f2e3c6@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_094534_449399_D228043E 
X-CRM114-Status: GOOD (  24.57  )
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

Hi Alex,

Am Mittwoch, 22. September 2021, 18:35:38 CEST schrieb Alex Bee:
> Hi Colin,
> Am 22.09.21 um 13:24 schrieb Colin King:
> > From: Colin Ian King <colin.king@canonical.com>
> > 
> > The pointer connector is being assigned a value that is never
> > read, it is being updated immediately afterwards. The assignment
> > is redundant and can be removed.
> 
> The pointer to the connector is used in rockchip_rgb_fini for 
> drm_connector_cleanup.
> It's pretty much the same for the encoder, btw.

I think the issue is more the two lines

	connector = &rgb->connector;
 	connector = drm_bridge_connector_init(rgb->drm_dev, encoder);

hence the connector = &rgb->connector being overwritten immediately after

Now that I look at it again, the whole approach looks strange.
drm_bridge_connector_init() creates the connector structure and
returns a pointer to it.

So the first line below sets the connector pointer to point to the
&rgb->connector element and the second line then set a completely
different address into it.

So the connector element in rockchip_lvds and rockchip_rgb should actually
become a pointer itself to hold the connector element returned from
drm_bridge_connector_init() .


Heiko

> 
> Regards,
> 
> Alex
> > 
> > Addresses-Coverity: ("Unused value")
> > Signed-off-by: Colin Ian King <colin.king@canonical.com>
> > ---
> >   drivers/gpu/drm/rockchip/rockchip_rgb.c | 1 -
> >   1 file changed, 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> > index 09be9678f2bd..18fb84068a64 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> > @@ -150,7 +150,6 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
> >   	if (ret)
> >   		goto err_free_encoder;
> >   
> > -	connector = &rgb->connector;
> >   	connector = drm_bridge_connector_init(rgb->drm_dev, encoder);
> >   	if (IS_ERR(connector)) {
> >   		DRM_DEV_ERROR(drm_dev->dev,
> > 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
