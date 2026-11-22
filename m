Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3343C606A320
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 09:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AILlc6iD;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.a=rsa-sha256 header.s=mail header.b=GL0q54Lr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CNvnO4JxwoHVVEkRT4UK3FCBBX0Bo+oErpTWtLnyAWQ=; b=AILlc6iDvMEdGjk2a7z2TOEJAb
	3dI/rkxUHhSmkFWQ7aZUsH3UvDxMDpR6kPucGYp6Z1/K/tVcOAo02S7GrZOhtHFNQFBKHoaiuAl4o
	pRwXyikyHyR4p1heUeXluBM2HpCKd3qftfSWXDHlncCDU9qQ4xOjitSIwCfveVDLt2LUcwBmMlk0F
	J0B9FOxptkOG/AoX2R9PEJTAsJ/x+mIIaF0tfi5WYLOVhBZ1sOcdfjz6O/4xnApMKJxZvTle9VQah
	WSedUZS17iGE9abZCuDMAMJ0l4RaKKTKIPSmya3WlGsieGaejDGoYNVnZEYQmXI8QGIxhnIhXW1CM
	wtTIkafQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV44D-00000000vWa-0mqh;
	Sun, 22 Nov 2026 09:41:01 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV44A-00000000vVu-1imU;
	Sun, 22 Nov 2026 09:41:00 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-7086-3000--a06.rev.dnainternet.fi [IPv6:2001:14ba:7086:3000::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id EDD82ABF;
	Sun, 22 Nov 2026 10:38:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1795340301;
	bh=yTMMp7PT3K2LyuvelR0MmDh6s2VsGr4kgwTbxEVPAwE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GL0q54LrHkSn2pAjjFMO58LLdrGwbsOPFXG57oU5XxCd+1cPoP2nCvPVBSf7C9dxv
	 TwU3KgbXpSkLaiHRp58caVX9suZEC3zznR0xZJI3ZJmN/2t9/W96BG8p9UYKDAh5Bh
	 89KCH1L23XRTnHsOCB1YCLTR2uu+yfQ3WGQNisZ0=
Date: Sun, 22 Nov 2026 11:40:50 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Arun Iyengar <aiyengar1990@gmail.com>
Subject: Re: [PATCH v12 06/23] drm/bridge: synopsys: dw-dp: Fix AUX transfer
 timeout race condition
Message-ID: <20261122094050.GB2739410@killaraus.ideasonboard.com>
References: <20261114-synopsys-dw-dp-improvements-v12-6-d42d3dc5bdd4@collabora.com>
 <179533990370.107225.5765165679182115805@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <179533990370.107225.5765165679182115805@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_014058_604471_25FA586D 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Andy Yan <andyshrk@163.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, Igor Paunovic <royalnet026@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@flipper.net>, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, Nov 22, 2026 at 09:31:43AM -0000, Arun Iyengar wrote:
> On Sat, Nov 14, 2026 at 06:00:39AM +0100, Sebastian Reichel wrote:
> > @@ -1491,6 +1493,12 @@ static ssize_t dw_dp_aux_transfer(struct drm_dp_aux *aux,
> >  	status = wait_for_completion_timeout(&dp->complete, timeout);
> >  	if (!status) {
> >  		dev_err(dp->dev, "timeout waiting for AUX reply\n");
> 
> This still drops a reply the sink did send when the IRQ thread runs
> more than 10 ms late. On RK3588 (7.3, KASAN on, v11 of this series:
> same 06/23), with a SCHED_FIFO hog at the IRQ thread's priority on its
> CPU (busy 40 ms of every 200 ms), 1410 DPCD reads gave 183 timeouts.
> Checking for the reply once more before giving up gave 0 timeouts,
> with 127 late replies taken:
> 
> --- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
> @@ -1493,2 +1493,6 @@ static ssize_t dw_dp_aux_transfer(struct drm_dp_aux *aux,
>  	status = wait_for_completion_timeout(&dp->complete, timeout);
> +	if (!status) {
> +		synchronize_irq(dp->irq);
> +		status = try_wait_for_completion(&dp->complete);
> +	}
>  	if (!status) {
> 
> Feel free to fold it in.
> 
> Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
> 
> Claude (Anthropic) wrote this change; I reviewed and tested it.

There's something missing here. You may have reviewed (whatever that
means) and tested it (probably), it doesn't seem you've understood it.
All of this screams of a big hack.

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
