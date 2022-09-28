Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5539DC04A95
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 08:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efZz5CYg8sYvBRDVjj0DB8V5A6S093clMJJIuzGkOLQ=; b=0BaHSlwEva2xIW
	1lJYwONDCHdEy26pm3wuLvKvKuRDrKhRKX5j7kV56BhPNDIDUZPyZAaM41T+Uyu7mNzRNUPSQFHY1
	Tg7KflHIek2sl7FwZ1dIPFdBRoj1saMsJgLU7bK7+ZRzIEaucf2JVTaYlRXPpGYEK2iuHdvVNzZis
	WPhCbum1r14ZQ6xfrCyrmRLqeTie8txQ4asR90G+CxhgytiBbLTmGF7yeelDrckPK+pE3nI8LiOdG
	+pRC+sZtF7tQYQNPJ0zkYrnyniy+f1cjOIZSxX+9YT60Q3w+zs/1HsMt3cccgRnFAwRzKfyVL7uTP
	b0TpI44Dyy9nSqX6iAQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odSZz-00Ew0V-3Q; Wed, 28 Sep 2022 08:38:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odSZw-00Evwv-50
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 08:38:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1odSZp-0003GH-BQ; Wed, 28 Sep 2022 10:37:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1odSZn-0001yW-3H; Wed, 28 Sep 2022 10:37:55 +0200
Date: Wed, 28 Sep 2022 10:37:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Dan Johansen <strit@manjaro.org>
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
	kernel@pengutronix.de, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 0/2] drm/rockchip: dw_hdmi: Add 4k@30 support
Message-ID: <20220928083755.GU986@pengutronix.de>
References: <20220926080435.259617-1-s.hauer@pengutronix.de>
 <cf2285dc-d732-0c6d-83bc-022f23f29524@wolfvision.net>
 <2430a203-f8e7-7d78-3e9e-9e1d9c6826c9@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2430a203-f8e7-7d78-3e9e-9e1d9c6826c9@manjaro.org>
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
X-CRM114-CacheID: sfid-20220928_013804_210204_E6DD7002 
X-CRM114-Status: GOOD (  24.94  )
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

On Tue, Sep 27, 2022 at 07:53:54PM +0200, Dan Johansen wrote:
> 
> Den 26.09.2022 kl. 12.30 skrev Michael Riesch:
> > Hi Sascha,
> > 
> > On 9/26/22 10:04, Sascha Hauer wrote:
> > > This series adds support for 4k@30 to the rockchip HDMI controller. This
> > > has been tested on a rk3568 rock3a board. It should be possible to add
> > > 4k@60 support the same way, but it doesn't work for me, so let's add
> > > 4k@30 as a first step.
> > > 														     Sascha
> > > 
> > > Changes since v1:
> > > - Allow non standard clock rates only on Synopsys phy as suggested by
> > >    Robin Murphy
> > > 
> > > Sascha Hauer (2):
> > >    drm/rockchip: dw_hdmi: relax mode_valid hook
> > >    drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
> > > 
> > >   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 34 ++++++++++++++++-----
> > >   1 file changed, 27 insertions(+), 7 deletions(-)
> > Thanks for the v2! On a RK3568 EVB1 with a HP 27f 4k monitor
> > 
> > Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> 
> Sadly this still doesn't give my display out on my 2k monitor. Not even just
> 1080p picture like the old current implementation does.

By "like the old current implementation" you mean that this patchset
introduces a regression for you?

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
