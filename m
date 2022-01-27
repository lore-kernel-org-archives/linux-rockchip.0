Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8D7DC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 09:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LF0UBl5KEPx/IbLTTORUkvs0dfgAss64aWYMDBqw+Xs=; b=0FMdb5os2ewjkB
	w4ZuTJ27B2kjU8azKcOItQVq8Upo7QH16ArnejI18VWJBLKXO4UQMN9F6OZA+l1pL5z1aCA40G7Y0
	hjfntQl5O7fRJHNRwLg28ExBATo5MRTmVi6uTQChK+w240mMn/Xyb+NZj1+gh0Fjyykn9WOcD+Ws+
	f6zy0iKY/qgLmLMbUgQc7jPTsjiRCUl5/KKayCOx+8UfS/GzgVLdyqpxL/S2UxYOU4NgFoDqWwEuH
	PDKQvlD7Nv5OHUzbeOdVpzwUox+t7GZ+2QuFFMzsD4hcKZa6ZR+kitJQ1nNGs70zLYvmMmFL/1Hpp
	82PdqdqhAVFtejw9ehXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD1Rk-00Ez3K-Os; Thu, 27 Jan 2022 09:52:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD19f-00Euos-Dq
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 09:33:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nD19U-0006rQ-9d; Thu, 27 Jan 2022 10:33:12 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nD19P-0007xU-Bi; Thu, 27 Jan 2022 10:33:07 +0100
Date: Thu, 27 Jan 2022 10:33:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Robert Foss <robert.foss@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Pierre-Hugues Husson <phh@phh.me>, Archit Taneja <architt@codeaurora.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-rockchip@lists.infradead.org,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/bridge: synopsys/dw-hdmi: set cec clock rate
Message-ID: <20220127093307.GJ23490@pengutronix.de>
References: <20220126202427.3047814-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220126202427.3047814-1-pgwipeout@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:29:35 up 47 days, 18:15, 84 users,  load average: 0.21, 0.33, 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_013323_508203_EF5FC5A8 
X-CRM114-Status: GOOD (  20.26  )
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

Hi Peter,

On Wed, Jan 26, 2022 at 03:24:26PM -0500, Peter Geis wrote:
> The hdmi-cec clock must be 32khz in order for cec to work correctly.
> Ensure after enabling the clock we set it in order for the hardware to
> work as expected.
> Warn on failure, in case this is a static clock that is slighty off.
> Fixes hdmi-cec support on Rockchip devices.

You removed this sentence in v2, but I just wanted to mention that
clk_set_rate() won't fail when the desired clock rate can't be
archieved. Instead, you will get the best rate that actually can be
reached. If you want to check that you are happy with the rate you'll
have to do a clk_round_rate() before setting the rate or a
clk_get_rate() afterwards.

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
