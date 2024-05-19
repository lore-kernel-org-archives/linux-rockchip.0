Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBA41C25B75
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 May 2024 08:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zokm0eLanisI2swPOF/DGT0otlfZfcTOscQhNZGPVB4=; b=ctg25lAuufbnGJ
	0U5r0hdjvWlgv3ijPxDVGkks5lREHcxYKHqh5Sp8SVSIQ6yVcTxt+VKTuhaB77tjGfPjH57ux7ar8
	/D07ekquXZf5euMwn5BnfH2+jFDw4Oyhe1VVZ4Ynxakh7qhsCWv/gPo4zfESzvvI8UTM4fRZahygJ
	dIEYZKqY8UCVxYUngqR5LiCGMUp+MhYc5tm8Vt3A0OlMBUFei8w8czjSgOquhOW3H1PKAPwO7lZ35
	MliZJNY4vDN/IoCASwMQP0ud9aEex8H3wR9qK0xTep7hvI3BJPsLEXMVnK6gE0g6XbX85r4xTudP6
	sB5nZCEAWi6Mi4dMNiVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8cJd-0000000Bh3C-17pD;
	Sun, 19 May 2024 08:54:49 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8cJX-0000000Bh29-098T;
	Sun, 19 May 2024 08:54:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 69181CE0976;
	Sun, 19 May 2024 08:54:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAF3EC32781;
	Sun, 19 May 2024 08:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1716108879;
	bh=avtQ0tx1UdGxRsX9qlthvVsjKBAmRdw8FRebf2A40AY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nZr0+0uH7hovHNTAPMinTSPdETzLlI5O+iBMGKaXSs8Dn6tjYThYVZzpuuB3q89k7
	 8ivAraMr8BuZNiDzkNjR/dw/01BJItU3zMnON0g2J5TM9Tz5uw5dZXEBMbSE45LRbU
	 njK9ujwV0dIekKzEFZV4X3qw2RHWZ5KQYPCMhgUQ=
Date: Sun, 19 May 2024 10:54:36 +0200
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
Message-ID: <2024051930-canteen-produce-1ba7@gregkh>
References: <20240519074019.10424-1-val@packett.cool>
 <2024051936-cosmetics-seismic-9fea@gregkh>
 <0C5QDS.UDESKUXHKPET1@packett.cool>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0C5QDS.UDESKUXHKPET1@packett.cool>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240519_015443_295496_85004DFE 
X-CRM114-Status: GOOD (  13.29  )
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

On Sun, May 19, 2024 at 05:38:24AM -0300, Val Packett wrote:
> 
> 
> On Sun, May 19 2024 at 09:59:47 +02:00:00, Greg KH
> <gregkh@linuxfoundation.org> wrote:
> > On Sun, May 19, 2024 at 04:31:31AM -0300, Val Packett wrote:
> > >  On the RK3066, there is a bit that must be cleared on flush,
> > > otherwise
> > >  we do not get display output (at least for RGB).
> > 
> > What commit id does this fix?
> 
> I guess: f4a6de855e "drm: rockchip: vop: add rk3066 vop definitions" ?

Great, can you add a Fixes: tag when you resend these?

> But similar changes like:
> 742203cd "drm: rockchip: add missing registers for RK3066"
> 8d544233 "drm/rockchip: vop: Add directly output rgb feature for px30"
> did not have any "Fixes" reference.

Just because people didn't properly tag things in the past, doesn't mean
you should perpetuate that problem :)

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
