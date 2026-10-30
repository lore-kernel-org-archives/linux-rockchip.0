Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0088606A31A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 12:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vDBnzgc+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=fSGgWb0E
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XQ+eFqs5WyeDjPuehsbI7kbEVAt+ByqIeb/6NUzpMdM=; b=vDBnzgc+KbFIYjdvMyPX07WJky
	26zGrXD5ooY6GNQ5XWgOl9AKFhe5GOdbQLBecD4VuX1dwF0GyShsy43Mb+yRboF+JtYINadYSSO7T
	3Na9CQGpHN+wMxC2bh9KQJi5qOL9FObRxggzYs+fTo/plhUbKVbptdpsa0FsYUbCKTGEGTfA61c+h
	0OETbLC+g2SjCTHjNqLxnI+3xDB9uu1/aBst5sv+Lu03x7r55BPdg4el68VoU4PU2fgXzgrhUpBaI
	ClwW5cEFEetYmD6bQuuGZRmrzL6Z2NwBJmSEPljFybYtGJFRVy6g1MneehFlCQz8BlUSw6jV91mJq
	jiIY0Q9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlUF-0000000Bemx-2reO;
	Fri, 30 Oct 2026 12:13:35 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlUE-0000000BemC-1UgY;
	Fri, 30 Oct 2026 12:13:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 91B96402A3;
	Fri, 30 Oct 2026 12:13:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F8BC1F00A02;
	Fri, 30 Oct 2026 12:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793362413;
	bh=W7iS3Fx6HV5ScNF/DvW83v1rNy7myS3fOAFqhJkCPu0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fSGgWb0E6AmiP/tcFEtpjVO60QzF8LSXfigUs5Tg+3gQ73tVxAEcHeDIOxvDY3CPy
	 vDuoJf5n0vop7GqdYjtCn/OFY/EAiIviQAEFNouIWp6clFimOSewk464KYx5JgMC45
	 tX9K326gCKDyJSqBbx+aKuPMyDKdHWZHdumL+wYIg+w2eTgWIWjM0zZ7ic9iNkuwP0
	 ALuFiHyZd7peiA1kB9BXyuWaszl0he+Ka32BkloZHcApkYCYFlzWy3QuvD/1/godz2
	 hID0WwoyTGAN+KHtoDqC0hDlagNGndQ8b/pPXGHpqrI4HMBVoiGzzqYAQ9U/6Qa9uV
	 HGN4BKvk0lSCA==
Date: Fri, 30 Oct 2026 07:13:30 -0500
From: Rob Herring <robh@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Robert Foss <rfoss@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Dave Jones <s.dave.jones@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 2/6] dt-bindings: phy: Add rockchip,rk3568-edp-phy
Message-ID: <20261030121330.GC1232511-robh@kernel.org>
References: <20261020030916.3223833-1-damon.ding@rock-chips.com>
 <20261020030916.3223833-3-damon.ding@rock-chips.com>
 <20261021133418.GA3889663-robh@kernel.org>
 <5892f99c-68cd-4ff9-91f1-af5ee024e025@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5892f99c-68cd-4ff9-91f1-af5ee024e025@rock-chips.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Oct 23, 2026 at 11:56:10AM +0800, Damon Ding wrote:
> Hi Rob,
> 
> On 10/21/2026 9:34 PM, Rob Herring wrote:
> > On Tue, Oct 20, 2026 at 11:09:12AM +0800, Damon Ding wrote:
> > > Document the eDP transmitter PHY with NaNeng IP block found on the
> > > RK3568 SoC.  The PHY is controlled through the eDP PHY GRF registers,
> > > so its node is modeled as a child of the eDP PHY GRF syscon.  Also
> > > add the "rockchip,rk3568-edp-phy-grf" compatible and the "edp-phy"
> > > child node reference to the Rockchip GRF schema.
> > > 
> > > Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> > > ---
> > >   .../bindings/phy/rockchip,rk3568-edp-phy.yaml | 59 +++++++++++++++++++
> > >   .../devicetree/bindings/soc/rockchip/grf.yaml | 15 +++++
> > >   2 files changed, 74 insertions(+)
> > >   create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3568-edp-phy.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3568-edp-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3568-edp-phy.yaml
> > > new file mode 100644
> > > index 000000000000..afe7bc3d839e
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3568-edp-phy.yaml
> > > @@ -0,0 +1,59 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/phy/rockchip,rk3568-edp-phy.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Rockchip eDP Transmitter PHY with NaNeng IP block
> > > +
> > > +maintainers:
> > > +  - Damon Ding <damon.ding@rock-chips.com>
> > > +  - Heiko Stuebner <heiko@sntech.de>
> > > +
> > > +description:
> > > +  On the RK3568 SoC the eDP PHY is controlled through the eDP PHY GRF
> > > +  registers, therefore the PHY node is expected to be a child of the
> > > +  eDP PHY GRF syscon node.
> > 
> >  From the driver, looks like there is a specific register range for the
> > phy regs in the GRF, so please add a 'reg' entry (and 'ranges' in the
> > parent).
> > 
> 
> I see. For v4, I will add the reg entry for the PHY node and ranges in the
> parent syscon node, as done in rk3399-emmc-phy.
> 
> The proposed eDP PHY DT layout looks like:
> 
> edp_phy_grf: syscon@fdcb0000 {
>   compatible = "rockchip,rk3568-edp-phy-grf", "syscon", "simple-mfd";
>   reg = <0x0 0xfdcb0000 0x0 0x100>;
>   clocks = <&cru PCLK_EDPPHY_GRF>;
>   #address-cells = <1>;
>   #size-cells = <1>;
>   ranges;
> 
>   edp_phy: phy@0 {
> 	compatible = "rockchip,rk3568-edp-phy";
> 	reg = <0x0 0x100>;

The 0 address is not correct with empty 'ranges'.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
