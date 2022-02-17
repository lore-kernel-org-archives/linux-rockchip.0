Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0193C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 14:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eevAU776m7W6Y0ae8z1pqG9MSkRBCGqne5lCRx8ZapE=; b=J4/cgnhwK+KE0B
	E8MuP+H/B1y+bkNfioTe+MT7W/FnWx0aBgeCTyz5zexjWPORQfAQTEDjGV7dQdLeTpsl9Q/ZuDW8X
	BCIuZPHhazOCmXIRLaZNQ4/TZjb8R8vLfFz98mIg7mGPDrEOUUawv6WcP4M9FI2bMJAmQkE99fZHY
	JEeU8h0GRhhV4/nSZ63Y8xb9hUdfoKRfW/D1RmhF5Dnk9wQOGmZ6sOTCoyK1EkANuQo+mGKp97+6z
	nNXMVYOptWl+yF14FFo2g1rhGXjtZzSvSXgGEIY4rGkjO1dF+21B9IFIsj3SlE4qGNu/shJBpF7J6
	cRBEGUwVq8+gJpxLwl5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKhmn-00B1L1-0I; Thu, 17 Feb 2022 14:29:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKhQM-00As5r-C7; Thu, 17 Feb 2022 14:06:24 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nKhQG-0006ci-1D; Thu, 17 Feb 2022 15:06:16 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andy.yan@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v6 21/23] drm: rockchip: Add VOP2 driver
Date: Thu, 17 Feb 2022 15:06:15 +0100
Message-ID: <6072461.kR79ftKOrO@diego>
In-Reply-To: <20220217135823.GR18637@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <e1eb945b-d7da-f21c-ee19-e19f7f1d9b04@rock-chips.com>
 <20220217135823.GR18637@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_060622_505340_3EA26BF8 
X-CRM114-Status: GOOD (  29.60  )
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

Am Donnerstag, 17. Februar 2022, 14:58:23 CET schrieb Sascha Hauer:
> Hi Andy,
> 
> Please trim the context in your answers to the relevant parts, it makes
> it easier to find the things you said.
> 
> On Thu, Feb 17, 2022 at 08:00:11PM +0800, Andy Yan wrote:
> > Hi Sascha:
> > 
> > > +
> > > +	drm_for_each_encoder_mask(encoder, crtc->dev, crtc_state->encoder_mask) {
> > > +		struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
> > > +		struct device_node *node, *parent;
> > > +
> > > +		parent = of_get_parent(rkencoder->port);
> > > +
> > > +		for_each_endpoint_of_node(parent, node) {
> > 
> > Is there any hurt directly use our downstream vendor kernel method here: use
> > vcstate->output_if set by encoder driver to get which interface we should
> > enable here?
> 
> There is no vcstate->output_if in mainline currently. Ok, we could add
> that. The other thing is that there are multiple HDMI interfaces and
> the id of the HDMI encoder is encoded into output_if. Downstream kernel
> adds OF aliases to the HDMI ports. I didn't want to go that route
> because it doesn't seem to be very elegant to me.
> 
> > 
> > You method is ok with device tree,  but it tied up this driver to device
> > tree, we are now tring to extend vop2 driver work with ACPI, so we hope this
> > driver can be much more flexible.
> 
> The current rockchip drm driver seems to be pretty much tied to device
> tree. There are probably many other places that need parallel paths for
> ACPI support, I think we can delay this particular part until we see the
> whole picture. In the end we can still retrieve the output_if
> information differently with ACPI while still retrieving the information
> from the device tree the way we are doing currently.

agreed :-) .

I.e. adding ACPI support for Rockchip drivers separately later on
makes things way easier.

Having a separate discussion about ACPI changes at that point
also makes the whole process easier, as adding the whole thing
here will delay everything even more.

Also if a later series really only is about adding ACPI support, this
makes for easier discussion but also easier review of changes.
The new VOP2 driver is big enough as it is.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
