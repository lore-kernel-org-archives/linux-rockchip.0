Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCC7EC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Feb 2022 13:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+aGmCNiQkO0dTBPXspfxQ0kVk0AGIUBOvpMgjiYlE2M=; b=tZCaKK8c2CafWm
	+6jQTjoS5DUnmcFajRxj9xRhMdOpDbcbJGpaRf+bnYrAR4T1wUyflBGgvjnIVbQd1+ZtDNb5p3+VD
	FWTnnLBZTkE0Tu3i+iDw4Yc6DXKU3ZLnjvo1CwzWuPKJctBkM+1s1ACZ7/NU0W9bXaTYuf0yMe8S4
	ozdaCpif6YZqeJlt4TsqhXjlS0t4/P8ppXnZrQ/tiyv8x4lsHoAFu5Xc+McDo1vf/GW3KuIUsgNUh
	yooSEihcybCAEEB1P8lBaXQ9FxZHLWDpC+obbd18zx/+Juu7kdWpTdxoxKf7vt+Cz5eA1eI/FNyy4
	hJW7ogqBPoA3PV32kmLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nI9rB-003xna-C0; Thu, 10 Feb 2022 13:51:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nI9qz-003xla-K9; Thu, 10 Feb 2022 13:51:23 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nI9qu-0001Hw-96; Thu, 10 Feb 2022 14:51:16 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v5 19/23] arm64: dts: rockchip: rk3568-evb: Enable VOP2
 and hdmi
Date: Thu, 10 Feb 2022 14:51:15 +0100
Message-ID: <2434650.DyAAmxEfAj@diego>
In-Reply-To: <20220210133759.GZ18637@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <2fa2e53d-da1c-6957-33ed-f3e9806347cf@gmail.com>
 <20220210133759.GZ18637@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_055121_706088_20F456F7 
X-CRM114-Status: GOOD (  34.99  )
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

Am Donnerstag, 10. Februar 2022, 14:37:59 CET schrieb Sascha Hauer:
> On Thu, Feb 10, 2022 at 02:15:17PM +0100, Johan Jonker wrote:
> > 
> > 
> > On 2/10/22 12:47, Sascha Hauer wrote:
> > > On Thu, Feb 10, 2022 at 01:10:32AM +0100, Johan Jonker wrote:
> > >> Hi Sascha,
> > >>
> > >> Something with port and endpoint gives notifications.
> > >> Somehow with the conversion of rockchip,dw-hdmi.txt to YAML not all SoC
> > >> options were checked/covered (see rk3328 and rk3568).
> > >>
> > >> Allow multiple vop:
> > >> port or
> > >> port@0
> > >> 1x vop -> endpoint
> > >>
> > >> 2x vop -> endpoint@0
> > >>        -> endpoint@1
> > >>
> > >> Also allow for connector:
> > >> (not all existing DT have this yet)
> > >> port@1
> > >>       -> endpoint
> > >>
> > >> See also at graph.yaml
> > > 
> > > Ok, let me see if I get this right. The HDMI can either have one or two
> > > ports. It has one when the HDMI connector is not described in the device
> > > tree and two when it is. Also the first (or only) port can have one or
> > > two endpoints. It has one endpoint when the SoC has a single VOP and two
> > > endpoints when the SoC has two VOPs.
> > > 
> > > It's been a painful morning because my YAML knowledge is fairly limited,
> > > but here's what I came up with:
> > > 
> > >   ports:
> > >     $ref: /schemas/graph.yaml#/properties/ports
> > >     unevaluatedProperties: false
> > >     patternProperties:
> > >       "^port(@0)?$":
> > >         $ref: /schemas/graph.yaml#/properties/port
> > >         description: Input of the DWC HDMI TX
> > >         properties:
> > >           endpoint:
> > >             description: Connection to the VOP
> > >           endpoint@0:
> > >             description: Connection to the VOPB
> > >           endpoint@1:
> > >             description: Connection to the VOPL
> > >     properties:
> > >       port@1:
> > >         $ref: /schemas/graph.yaml#/properties/port
> > >         description: Output of the DWC HDMI TX
> > > 
> > > Does this look sane to you? With this a make dtbs_check on this binding
> > > doesn't generate warnings anymore, and even better it does generate
> > > warnings when I add some wrong nodes/properties to the dts files.
> > 
> > Hi,
> > 
> > Send a patch to rob+dt and he will let you know... ;)
> 
> ;)
> 
> > 
> > Also could you test the ARM branch as well just for sure with:
> > ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make  dtbs_check
> > DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> 
> That works fine except for iahb and isfr clocks in the wrong order in
> arch/arm/boot/dts/rk322x.dtsi.
> 
> > 
> > Could you group your serie a bit:
> > dt-bindings
> > drm patches
> > dts changes
> 
> That's the order I originally had. Heiko asked me to put the
> bindings, dts changes and driver patches together dor each topic.

with the background being that I can judge which parts are essentially
ready and possibly apply parts of a larger series without waiting
for everything to be ready.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
