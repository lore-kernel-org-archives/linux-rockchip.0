Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CECAC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Dec 2021 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5LMeatfBt4lm2anQP+p3NM/Bhh/rFb0o63O44YSBRqo=; b=m/oZXSJD2jHJdw
	ykS3zE5Gkz7FgVlNPrVS76Lk/2NuDONh0Z+K/32fLeH1MtRCKBt57he0HJjmwAwhcOJ6lMQb8YA81
	IfMud6LjSCba9wSWornuDnjB2axHFSw4EL3O71z4pew62wyG5Z7EfuyESMn7851ljeTDMgBLUCdHn
	Pw7PXoYsY1O1wEfMQKTr2kQf5xUl1puz863uAo1rqruRU39FzROMuc474FQaYdzhsggkdZjBKmoWM
	OfHa/vEG3IFycDhdj8H9C9trGnWB5oz8RKmnb09psGNYcUHKIRVOS41cIu7E1TUCMNWqBq0hJKppK
	OjI/tlb3DL8/Y+Pon3SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwjCH-009BPZ-BG; Mon, 13 Dec 2021 11:08:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwjC0-009BHy-8A
 for linux-rockchip@lists.infradead.org; Mon, 13 Dec 2021 11:08:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwjBv-0002cG-6X; Mon, 13 Dec 2021 12:08:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwjBr-0006po-V0; Mon, 13 Dec 2021 12:08:19 +0100
Date: Mon, 13 Dec 2021 12:08:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 07/18] dt-bindings: display: rockchip: dw-hdmi: Allow
 "ref" as clock name
Message-ID: <20211213110819.GB6003@pengutronix.de>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-8-s.hauer@pengutronix.de>
 <3032544.f5MXlUzpl7@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3032544.f5MXlUzpl7@phil>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:07:30 up 2 days, 19:53, 56 users, load average: 0.19, 0.24, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_030828_306590_44B77586 
X-CRM114-Status: GOOD (  23.90  )
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

On Sun, Dec 12, 2021 at 11:09:24PM +0100, Heiko Stuebner wrote:
> Am Mittwoch, 8. Dezember 2021, 16:12:19 CET schrieb Sascha Hauer:
> > "vpll" is a misnomer. A clock input to a device should be named after
> > the usage in the device, not after the clock that drives it. On the
> > rk3568 the same clock is driven by the HPLL.
> > To fix that, this patch renames the vpll clock to ref clock.  The clock
> > name "vpll" is left for compatibility to old device trees.
> 
> Can't we just say that the binding only takes the "ref" name, but
> the code still allows "vpll".
> 
> I think I remember Rob suggesting something similar in the past.
> 
> I don't think that we need to keep the binding(-validation)
> compatible with old devicetrees, but the kernel itself should stay
> compatible.

Sounds reasonable. I'll also add a patch changing the in-tree users next
round.

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
