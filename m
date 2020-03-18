From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [RFC PATCH 1/2] dt-bindings: sram: convert rockchip-pmu-sram
 bindings to yaml
Date: Wed, 18 Mar 2020 16:43:47 -0600
Message-ID: <20200318224347.GA2792@bogus>
References: <20200317163555.18107-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200317163555.18107-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 17 Mar 2020 17:35:54 +0100, Johan Jonker wrote:
> Current dts files with 'rockchip-pmu-sram' compatible nodes
> are manually verified. In order to automate this process
> rockchip-pmu-sram.txt has to be converted to yaml.
> 
> A check with the command below gives for example this error:
> 
> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff700000:
> compatible:0:
> 'rockchip,rk3288-pmu-sram' was expected
> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff700000:
> compatible:
> ['mmio-sram'] is too short
> 
> Fix this error by adding an extra 'mmio-sram' compatible and
> 'if then' structure to filter yaml warnings.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/
> rockchip-pmu-sram.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>  .../devicetree/bindings/sram/rockchip-pmu-sram.txt | 16 --------
>  .../bindings/sram/rockchip-pmu-sram.yaml           | 46 ++++++++++++++++++++++
>  2 files changed, 46 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
>  create mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.example.dt.yaml: sram@ff720000: '#address-cells' is a required property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.example.dt.yaml: sram@ff720000: '#size-cells' is a required property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.example.dt.yaml: sram@ff720000: 'ranges' is a required property

See https://patchwork.ozlabs.org/patch/1256661
Please check and re-submit.
