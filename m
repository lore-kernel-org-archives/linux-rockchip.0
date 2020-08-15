Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DBD7C433E1
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 13:05:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C8B2A23121
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 13:05:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xMO5jWW6"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C8B2A23121
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4XRsIHEceEDgt/Q7DJYR4JG0N5SY4cP8IAABeuIfD10=; b=xMO5jWW6Y36Og3x4+ldL4NPE1
	zA1R5TPe7z5tQiKqMLlPM92BvZ37duZT56wL4PHqF5PVbZOt/MUjfNGBxosIG9Am5BYp3BTMgiBtm
	d++OeP/IF+uMqtmU9i0Q9GIocDmPixU9fLpKbumccWpP4KoPQQAenRDKGNaKWjqA/R5VB5x2hd9vH
	xCExwLbrZHl8WgIqboS3R9HvxNi0C2CQXYhEqQ8h7tggz9os88rSI7VWzkG5hwgH2AEk+VZ4H6Tqw
	fQnslOcFYLnszPwwzT7h2u1+vpRXZkxWsfzy74ozoj/pxXk5pOea8PHl4NT60n4MsZRMBxwooEZ6f
	IrMNvPkDA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6vs5-0002Nn-NB; Sat, 15 Aug 2020 13:05:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6vs1-0002NB-6Y; Sat, 15 Aug 2020 13:05:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 39E75299A26
Message-ID: <b318069fe873e456f18d07d11f5d165667c9b04a.camel@collabora.com>
Subject: Re: [PATCH v9 00/11] Genericize DW MIPI DSI bridge and add i.MX 6
 driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>, Neil Armstrong
 <narmstrong@baylibre.com>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>
Date: Sat, 15 Aug 2020 10:05:00 -0300
In-Reply-To: <87lfk3kaj4.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
References: <20200609174959.955926-1-adrian.ratiu@collabora.com>
 <c6f10db1-7f56-a156-36a1-125e764c8c1a@baylibre.com>
 <87lfk3kaj4.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
Organization: Collabora
User-Agent: Evolution 3.36.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_090513_354511_FC9200C0 
X-CRM114-Status: GOOD (  36.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
 Andrzej Hajda <a.hajda@samsung.com>, linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Neil,

On Wed, 2020-07-01 at 09:35 +0300, Adrian Ratiu wrote:
> Hi Neil,
> 
> On Mon, 29 Jun 2020, Neil Armstrong <narmstrong@baylibre.com> 
> wrote:
> > Hi Adrian, 
> > 
> > On 09/06/2020 19:49, Adrian Ratiu wrote: 
> > > [Re-submitting to cc dri-devel, sorry about the noise]  Hello 
> > > all,  v9 cleanly applies on top of latest next-20200609 tree. 
> > > v9 does not depend on other patches as the last binding doc has 
> > > been merged.   All feedback up to this point has been 
> > > addressed. Specific details in individual patch changelogs. 
> > > The biggest changes are the deprecation of the Synopsys DW 
> > > bridge bind() API in favor of of_drm_find_bridge() and .attach 
> > > callbacks, the addition of a TODO entry which outlines future 
> > > planned bridge driver refactorings and a reordering of some 
> > > i.MX 6 patches to appease checkpatch.   The idea behind the 
> > > TODO is to get this regmap and i.MX 6 driver merged and then do 
> > > the rest of refactorings in-tree because it's easier and the 
> > > refactorings themselves are out-of-scope of this series which 
> > > is adding i.MX 6 support and is quite big already, so please, 
> > > if there are more refactoring ideas, let's add them to the TODO 
> > > doc. :) I intend to tackle those after this series is merged to 
> > > avoid two complex inter-dependent simultaneous series. 
> > 
> > This has been around here for a long time and you seem to have 
> > addressed all the reviews. 
> > 
> > >  As always more testing is welcome especially on Rockchip and 
> > > STM SoCs. 
> > 
> > It has been tested on STM, but I'd like a feedback on RK 
> > platform before applying the bridge parts. 
> > 
> > Can the imx & stm patches be applied separately ? 
> > 
> 
> Yes the IMX and STM patches can be applied separately, they just 
> both depend on the common regmap patches.
> 

It's been a month so I think it's a good idea to go forward
applying IMX and STM patches (probably with the usual
rebase dance).

As for Rockchip...

> The binding API removal change which directly touches RK can also 
> be applied separately, but unfortunately I do not have access to a 
> RK board with a DSI display to test it (or the bridge regmap logic 
> on RK btw...), I just "eye-balled" the RK code based on the public 
> docs and it LGTM.
> 

... I'll be getting some DSI hardware to help with the pending
Rockchip issues, so we can tackle Rockchip as well. I'm quite sure
we'll loop Heiko as well if needed :-)

Cheers,
Ezequiel

> > Neil
> > 
> > > Big thank you to everyone who has contributed to this up to now,
> > > Adrian
> > > 
> > > Adrian Ratiu (11):
> > >   drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
> > >   drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
> > >   drm: bridge: dw_mipi_dsi: add dsi v1.01 support
> > >   drm: bridge: dw_mipi_dsi: remove bind/unbind API
> > >   dt-bindings: display: add i.MX6 MIPI DSI host controller doc
> > >   ARM: dts: imx6qdl: add missing mipi dsi properties
> > >   drm: imx: Add i.MX 6 MIPI DSI host platform driver
> > >   drm: stm: dw-mipi-dsi: let the bridge handle the HW version check
> > >   drm: bridge: dw-mipi-dsi: split low power cfg register into fields
> > >   drm: bridge: dw-mipi-dsi: fix bad register field offsets
> > >   Documentation: gpu: todo: Add dw-mipi-dsi consolidation plan
> > > 
> > >  .../display/imx/fsl,mipi-dsi-imx6.yaml        | 112 +++
> > >  Documentation/gpu/todo.rst                    |  25 +
> > >  arch/arm/boot/dts/imx6qdl.dtsi                |   8 +
> > >  drivers/gpu/drm/bridge/synopsys/Kconfig       |   1 +
> > >  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 713 ++++++++++++------
> > >  drivers/gpu/drm/imx/Kconfig                   |   8 +
> > >  drivers/gpu/drm/imx/Makefile                  |   1 +
> > >  drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 399 ++++++++++
> > >  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |   7 +-
> > >  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  16 +-
> > >  10 files changed, 1059 insertions(+), 231 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
> > >  create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
> > > 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
