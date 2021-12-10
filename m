Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53BB2C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Dec 2021 15:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kY+ozOiWDLgmgZqj69rUbiU+dSUvPcnlcNbChG5bd5A=; b=PlD8wpH50JjndL
	zpICes8hE4FvTuYG8lb29hEBiKmmwVSZbLA5cpnK+34nKOO0VoQfm9iV6muSKvBmZXJx44KtbyGaJ
	buBOkHBGXXPHilR1g7V+uP+9TETHbFc7S6Np5D67LXpbj2BhDyHZC2bbTdNsRyyHikyLq7/2q0k2d
	/UcTNWSmiSs4Zq3Hw4mvNuTo1iiIN8tR7eD+VypbS3QC7W3cCexR9/XqleFOJfNWDXDYMnvo2vAZt
	3mDnK8eyA47eSBn/BSmZFX+7cVsCKc7amk2csY9bXpiKUY5G3S0IcF66DVCWe3ZRKcPyj6xJjNfh6
	xMhetuAPtBI8SzbQBBqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvhwi-002Sna-NU; Fri, 10 Dec 2021 15:36:28 +0000
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvhwg-002SmI-Ox; Fri, 10 Dec 2021 15:36:28 +0000
Received: by mail-oi1-f177.google.com with SMTP id be32so13657956oib.11;
 Fri, 10 Dec 2021 07:36:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kCCPtwBcvbN1Xz9t9SiQk1iylp71eIv8+Pkz9dWfX/o=;
 b=mIQN+bEO8j2deW2wIatNRyu/s1rwZooxvg+DJpqmHp2Zpg7INQr8nGyffaqVuyE52X
 NP/hoz8cCWThD/ULK5hgLoCwgf5HUONdKN2i1HOX/uJ2/EwMuIG4GMHH/oXgQnl0tD/e
 gFGDP/5We3OqCDsQ4K+qLBhbW/YDx3f/DH5awzfTqbwWjPrHhFt5Xqu1xTmdvkLsOvk2
 8XgdgwXfqtSNL5tIF3p61SeRwHkKVqUkXVIevx6R7afDtkdy90+FhYDrbXzN/XdydXBr
 9bC9oYLLOVtR4LrTbKBdLkHOutkyTnRqYi4Ug20b8hbgl6/awK45Gcl+yUX5p2mR90lx
 qzPw==
X-Gm-Message-State: AOAM530mSpBAApd/RWkGmuRMg6Tmnc+W8yr5aVdkCw51kYeuVF9kLhcc
 r/d0Fm2VOgf8ohMPQ+z6gQ==
X-Google-Smtp-Source: ABdhPJy6coMM+bLPVOCY2Fuho8xxQorQekIDB7d7Gxhw3bYyY/I6wGSBwaXEbWSrUY0EBeP0ei+R3w==
X-Received: by 2002:a05:6808:10ce:: with SMTP id
 s14mr12444004ois.137.1639150585255; 
 Fri, 10 Dec 2021 07:36:25 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id r23sm588332ooj.37.2021.12.10.07.36.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 07:36:24 -0800 (PST)
Received: (nullmailer pid 1396912 invoked by uid 1000);
 Fri, 10 Dec 2021 15:36:23 -0000
Date: Fri, 10 Dec 2021 09:36:23 -0600
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-media <linux-media@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Chris Healy <cphealy@gmail.com>, Adam Ford-BE <aford@beaconembedded.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>,
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
Subject: Re: [PATCH 04/10] dt-bindings: media: nxp,imx8mq-vpu: Support split
 G1 and G2 nodes with vpu-blk-ctrl
Message-ID: <YbNz94G3vwbHCMdB@robh.at.kernel.org>
References: <20211208225030.2018923-1-aford173@gmail.com>
 <20211208225030.2018923-5-aford173@gmail.com>
 <YbHZvysazqYeZ8h3@eze-laptop>
 <CAHCN7xKrHSSsqS9DNL1tMH1Ctpz16FsSgcVbSHXzUWF98v738Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xKrHSSsqS9DNL1tMH1Ctpz16FsSgcVbSHXzUWF98v738Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_073626_840597_DE16CE1E 
X-CRM114-Status: GOOD (  36.07  )
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

On Thu, Dec 09, 2021 at 05:36:04AM -0600, Adam Ford wrote:
> On Thu, Dec 9, 2021 at 4:26 AM Ezequiel Garcia
> <ezequiel@vanguardiasur.com.ar> wrote:
> >
> > Hi,
> >
> > Thanks for the patch.
> >
> > On Wed, Dec 08, 2021 at 04:50:23PM -0600, Adam Ford wrote:
> > > The G1 and G2 are separate decoder blocks that are enabled by the
> > > vpu-blk-ctrl power-domain controller, which now has a proper driver.
> > > Update the bindings to support separate nodes for the G1 and G2
> > > decoders using the proper driver or the older unified node with
> > > the legacy controls.
> > >
> > > To be compatible with older DT the driver, mark certain items as
> > > deprecated and retain the backwards compatible example.
> > >
> > > Signed-off-by: Adam Ford <aford173@gmail.com>
> > > ---
> > >  .../bindings/media/nxp,imx8mq-vpu.yaml        | 83 ++++++++++++++-----
> > >  1 file changed, 64 insertions(+), 19 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > index 762be3f96ce9..eeb7bd6281f9 100644
> > > --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > @@ -15,29 +15,39 @@ description:
> > >
> > >  properties:
> > >    compatible:
> > > -    const: nxp,imx8mq-vpu
> > > +    oneOf:
> > > +      - const: nxp,imx8mq-vpu
> > > +        deprecated: true
> > > +      - const: nxp,imx8mq-vpu-g1
> > > +      - const: nxp,imx8mq-vpu-g2
> > >
> > >    reg:
> > > +    minItems: 1
> > >      maxItems: 3
> >
> > Is it really useful to keep the deprecated binding nxp,imx8mq-vpu
> > as something supported by the binding file?
> 
> Since I was told that the driver needed to be backwards compatible, i
> wanted to make sure that any attempts to build the old device tree
> would not fail

I'm not convinced changing the binding at all is correct. 'The driver 
structure is changing and I want the binding to align with it' is not a 
reason. Are G1 and G2 actually separate, independent blocks where we 
could have 1 or both of them? And what about other platforms using this 
block?

Even if the driver handles the old binding, a new dtb with an old kernel 
is broken. It's up to the platform to care or not, but you have to 
highlight that.


> > In other words, can we drop the deprecated binding from this file,
> > while keeping the support in the driver for legacy device-trees?
> 
> I was trying to represent both the old driver binding and the new one
> at the same time.  I thought that's what I was told to do.

I don't care so much if we have a schema for old binding. I'd rather 
have warnings if the binding has not been updated. Eventually I want to 
be able to test for compatibility by testing DTs with different schema 
versions. We've got to get to 0 warnings first though...

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
