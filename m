Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391B7606A329
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2026 15:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0qSh+J7P;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=A8ZjbSwH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=372BL5aF2FV0bPVtYF5/fUlqrM9a2qE+2syHxIYSrW4=; b=0qSh+J7PClxp1fzREQ5k4njy+z
	8h+fhZJ8SR7KtdEAL8EBVHbGQuqwbs8doHd8nc04Y33iPNBL/66wgttJd3pe3Kxg7ZOWwBTrYXrSw
	kSyPBI06qk2We+pogcoL0QgBXcQJN7jW9i1i9pdMpPy44GpRUFRCFJDQQ+1UKIMcfV2ocVnWfFh8g
	4uf6S0yrlEsMbHQ3tUnvrUVNskBeLNxwJd3Lh4WSx+3BrIJgs60qmVlYtyxjPk8w7hcHbqC2A7r/e
	OmJ+pOzt9mtzcTgEXffNJ0c9F1HAohcyimp9LqXqwObBnxq8cVRtze4bY5NU09Uf2j9Bg9BXmvy3p
	puXWLS1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLsY-0000000CpDX-0Edc;
	Fri, 06 Nov 2026 15:29:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLsW-0000000CpCu-2YnB;
	Fri, 06 Nov 2026 15:29:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1AD6540460;
	Fri,  6 Nov 2026 15:29:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF2081F0089F;
	Fri,  6 Nov 2026 15:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793978960;
	bh=48rljzKvoUg9v4zCJJmQB8ccTlJM08PmCKtx6YIOPJA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A8ZjbSwHU20MhVdWCWsRQ+KFXa54YccwjaujcZwWf33hDNUgV4Arp04bJGZXtVcoz
	 etXQZtX2+GCWQmeJ8OGC/LEBOLsWftUfVIXKPUKIw9vZhMWl1i+DUCNVni8kio35pl
	 NlX+mGPl+MloBvZj4CoMuGUPahCxH7sCrcE7YdiZ9Vs6nxOnX+mXtuVSyufdxHjx3V
	 PIB5RlZU7/uXUot8EW8HI6ICST0+oPGA/ZupU54YiE6A94Nat8GHhbXxJxH7g1CISb
	 zqUo4ETB4NsLXuDG+zSPSxPWr/jNc3l12jX+zb54sH+JdI2qq3FUa2vbf0nBsiQTuf
	 Kh4dq4meZu8sw==
Date: Fri, 6 Nov 2026 09:29:15 -0600
From: Rob Herring <robh@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
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
Subject: Re: [PATCH v4 2/6] dt-bindings: phy: Add rockchip,rk3568-edp-phy
Message-ID: <20261106152915.GA3406543-robh@kernel.org>
References: <20261030064905.2248999-1-damon.ding@rock-chips.com>
 <20261030064905.2248999-3-damon.ding@rock-chips.com>
 <20261103-lemon-guillemot-of-economy-eefbbd@quoll>
 <fd180b9c-de60-4718-b17f-319bf4339e13@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd180b9c-de60-4718-b17f-319bf4339e13@rock-chips.com>
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

On Wed, Nov 04, 2026 at 04:59:58PM +0800, Damon Ding wrote:
> Hi Krzysztof,
> 
> On 11/3/2026 7:20 PM, Krzysztof Kozlowski wrote:
> > On Fri, Oct 30, 2026 at 02:49:01PM +0800, Damon Ding wrote:
> > > Document the eDP transmitter PHY with NaNeng IP block found on the
> > > RK3568 SoC.  The PHY has its own register window inside the eDP PHY
> > > GRF, so its node is modeled as a child of the eDP PHY GRF syscon with
> > > a reg property describing that window.  Also add the
> > > "rockchip,rk3568-edp-phy-grf" compatible and the phy node reference to
> > > the Rockchip GRF schema.
> > > 
> > > Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> > > 
> > > ---
> > > 
> > > Changes in v4:
> > > - Add the reg entry for the PHY node and the ranges/#address-cells/
> > >    #size-cells for the parent syscon node.
> > > ---
> > >   .../bindings/phy/rockchip,rk3568-edp-phy.yaml | 68 +++++++++++++++++++
> > >   .../devicetree/bindings/soc/rockchip/grf.yaml | 20 ++++++
> > >   2 files changed, 88 insertions(+)
> > >   create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3568-edp-phy.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3568-edp-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3568-edp-phy.yaml
> > > new file mode 100644
> > > index 000000000000..b78da00ffefd
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3568-edp-phy.yaml
> > > @@ -0,0 +1,68 @@
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
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: rockchip,rk3568-edp-phy
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +    description: PHY registers within the eDP PHY GRF.
> > > +
> > > +  clocks:
> > > +    maxItems: 1
> > > +
> > > +  clock-names:
> > > +    const: refclk
> > 
> > Just "ref"
> 
> Will fix in v5.
> 
> > 
> > > +
> > > +  "#phy-cells":
> > > +    const: 0
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - clocks
> > > +  - clock-names
> > > +  - "#phy-cells"
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/clock/rk3568-cru.h>
> > > +
> > > +    soc {
> > > +      #address-cells = <2>;
> > > +      #size-cells = <2>;
> > > +
> > > +      edp_phy_grf: syscon@fdcb0000 {
> > > +        compatible = "rockchip,rk3568-edp-phy-grf", "syscon", "simple-mfd";
> > 
> > This is beyond the scope of this binding. Drop entire node.
> 
> Will Drop in v5. The example should only show the PHY node itself.

Actually, drop the whole thing and put in GRF binding if you want an 
example. MFD examples should be complete, not piecemeal with each 
sub-device.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
