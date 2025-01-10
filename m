Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49A2AE7719C
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jan 2025 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5kTtB0YVNuRg5sZejIsNSY3t/wEcbEP40V7nrZL06lI=; b=3LXpygq4oouLRZ
	oEB3a00VgeXWZCgx3M+UB4sDSzaqozsafv9hFL9+8r70K7q/l61VzCA6Gw1OWvrHFqz6Yq2KtF5Jm
	V82ummLEOyscdyUlqcR1g3efqsmcv/phmj7TXHKyovskWa/B3+MUdBluv9lMt9CdAPIQuSOVyPfRB
	gf/3gG3jWa1s/hU+Dw8Qltooy8+VQXDBFANHSTacHD6KiddSYZYD1Mu4lcTZkLs6eDCf7AtN4CjDU
	3oqbWqetsrXZ6mYjC75GIqCoaKjWlCeMmZLzsioaq8Z8/kKaq9X6VaY7Ub63LrvWZOpSN/b8EAOFT
	bV4zO/GE9XIjSf815lWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWA2H-0000000ESrq-1R6L;
	Fri, 10 Jan 2025 08:06:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWA2E-0000000ESpq-2gSA
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jan 2025 08:06:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tWA1z-0008Lc-0Q; Fri, 10 Jan 2025 09:06:11 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tWA1x-0007gT-21;
	Fri, 10 Jan 2025 09:06:09 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tWA1x-0001oH-1d;
	Fri, 10 Jan 2025 09:06:09 +0100
Message-ID: <abd8ec5ad105d61f2ff372f88d7376bdf245acef.camel@pengutronix.de>
Subject: Re: [PATCH v2 10/25] drm/imx/ipuv3: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Thomas Zimmermann <tzimmermann@suse.de>, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com, 
	simona@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org, 
	nouveau@lists.freedesktop.org, virtualization@lists.linux.dev, 
	spice-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, 
	intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org, Shawn Guo
	 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
	Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
Date: Fri, 10 Jan 2025 09:06:09 +0100
In-Reply-To: <20250109150310.219442-11-tzimmermann@suse.de>
References: <20250109150310.219442-1-tzimmermann@suse.de>
	 <20250109150310.219442-11-tzimmermann@suse.de>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_000626_672493_364D5BD5 
X-CRM114-Status: UNSURE (   8.01  )
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

On Do, 2025-01-09 at 15:57 +0100, Thomas Zimmermann wrote:
> Call drm_mode_size_dumb() to compute dumb-buffer scanline pitch and
> buffer size. The hardware requires the framebuffer width to be a
> multiple of 8. The scanline pitch has be large enough to support
> this. Therefore compute the byte size of 8 pixels in the given color
> mode and align the pitch accordingly.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
