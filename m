Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BAA9C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 10:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6sKC7WRmcyW2g6oz6qjipGomT/2v7qu2wPJC8jYagfM=; b=JRF6bQuIKQcD5B
	Aqk3HY1DqmcOchi5jjUMEwcn6T+yAaRglqInhdiXNGRCB3ardHXwLnoD7jZLphZ83tgT7INBKFyNm
	ORxo72f3ylLmTFTwZllZ7E9Na3MizS6h4bumZLceTA3OSGHskDkWjl3tC0NFfBn5HsoIgdcodZzZd
	NBRjJMBT1BG1tMW/YyhhgyJCKTmD15gf9FfQEibWvJ8AVhLhZJKIJjSFC9hOmWmiSzZZt40Vc8szN
	oP/Rt/dLBBBpYIFG0/OydUaj84Ef6bCiOlkLDj4iXDdhsX00+V9+53fEq7RSh/4bS2qpuE2YGl/gf
	skksiJbjtJWFM0QQTcBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHk9e-00HEVl-0c; Wed, 09 Feb 2022 10:24:54 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjt4-00H7CV-SN
 for linux-rockchip@bombadil.infradead.org; Wed, 09 Feb 2022 10:07:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=4wnZwFHxP/E2HCJ4vAQczmxA5+C+eCcH/RGQeOZm1T8=; b=R2fI5QPuenYVglYA3feb++yzql
 3WD8mDI/tS1aCn8IgYmr/6dfTCk2fB9HlQu53hnj4uMGXYxENYVN0Uor/H/+ToGgQ+rSk6d1dKyGj
 TW7JlBTI6JALUM3asb1zq6890ePhDgT+f8vE9yJxwHpO8QOnoeCNZCU39bjHR1ox0edObkss62wSi
 VjAFrW87OrHpjB5TOfMGI8oB+xQaxZV3yEDD2BzPwi+yNyfJlPCdoQwrW9HNjfIO6kGxOOYdCeAEA
 KZyxBZpM1FbuGMxTef1byiiVLP1QpDeb3oeSqzB2DTogCH8auxRbmnyYsgQ8xQmvoPWr2tWS4zrs2
 dXl2y7iQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjsz-007M2Y-MB
 for linux-rockchip@lists.infradead.org; Wed, 09 Feb 2022 10:07:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHjsx-00068n-7I; Wed, 09 Feb 2022 11:07:39 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHjsu-0001wJ-AP; Wed, 09 Feb 2022 11:07:36 +0100
Date: Wed, 9 Feb 2022 11:07:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v5 01/23] drm/encoder: Add of_graph port to struct
 drm_encoder
Message-ID: <20220209100736.GV18637@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220209095350.2104049-2-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:57:24 up 60 days, 18:42, 83 users,  load average: 0.77, 0.40, 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_100741_749713_728FFCCD 
X-CRM114-Status: GOOD (  18.43  )
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

David, Daniel,

I'll need a word from you regarding this patch. It's needed in patch
22/23 in this series.
vop2_crtc_atomic_enable() needs to control the mux which routes the
display output to the different encoders. Which encoder is used is
described in the of_graph port, so I need a way to identify the encoder
in the device tree.

Sascha

On Wed, Feb 09, 2022 at 10:53:28AM +0100, Sascha Hauer wrote:
> Add a device node to drm_encoder which corresponds with the port node
> in the DT description of the encoder. This allows drivers to find the
> of_graph link between a crtc and an encoder.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  include/drm/drm_encoder.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/drm/drm_encoder.h b/include/drm/drm_encoder.h
> index 6e91a0280f31..3acd054b1eb3 100644
> --- a/include/drm/drm_encoder.h
> +++ b/include/drm/drm_encoder.h
> @@ -99,6 +99,8 @@ struct drm_encoder {
>  	struct drm_device *dev;
>  	struct list_head head;
>  
> +	struct device_node *port;
> +
>  	struct drm_mode_object base;
>  	char *name;
>  	/**
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
