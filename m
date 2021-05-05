Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82956C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:53:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D8AAA6101C
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:53:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D8AAA6101C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T0XzbislkAl4voYOHyA92F0fQmlAzPa/ODBxwpiJGAI=; b=Qs3mCobz5o7gtgac0Xa30znSS
	yMCkA+k/Iqyrd46IA62gUgHstWl70YMhsIJi4imJrJamSq8btReaAIZj0S2pocQQCZsovjffnM4D6
	iNZXmCRIoCuAaDrdcWQgSUA11FtbwjkC5xPfZ4gcSrXn8YqRocKzFqvUA4dsTp1Y2+dsnZftNYDOb
	SKvrdW3Anw1ci4dGN68MivKSFIqpjSP4M0ZHPYORYtHKKvWVkdhpS2ugMNdam/0wbZe4FUmZo2BTA
	Rk2ioU1vZlSjxLl3QJxbTpsyrG2T7dvEvCS+qxYmHdlzuVGlvzPVJsgwNQYJ3dxIo6TM0DewiIft1
	aC7hqyBQA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leHy7-001M8b-9d; Wed, 05 May 2021 13:53:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHxq-001M6Y-Uz; Wed, 05 May 2021 13:53:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=n1bbsdQFslUe2/D8fiyQmt7GT8BuGOrH6bymhVpBYX0=; b=Grqip2ym8kxySPanEjBOVEPgx4
 5BQyDYKCfqyJkPsrivMRggafJa0RT5Mqb/5rmRpHZ/cfYtjjBkGqhY3NFU4fM3Z49qBw8+E2KGi8O
 NQ9ROiZYDUoCov4QXqrStWavJLcU6bpZacDKIMbcoQ8Vt82i5eB76BCSX2EoNMo4JtmcCl2yjBAUr
 smj1pgWugrXRBFvLH3L/tGCgP1uuES7OvhX/415aOLiTJRqcALXNvB4UUO24F2eFZRI+oK/ad4Xo3
 xsv6J+x/E6bz0FL3nz28MkjFE+tdISFNgiuMvQufu0/4hFCcgCesN0D719Jrerd7ZxKoE/BqnZ4Ue
 Wiu2kCcQ==;
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHxo-004nHi-4e; Wed, 05 May 2021 13:53:21 +0000
Received: by mail-pg1-x52d.google.com with SMTP id t22so1914177pgu.0;
 Wed, 05 May 2021 06:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n1bbsdQFslUe2/D8fiyQmt7GT8BuGOrH6bymhVpBYX0=;
 b=Key2mtimVz3Ms9QHFbm4+H7mGJ0Ryu2plYuVDFRZjpPSMAdAD5nCBdXFdPFEFUJIvf
 QsPqFq2nTQv3zsXqVfDIqgtf/Q7ma8W2BEtCjCaq2veefFeg9Zf5iFSuhQWPe/MRYHhO
 J+pT6zBwMfMpXE2z4H0pWtMDJRH0kOnIGMH5JKuz7O31W0CVIV0iefAiDshNHsUT8KUw
 ys6ywYxzupKjoqkEv9sW1YvBER5/JV2MYPXmDnJq6hKgQe3DETrS0fuI4a+ZbH6vHx2T
 yU0Iv7KK9687KoatwGwgtHpGT5v4//KWks/yMgZfx4fHaRGcUHdf+eUFpqYT3bF8afEW
 hkGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n1bbsdQFslUe2/D8fiyQmt7GT8BuGOrH6bymhVpBYX0=;
 b=jfbHlUpB8X9pTN4xoxYbqkdEd7sn48YFjhWcsDVDWCbwyPhsM4hmrVFsDV3GO7RCms
 0GvwYWgdZCI7Mhjm4KOMJHCc2XjheGQsogN0qxcvrqmQ2hR6CAbCcPgEa4mhGo1k/Fsv
 +3rXkVZ4ViO4B6jao3udK+5Rb1ZZko7A2sKZ4mP3NIWIeV+dc3V3mmryMrkWymV8MtGI
 D9xwub5WC4lvHLYmDIGsKu406cdCcTulapM+RA58XAx+VzLvieTKSApv29YeQhrExdyP
 od1y1v1S7c8/bV4qTYnZS9jWZDSSPAzg2O80ig7qNekvxvtKLnxJVL2eP5knRKRYSail
 JNYQ==
