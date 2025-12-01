Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 142AAD116E2
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Dec 2025 03:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHo5vm2iIxS/Ievq+Yi5udbgonEnxBmL/J7QnsIzQHg=; b=SHeix6LcfCgawP
	SMBMJgqmtVgHmcMcsAC1gN2qCivNE53f/Fju7mtNkPCbqdKuu2TUvS4vtCSJm2UbRIIfikSTumu0/
	FrJJB019NgaadXa4O2mJK73RETpb3RZdxXtWffMBqLG8T62Ecn4M48z1VKgoexeMprzDWErx4biZ3
	1T/AmE21oGI2vudUY5LDvNW6hA+AZ7JTRYRDsGPgba1a7Fy0USYoQdjlAhY386ukseZHDeQLk5Djh
	tWiQZAXYzvMGbNhOYHk9gJ9kBho8HDaYW9QA3gdHOoxLNAU7w/S9wXv4CtFupzWgDZEUKnyCSTfDx
	JokIOcL5c4JTa8YJBYGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPujD-00000002rpR-2OQZ;
	Mon, 01 Dec 2025 03:37:31 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPujA-00000002roU-0cUf;
	Mon, 01 Dec 2025 03:37:30 +0000
Received: from pendragon.ideasonboard.com (fp76f193f3.tkyc206.ap.nuro.jp [118.241.147.243])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 5A884F13;
	Mon,  1 Dec 2025 04:35:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1764560109;
	bh=cCPR+pIU13nIqPPAmxJUzZ9WNyhhXDoQPnxKeb/DE6s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qM/jpEgUdA19glwbyE2H3ayIZ9/bnftrChud7b7kT2zwvlf7GoiKCQG0qYbIL/Ce0
	 1DRpTW33IGsRk++KZaBSN99qFxv+txwqvohB2fnntzwB01XqUCC52j/dh3wRvb9J0J
	 xMpoIZWa0k0aRqRq8BkAjrmEbzkSTxBzZWvGxbBw=
Date: Mon, 1 Dec 2025 12:37:00 +0900
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Frank Li <Frank.li@nxp.com>, Mehdi Djait <mehdi.djait@linux.intel.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Collabora Kernel Team <kernel@collabora.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] media: rockchip: add driver for the rockchip mipi
 csi-2 receiver
Message-ID: <20251201033700.GB21943@pendragon.ideasonboard.com>
References: <20251114-rockchip-mipi-receiver-v2-0-eb9b43377fc4@collabora.com>
 <20251114-rockchip-mipi-receiver-v2-2-eb9b43377fc4@collabora.com>
 <aRyplYZOrGsSxSlp@lizhi-Precision-Tower-5810>
 <554971e1-6fde-4b2c-a2de-fe178358a4e3@collabora.com>
 <aRzub5Ak6DZpO5f/@lizhi-Precision-Tower-5810>
 <87049b4c-df7d-454b-a7f4-073975a7ee94@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87049b4c-df7d-454b-a7f4-073975a7ee94@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251130_193728_639254_6D0242B6 
X-CRM114-Status: GOOD (  24.63  )
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

Hello,

On Wed, Nov 26, 2025 at 09:57:31PM +0100, Michael Riesch wrote:
> On 11/18/25 23:08, Frank Li wrote:
> > On Tue, Nov 18, 2025 at 07:59:14PM +0100, Michael Riesch wrote:
> >> On 11/18/25 18:15, Frank Li wrote:
> >>> On Tue, Nov 18, 2025 at 12:12:26PM +0100, Michael Riesch via B4 Relay wrote:
> >>>> From: Michael Riesch <michael.riesch@collabora.com>
> >>>>
> >>>> [...]
> >>>> +#define CSI2HOST_N_LANES     0x04
> >>>> +#define CSI2HOST_CSI2_RESETN 0x10
> >>>> +#define CSI2HOST_PHY_STATE   0x14
> >>>> +#define CSI2HOST_ERR1	     0x20
> >>>> +#define CSI2HOST_ERR2	     0x24
> >>>> +#define CSI2HOST_MSK1	     0x28
> >>>> +#define CSI2HOST_MSK2	     0x2c
> >>>> +#define CSI2HOST_CONTROL     0x40
> >>>
> >>> Look like that is designware CSI2 controller, can we build common library
> >>> for all dwc csi2 controller, instead of every vendor create individual one.
> >>>
> >>> First try at
> >>> https://lore.kernel.org/linux-media/20250821-95_cam-v3-21-c9286fbb34b9@nxp.com/
> >>>
> >>> Toshiba have similar patch
> >>> https://lore.kernel.org/linux-media/aPZd39riAxqfw3mT@lizhi-Precision-Tower-5810/
> >>>
> >>> Frank
> >>
> >> This has been discussed already a while ago:
> >> https://lore.kernel.org/all/20250507083837.GA11152@pendragon.ideasonboard.com/
> > 
> > https://lore.kernel.org/all/20250702093806.GF16835@pendragon.ideasonboard.com/
> > 
> > Laurent Pinchart prevent imx93 DWC CSI2 driver at Jul, your discussion at
> > May, I think Laurent Pinchart change the mind.
> > 
> > We can choose not base on imx6, but we should create a standard dwc2 under
> > drivers/media/platform/synopsys/
> 
> In principle, I agree with refactoring out common code. However, I am
> not sure how similar these IP cores really are. Again, the answer I
> received from Rockchip states that this is *not* a Synopsys IP core.

That's what I based my opinion on. If we're dealing with different IP
cores from different vendors, we can have separate drivers. Even within
the family of CSI-2 receivers from Synopsys, I'm fine having different
drivers if the version differ significantly enough that using a single
driver would cause more pain than gain.

To explain this differently, for Synopsys CSI-2 receivers, I would like
to try and support multiple IP cores integrated in different SoCs in a
single driver. If, during that development, we find good reasons to use
separate drivers, then we can do so.

> Can you maybe test whether the Rockchip MIPI CSI-2 Receiver driver in
> this series works on your hardware? Then we will know if (and what)
> parts can be shared.
> 
> > Laurent Pinchart:
> > 
> > 	Can you provide direction?
> > 
> >> Bottom line from Laurent:
> >>
> >> "Let's keep this driver Rockchip-specific then. Thanks for checking."
> >>
> >>>  [...]

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
