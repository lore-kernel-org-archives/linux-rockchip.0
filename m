Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D35AAC531DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 19:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jahJqltiUuByOp1o2T+OR98YEJvm9E9LOgD4YutAzzs=; b=OIP0DsxaOyOqD9
	xiSt9ImehYIAB9z5BYN2DTQJd99LxQIefxi/WTBfPEOJTpq1N/TG2ohaEYopvPbCqS2ZAVI5Gmezl
	iCAQCgfQKFvEiCekf42gtTnR7uqxMND9duxQUi+7LynQyOLzAL/DJ+sy88kuoHw2nILq4xsqeNq26
	mo98rpRsakPJSKdR4kgoGK86n9x2b1DvXjklGR4O55axZWN6DJ6tyoTisLHROSivdNWA11egg02t+
	8EIWHnChKxlktX+SKfiqKPDh8+5IdAhlD1yVWao31ZHLL2c3zYNNH/fUSVEzvRojmgr+QO9CUqtI8
	J+SYNgvdCGcNraftw2jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sefih-0000000ApzV-1Rps;
	Thu, 15 Aug 2024 19:01:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seeeb-0000000Ahmt-2Mnd;
	Thu, 15 Aug 2024 17:52:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sX4ji4tZ/IC07+4SxnMSoyXeYOb8nKo0ZJ2qqmmYDyc=; b=JFYMWCABVQ+r4mZG0/w602Ykns
	M8haWA4KNBJNiL6ZMJ46N7TfIFUIls4XAXTDPsLwbyo7NUzQ4hWDNUO3kkJ4W9Ms+bOgjJcXNr0Ay
	gDb+CVEW3+hbGXjBp1jpTHN2mBhJK7zgmGYcmcqUrKsw8R2VwGeejiJhuV9RR6UoGuzPpe7kFqqfZ
	Ic0hcpwZntC5FVHeHIjg0YHkpyXsQ9mBz3XDu3tp+isnbsLH0ZsLq9k4XKRmP17yyoas82MRg+qLb
	i2NhR3ZMPFALMTaKE/2HBDeRJ92yskvmisKSg8IJjza7J4wVe6/8xQGCvTiIXlTTf8EciUCQfd8Fc
	qEUAAYIw==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seeeE-0006Qv-On; Thu, 15 Aug 2024 19:52:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <seanpaul@chromium.org>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Mark Yao <markyao0591@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND] drm/rockchip: Unregister platform drivers in reverse order
Date: Thu, 15 Aug 2024 19:52:29 +0200
Message-ID: <12056454.6ASCnIXroE@diego>
In-Reply-To: <80ffed99-7368-4f84-8dc9-4c980055e48d@collabora.com>
References: <20240808-rk-drm-fix-unreg-v1-1-c30d9a754722@collabora.com>
 <9027071.qdD9tO9HgI@diego>
 <80ffed99-7368-4f84-8dc9-4c980055e48d@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_105253_625197_3747D8D0 
X-CRM114-Status: GOOD (  23.85  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 15. August 2024, 19:26:54 CEST schrieb Cristian Ciocaltea:
> On 8/15/24 5:21 PM, Heiko St=FCbner wrote:
> > Am Donnerstag, 8. August 2024, 13:58:02 CEST schrieb Cristian Ciocaltea:
> >> Move rockchip_drm_platform_driver unregistration after its sub-drivers,
> >> which ensures all drivers are unregistered in the reverse order used
> >> when they were registered.
> > =

> > are you sure about that?
> > =

> > I.e. currently rockchip_drm_init() does =

> >   platform_register_drivers(rockchip_sub_drivers, ...)
> > to register the sub-drivers and only after that registers the main
> > drm-platform-driver
> > =

> > rockchip_drm_fini currently does the reverse of first unregistering the
> > main drm-platform-driver and after that unregistering the array of sub-
> > drivers.
> > =

> > =

> > So as it stands right now, rockchip_drm_fini does already do exactly the
> > reverse when de-registering.
> =

> Indeed, somehow I overlooked this while debugging some module unloading
> issues.  I guess it just felt more naturally to have the subdrivers
> unregistered first.
> =

> Out of curiosity to see if there's a common pattern for handling this, I
> found that most drivers do indeed unregister the subdrivers before the ma=
in
> platform one, but weirdly enough, some of them do also keep the same order
> on registration, similarily to what this patch unintentionally does:
> =

>   drivers/power/supply/ab8500_charger.c
>   drivers/gpu/drm/vc4/vc4_drv.c
>   drivers/gpu/drm/mcde/mcde_drv.c
> =

> Not sure if those are potential mistakes, or maybe it doesn't really matt=
er?!
> =

> Please let me know if you have a preference for it, and I'll update the
> patch accordingly, otherwise let's just ignore it altogether.

in theory it shouldn't matter, simply because the component framework
will only bind when all driver are present and unbind when the first driver
vanishes.

But I really like doing the reverse order more - so as it is now.

You also wouldn't disable clocks, before trying to deactivate some device-
function.

So deactivating stuff in the reverse order of them getting activated is most
likely less error prone.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