X-Gm-Message-State: AOAM532ph2aIkL6jVOcuACrTtYzWAswpeq7+p1ztvozrRoqrk1U0xwan
 dztIwwPfO+mG5Lkq5eTodhQnqs91j4x9SeFSR3Q=
X-Google-Smtp-Source: ABdhPJyluxFRTo8fdiox4JZ/YBjp7C3OIiVJ3YAHoNyjb+ElKi+tqlmQFHxdzj08K6nCwubf+VSVhH2i0N/I2jSnzsg=
X-Received: by 2002:a65:4c8e:: with SMTP id m14mr27753924pgt.377.1620222798644; 
 Wed, 05 May 2021 06:53:18 -0700 (PDT)
MIME-Version: 1.0
References: <55fe7f3454d8c91dc3837ba5aa741d4a0e67378f.1618797813.git.tommyhebb@gmail.com>
In-Reply-To: <55fe7f3454d8c91dc3837ba5aa741d4a0e67378f.1618797813.git.tommyhebb@gmail.com>
From: Jonathan Liu <net147@gmail.com>
Date: Wed, 5 May 2021 23:53:07 +1000
Message-ID: <CANwerB2Jjtu=HyLEgFjf1PyJEWzE9_7rcTgTr2QAXCWXZWjC3g@mail.gmail.com>
Subject: Re: [RESEND PATCH] drm/rockchip: dsi: move all lane config except
 LCDC mux to bind()
To: Thomas Hebb <tommyhebb@gmail.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 Nickey Yang <nickey.yang@rock-chips.com>, 
 Heiko Stuebner <heiko@sntech.de>, Andrzej Hajda <a.hajda@samsung.com>, 
 Brian Norris <briannorris@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, 
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 Sean Paul <seanpaul@chromium.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_065320_206459_738B2AA4 
X-CRM114-Status: GOOD (  20.02  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 19 Apr 2021 at 02:04, Thomas Hebb <tommyhebb@gmail.com> wrote:
>
> When we first enable the DSI encoder, we currently program some per-chip
> configuration that we look up in rk3399_chip_data based on the device
> tree compatible we match. This data configures various parameters of the
> MIPI lanes, including on RK3399 whether DSI1 is slaved to DSI0 in a
> dual-mode configuration. It also selects which LCDC (i.e. VOP) to scan
> out from.
>
> This causes a problem in RK3399 dual-mode configurations, though: panel
> prepare() callbacks run before the encoder gets enabled and expect to be
> able to write commands to the DSI bus, but the bus isn't fully
> functional until the lane and master/slave configuration have been
> programmed. As a result, dual-mode panels (and possibly others too) fail
> to turn on when the rockchipdrm driver is initially loaded.
>
> Because the LCDC mux is the only thing we don't know until enable time
> (and is the only thing that can ever change), we can actually move most
> of the initialization to bind() and get it out of the way early. That's
> what this change does. (Rockchip's 4.4 BSP kernel does it in mode_set(),
> which also avoids the issue, but bind() seems like the more correct
> place to me.)
>
> Tested on a Google Scarlet board (Acer Chromebook Tab 10), which has a
> Kingdisplay KD097D04 dual-mode panel. Prior to this change, the panel's
> backlight would turn on but no image would appear when initially loading
> rockchipdrm. If I kept rockchipdrm loaded and reloaded the panel driver,
> it would come on. With this change, the panel successfully turns on
> during initial rockchipdrm load as expected.
>
> Fixes: 2d4f7bdafd70 ("drm/rockchip: dsi: migrate to use dw-mipi-dsi bridge driver")
> Signed-off-by: Thomas Hebb <tommyhebb@gmail.com>

Tested-by: Jonathan Liu <net147@gmail.com>

Fixes MIPI-DSI panel initialization for me on RK3399 too.

Regards,
Jonathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
