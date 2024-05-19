Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2797C25B75
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 May 2024 07:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHU/vF4Z5bwiO+KuBqR4hUU1X7DfyGCu3XocAcwMDvc=; b=tJ7TgeV9oI8qyV
	mqWg3X2rQ0noNfKbGKufj3qFU+b1O7BW1JjSNrD2/A6PnhJ/rt2LU0CtWhD0Z53kjDV2hHdCmWyoY
	f+Rx8MpXq0Qylz3jFvGPQaKBKQqj7dlEd2s9W+ki+RjwqMJ2gM2N+ABwGzkzUpXUFQFZocImWOo19
	KboKXW9VKIrMkCBkDBj2pjcfUiu+Ancq3qtZWaFQRrVBUzs8Wn/ZhGB4Mz8N62gB66+ostqOwbgdL
	/7JyDpie304nGA99IHsiQUSWIm+F/CAquEt1+HK7IIHKe3H69I9bSMRCe19cnYJJVZiJAOl1+z1eU
	6Rv6gDVhd5Cd4dMxr0cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8bSV-0000000BbDk-1rl5;
	Sun, 19 May 2024 07:59:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8bSR-0000000BbBt-3g4l;
	Sun, 19 May 2024 07:59:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3104B60E03;
	Sun, 19 May 2024 07:59:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55ABBC32782;
	Sun, 19 May 2024 07:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1716105590;
	bh=Js533fXv07i00ZGY091MEl3ChJe/lib4LdV6Kq4wzIc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=2MiSyS1OlozoQwxwtUwkCDqKXeCND4CH0dDYQqbT7fJjK9ZxDKBMY48MPbW/6vxpn
	 ygZInnvC/+G/4ZA+IgCXOjN7J2ygMwgEPCNmjB+XuAAcpwvRpTRiKebKSupn00Qf8H
	 uExc4kDcBAuzTOxuMi94XAcCZ+E+w+nc3kdm+Q7c=
Date: Sun, 19 May 2024 09:59:47 +0200
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
Subject: Re: [PATCH 1/2] drm/rockchip: vop: clear DMA stop bit on flush on
 RK3066
Message-ID: <2024051936-cosmetics-seismic-9fea@gregkh>
References: <20240519074019.10424-1-val@packett.cool>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240519074019.10424-1-val@packett.cool>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240519_005951_979586_0DAB1EFF 
X-CRM114-Status: GOOD (  14.78  )
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

On Sun, May 19, 2024 at 04:31:31AM -0300, Val Packett wrote:
> On the RK3066, there is a bit that must be cleared on flush, otherwise
> we do not get display output (at least for RGB).
> 
> Signed-off-by: Val Packett <val@packett.cool>
> Cc: stable@vger.kernel.org
> ---
> Hi! This was required to get display working on an old RK3066 tablet,
> along with the next tiny patch in the series enabling the RGB output.
> 
> I have spent quite a lot of time banging my head against the wall debugging
> that display (especially since at the same time a scaler chip is used for
> LVDS encoding), but finally adding debug prints showed that RK3066_SYS_CTRL0
> ended up being reset to all-zero after being written correctly upon init.
> Looking at the register definitions in the vendor driver revealed that the
> reason was pretty self-explanatory: "dma_stop".

What commit id does this fix?

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
