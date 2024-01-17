Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66B3FC47DA2
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 14:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CZhBsD7QNdJDMwKdckQe0HL1w8L6RwarHs0FX503vk=; b=G+JKlHqNyKhxT+
	RVnOw0UQPUAxkGGGnj1P8psQhmIPoAY5gHuyEqDfOlOf9sIcuW15R8y+7lLhwItS1l2rhRLKtDKNo
	gI4382e6jQv3tvhSc6jQwPxQDoTowUEgFvRxPlNnAC+MbpYMM2lmZTHnDFtp+I61mCOTU1kn3XIVy
	JnE3YSHfXJiOpDVUnOII9gy1iVaa9UoA51gU4k5+hMgVYXI0ZqtrXWVygHEK7AE+vDzc/viK3n51n
	fVI+yITEsiCK7iTEjHbvIxRu80nmTnvniWVUA84ddhQEBgN0AukAeMtF2QWC6OVQFd5984MGecR/N
	5LiVJlI03lZxlnQ8C+GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6oe-00H43K-2X;
	Wed, 17 Jan 2024 14:22:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6ob-00H3wN-0i;
	Wed, 17 Jan 2024 14:22:50 +0000
Received: from i5e860cd7.versanet.de ([94.134.12.215] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rQ6oK-0008Gl-U3; Wed, 17 Jan 2024 15:22:32 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Maxime Ripard <mripard@kernel.org>
Cc: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Alex Bee <knaerzche@gmail.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel test robot <lkp@intel.com>
Subject: Re: (subset) [PATCH] drm/rockchip: inno_hdmi: Explicitly include drm_atomic.h
Date: Wed, 17 Jan 2024 15:22:31 +0100
Message-ID: <8001861.oDFzTOozpa@diego>
In-Reply-To: <iuorynvlxp6m6u5hz3yi5d2ibfd3w6pdsm5ajlztjcsjuaczzl@f7jl7vyux2cl>
References: <20240115092434.41695-2-knaerzche@gmail.com> <3186012.MsWZr2WtbB@diego>
 <iuorynvlxp6m6u5hz3yi5d2ibfd3w6pdsm5ajlztjcsjuaczzl@f7jl7vyux2cl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_062249_253152_BC813334 
X-CRM114-Status: GOOD (  18.95  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 17. Januar 2024, 14:47:48 CET schrieb Maxime Ripard:
> On Wed, Jan 17, 2024 at 10:52:04AM +0100, Heiko St=FCbner wrote:
> > Hi Maxime,
> > =

> > Am Mittwoch, 17. Januar 2024, 10:46:57 CET schrieb Maxime Ripard:
> > > On Mon, 15 Jan 2024 10:24:35 +0100, Alex Bee wrote:
> > > > Commit d3e040f450ec ("drm/rockchip: inno_hdmi: Get rid of mode_set")
> > > > started using drm_atomic_get_new_connector_state and
> > > > drm_atomic_get_new_crtc_state which are defined in drm_atomic.h
> > > > Building does currently only work if CONFIG_OF and CONFIG_DRM_PANEL=
_BRIDGE
> > > > are enabled since this will include drm_atomic.h via drm_bridge.h (=
see
> > > > drm_of.h).
> > > > =

> > > > [...]
> > > =

> > > Applied to drm/drm-misc (drm-misc-next).
> > =

> > wouldn't have drm-misc-next-fixes been more appropriate?
> > Because I _think_ the change causing the issue made it in during the
> > current merge-window?
> =

> AFAIK, the offending commit is in drm-misc-next only

ah, you're of course right. Mistook that for the one in the rk3066_hdmi
but that was fixed back in november already.

So all is well.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
