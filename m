Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83916C77B7A
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 May 2023 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZ9RCDpHDsrbyU/AgqUPW3/zXvKI2FWjO+vNDKEvvwg=; b=TqOaOQZ/h+MHoj
	SszleBMd7N7QPiN5TOYBJ3YXpmA/XLXjQQ5iF3pDzKZpC9RVX5GZegvfrUHbiGjhCN4h7cgOVTYz9
	XcmWFfFxmuEZHJevU+prUTteQF79nsa4UflZ6ApJm+WWjlX1SdiIbhKEjDzZ39jHGpT4V0W9xlazG
	NsiEk9vaZ60V9gV1zLlkX3qetwuCgVTMN0AX076LMyQ6xGd6FKcGV9AtxfNPKLu9ogAdr3O1PSRjq
	yRkOMfOpt5gTpcSFFumWycIgFTgmqWQD5dYygWcWcLU1OtsEekOvzeqBKXs/31STeR/No9EqmVBLN
	LxNN1MqIh9WmvfJOYVKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pztrf-00FHul-24;
	Fri, 19 May 2023 06:45:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pztrc-00FHu6-0P
	for linux-rockchip@lists.infradead.org;
	Fri, 19 May 2023 06:45:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pztrZ-0004aY-Qe; Fri, 19 May 2023 08:45:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pztrW-0002HF-25; Fri, 19 May 2023 08:45:14 +0200
Date: Fri, 19 May 2023 08:45:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 16/21] PM / devfreq: rockchip-dfi: make register
 stride SoC specific
Message-ID: <20230519064514.GG29365@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-17-s.hauer@pengutronix.de>
 <20230516171827.000075de@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230516171827.000075de@Huawei.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230518_234520_180735_F77654C3 
X-CRM114-Status: GOOD (  19.65  )
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

On Tue, May 16, 2023 at 05:18:27PM +0100, Jonathan Cameron wrote:
> On Fri,  5 May 2023 13:38:51 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > The currently supported RK3399 has a stride of 20 between the channel
> > specific registers. Upcoming RK3588 has a different stride, so put
> > the stride into driver data to make it configurable.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> LGTM though the flip from decimal to hex is a little odd. Which
> makes sense probably depends on what the datasheet uses...

The datasheet only describes the actual register offsets, no distance
between them. However, the rk3588 has a stride of 0x4000 which
definitely reads better in hex. For consistency I changed to hex here as
well.

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
