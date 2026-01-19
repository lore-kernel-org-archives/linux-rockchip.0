Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEE58CCF2D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 10:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCJa9zM6F+aT9karmBtaAtQEhguHXi+dhCNcTjrRiyA=; b=WUg4wFyrayUZ7V
	xspV2www4qrQnp5kp2kIZiFgTneRPe/r+Mx9I3oJj6tNkh6jRQ7gz+Ua68JF7tXs96zoZ74Dpq4Ir
	4gP5EHZZ5dpg5VGi4t/BlcaSP75AUtFMTyLtfoW27qgjiC3UF625sQtyeG0IAzzJG6975IS7kii2R
	+mtGkaA1mw+qoSJazbb0uA8A1GJkXMYPSY10SWii1wBKYRjSRORMkzYMAJiXQmlAYdmw4tgX23uDf
	soE+XU/hFwiQwmPLmZdJVjLrMWBjLAC0ViQrWy49+DcExFiCMGHIC9lkmFvwUnkwbEaXEKBU2DyLF
	k32PFqKNS86e4qd2/4uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhmH1-00000001jNl-2NqR;
	Mon, 19 Jan 2026 10:14:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhmGm-00000001jJs-1KOX;
	Mon, 19 Jan 2026 10:14:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 34B6143D9B;
	Mon, 19 Jan 2026 10:13:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89D94C16AAE;
	Mon, 19 Jan 2026 10:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768817639;
	bh=NYdJQrmH02NA6Tbg7YbuRjFQaGimaDqIcuD9t2JJMBQ=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=AeDvMHo3DwRyyOwsOt3Jiff3SJaHaI2TfoOMnycd8ue94ufW3X2ZpsF5JcszxdXUc
	 99hNu2JtkOZ5cz0f9co2ywnQRG4iUmRAcalXQa3PXdAGi9q7O0igqVcMNLB24CJ/7N
	 U8w+R/ohSCTb/vVN1uKOeBRoEwuttAp7PCPpo/Z+z+AT0rExbUyP6gEo8P6xV9Dq96
	 qxaw406z3/DWloyzjHoWvgxE7taQOk8S58Btjo1yeiT8pzUrDxq0UPsbZSXHi/ppnN
	 Q1nJ0ThhOIm2KrJ7Hgqhe9cG6X2Yq6c+T8vVGpA78L/RCzsCY/wHLLT2Xh1G7ITpYm
	 UTSrxZGZkorMw==
Message-ID: <12c1669e5947ce144bd295e5a26a93da@kernel.org>
Date: Mon, 19 Jan 2026 10:13:56 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 07/10] drm/display: hdmi_state_helper: reject Audio
 IF updates if it's not supported
In-Reply-To: <20260107-limit-infoframes-2-v4-7-213d0d3bd490@oss.qualcomm.com>
References: <20260107-limit-infoframes-2-v4-7-213d0d3bd490@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, "Abhinav
 Kumar" <abhinav.kumar@linux.dev>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Andy
 Yan" <andy.yan@rock-chips.com>, "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>, "Chen-Yu
 Tsai" <wens@kernel.org>, "Chun-Kuang Hu" <chunkuang.hu@kernel.org>, "Dave
 Stevenson" <dave.stevenson@raspberrypi.com>, "David Airlie" <airlied@gmail.com>, "Dmitry
 Baryshkov" <lumag@kernel.org>, =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jernej
 Skrabec" <jernej.skrabec@gmail.com>, "Jessica Zhang" <jesszhan0024@gmail.com>, "Jonas
 Karlman" <jonas@kwiboo.se>, "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, "Liu
 Ying" <victor.liu@nxp.com>, "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Marijn
 Suijten" <marijn.suijten@somainline.org>, "Matthias Brugger" <matthias.bgg@gmail.com>, "Maxime
 Ripard" <mripard@kernel.org>, =?utf-8?b?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, "Philipp Zabel" <p.zabel@pengutronix.de>, "Raspberry
 Pi Kernel Maintenance" <kernel-list@raspberrypi.com>, "Rob Clark" <robin.clark@oss.qualcomm.com>, "Robert
 Foss" <rfoss@kernel.org>, "Samuel Holland" <samuel@sholland.org>, "Sandy
 Huang" <hjc@rock-chips.com>, "Sean Paul" <sean@poorly.run>, "Simona Vetter" <simona@ffwll.ch>, "Thomas
 Zimmermann" <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_021400_402836_967E8450 
X-CRM114-Status: UNSURE (   7.18  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 7 Jan 2026 20:15:04 +0200, Dmitry Baryshkov wrote:
> Updating the InfoFrame if it can not be sent over the wire makes no
> sense. Change drm_atomic_helper_connector_hdmi_update_audio_infoframe()
> and drm_atomic_helper_connector_hdmi_clear_audio_infoframe() to return
> an error if Audio InfoFrame callbacks are not implemented.
> 
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
