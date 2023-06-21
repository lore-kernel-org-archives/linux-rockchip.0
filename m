Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6184EB64DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 07:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nAKHV0q4DKHlcUT413hAVHzTUFMCbAhzkhpfa6ulvqY=; b=kNMOfBSflY9rPT
	C5LDmOjees1gE4/1LfdLPowmBCl907BJEbgw745QeTSIu+UIIXKr6UZ1PXxHv8vlV9KKOD35ikiPA
	pVl2ey1jAw8fz2IRsZuc5KnBcT4MvWzcIoIs3P8e/pNBkfys+ryG29Yv+b20pkRMDGo1amgrZMes1
	vVPh7QBU/Ir7Knhm27uU1jp7hGdUW5MvgYovr9druxCoDIOQbCxd2+nI3Pw8c7q7hn2VyiNGb7eq/
	OMcGF56+miVHhAzQJmR8ZQA0B1ssVojESCPVdFiGAUlQkcfMlSaecbkV/FjCup8J2BSA/+mJZ9/HG
	kWJ9bj544EPUi1pPv5Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsTz-00DZpG-2u;
	Wed, 21 Jun 2023 07:42:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsTv-00DZnz-2X
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 07:42:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsTa-0004Rj-9Y; Wed, 21 Jun 2023 09:42:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsTX-0003Jg-KN; Wed, 21 Jun 2023 09:41:59 +0200
Date: Wed, 21 Jun 2023 09:41:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Conor Dooley <conor@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-rockchip@lists.infradead.org,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, Vincent Legoll <vincent.legoll@gmail.com>,
	Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 22/26] dt-bindings: devfreq: event: rockchip,dfi: Add
 rk3588 support
Message-ID: <20230621074159.GN18491@pengutronix.de>
References: <20230616062101.601837-1-s.hauer@pengutronix.de>
 <20230616062101.601837-23-s.hauer@pengutronix.de>
 <20230616-swimwear-prewar-f9dce761d2ec@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230616-swimwear-prewar-f9dce761d2ec@spud>
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
X-CRM114-CacheID: sfid-20230621_004223_854894_2781D9A1 
X-CRM114-Status: GOOD (  22.73  )
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

On Fri, Jun 16, 2023 at 08:05:33PM +0100, Conor Dooley wrote:
> On Fri, Jun 16, 2023 at 08:20:57AM +0200, Sascha Hauer wrote:
> > This adds rockchip,rk3588-dfi to the list of compatibles. Unlike ealier
> > SoCs the rk3588 has four interrupts (one for each channel) instead of
> > only one, so increase the number of allowed interrupts to four.
> > 
> > Link: https://lore.kernel.org/r/20230524083153.2046084-23-s.hauer@pengutronix.de
> 
> It's unclear what the point of this link is.

The link was added automatically by b4. I re-applied the series from the
last one I sent just to be sure that I base my work for the new series
on the one I sent last time. I didn't remember that b4 adds these links,
I should have disabled that option.

> My comment still stands about whether only the new compatible should be
> permitted to have more than one interrupt. I don't recall a response to
> that question on the last version.

My personal take on this is that such additions make the bindings more
readable by machines, but less by humans. That's why I don't have enough
intrinsic motivation to make this change. Anyway, if you insist then
I'll make it for the next round.

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
