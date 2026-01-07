Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D100CCFD628
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 12:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tG2ZLFMHsxfjbaHnLYHbDMbCaz6a4O3fHF/ybGq/4To=; b=SYLYixIHFaankZ
	yTM7YX8v8N62ueyfel/9F2pWTtKKa6RNy1goxybxHxhy42KStBemH8uTRgDRT1ive2Sw9phddQoZ/
	92vQ8a6dimGQr5c8C+y2eFZMwXEXo5majXFg9AntvTbrGQ8Lsy2BKrJuYbKBIO75MfPFKdSOTHJuM
	qwRJSb93D5u7p8p0v32mPJJL5jc35T6uQQGwnXTZYV9k6RrhyqWnR0M5nRlzI8j+LHjwXfZ4b5guV
	aYbwAptTA1T4WIuBvFZFyOZjUo8mGfINJuD9xrEyZ2o7uXDUgfh106cJ9UZ6yBBWAktChQ31DGRQY
	DSD3RHa8t1oEVsxHpe1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdT6V-0000000EwSf-0VHx;
	Wed, 07 Jan 2026 12:57:35 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdT6T-0000000EwRs-0QWb;
	Wed, 07 Jan 2026 12:57:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 34D036000A;
	Wed,  7 Jan 2026 12:57:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D685C16AAE;
	Wed,  7 Jan 2026 12:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767790651;
	bh=AZ3FTUzyEnjHa8UimWASucIjpUtAemrhK/cj4twknT8=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=QrvrUhv7AKUyuhxnfnZD8aTRrkLEqDa3FVHhBC6qxSbAoejvO1zyJrbl3ODgv5Dnm
	 08L0MIErAX/jzBq66LOvzH4bDL4k0rOQgvNl+95WMn33WJIFTdD2C1QFOUKoADoM1B
	 W3zJ1EnPSHcuH9ube8VJlwcD1Gsk7czmsRt3zaif5ClvKfgXa6i8sDoKcVHy0H+cX9
	 RpVEnA2KjR6S8BMQ+ka8FOmbx7AfXEVPkA0PQtj3xwQyfOWku0YZWfEI74lRRzWrPU
	 6GI9Nex4iLl4Dgfxu5Yb9Wns3l1FMX4xw3PAoGaLkO/FE7IYDI4v3Txku23hQ7vfKT
	 t3AFfQhoyVrvQ==
Message-ID: <2cc04e3f503dc7ed74d8faade50cf69c@kernel.org>
Date: Wed, 07 Jan 2026 12:57:29 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v3 08/10] drm/display: hdmi_state_helper: don't generate
 unsupported InfoFrames
In-Reply-To: <20251224-limit-infoframes-2-v3-8-7fd3cacfefed@oss.qualcomm.com>
References: <20251224-limit-infoframes-2-v3-8-7fd3cacfefed@oss.qualcomm.com>
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

On Wed, 24 Dec 2025 03:02:57 +0200, Dmitry Baryshkov wrote:
> There is little point in generating InfoFrames which are not supported
> by the driver. Skip generating the unsupported InfoFrames, making sure
> that the kernel never tries to write the unsupported frame. As there are
> no remaining usecases, change write_infoframe / clear_infoframe helpers
> return an error if the corresponding callback is NULL.
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
