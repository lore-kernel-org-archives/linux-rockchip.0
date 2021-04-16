Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A869AC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 11:31:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 20A1E61107
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 11:31:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 20A1E61107
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=earth.li
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zJE8KAXsZqkjqyu8/LuiM2nHv/SlkKHx25FRSSH4k0U=; b=Gwexg8FUzFI+f/bAKWCLPINP+
	/M2lUOJpYKs818VHn5D8Ts6aKywzY6FC2oGDhEKbaku8OVYjCENHGCyBYIGznt8qX28lAzL03J9WC
	irDzjSBUCFNXLfCMTeSK+xmzZDmTaC/BpD0+sHXhZq3B/6RSF6gH+5YRSpjRyuQCB5CR2VzET3uZU
	9d3IqOBK4AbzrOPezO3C2mZxgsZlxYzBBEWVInDFlbpZaUz3E5BtNbheiFtmikeh8W61ro3ovKg2m
	hS9/x3tmsAwTcr9ZiMJey9TAQol1tcypwALLqnv0wRydQSwuYFNza64F65OVxKBrdht2gYY7zTkpn
	dL1rD8C4w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXMhE-001vam-Vh; Fri, 16 Apr 2021 11:31:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXMfz-001vMD-NL; Fri, 16 Apr 2021 11:30:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=RJbwMca3HWTPhpw7xIW9Qq7e+WzukTXRdxw66YuQufo=; b=I0VK/772Zbc4vGF+btDZpyAxp5
 zVc5FPyVfLZ7yIMOW3+qvW5Qv8tVervBlgcFH/242FRJWzyUrb04jDblqT8lTVP91CA81Dh0X9/fc
 JF1IY7jZGupeuDCvkrZJLdZ1T61JJxtCt5bypXNh8oBUasNOgAApNpqx7n5YRl/N/qkiN5b8VHOM0
 8xej+mN3JOp3AL4V6QDbzYJkK6NgYmc05t1mGn968u9nl6UsPQke3oey4n6IdxEB556sluLz4OWeq
 tHjU8dfDH7LSVxX4mXRJcGosyA58o/fXyCednHYCCMBVC3+Y+06ojCcU1eMddNG+cFbJL/gDFbkUk
 JMpO+FBA==;
Received: from the.earth.li ([2a00:1098:86:4d:c0ff:ee:15:900d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXMfw-009JnZ-6l; Fri, 16 Apr 2021 11:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=earth.li;
 s=the; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RJbwMca3HWTPhpw7xIW9Qq7e+WzukTXRdxw66YuQufo=; b=aUGBP3d/qfBQUdtvaDMKYuBTvz
 slWpKMc7ouKXgcXYzKeggC9IZ6HPyJoZWUxeHaIKrCmWn411wmMts/6786gOuSsUKQ8wST2uJh5XY
 6i/8izHDInpAl/5Z+ZQJNoO+M4n4WSSSVvKsJeaQCca2mzgY3+m2lIRUtErZHhzLFU4eBFKJ8IPvI
 mePo2K407iV7UCCJ8LglNCB2kHe+N370JaeETmGqM01hzEsGSQBRuLQeEP/WGngqYU7qLD6q7Tmpq
 RIA6BJ0K9QnYOEXU4MAFCSHZ+m92f0GSJqQ06xdtDYj47SJrvfOykBAacmTiDEMY7tzjmMAuafV6U
 fBsmCN4Q==;
Received: from noodles by the.earth.li with local (Exim 4.92)
 (envelope-from <noodles@earth.li>)
 id 1lXMfk-0003r3-Hf; Fri, 16 Apr 2021 12:30:04 +0100
Date: Fri, 16 Apr 2021 12:30:04 +0100
From: Jonathan McDowell <noodles@earth.li>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: Cope with endpoints that haven't been
 registered yet
Message-ID: <20210416113004.GW11733@earth.li>
References: <20210316182753.GA25685@earth.li>
 <3104631.44csPzL39Z@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3104631.44csPzL39Z@phil>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_043017_201486_8FC378BF 
X-CRM114-Status: GOOD (  32.19  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Mar 21, 2021 at 07:58:13PM +0100, Heiko Stuebner wrote:
> Am Dienstag, 16. M=E4rz 2021, 19:27:53 CET schrieb Jonathan McDowell:
> > The Rockchip RGB CRTC output driver attempts to avoid probing Rockchip
> > subdrivers to see if they're a connected panel or bridge. However part
> > of its checks assumes that if no OF platform device is found then it
> > can't be a valid bridge or panel. This causes issues with I2C controlled
> > bridges that have not yet been registered to the point they can be
> > found.
> > =

> > Change this to return EPROBE_DEFER instead of ENODEV and don't ignore
> > such devices. The subsequent call to drm_of_find_panel_or_bridge() will
> > return EPROBE_DEFER as well if there's actually a valid device we should
> > wait for.
> > =

> > Signed-off-by: Jonathan McDowell <noodles@earth.li>
> > ---
> >  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 8 ++++++--
> >  drivers/gpu/drm/rockchip/rockchip_rgb.c     | 7 ++++---
> >  2 files changed, 10 insertions(+), 5 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/=
drm/rockchip/rockchip_drm_drv.c
> > index 212bd87c0c4a..b0d63a566501 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> > @@ -270,11 +270,15 @@ int rockchip_drm_endpoint_is_subdriver(struct dev=
ice_node *ep)
> >  	if (!node)
> >  		return -ENODEV;
> >  =

> > -	/* status disabled will prevent creation of platform-devices */
> > +	/*
> > +	 * status disabled will prevent creation of platform-devices,
> > +	 * but equally we can't rely on the driver having been registered
> > +	 * yet (e.g. I2C bridges).
> > +	 */
> >  	pdev =3D of_find_device_by_node(node);
> >  	of_node_put(node);
> >  	if (!pdev)
> > -		return -ENODEV;
> > +		return -EPROBE_DEFER;
> =

> In general, how does that relate to i2c-bridge-drivers, as
> of_find_device_by_node supposedly only acts on platform-devices?

I think the problem here is that not finding the device node means we
return an error here, which means it's not actually possible to attach
an i2c bridge driver to the Rockchip RGB interface at present.

> Also if that points to a disabled bridge (hdmi, etc) that would likely ma=
ke
> it probe-defer indefinitly, as that device will never become available?
> =

> Maybe we could do something like of_device_is_available() which checks
> the status property of the node. So something like:
> =

>   	pdev =3D of_find_device_by_node(node);
>   	if (!pdev) {
> 		bool avail =3D of_device_is_available(node);
> =

> 		of_node_put(node);
> =

> 		/* if disabled
> 		if (!avail)
> 			return -ENODEV;
> 		else
> 			return -EPROBE_DEFER;
> 	}
>   	of_node_put(node);
> =

> Though I still do not understand how that should actually pick up on
> i2c devices at all.

of_find_device_by_node will fail here, as it's not a platform device,
but then of_device_is_available should return true so I think I can
actually just return false here rather than EPROBE_DEFER - because if
it's not a platform device then it's not a subdriver, which is what
we're checking for.

I'll re-roll and test this weekend and post an updated revision. Thanks
for the pointers.

J.

-- =

101 things you can't have too much of : 3 - Sleep.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
