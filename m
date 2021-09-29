Return-Path: <SRS0=t/9b=OT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82F0C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 18:05:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9113461465
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 18:05:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9113461465
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSDMmscGWGAXsFb6oFWk4dxnMDkHccX+gSIXQLwWYJg=; b=02sgkhF/f3e/Hk
	lW3Z2bA+OJ7MYSeevvtUZzeLHIZZZTan2nrlFxcyfvheu7IMfTrSol8TaRoRczh9Z2gsNCgm01jCA
	BCweglV7dNZ88uA45L036bGibTDfyTrG6saXiJZYHl8PzrSSQp1Rt1AJjffcuIAg8/G9af1HDZAK+
	DgXCxAVnIRrhRItVlp1u/pG7uZxOiJDD/B0AyUsb2SFMJwmr2J+WIQ/xsoEgTTRPCEl7PZN/6sWgk
	d9SXGNgT3k7oaAdXQGz/nUyNgJ/w6KV1eEsjKprI8mFbfZriKPlQDxsFXxUBEUYzQefiFbgEVIuCA
	GSlx0zB535LmrgKZC4lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVdxZ-00C1c3-5I; Wed, 29 Sep 2021 18:05:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVdxV-00C1aH-Iw
 for linux-rockchip@lists.infradead.org; Wed, 29 Sep 2021 18:05:35 +0000
Received: from notapiano (unknown [IPv6:2804:14c:1a9:2434:b693:c9:5cb6:b688])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: nfraprado)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9C0951F44850;
 Wed, 29 Sep 2021 19:05:27 +0100 (BST)
Date: Wed, 29 Sep 2021 15:05:22 -0300
From: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, Chen-Yu Tsai <wenst@chromium.org>,
 Thomas Hebb <tommyhebb@gmail.com>, stable@vger.kernel.org
Subject: Re: [PATCH v3 2/4] drm/rockchip: dsi: Reconfigure hardware on resume()
Message-ID: <20210929180522.3zksg7mpwdut7tra@notapiano>
References: <20210928213552.1001939-1-briannorris@chromium.org>
 <20210928143413.v3.2.I4e9d93aadb00b1ffc7d506e3186a25492bf0b732@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210928143413.v3.2.I4e9d93aadb00b1ffc7d506e3186a25492bf0b732@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210929_110533_800065_51449117 
X-CRM114-Status: GOOD (  13.38  )
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

On Tue, Sep 28, 2021 at 02:35:50PM -0700, Brian Norris wrote:
> Since commit 43c2de1002d2, we perform most HW configuration in the
> bind() function. This configuration may be lost on suspend/resume, so we
> need to call it again. That may lead to errors like this after system
> suspend/resume:
> =

>   dw-mipi-dsi-rockchip ff968000.mipi: failed to write command FIFO
>   panel-kingdisplay-kd097d04 ff960000.mipi.0: failed write init cmds: -110
> =

> Tested on Acer Chromebook Tab 10 (RK3399 Gru-Scarlet).
> =

> Note that early mailing list versions of this driver borrowed Rockchip's
> downstream/BSP solution, to do HW configuration in mode_set() (which
> *is* called at the appropriate pre-enable() times), but that was
> discarded along the way. I've avoided that still, because mode_set()
> documentation doesn't suggest this kind of purpose as far as I can tell.
> =

> Fixes: 43c2de1002d2 ("drm/rockchip: dsi: move all lane config except LCDC=
 mux to bind()")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Tested-by: N=EDcolas F. R. A. Prado <nfraprado@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
