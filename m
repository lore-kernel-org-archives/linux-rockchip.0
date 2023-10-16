Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A3D4CDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 14:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUwUmkPeWMBu8ely2FLpOVKO5rimKV7vkByf88h5JWM=; b=4zzBPIm4UBzs5D
	NjjBysVsC0UhriIxScpaJuRAX7unVV+JOxQSUdP1JM5TqoebGBBE9GBUPj419YGnBw2iur4cRfKmU
	eost85DsEOlbWxJYTzAqI19UFI4J9xkwjp7G6x4saZbS/T9E6AhwVjl0v+LuUah9CABN7yZIl+t0e
	5+L4yyszdeQxAEdRZK+G4HoKIbJjdRdydu6r8cxuY6W1thx8X9/qvi5hdM/jctO8fKF9GjAUN71Pc
	yzz3J/u0YMV4nw3/x8nUTtx3inacLelpf72VAdHupJY76CaHxZjkFL1mlsk0b4xms7meYBoGbxecr
	wsTlQ2LtLVp9c57Wd4Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsOJn-009pWr-1H;
	Mon, 16 Oct 2023 14:11:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsOJk-009pWN-0u
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Oct 2023 14:11:38 +0000
Received: from i53875b5b.versanet.de ([83.135.91.91] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsOJc-00062e-LJ; Mon, 16 Oct 2023 16:11:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	hjc@rock-chips.com,
	sjoerd.simons@collabora.com,
	s.hauer@pengutronix.de,
	Andy Yan <andy.yan@rock-chips.com>,
	sebastian.reichel@collabora.com
Subject: Re: (subset) [PATCH v2 0/4] Some cleanup of vop2 driver
Date: Mon, 16 Oct 2023 16:11:25 +0200
Message-Id: <169746544053.926160.14655120322858248122.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231013122001.1594009-1-andyshrk@163.com>
References: <20231013122001.1594009-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_071136_335736_825ED853 
X-CRM114-Status: GOOD (  10.41  )
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

On Fri, 13 Oct 2023 20:20:01 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> This is a preparation for the upcoming support for rk3588 vop.
> Patch 1 remove unused struct
> Patch 2 remove NR_LAYERS macro to support more layers on rk3588
> Patch 3 are plane format fix
> Patch 4 is a format rename
> 
> [...]

Applied, thanks!

[1/4] drm/rockchip: remove unused struct in vop2
      commit: ac1c11c23fc51c1ba51a3ed586df40ffe6b1de35
[2/4] drm/rockchip: remove NR_LAYERS macro on vop2
      commit: dc00748adcf03d754bf43035c668bc5b20fb6597

So I've picked up the pretty straight-forward patches for now.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
