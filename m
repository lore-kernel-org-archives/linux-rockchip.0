From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: gpu: add power-domains #cooling-cells to
 arm, mali-bifrost.yaml
Date: Mon, 11 May 2020 17:25:16 -0500
Message-ID: <20200511222516.GA25294@bogus>
References: <20200425154037.21083-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200425154037.21083-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, airlied@linux.ie
List-Id: linux-rockchip.vger.kernel.org

On Sat, 25 Apr 2020 17:40:37 +0200, Johan Jonker wrote:
> A test with the command below gives this error:
> 
> arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: gpu@ff400000:
> '#cooling-cells', 'power-domains'
> do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> With the conversion to yaml it also filters things
> in a node that are used by other drivers like
> '#cooling-cells' and 'power-domains'
> for Rockchip px30 gpu nodes,
> so add them to 'arm,mali-bifrost.yaml'.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/gpu/
> arm,mali-bifrost.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Applied, thanks!
