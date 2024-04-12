Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C50DC04FF8
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 14:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZB7y1HEQcmsYFStkIFly5nLQR4cV2cSPuL9Xr2I4Jw=; b=RVIB//XUcyQ5Tc
	76Ve1uYQ/5y+p4pGtG7FrnWYQ4mzjQpldU+EqbQUNiPocLztd6jU4Q07IY4AaDWg4bBR1QrQLDv1K
	RS6jZMahsPRaU9gp1NU43pvsxFNr2efOwR29npVaqj+r7SO+bmfh0mugP9sYH+WNyczClX/TWPnzr
	/zsK53yaO4kGEa7XrLQLetv1eVCSDBBZ1EUZ95J3FvDrxkFyrDw95XOih1Kfkhgrv3Q5qpPeilLPq
	BvwH8/un68FI+BN1IE6in40g6rqNIJBtl5ttOHp6dT5bFxAHRA99ZcZ2fSaNzc19IBZorL/YHE8PL
	IhmhoYBavb2WqlMHPl9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvHVg-0000000HTN6-0hCn;
	Fri, 12 Apr 2024 14:04:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvHVX-0000000HTJe-0Fik;
	Fri, 12 Apr 2024 14:04:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8213A6192D;
	Fri, 12 Apr 2024 14:03:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E72A0C113CC;
	Fri, 12 Apr 2024 14:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712930634;
	bh=Q/xDCfodTTDzCgOAtTjTkNdHm3g2Vt761sA8oFCgTzw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PrWb29HUbTPHZgpK8TNIrBLrmHY/lJshbsxKkn7fMnuN/CMsJecrzAsYVn2ey3s2o
	 wCHnYBrORsGcECk52hWMNWr2Y8h89kBqswYZkGqZUuZbzj+pp3Q0FjeD2+XsiiJTQ8
	 bS4YXNN4uuyV2oEy/T6qQKWfvN7oqHTHSUNlxLjh0A3vcwRo+7av7N72CDfmkszydh
	 KU7XsyPnELKzFpdlVPHDXzYLOXY0fopneuPQVa19ZLhVU6AQBR+1TGFLUdRh6FKZ7+
	 ChlnOOi3SrUXmjGMDqGzlobwBXObF9t2ELcUG85hxhCf7MVBw4uCoYAPM0BwxD0WnD
	 s/JtuNmpeJfow==
Date: Fri, 12 Apr 2024 16:03:48 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	Michal Tomek <mtdev79b@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip,pcie3-phy: add
 rockchip,rx-common-refclk-mode
Message-ID: <Zhk_REt7nPpZT_yX@ryzen>
References: <20240412125818.17052-1-cassel@kernel.org>
 <20240412125818.17052-2-cassel@kernel.org>
 <bwrnrbqgh3ch7kzy3iieybf34634goydiyk4z7aynizgqergx2@pq76ovyfvxsp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bwrnrbqgh3ch7kzy3iieybf34634goydiyk4z7aynizgqergx2@pq76ovyfvxsp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_070359_317130_EC68CF22 
X-CRM114-Status: GOOD (  28.66  )
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

On Fri, Apr 12, 2024 at 03:36:11PM +0200, Sebastian Reichel wrote:
> Hi,
> 
> On Fri, Apr 12, 2024 at 02:58:15PM +0200, Niklas Cassel wrote:
> > From the RK3588 Technical Reference Manual, Part1,
> > section 6.19 PCIe3PHY_GRF Register Description:
> > "rxX_cmn_refclk_mode"
> > RX common reference clock mode for lane X. This mode should be enabled
> > only when the far-end and near-end devices are running with a common
> > reference clock.
> > 
> > The hardware reset value for this field is 0x1 (enabled).
> > Note that this register field is only available on RK3588, not on RK3568.
> > 
> > The link training either fails or is highly unstable (link state will jump
> > continuously between L0 and recovery) when this mode is enabled while
> > using an endpoint running in Separate Reference Clock with No SSC (SRNS)
> > mode or Separate Reference Clock with SSC (SRIS) mode.
> > (Which is usually the case when using a real SoC as endpoint, e.g. the
> > RK3588 PCIe controller can run in both Root Complex and Endpoint mode.)
> > 
> > Add a rockchip specific property to enable/disable the rxX_cmn_refclk_mode
> > per lane. (Since this PHY supports bifurcation.)
> > 
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> >  .../devicetree/bindings/phy/rockchip,pcie3-phy.yaml    | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> > index c4fbffcde6e4..ba67dca5a446 100644
> > --- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> > @@ -54,6 +54,16 @@ properties:
> >      $ref: /schemas/types.yaml#/definitions/phandle
> >      description: phandle to the syscon managing the pipe "general register files"
> >  
> > +  rockchip,rx-common-refclk-mode:
> > +    description: which lanes (by position) should be configured to run in
> > +      RX common reference clock mode. 0 means disabled, 1 means enabled.
> > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > +    minItems: 1
> > +    maxItems: 16
> > +    items:
> > +      minimum: 0
> > +      maximum: 1
> 
> Why is this not simply using a single u32 with each bit standing for
> one PCIe lane? I.e. like this:

Hello Sebastian,

The reason for the existing way to specify each lane in an int32-array
is to be consistent with the existing property "data-lanes",
which already uses this representation.

e.g.
data-lanes = <1 1 2 2>;
rockchip,rx-common-refclk-mode = <0 0 1 1>;

It would be very weird if this was instead:
data-lanes = <1 1 2 2>;
rockchip,rx-common-refclk-mode = 0xc;


> 
> rockchip,rx-common-refclk-mode:
>   description: bitmap describing which lanes should be configured to run
>     in RX common reference clock mode. Bit offset maps to PCIe lanes and
>     a bit set means enabled, unset bit means disabled.
>   $ref: /schemas/types.yaml#/definitions/uint32
>   minimum: 0
>   maximum: 0xffff
>   default: 0xffff
> 
> Apart from that the PHY only supports up to 4 lanes on all existing hardware,
> so 0xf should be enough?

Again, in order to be consistent with the existing "data-lanes" property in
this binding, which defines:
    minItems: 2
    maxItems: 16
which means that the binding already supports up to 16 lanes.
(The reason why "data-lanes" specifies minItems:2 is because bifurcation
doesn't make sense if you just have a single lane. The rx-common-refclk-mode
property however makes sense even in the case where there is just a single
lane.)


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
