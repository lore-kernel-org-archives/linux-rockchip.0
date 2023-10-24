Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC02BC25B47
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 09:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysWQAYhamjDyFJWjP8fikqG1UrPwx4S2SRQ8g7nw3Dw=; b=TOeZIZeRTlbafA
	Dif0Wpa0DK4eH4sEBwRVTuB1gxc3W6z6fskc09fJlnjsEs9Jz5v5jN0xCb50U3zuhTtbWqp4Bo1Kt
	/FitgYfLHsGLugP1+iPkOsXqF6Rdpus9Et74EG1A2JEOnhlKgDgWY8vVtm3t07+OfUqrapplsUzmh
	5yHhqRnzCdK+3T2x/8CIgzmNlrUq9I2YF5APqAdqriKyIMsVM9k6Y4Z+j6OPsU9MCUqnCmwGcM9nr
	mvv9YHIzLRprEj/q8M51w4umNZ0baYoERVePSDkfY8BSV1qoLEQRCnDDTYlxgdDUIpcO4yp461m6a
	86IlvtcJ+65VWUVL2isw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvE1q-009MIo-0n;
	Tue, 24 Oct 2023 09:48:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvE1n-009MHy-2e
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Oct 2023 09:48:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qvE1m-0004r2-97; Tue, 24 Oct 2023 11:48:46 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qvE1i-003ulF-5o; Tue, 24 Oct 2023 11:48:42 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qvE1i-00G6Og-39; Tue, 24 Oct 2023 11:48:42 +0200
Date: Tue, 24 Oct 2023 11:48:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	heiko@sntech.de, jonas@kwiboo.se, hjc@rock-chips.com,
	sebastian.reichel@collabora.com, sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v3 0/4] Add more format for vop2 driver
Message-ID: <20231024094842.GW3359458@pengutronix.de>
References: <20231018094122.2475668-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231018094122.2475668-1-andyshrk@163.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_024847_863150_97BB21C6 
X-CRM114-Status: GOOD (  18.61  )
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

On Wed, Oct 18, 2023 at 05:41:22PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> 
> This is a preparation for the upcoming support for rk3588 vop.
> 
> Patch 1 make the bpp calculation covery more format
> Patch 2 remove formats that are unsupported by cluster windows
> Patch 3 add more formats
> Patch 4 is a format table rename
> 
> And I drop two patches that have applied by Heiko[0]
> [0]https://patchwork.kernel.org/project/linux-rockchip/cover/20231013122001.1594009-1-andyshrk@163.com/
> 
> Changes in v3:
> - add a bpp calculation function
> - split patch 
> - add format check and convert
> 
> Andy Yan (4):
>   drm/rockchip: fix vop format bpp calculation
>   drm/rockchip: remove the unsupported format of vop2 cluster window
>   drm/rockchip: Add more format supported by vop2
>   drm/rockchip: rename windows format for vop2

Acked-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
