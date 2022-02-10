Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A204C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Feb 2022 13:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBHz1oRWN0MnZOlqOOW9oQXhH3baEj5B2N8EkWJSJ0U=; b=loQw06yGh8MVDZ
	XAma40VfKlBF+kbolcrEWpk/IsHf6ugmencTbtnaWvPh6TArhPRMok9rQ0J5hI4Z1LWR1P0BW3X0O
	YfWHY54W3jux1Qte6y8xcc4T+BySJVja4Ri0cLDf5c+AdF3SxooMrbSHVZGYhLqTrjsCv1NHSrUyN
	iV6eyYFxi9XZ3w57wGcxLZUyTz+jtTIC90x07QRLl4Vg98QiAt7mXdf5k0sls5HtZheB+6qPzg59Q
	lH5+NqV3arEDkxRciLC94JjWShl0MQUsr003+zRIsmXvDYh99+us28vEjHZqRqU5YfcvpR/LUQlZh
	eWB44FU/3jG1B1L6CKHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nI9eN-003vEA-A4; Thu, 10 Feb 2022 13:38:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nI9eA-003v9g-A9
 for linux-rockchip@lists.infradead.org; Thu, 10 Feb 2022 13:38:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nI9e7-0002X5-78; Thu, 10 Feb 2022 14:38:03 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nI9e3-00033k-5d; Thu, 10 Feb 2022 14:37:59 +0100
Date: Thu, 10 Feb 2022 14:37:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v5 19/23] arm64: dts: rockchip: rk3568-evb: Enable VOP2
 and hdmi
Message-ID: <20220210133759.GZ18637@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-20-s.hauer@pengutronix.de>
 <3492afbf-b9fc-d5f5-6f7a-2157442d8209@gmail.com>
 <20220210114746.GX18637@pengutronix.de>
 <2fa2e53d-da1c-6957-33ed-f3e9806347cf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2fa2e53d-da1c-6957-33ed-f3e9806347cf@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:33:40 up 61 days, 22:19, 81 users,  load average: 0.13, 0.24, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_053806_359559_BC157477 
X-CRM114-Status: GOOD (  36.59  )
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

On Thu, Feb 10, 2022 at 02:15:17PM +0100, Johan Jonker wrote:
> 
> 
> On 2/10/22 12:47, Sascha Hauer wrote:
> > On Thu, Feb 10, 2022 at 01:10:32AM +0100, Johan Jonker wrote:
> >> Hi Sascha,
> >>
> >> Something with port and endpoint gives notifications.
> >> Somehow with the conversion of rockchip,dw-hdmi.txt to YAML not all SoC
> >> options were checked/covered (see rk3328 and rk3568).
> >>
> >> Allow multiple vop:
> >> port or
> >> port@0
> >> 1x vop -> endpoint
> >>
> >> 2x vop -> endpoint@0
> >>        -> endpoint@1
> >>
> >> Also allow for connector:
> >> (not all existing DT have this yet)
> >> port@1
> >>       -> endpoint
> >>
> >> See also at graph.yaml
> > 
> > Ok, let me see if I get this right. The HDMI can either have one or two
> > ports. It has one when the HDMI connector is not described in the device
> > tree and two when it is. Also the first (or only) port can have one or
> > two endpoints. It has one endpoint when the SoC has a single VOP and two
> > endpoints when the SoC has two VOPs.
> > 
> > It's been a painful morning because my YAML knowledge is fairly limited,
> > but here's what I came up with:
> > 
> >   ports:
> >     $ref: /schemas/graph.yaml#/properties/ports
> >     unevaluatedProperties: false
> >     patternProperties:
> >       "^port(@0)?$":
> >         $ref: /schemas/graph.yaml#/properties/port
> >         description: Input of the DWC HDMI TX
> >         properties:
> >           endpoint:
> >             description: Connection to the VOP
> >           endpoint@0:
> >             description: Connection to the VOPB
> >           endpoint@1:
> >             description: Connection to the VOPL
> >     properties:
> >       port@1:
> >         $ref: /schemas/graph.yaml#/properties/port
> >         description: Output of the DWC HDMI TX
> > 
> > Does this look sane to you? With this a make dtbs_check on this binding
> > doesn't generate warnings anymore, and even better it does generate
> > warnings when I add some wrong nodes/properties to the dts files.
> 
> Hi,
> 
> Send a patch to rob+dt and he will let you know... ;)

;)

> 
> Also could you test the ARM branch as well just for sure with:
> ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make  dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml

That works fine except for iahb and isfr clocks in the wrong order in
arch/arm/boot/dts/rk322x.dtsi.

> 
> Could you group your serie a bit:
> dt-bindings
> drm patches
> dts changes

That's the order I originally had. Heiko asked me to put the
bindings, dts changes and driver patches together dor each topic.

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
