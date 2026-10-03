Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD8A7CA5FE3
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Oct 2026 09:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gkRdD9/oL9WzndnxJiyNQszL1km/WVZgcT3EPxcadlo=; b=chhBaBxloIxhgh
	1+dDsWpb/WW+CxhoyOkbjV/mDYZ2/P6u9oKbleKCU1ULkqIl9ij4NVfwc8caId34SBnBVUHrerYZW
	AFdrZewFJtmUOGWSmZ3waPmu1SzAD/e4tTPlVsJjOwCbhZGpq/8yHmKXccl4MYkbG8r1DgNQkQsd4
	HbeaNTS6SBDSvJG6XKlvum1vNxYAMJDsf2cNHrC+vN1LLoEiJ+VycHfcIimfvt2bmTflHREUebk0w
	ZyCuWfoskZnyB9Mz34P5Q908f8JaC5LOr2frMGZTOdeR/FSFoVD+NiNtHE9bbu87fRjQdm8WbnvDS
	HxCaYnbSJeKoQygL+tLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAX-0000000DHnm-3eL2;
	Sat, 03 Oct 2026 09:36:37 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAW-0000000DHmU-0EZ2;
	Sat, 03 Oct 2026 09:36:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CA4F0432DE;
	Sat,  3 Oct 2026 09:36:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C53A21F0089C;
	Sat,  3 Oct 2026 09:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791020195;
	bh=6JL9SGL3PUaJCdUDz966EibAL0TTLzapXaPW+M6rmjc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=kk8Y7q+93wUqvE7lnyovNUACThKvjhY8LJsJQcPoDCxHp28z4LMRZ9TXrTEK/cN43
	 DwhZ0KUMaZK0tN6hjJe0Y5IPebYUt8FidVgIlSUfuPZ2Bp0SVuZ28Wik2+1h8Hlx2M
	 faZwY8CQm03V3iSs7QBZfM3HLkCZOvv8gTD/7nqpVm1k0Awl7Uva4jl10uC+U5VdWa
	 YlAjgEqSVVvua0YK5QEtCkQCfGGLButmWdZZd8QR2np4dm4wH1ngLqcVcEhGRi6W/u
	 IT8I6sgARLrUbV+/Ug89nQA9R35Znf5yBppn/VbJG303TE1OzlpWcuKfOHHNV+njig
	 NLG1pSy4BvBTA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Zhang Yubing <yubing.zhang@rock-chips.com>, 
 Frank Wang <frank.wang@rock-chips.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Igor Paunovic <royalnet026@gmail.com>, 
 Sashiko <sashiko-bot@kernel.org>
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
Subject: Re: [PATCH v15 00/11] phy: rockchip: usbdp: Clean up the mess
 (part 2)
Message-Id: <179102019252.199361.13603467154520106912.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 11:36:32 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Tue, 15 Sep 2026 17:06:03 +0200, Sebastian Reichel wrote:
> This series is the second part of a major overhaul of the Rockchip USBDP
> driver. The goal of the bigger series is:
> 
>  * USB-C DP AltMode support
>  * Fixing sporadic SErrors happening when connector is hot-plugged
>  * Fixing USB3 support when connector orientation changes after
>    hotplug
>  * Fixing USBDP PHY not starting up properly initially or after a few
>    replugs
> 
> [...]

Applied, thanks!

[01/11] phy: rockchip: usbdp: Drop DP HPD handling
        commit: 4fd2c13cbb11f5483a43cc789cb8de1c3bd23238
[02/11] phy: rockchip: usbdp: Rename mode_change to phy_needs_reinit
        commit: fbce9cc28cadb24026a6c061819d42e50d3bfea0
[03/11] phy: rockchip: usbdp: Re-init the PHY on orientation change
        commit: 4d8349799c4be92750c0d73c9dfac09003233146
[04/11] phy: rockchip: usbdp: Factor out lane_mux_sel setup
        commit: cc492941f8e3523648fb1393e3e61a7602a0260d
[05/11] phy: rockchip: usbdp: Properly handle TYPEC_STATE_SAFE and TYPEC_STATE_USB
        commit: b1ca8de219ae6e4d9eec22acfbe4357d8addd94c
[06/11] phy: rockchip: usbdp: Use guard functions for mutex
        commit: f8e38359fde88381c3a7b1134dfd3a406a0e611d
[07/11] phy: rockchip: usbdp: Hold mutex in DP PHY configure
        commit: 619233ce6b2329529c9f0ff9682d6e22d160ebd6
[08/11] phy: rockchip: usbdp: Add some extra debug messages
        commit: 89eb5e8aec232ff494a0261f7fada6390bb3f1be
[09/11] phy: rockchip: usbdp: Avoid xHCI SErrors
        commit: cf3aa34e6f0798544c26ad93a6c3c2231ab09738
[10/11] phy: rockchip: usbdp: Handle rk_udphy_reset_deassert errors
        commit: 35101e2f49c04bf1cfc69b8a0d3f85c742369ccc
[11/11] phy: rockchip: usbdp: Only enable USB3 when not in high-speed mode
        commit: fbbf6c85b08008bf68ef49931175edeaa36ba82f

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
