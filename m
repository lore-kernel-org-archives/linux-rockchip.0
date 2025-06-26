Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B547C7EE30
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 00:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1xZnvrw+2HCTS5QMFp7r822Zt8OHZYzBtwcPTbdPQ8=; b=YB8beBFTe26gWH
	87Q2cqp7ZH80b2tTw7NV7HucsnR9tw/1ivzy8TYmztU0bp1NMPVYyANwuj+0JVHTPYBfqQ1OnRijT
	xk7xnZtAUjSFbDIlWyg997o5EAwUVO41mPmXq9L150BP4WSPqanwnhsddvMICOoYIfDqs6fgiMFcV
	ZhZOFauUqZY6aeT2dhSD2jOw5EtYyvvwKPOqbQa3JTtfwB8vEaGGtzepKNRwbGFmdRPg8L40YUZww
	iTDiiQHkPNi4fo9ScLOthqVVVpZJ+W8WjTtExwOtw/HwbTRNu5c2VGDO2q9E0eoe4OYIlfrRgQixl
	OrOhFxGxn/Y5wrM+msjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUx1E-0000000DDVV-16MR;
	Fri, 27 Jun 2025 00:32:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUvxI-0000000D3Gb-1zia;
	Thu, 26 Jun 2025 23:24:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DD2CA6111F;
	Thu, 26 Jun 2025 23:24:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E3A3C4CEEB;
	Thu, 26 Jun 2025 23:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750980271;
	bh=3iYSIjl6d68LlL0ejDj5mcWaYaC3T+fv98YPCHJ3fTM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XgMvjXc4WdjDgwxyvHc2vg/f6VLnOix6GSsAs0057BSFLwx50Jak4odQh2wiqBlRM
	 /DoEOpZ0xrOndlPf2BWV6ocn6lt7KNeq6pl5xFBmnmBSoo7Oyg47UZPtgnUFOsvlm6
	 lATCkAR3de9ehf2tRs4vkSCeMwC831j/7XHkql/c3VQiEZgn5aTuQYmrmLNc8hUgf3
	 r+nhGKXrRtIfVzKOU3/En+E/yTQZXTdldvQ7zXhx5ZXGWnn9OC87BEeFvd4zKkf9dP
	 OUcSsMGTRxsTIdJkH5Nh2veJv/kRIDTvVrBwGFvMTt+jtqibnPgOS3E6BHlRtemQCo
	 inTsjBqfaqC8Q==
Date: Thu, 26 Jun 2025 18:24:30 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andy Yan <andyshrk@163.com>, David Airlie <airlied@gmail.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, stable@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>, kernel@collabora.com,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Simona Vetter <simona@ffwll.ch>
Subject: Re: [PATCH 1/3] dt-bindings: display: vop2: Add optional PLL clock
 property for rk3576
Message-ID: <175098027014.1394278.11992805068398675511.robh@kernel.org>
References: <20250612-rk3576-hdmitx-fix-v1-0-4b11007d8675@collabora.com>
 <20250612-rk3576-hdmitx-fix-v1-1-4b11007d8675@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250612-rk3576-hdmitx-fix-v1-1-4b11007d8675@collabora.com>
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


On Thu, 12 Jun 2025 00:47:47 +0300, Cristian Ciocaltea wrote:
> As with the RK3588 SoC, RK3576 also allows the use of HDMI PHY PLL as an
> alternative and more accurate pixel clock source for VOP2.
> 
> Document the optional PLL clock property.
> 
> Moreover, given that this is part of a series intended to address some
> recent display problems, provide the appropriate tags to facilitate
> backporting.
> 
> Fixes: c3b7c5a4d7c1 ("dt-bindings: display: vop2: Add rk3576 support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../bindings/display/rockchip/rockchip-vop2.yaml   | 56 +++++++++++++++++-----
>  1 file changed, 44 insertions(+), 12 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
