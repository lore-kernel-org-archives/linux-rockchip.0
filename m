Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB59C2D0A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 11:17:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 55E64205F4
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 11:17:09 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Qu2Z/rgs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 55E64205F4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AxKAVgmnw4U4Xq4MSNBcW74d76vMY2veOB+Fr3paDAY=; b=Qu2Z/rgsyUxxT/Qan+mLLbz6E
	BlXsk7I5DWp1UAszzoyFuVtP/AyQgy41ePXFf4Q+7bt3Ftf2hDe3mEgDB5t+JPo5reDnsTRqBGZmY
	030T0PNmBD3PH5FHHvXnGyzeIzRcw8y2Cpxg0hY0KUKBfl9ZgIsWzzBcx55ncnWyGt4CQoD2bqZyy
	UT6N3xTAm40JCsGFIQs5p6u2/Q4jeEjJnVsnp0LhtFfpTyAxLh2bhNstu4F24bh7C+TDWEee+lpQh
	FbI1k5nXwv6CqH9MOqpcF21M8eiPIyrCGOjUx3NJmbirqmOWc/wrfXxo/+3f+WVZPA5eo6GwED0fo
	TTW/WFH/A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kL2li-0004XO-B0; Wed, 23 Sep 2020 11:17:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL2lg-0004WT-LG; Wed, 23 Sep 2020 11:17:01 +0000
Received: from [95.90.166.74] (helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kL2la-0006fm-8p; Wed, 23 Sep 2020 13:16:54 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jian-Hong Pan <jhp@endlessos.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] drm/rockchip: skip probed failed device
Date: Wed, 23 Sep 2020 13:16:53 +0200
Message-ID: <4641984.dSft4sXKFs@diego>
In-Reply-To: <439c4b59-b1e6-88bb-568e-1c2a0feceed4@arm.com>
References: <CAPpJ_efHX70Ej0uzRi-iRf7N0n6ZO5sMN-wK_YpszvVD-Un9RQ@mail.gmail.com>
 <20200923065900.658666-1-jhp@endlessos.org>
 <439c4b59-b1e6-88bb-568e-1c2a0feceed4@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_071700_696295_BFBA6341 
X-CRM114-Status: GOOD (  23.82  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux@endlessm.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 23. September 2020, 13:05:26 CEST schrieb Robin Murphy:
> On 2020-09-23 07:59, Jian-Hong Pan wrote:
> > The cdn-dp sub driver probes the device failed on PINEBOOK Pro.
> > 
> > kernel: cdn-dp fec00000.dp: [drm:cdn_dp_probe [rockchipdrm]] *ERROR* missing extcon or phy
> > kernel: cdn-dp: probe of fec00000.dp failed with error -22
> 
> Wouldn't it make more sense to simply not enable the DisplayPort node in 
> the upstream DT, until the type-C phy work has been done to make it 
> usable at all?

Or alternatively just disable the cdn-dp Rockchip driver in the kernel config,
which results in it also not getting probed.


> AIUI the "official" Manjaro kernel is carrying a bunch of 
> hacks to make type-C work via extcon, but they know that isn't an 
> upstreamable solution.
> 
> Robin.
> 
> > Then, the device halts all of the DRM related device jobs. For example,
> > the operations: vop_component_ops, vop_component_ops and
> > rockchip_dp_component_ops cannot be bound to corresponding devices. So,
> > Xorg cannot find the correct DRM device.
> > 
> > This patch skips the probing failed devices to fix this issue.
> > 
> > Link: http://lists.infradead.org/pipermail/linux-rockchip/2020-September/022352.html
> > Signed-off-by: Jian-Hong Pan <jhp@endlessos.org>
> > ---
> >   drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 6 ++++++
> >   1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> > index 0f3eb392fe39..de13588602b4 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> > @@ -331,6 +331,12 @@ static struct component_match *rockchip_drm_match_add(struct device *dev)
> >   
> >   			if (!d)
> >   				break;
> > +			if (!d->driver) {
> > +				DRM_DEV_ERROR(d,
> > +					      "%s did not probe successfully",
> > +					      drv->driver.name);
> > +				continue;
> > +			}
> >   
> >   			device_link_add(dev, d, DL_FLAG_STATELESS);
> >   			component_match_add(dev, &match, compare_dev, d);
> > 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
