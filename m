Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33895D1AD35
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 09:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7PH743v5yOtlea8cPqWYnsXdHFVuoWOzkZbV94ZrN0=; b=Q3OLGAKSR0kTHe
	NBVDjJocpKJcKtE/EX9PpVbjtkaF5mxCm2/Zkff3JaTeMC9U4EmwHDpNehlTAuxx9wkzRdXLJTE5P
	Voz1oupaJ9lx3DPub32cmwEHrIGCN7imJ+3MvJhbsD0GCvniYkWUgofIL9Gxz2NuGtyPx5dwX3eBC
	WN+Ln/kmrKFPUedtSaPf/7HUsXp5ui63M0TTi30abYMhCWvo1L+MSfJXzahOH4n/iJjyIwyR97L2L
	pGMxTFO3WzRVyJkFtU4UVCGIPerDPld1inhZ2aGfLXtoAF4CwlDWRPy0mU3LYmdEunJQBVYANXxKK
	0BFzwJgKfpOZPNijpssg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t10I9-0000000BE0r-0z2L;
	Wed, 16 Oct 2024 09:26:05 +0000
Received: from mail-4316.protonmail.ch ([185.70.43.16])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t10Fh-0000000BDUB-0aI8
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 09:23:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=ekwlenqgozbevlhzioimqt252m.protonmail; t=1729070611; x=1729329811;
	bh=qIx8iugOIUWLMHfINQK2rHyqZiPqD+qIYHJtrMpJ0AY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=BkQ5/39Tv+FZxVf8VlKSrWEl6fBQyFVYozY/gfIMWYYSwtNeJ6ykroT33nTXBGi/S
	 NazhFU1StdZo3ibic2l2OSF7pmvMH2gN0HTVhFi0wctl0QY19Z6baD4MDNvy2nbZnn
	 tp0u17XAr+wwLT62n8zzDSMMYzSF9LbNu9BJUgpds77t04fqj633Pc/yeUOvkUeVRp
	 4HBWbbPOJW9QlN7u9g/Uxt6YPX+7PYBv1b3fcPWGzeSNIHs33IgxdSXt6FiAULo2jc
	 5hV3B6pkQ4Dp4KwryrTJm5gxq/RyrXQEtvGtLEejtYXQGA0gQjeMMHKr0b286BLNZN
	 6dBvj3BcVlvYQ==
Date: Wed, 16 Oct 2024 09:23:27 +0000
To: Andy Yan <andyshrk@163.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, Daniel Stone <daniel@fooishbar.org>, Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re:[PATCH v5] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <bDA4Uh6mp04Po1miJIueRsMNZ9W09DHEnRjG4CzWBn243gI_ExYhjwC9j-KMgOvUS5ofKsAa926IGfVGz4fNt9P_kOBpTyIOakgbB9Sqc-4=@proton.me>
In-Reply-To: <13fc0084.1321.19292eec34e.Coremail.andyshrk@163.com>
References: <20241014222022.571819-4-pZ010001011111@proton.me> <13fc0084.1321.19292eec34e.Coremail.andyshrk@163.com>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 74bd86e8529d5379f9ae4a2020a10169c9e66dec
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_022333_391116_9F987E9F 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
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

Hi Andy, 

> > 
> > static void vop2_crtc_atomic_flush(struct drm_crtc *crtc,
> > @@ -2790,7 +2945,13 @@ static int vop2_create_crtcs(struct vop2 *vop2)
> > }
> > 
> > drm_crtc_helper_add(&vp->crtc, &vop2_crtc_helper_funcs);
> > + if (vop2->lut_regs && vp->crtc.dev != NULL) {
> 
> 
> 
> There is no need to check vp->crtc.dev here, set has been set in drm_crtc_init_with_planes .

I tested it and this check must be here because trying to enable color mgmt 
on CRTC with no associated device, causes null ptr dereference later on in 
drm_crtc_enable_color_mgmt (unless something changed in recent kernel 
versions, last time I tested was 6.10? or even 6.8).

Best regards, Piotr Zalewski

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
