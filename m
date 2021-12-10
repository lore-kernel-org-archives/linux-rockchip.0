Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 056D7C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Dec 2021 15:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWSBxgEkTa6YAvq1EMoAC54YEHA/iQuguTPxJrPQ7YM=; b=lX+XwALMoysIQv
	KC1nZ2QN8/bgsmzT5Gu50qatv9/VnOA+fjkEtQ+PXMtyyUA24LnWgepw3hhjAqFUKvpS8y2ZmMZyU
	CvgZD50zVX9dD97M1udBu77OWE08JCeomzSRm4PhehgFcuvfxfNCWY6q8igfU2OYktHVOX281OcUk
	FxVhVKBVpNqdNGkvDb9T668qESCMDq0/IGnbP77BLhRCwmzSfvt1NUFesKMp30VRnv/62JrKT+SWC
	0YqwUxlVbX9CkkTlrm1L2RyB5WaVZ1rb/8NVmjV/BRgHi3cHX5/2UbAT/bB9uFRBSr7TlnkqCnvOw
	1YDma2+kJn48mfHps/pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mviIL-002XPj-Do; Fri, 10 Dec 2021 15:58:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mviI2-002XJg-Qo
 for linux-rockchip@lists.infradead.org; Fri, 10 Dec 2021 15:58:37 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1mviHl-00088l-3t; Fri, 10 Dec 2021 16:58:13 +0100
Message-ID: <c88b7a90f7a3bf94fc0cbb9a6f967ce769d5c03b.camel@pengutronix.de>
Subject: Re: [PATCH 04/10] dt-bindings: media: nxp,imx8mq-vpu: Support split
 G1 and G2 nodes with vpu-blk-ctrl
From: Lucas Stach <l.stach@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Adam Ford <aford173@gmail.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, linux-media
 <linux-media@vger.kernel.org>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Chris Healy <cphealy@gmail.com>, Adam
 Ford-BE <aford@beaconembedded.com>, Nicolas Dufresne
 <nicolas@ndufresne.ca>, Philipp Zabel <p.zabel@pengutronix.de>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team
 <linux-imx@nxp.com>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,  arm-soc
 <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, "open list:STAGING SUBSYSTEM"
 <linux-staging@lists.linux.dev>
Date: Fri, 10 Dec 2021 16:58:10 +0100
In-Reply-To: <YbNz94G3vwbHCMdB@robh.at.kernel.org>
References: <20211208225030.2018923-1-aford173@gmail.com>
 <20211208225030.2018923-5-aford173@gmail.com> <YbHZvysazqYeZ8h3@eze-laptop>
 <CAHCN7xKrHSSsqS9DNL1tMH1Ctpz16FsSgcVbSHXzUWF98v738Q@mail.gmail.com>
 <YbNz94G3vwbHCMdB@robh.at.kernel.org>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_075830_894692_4A95FB0C 
X-CRM114-Status: GOOD (  43.89  )
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

Am Freitag, dem 10.12.2021 um 09:36 -0600 schrieb Rob Herring:
> On Thu, Dec 09, 2021 at 05:36:04AM -0600, Adam Ford wrote:
> > On Thu, Dec 9, 2021 at 4:26 AM Ezequiel Garcia
> > <ezequiel@vanguardiasur.com.ar> wrote:
> > > 
> > > Hi,
> > > 
> > > Thanks for the patch.
> > > 
> > > On Wed, Dec 08, 2021 at 04:50:23PM -0600, Adam Ford wrote:
> > > > The G1 and G2 are separate decoder blocks that are enabled by the
> > > > vpu-blk-ctrl power-domain controller, which now has a proper driver.
> > > > Update the bindings to support separate nodes for the G1 and G2
> > > > decoders using the proper driver or the older unified node with
> > > > the legacy controls.
> > > > 
> > > > To be compatible with older DT the driver, mark certain items as
> > > > deprecated and retain the backwards compatible example.
> > > > 
> > > > Signed-off-by: Adam Ford <aford173@gmail.com>
> > > > ---
> > > >  .../bindings/media/nxp,imx8mq-vpu.yaml        | 83 ++++++++++++++-----
> > > >  1 file changed, 64 insertions(+), 19 deletions(-)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > > index 762be3f96ce9..eeb7bd6281f9 100644
> > > > --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > > +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > > @@ -15,29 +15,39 @@ description:
> > > > 
> > > >  properties:
> > > >    compatible:
> > > > -    const: nxp,imx8mq-vpu
> > > > +    oneOf:
> > > > +      - const: nxp,imx8mq-vpu
> > > > +        deprecated: true
> > > > +      - const: nxp,imx8mq-vpu-g1
> > > > +      - const: nxp,imx8mq-vpu-g2
> > > > 
> > > >    reg:
> > > > +    minItems: 1
> > > >      maxItems: 3
> > > 
> > > Is it really useful to keep the deprecated binding nxp,imx8mq-vpu
> > > as something supported by the binding file?
> > 
> > Since I was told that the driver needed to be backwards compatible, i
> > wanted to make sure that any attempts to build the old device tree
> > would not fail
> 
> I'm not convinced changing the binding at all is correct. 'The driver 
> structure is changing and I want the binding to align with it' is not a 
> reason. Are G1 and G2 actually separate, independent blocks where we 
> could have 1 or both of them? And what about other platforms using this 
> block?

Yes, they are totally independent video decoder peripherals, handling
different codecs. While I'm not aware that there is a SKU that only
uses one of them, there is a provision in the fuses to disable either
one of the VPU peripherals, so they clearly can work independently.

Smashing them together in one DT node was a mistake IMO. Both VPUs do
not share more than a common power-domain and use the same AMBA domain
bridge to hook into to SoC NoC. On the i.MX8M Mini we have a similar
VPU subsystem, but with nested power domains, so G1, G2 and the new H1
encoder on this chip can even be powered-gated individually.

I agree that the commit message should point out that new DT + old
kernel is not a supported configuration. It isn't optimal, but IMHO a
small price to pay for the ability to handle all the i.MX8M* family VPU
subsystems in the same way with a proper blk-ctrl driver for the common
clock and reset block and the VPUs being independent peripherals.

> 
> Even if the driver handles the old binding, a new dtb with an old kernel 
> is broken. It's up to the platform to care or not, but you have to 
> highlight that.
> 
> 
> > > In other words, can we drop the deprecated binding from this file,
> > > while keeping the support in the driver for legacy device-trees?
> > 
> > I was trying to represent both the old driver binding and the new one
> > at the same time.  I thought that's what I was told to do.
> 
> I don't care so much if we have a schema for old binding. I'd rather 
> have warnings if the binding has not been updated. Eventually I want to 
> be able to test for compatibility by testing DTs with different schema 
> versions. We've got to get to 0 warnings first though...

I'm in favor of dropping the old binding from the schema. New DTs
should clearly use the new binding and old DTs shouldn't change
anymore, so validation is less useful there.

Regards,
Lucas


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
