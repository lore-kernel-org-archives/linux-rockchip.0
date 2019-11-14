From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: drop #clock-cells from
 rockchip,px30-dsi-dphy
Date: Wed, 13 Nov 2019 19:53:14 -0600
Message-ID: <20191114015314.GA24328@bogus>
References: <20191108000640.8775-1-heiko.stuebner@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191108000640.8775-1-heiko.stuebner@theobroma-systems.com>
Sender: linux-kernel-owner@vger.kernel.org
Cc: kishon@ti.com, robh+dt@kernel.org, mark.rutland@arm.com, bivvy.bi@rock-chips.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri,  8 Nov 2019 01:06:39 +0100, Heiko Stuebner wrote:
> Further review of the dsi components for the px30 revealed that the
> phy shouldn't expose the pll as clock but instead handle settings
> via phy parameters.
> 
> As the phy binding is new and not used anywhere yet, just drop them
> so they don't get used.
> 
> Fixes: 3817c7961179 ("dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy")
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
> Hi Kishon,
> 
> this should ideally get into 5.5 as a fix for the previous change
> so that the binding doesn't accidentially get used.
> 
> Thanks
> Heiko
> 
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml      | 5 -----
>  1 file changed, 5 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
