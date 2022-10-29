Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B9FEC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Oct 2022 13:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tz/hwguNv35l0BQl1WjBQxairw4v2TpauQ9zGbh/Suw=; b=0vc/ZIDQx8FvL/
	Q0aDVfo6ubPhrL8Por15qYWiiS+m8dvFXWo2XrJGdzCOX3UsB5gBzTAKmQD7/BJ5iF4QoanRIh93I
	rBb2Ix5L1kFhHIBEOsBxP8HqSVsitG7EEOQcdskKywRtwmpCni/y2J4qnwA2of12IgmgVjVIK+0Zk
	dSnjih/I2XOzAg5TnSb+pY9dMghToZX6AZKYLCUl80bsHNXZfFI7MYucd3KTwl65bUoOEuRK2Id9U
	Z8PrK3seP0N1diQUAi2OzOeqAlSGMnGd9dq8qvBpdcgynBjVhFEDHiJWSyTZm/by57RRdryelR75s
	1/XTZJYLNCjgknuDHycw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oolSs-006CLs-En; Sat, 29 Oct 2022 13:01:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oolSM-006Byg-O4; Sat, 29 Oct 2022 13:01:00 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oolSF-0006ID-FO; Sat, 29 Oct 2022 15:00:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Tretter <m.tretter@pengutronix.de>,
	dri-devel@lists.freedesktop.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	kernel@pengutronix.de,
	linux-rockchip@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH 0/2] drm/rockchip: vop2: fix IOMMU warnings after reenable
Date: Sat, 29 Oct 2022 15:00:48 +0200
Message-Id: <166704843773.1532410.14430431906857992267.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221028095206.2136601-1-m.tretter@pengutronix.de>
References: <20221028095206.2136601-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_060058_852666_378C4AD6 
X-CRM114-Status: GOOD (  11.31  )
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

On Fri, 28 Oct 2022 11:52:04 +0200, Michael Tretter wrote:
> I was observing a lot of warnings that the IOMMU has blocked accessed by the
> VOP2 when I disabled and reenabled the VOP2 by shutting down a DRM user space
> application (namely Weston) and restarting it.
> 
> The reason for the warnings was that the address of the last framebuffer was
> still residing in the read register of Smart0-win0. After enabling the VOP2,
> the Smart0-win0 was still enabled and started reading from the address.
> 
> [...]

Applied, thanks!

[1/2] drm/rockchip: vop2: fix null pointer in plane_atomic_disable
      commit: 471bf2406c043491b1a8288e5f04bc278f7d7ca1
[2/2] drm/rockchip: vop2: disable planes when disabling the crtc
      commit: 447fb14bf07905b880c9ed1ea92c53d6dd0649d7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
