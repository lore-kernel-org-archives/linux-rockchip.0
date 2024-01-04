Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A914C47074
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 16:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jx4iS6Jk/TQGlkFhfwKiu2e/65Pa6m0XE3EMFardHrA=; b=ckFR9CwJuGwYuY
	S45l10rf3w39SHM1eLxWNnyC7gAHSg+IJ3Aj0Y32EbmfyzJvkBfUzu4dKTXXHoEaI1jEsvb2jNrOG
	xYVGUyFSN+ayKszDxOFiF2DDIzAVhHjke+NFhIwjDASzZCVqIlruGgzB2sCP9V/S7MqoJaOXNbLWe
	OykzU4sU3rBJJwgtxOOJHQDqk+0pp6qRlF0fmKkk4sf5hz86ZaFnjgXaTVRTXYo9yF2fQj3/jgFkx
	RxF15Ed1Jb2ZAHOa9qBCgI/cAtIHUIMlEOq4gZ2xHZq46WJExjouVAuZSVNfrSB1vJHsYVbSBZgcP
	sThmMhJW9CTGgkUZgCtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLQZy-00EfW0-0B;
	Thu, 04 Jan 2024 16:28:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLQZu-00EfSw-27;
	Thu, 04 Jan 2024 16:28:20 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rLQZh-0007V0-L5; Thu, 04 Jan 2024 17:28:05 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH] drm/rockchip: vop2: Drop superfluous include
Date: Thu, 04 Jan 2024 17:28:04 +0100
Message-ID: <5666118.6fTUFtlzNn@diego>
In-Reply-To: <20240104143951.85219-1-cristian.ciocaltea@collabora.com>
References: <20240104143951.85219-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_082818_695424_3203312C 
X-CRM114-Status: GOOD (  10.99  )
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

Am Donnerstag, 4. Januar 2024, 15:39:49 CET schrieb Cristian Ciocaltea:
> The rockchip_drm_fb.h header contains just a single function which is
> not directly used by the VOP2 driver.  Drop the unnecessary include.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

applied to drm-misc-next-fixes as
commit 38709af26c33e398c3292e96837ccfde41fd9e6b


Regards,
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
