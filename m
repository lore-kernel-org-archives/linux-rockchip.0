From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: usb: dwc2: add power-domains property
Date: Mon, 11 May 2020 17:25:48 -0500
Message-ID: <20200511222548.GA26381@bogus>
References: <20200425170833.26718-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200425170833.26718-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, robh+dt@kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, 25 Apr 2020 19:08:33 +0200, Johan Jonker wrote:
> A test with the command below gives this error:
> 
> arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: usb@ff300000:
> 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> With the conversion to yaml it also filters things
> in a node that are used by other drivers like
> 'power-domains' for Rockchip px30 usb nodes,
> so add them to 'dwc2.yaml'.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/dwc2.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Applied, thanks!
