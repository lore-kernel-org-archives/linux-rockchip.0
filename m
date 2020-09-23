Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A7DC4363D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 07:38:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BFE2B214D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 07:38:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="AvnL2dNp"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BFE2B214D8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FrNIVZF6DaZzqgwfhNuaHRxpzbe3VDEymB9X3h406no=; b=AvnL2dNp/fciQ5PMqE30Mmns2
	1GNkhLkyLdJPfQsClxDybqTmnbSFeQlYcjK9h5eeqHTZ3C0iBGBkCgnNF5HX+dB99Hef0rytoq29l
	0clDwIcORrJx+EkoWBft+lMaey2dTdC5XD/9ikTIRpNV+5NrJ2XG+GRds9wWTMNUIanLttNg7K+YB
	G6N5QrBvGld8LyrRCshSwrZQ321aHDMnIrdE+x1017K98dl9ZWSkQaBBLI5wyO7fOnoVAU3Q0RXaq
	T+g7FzWgBfPe1JNbJmR2T8gSQ4pf9JCE49c4Bg3wXd+dzOIxg+Ba3DJQ//JZiMmeLwwcEh3RiTFso
	bl2hlW2kA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKzMH-0007g1-BF; Wed, 23 Sep 2020 07:38:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKzMD-0007fH-BU; Wed, 23 Sep 2020 07:38:30 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kKzM1-0005G0-UU; Wed, 23 Sep 2020 09:38:17 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jian-Hong Pan <jhp@endlessos.org>
Subject: Re: [PATCH] drm/rockchip: skip probed failed device
Date: Wed, 23 Sep 2020 09:38:17 +0200
Message-ID: <4075212.IPEHUSCvie@diego>
In-Reply-To: <20200923065900.658666-1-jhp@endlessos.org>
References: <CAPpJ_efHX70Ej0uzRi-iRf7N0n6ZO5sMN-wK_YpszvVD-Un9RQ@mail.gmail.com>
 <20200923065900.658666-1-jhp@endlessos.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_033829_405021_3E96EC5D 
X-CRM114-Status: GOOD (  20.86  )
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
Cc: Jian-Hong Pan <jhp@endlessos.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux@endlessm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Mittwoch, 23. September 2020, 08:59:00 CEST schrieb Jian-Hong Pan:
> The cdn-dp sub driver probes the device failed on PINEBOOK Pro.
> 
> kernel: cdn-dp fec00000.dp: [drm:cdn_dp_probe [rockchipdrm]] *ERROR* missing extcon or phy
> kernel: cdn-dp: probe of fec00000.dp failed with error -22
> 
> Then, the device halts all of the DRM related device jobs. For example,
> the operations: vop_component_ops, vop_component_ops and
> rockchip_dp_component_ops cannot be bound to corresponding devices. So,
> Xorg cannot find the correct DRM device.
> 
> This patch skips the probing failed devices to fix this issue.
> 
> Link: http://lists.infradead.org/pipermail/linux-rockchip/2020-September/022352.html
> Signed-off-by: Jian-Hong Pan <jhp@endlessos.org>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index 0f3eb392fe39..de13588602b4 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -331,6 +331,12 @@ static struct component_match *rockchip_drm_match_add(struct device *dev)
>  
>  			if (!d)
>  				break;
> +			if (!d->driver) {
> +				DRM_DEV_ERROR(d,
> +					      "%s did not probe successfully",
> +					      drv->driver.name);
> +				continue;
> +			}

How does this relate to drivers doing EPROBE_DEFER?

Very often you have sub-drivers defering probe as they still need another
resource, so excluding them in that case would not work?

Heiko


>  
>  			device_link_add(dev, d, DL_FLAG_STATELESS);
>  			component_match_add(dev, &match, compare_dev, d);
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
