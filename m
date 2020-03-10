From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: usb: dwc2: add compatible property for
 rk3328 usb
Date: Tue, 10 Mar 2020 14:29:33 -0500
Message-ID: <20200310192933.GA15236@bogus>
References: <20200302115812.7207-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200302115812.7207-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Mar 02, 2020 at 12:58:11PM +0100, Johan Jonker wrote:
> A test with the command below gives these errors:
> 
> arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml: usb@ff580000: compatible:
> ['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
> is not valid under any of the given schemas
> 
> The compatible property for rk3328 dwc2 usb was somehow never added to
> the documention. Fix this error by adding
> 'rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2'
> to dwc2.yaml.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/dwc2.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
> index e95ba9373..e9f4cea21 100644
> --- a/Documentation/devicetree/bindings/usb/dwc2.yaml
> +++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
> @@ -41,6 +41,10 @@ properties:
>            - const: rockchip,rk3288-usb

Convert this entry to an 'enum' and add 'rockchip,rk3328-usb' here.

>            - const: rockchip,rk3066-usb
>            - const: snps,dwc2
> +      - items:
> +          - const: rockchip,rk3328-usb
> +          - const: rockchip,rk3066-usb
> +          - const: snps,dwc2
>        - const: lantiq,arx100-usb
>        - const: lantiq,xrx200-usb
>        - items:
> -- 
> 2.11.0
> 
