Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B30C4708C
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:11:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C0D4613B5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:11:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C0D4613B5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biIVCH1opnI18x/Oz8px3RXglHiIcfeU0swuKFRnhf4=; b=cJ+F/d29pZ6U00
	YiXZ83Y+HAkMtwVqnF0/VPhotjaaCc3KJo0ezTwgsREvzQuXhPdXpVxeEd8RLX42xpLAuItNYFdmf
	/aOX7GZM1BLxL0beQ04yOAbVNPUXMON8llAlOOcQGKULkMOUzolUsuQQDix6O1mQXvQCmG0KFi7zq
	uf5Re8zxdLG8hbMUOwSzFSe8UjPXZOo5mWonnDfJegdUq8Tdbon7WW/IM8qhK6Hmmypohg4PA4GrW
	bYnLobfbv2qqNfKl6MNhWv2gS7k3w0fOso4Hrr9CGUsBf1WfYD39RwjXa3JgoY3zcAMFCoTlCXx9J
	3vEZb5zJkJvVzhbmw3rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmgwt-0007RQ-Q9; Fri, 28 May 2021 18:11:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmgvm-0006iK-PZ; Fri, 28 May 2021 18:10:00 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lmgve-0006Ve-Pv; Fri, 28 May 2021 20:09:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
 Nickey Yang <nickey.yang@rock-chips.com>, Thomas Hebb <tommyhebb@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Brian Norris <briannorris@chromium.org>,
 linux-rockchip@lists.infradead.org, Sean Paul <seanpaul@chromium.org>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [RESEND PATCH] drm/rockchip: dsi: move all lane config except
 LCDC mux to bind()
Date: Fri, 28 May 2021 20:09:44 +0200
Message-Id: <162222530163.2887132.15086890641493370565.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <55fe7f3454d8c91dc3837ba5aa741d4a0e67378f.1618797813.git.tommyhebb@gmail.com>
References: <55fe7f3454d8c91dc3837ba5aa741d4a0e67378f.1618797813.git.tommyhebb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_110958_879847_4A86F2F6 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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

On Sun, 18 Apr 2021 19:04:10 -0700, Thomas Hebb wrote:
> When we first enable the DSI encoder, we currently program some per-chip
> configuration that we look up in rk3399_chip_data based on the device
> tree compatible we match. This data configures various parameters of the
> MIPI lanes, including on RK3399 whether DSI1 is slaved to DSI0 in a
> dual-mode configuration. It also selects which LCDC (i.e. VOP) to scan
> out from.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: dsi: move all lane config except LCDC mux to bind()
      commit: 43c2de1002d2b70fb5941fa14e97a34e3dc214d4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
