Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97499C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jan 2022 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFXvkmFX/BOUVSuLGq0gCKBCTy6WT6Z8J1Pva4jTZhY=; b=aajJ8ZaLV+c2c6
	/4bBGggEfYSefsdc91NFxUmYNYfOfenmy6t4z/QiuId0jfIkaAqwxKYOybQ0crrrrxH5hlPPjy+Yw
	/I54rnuMHMRO93KpY+m1ZwXyoJ9BNvbbk/nFIvHWev/gl6cNMApqMV9I2nIxo8BWmCmffxZ6GlXjC
	A6zA8LMGPD2Lusn1dTLwVxPzJ/gtL8guE7tOJKQg8XJMfMbQBp775bVyv7iQjbSKlT8H6kMQ89ajB
	bsL0HInOn9PfJwqJmasBXtXGyYMDhNV/m2euGBPESviXfWk9b0uxD7pHaNZ7SdKour9mkPlU9Uic1
	nO4WnblFfGfzExBCfq4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDNQ5-001CUU-5o; Fri, 28 Jan 2022 09:19:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDNQ1-001CTG-F7
 for linux-rockchip@lists.infradead.org; Fri, 28 Jan 2022 09:19:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nDNQ0-0001AW-68; Fri, 28 Jan 2022 10:19:44 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nDNPz-0001l5-QM; Fri, 28 Jan 2022 10:19:43 +0100
Date: Fri, 28 Jan 2022 10:19:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: subs <subs@pscan.uk>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: MiPi DSI interface for RK3566 ?
Message-ID: <20220128091943.GT23490@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-28-s.hauer@pengutronix.de>
 <6588D77C-D3CB-4FB0-8B00-5EDD6ABD6923@gmail.com>
 <20220127110009.GK23490@pengutronix.de>
 <9d23b94a-c8db-6588-fadf-97ea5e748f8a@pscan.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9d23b94a-c8db-6588-fadf-97ea5e748f8a@pscan.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:10:03 up 48 days, 17:55, 81 users,  load average: 0.21, 0.24, 0.24
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220128_011945_538794_57A91A06 
X-CRM114-Status: GOOD (  29.62  )
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

Hi Philip,

On Fri, Jan 28, 2022 at 12:33:39AM +0000, subs wrote:
> Hello Sascha
> 
> Please excuse me for reaching out unsolicited.
> 
> I have a project for which I want to use the DSI interface for the Pine
> Quartz64 and other RK3566 boards.
> 
> The problem is that the DSI interface (unless I am mistaken) is only
> supported with the BSP kernels.  As functionality of mainline kernels is now
> approaching that of the BSP kernels and is clearly the future for this SoC
> this leaves those of us who want to use LCD panels left a bit out on a limb.
> Other developers are telling me to forget about the BSP kernels but if one
> wants to use an LCD panel that isn't so easy.
> 
> I am not a kernel developer and so I only have three choices, wait, put
> significant effort into working around the BSP kernel, or give up and target
> another SoC.
> 
> Are you able to give any indication whether you know if anyone is working on
> DSI support in mainline and if something is coming any time soon? so that I
> can plan my project accordingly?

I have MIPI DSI working based on these VOP2 patches. MIPI DSI is
currently out of scope for us, I only worked on it up to the point where
it works for me on the RK3568 EVB board to be able to test the VOP2 driver.

You can get the patches here:

https://git.pengutronix.de/cgit/sha/linux/log/?h=rockchip-vop2-mipi

The patches are not in a mainline suitable shape, but could well serve
as a starting point.

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
