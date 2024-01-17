Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E525EC47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 09:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gu8xqUbILnfeB6aDyg654iD/r1b0Z6MpzSpJPJdd7HM=; b=ljY3EH6dF30lsM
	xudImhjbN7+x68IND5FQdgErCWXZD7yoLOlOsI+jQ0tJj2CRGkMlWGakjSP+K01OQw06In2WVce3q
	mGHGm++gEEG+I3jxpvRoyI7iPFlvNtG8NEsGnJwy9eEUPazRaQ5FPESQ7TiKQ52+RjGSmIgy/2UbD
	N/jGBMPH16H6rPCy0oca9r3jRUmoFdCa5KS9GAqkLiPYC5y6xbTkFqLupSJcEOMwgF8A6p6mWoKOK
	DKcO22WWb8e3spe++jfVO55j0RSavJwi9Fayc15N4pJYA+VTOug2WMleoAnoeKfW0qDrSr57jpyKd
	b9d+1cpsxIb4Wp06eksg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2aw-00FAGO-0M;
	Wed, 17 Jan 2024 09:52:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2as-00FAEF-02;
	Wed, 17 Jan 2024 09:52:23 +0000
Received: from i5e860cd7.versanet.de ([94.134.12.215] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rQ2ab-0006Am-SJ; Wed, 17 Jan 2024 10:52:05 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Alex Bee <knaerzche@gmail.com>,
 Maxime Ripard <mripard@kernel.org>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel test robot <lkp@intel.com>
Subject: Re: (subset) [PATCH] drm/rockchip: inno_hdmi: Explicitly include drm_atomic.h
Date: Wed, 17 Jan 2024 10:52:04 +0100
Message-ID: <3186012.MsWZr2WtbB@diego>
In-Reply-To: <170548481754.96553.11502916321137598260.b4-ty@kernel.org>
References: <20240115092434.41695-2-knaerzche@gmail.com>
 <170548481754.96553.11502916321137598260.b4-ty@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_015222_060089_85FB98A8 
X-CRM114-Status: GOOD (  13.20  )
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

Hi Maxime,

Am Mittwoch, 17. Januar 2024, 10:46:57 CET schrieb Maxime Ripard:
> On Mon, 15 Jan 2024 10:24:35 +0100, Alex Bee wrote:
> > Commit d3e040f450ec ("drm/rockchip: inno_hdmi: Get rid of mode_set")
> > started using drm_atomic_get_new_connector_state and
> > drm_atomic_get_new_crtc_state which are defined in drm_atomic.h
> > Building does currently only work if CONFIG_OF and CONFIG_DRM_PANEL_BRIDGE
> > are enabled since this will include drm_atomic.h via drm_bridge.h (see
> > drm_of.h).
> > 
> > [...]
> 
> Applied to drm/drm-misc (drm-misc-next).

wouldn't have drm-misc-next-fixes been more appropriate?
Because I _think_ the change causing the issue made it in during the
current merge-window?

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
