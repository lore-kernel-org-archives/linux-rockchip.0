Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76DBFC02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 10:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jrod6M+HmjlN1MrQ/e0NXNNutKxMfdCiKiD+KoQ06As=; b=Ue+ENLI4KYyt/c
	0SXu0I1go0c/1Fg9J9XFox/bZH52oxETTydKgU9Mi7OkThYw3AuLXrP7JGNPt53ho3DowzhuaxPwk
	3BsXNgnrJ0adOnncw1Z8KJogLlHSf8wfeGvnfqo1Q2ByWenuMbUct3lgs9dutwWOSsZvwAJGcMYG2
	z8rUujY0pCdjA3+1Nt2/i5h15nib50sIqF920uOT+ROuFiHgsMk+ThwLoUEtbRYbEn3z55X/TlL8U
	E9p1MESSU1uKkyyYvz/KUudb8qJzMOHvZCTHKNMrnyna6IxqrEuSFoZOizIqkROhy+AFo7XG01mes
	bNF6pDuaV8K5ivARZmqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tY15M-0000000BaR4-2zJG;
	Wed, 15 Jan 2025 10:57:20 +0000
Received: from mgamail.intel.com ([192.198.163.10])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tY146-0000000BaKy-2Mi1;
	Wed, 15 Jan 2025 10:56:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736938563; x=1768474563;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=a21DYM9Y6e9dtyfgQrzamCDEH03wQiwkyZKuBps1SoA=;
  b=j6KjQcUsuMel3bKX6w11kvEOhiE6ngxfKjRsyV5E8QWvruDteif8lHxL
   6V8elAQa7Ug9KPakCqsvzbDoWomIKMgoy0NDca5UizL9CdTFq7AmwfU5p
   Zt9Bh6WXFkYM9LaGLPPvG1MLSDt7QDzaVLDDZJN69qKLERg/fqpKYxzyd
   El5nRi7e6UH8ptSQq9tFyul7URi9UfN31HAJ+Qj9OGLkgAlKoJHmrtNMK
   WNeDJ9+Cb2g1BZ3eHsWz2ETNnWIll1nvlSUllP6uW1BsRiitRzrYuSWlV
   S+6ZuUKbDj9msmB4YX1v07hhmHLGB/xfsKwXJQo50i3In//wcgr5T3nbW
   Q==;
X-CSE-ConnectionGUID: B1qZ6JkKRWKjo/wWXm/Tnw==
X-CSE-MsgGUID: f+53aSimTUKCVP0XszElsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="48676873"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; 
   d="scan'208";a="48676873"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2025 02:56:02 -0800
X-CSE-ConnectionGUID: TmEfFQvuR1ePkAM3ceV8tw==
X-CSE-MsgGUID: dWdMibSbRlaXaN84cYZa8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,317,1728975600"; 
   d="scan'208";a="104936194"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO mdjait-mobl) ([10.245.244.123])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2025 02:55:56 -0800
Date: Wed, 15 Jan 2025 11:55:43 +0100
From: Mehdi Djait <mehdi.djait@linux.intel.com>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	=?utf-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Kever Yang <kever.yang@rock-chips.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, 
	Sebastian Fricke <sebastian.fricke@collabora.com>, Alexander Shiyan <eagle.alexander923@gmail.com>, 
	Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Mehdi Djait <mehdi.djait@bootlin.com>, Gerald Loacker <gerald.loacker@wolfvision.net>, 
	Paul Kocialkowski <paulk@sys-base.io>, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v2 0/6] media: rockchip: add a driver for the rockchip
 camera interface (cif)
Message-ID: <vbhqvvdjfjv2plavyd4gd2aypy6epybatq22mhgkcenndjgjly@73vacmvvv2fj>
References: <20241217-v6-8-topic-rk3568-vicap-v2-0-b1d488fcc0d3@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241217-v6-8-topic-rk3568-vicap-v2-0-b1d488fcc0d3@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250115_025602_642706_D23D187F 
X-CRM114-Status: GOOD (  24.05  )
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

Hi Michael,

On Tue, Dec 17, 2024 at 04:55:12PM +0100, Michael Riesch wrote:
> Habidere,
> 
> TL;DR:
> 
> This series introduces support for the Rockchip Camera Interface (CIF),
> which can be found (in the form of variants that differ significantly) in
> different Rockchip SoCs in general, and for the Rockchip RK3568 Video
> Capture (VICAP) variant in particular.
> 
> The patches are functional and have been tested successfully on a
> custom RK3568 board including the ITE Tech. IT6801 HDMI receiver as
> attached subdevice. The IT6801 driver still needs some loving care but
> shall be submitted as well at some point.
> 
> The long story (gather 'round children):
> 
> The Rockchip Camera Interface (CIF) is featured in many Rockchip SoCs
> in different variations. For example, the PX30 Video Input Processor (VIP)
> is able to receive video data via the Digital Video Port (DVP, a parallel
> data interface and transfer it into system memory using a double-buffering
> mechanism called ping-pong mode. The RK3568 Video Capture (VICAP) unit,
> on the other hand, features a DVP and a MIPI CSI-2 receiver that can
> receive video data independently (both using the ping-pong scheme).
> The different variants may have additional features, such as scaling
> and/or cropping.
> Finally, the RK3588 VICAP unit constitutes an essential piece of the camera
> interface with one DVP, six MIPI CSI-2 receivers, scale/crop units, and
> different data path multiplexers (to system memory, to ISP, ...).

I wanted to CC Paul on this and add this really GOOD summary he provided
while reviewing v6 of the CIF driver: Feel free to add (or not) some of
the infos from it.

----------------------------------------------------------------------------------
So I have spent a bit of time trying to figure out the history of this unit
and in which platform in was used. The takeaway is that the earliest Rockchip
SoC that uses it is the RK3066 (2012) and the latest SoC is the RK3566/RK3568
(2020). Earlier SoCs (RK29) do mention VIP but seems quite clear that this is
a whole different unit and the recent RK3588 (2021) has a new VICAP_DVP unit
(mixed with VICAP_MIPI) which also seems significantly different.

Over the course of the existence of this unit, it is most often referred to
as CIF. Since this is also the name for the driver in the Rockchip tree,
I feel like it is best to use CIF as the mainline terminology instead of VIP.
Note that the unit is also called VICAP in RK3566/RK3568.

Here is the detail of my research on the concerned chips. The + at the beginning
of the line indicate support in Rockchip's 4.4 tree:

- RK3566/RK3568 (2020): CIF pins + VICAP terminology
+ RK1808 (2019): CIF pins + VIP registers + VIP_MIPI registers
+ PX30 (2017): VIP pins + VIP registers
+ RK3328 (2017): CIF pins + VIP terminology
- RK3326 (2017): CIF pins + VIP terminology
- RK3399 (2016): CIF pins
- RK3368 (2015): CIF pins
- PX2 (2014-11): CIF pins + CIF registers
+ RK3126/RK3128 (2014-10): CIF pins + registers
+ RK3288 (2014-05): CIF pins + VIP terminology
- RK3026 (2013): CIF pins + CIF registers
- RK3168/RK3188/PX3 (2012): CIF pins + CIF registers
- RK3066 (2012): CIF pins + CIF registers
----------------------------------------------------------------------------------

I also CC'd Sebastian Reichel, as he might be interested in this, he is tracking 
the upstream status of the RK3588: 
https://gitlab.collabora.com/hardware-enablement/rockchip-3588/notes-for-rockchip-3588/-/blob/main/mainline-status.md?ref_type=heads

--
Kind Regards
Mehdi Djait

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
