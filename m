Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5717C25B75
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 May 2024 07:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9H3tAlOAaRPbx2sR8PkytdaObJXv3CREx6zr+4A7fxI=; b=PxuwbeT5NQtYeu
	uL1a55MZvQXYLgRbUbORsRoiG+nvZnWWRSS38HCgt2TPPyEJ5EQnkiCGktsLukX5xfXswhstv+L7X
	2S6IsdlrJdFTARGu90GYLGzLLm705xEAErRpmp8C9AbBHbjsaVRNomQT8gv70n0nh9gVLghCTvBQ0
	sVgyuAjN1P0rXmKuyfwOkmufUnGQQRbaXGOolHnkqUNjl79v9GzwBoJyjyFZ5OSvM4cckViqGVTFz
	zAwGE9CShssupsx0QTt+9n9y0oM5SMY6A5qE54Hbcsy6DRLeSudVJrZfDy+Xx/8qDUN+qHKl0oyTg
	oU8k14zRz/OtxoAILIRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8bSH-0000000Bb8S-3gMg;
	Sun, 19 May 2024 07:59:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8bSE-0000000Bb7g-1z59;
	Sun, 19 May 2024 07:59:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5334760DFB;
	Sun, 19 May 2024 07:59:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70A4FC32781;
	Sun, 19 May 2024 07:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1716105575;
	bh=H/2+qHdYi7ZEH7Zr9/SLo5WPHWSoGzS8PBcfWjDh6Hg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q+2tvIxpjbjvQNCxXWSJzFAJeeMCAvdCKktm2TtN70Zxn9KA+SXM7CaJRPaq/WpPl
	 IbyyFYOyMX8vooiPyAgSrFHyI9DSfvabTdmqdXmlpaS87pHIqmS4kUQO6IRUWyUr7Y
	 9b3oYYAIZC/B0s3437qH/UsmtvzKbdxc5YeUFnf0=
Date: Sun, 19 May 2024 09:59:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Val Packett <val@packett.cool>
Cc: stable@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] drm/rockchip: vop: enable VOP_FEATURE_INTERNAL_RGB
 on RK3066
Message-ID: <2024051907-extruding-overplant-54f1@gregkh>
References: <20240519074019.10424-1-val@packett.cool>
 <20240519074019.10424-2-val@packett.cool>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240519074019.10424-2-val@packett.cool>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240519_005938_613152_885056D4 
X-CRM114-Status: UNSURE (   8.84  )
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

On Sun, May 19, 2024 at 04:31:32AM -0300, Val Packett wrote:
> Signed-off-by: Val Packett <val@packett.cool>
> Cc: stable@vger.kernel.org
> ---
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 1 +
>  1 file changed, 1 insertion(+)

Maybe the DRM subsystem has more lax rules, but I know I can't take
patches without any changelog text at all, sorry.

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
